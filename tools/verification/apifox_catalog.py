"""Read the authorized Apifox export and index its documented operations and auth schemas."""
import argparse
from collections import Counter
from getpass import getpass
import json
from pathlib import Path
from urllib.parse import parse_qsl

import requests


METHODS = {"get", "post", "put", "delete", "patch", "options", "head", "trace"}
FOCUS = {"认证与账户", "领创 Linspirer（第三方）"}


def path_template(path):
    base, query, suffix = path.partition("?")
    if not query:
        return base
    names = [name for name, _ in parse_qsl(suffix, keep_blank_values=True)]
    return base + "?" + "&".join(f"{name}={{{name}}}" for name in names)


def local_ref(api, value):
    ref = value.get("$ref", "") if isinstance(value, dict) else ""
    if ref.startswith("#/"):
        node = api
        for part in ref[2:].split("/"):
            node = node[part.replace("~1", "/").replace("~0", "~")]
        return node
    return value


def schema_shape(api, schema, seen=()):
    """Retain the declared types, field names and required flags. Omit example values."""
    if isinstance(schema, bool):
        return schema
    ref = schema.get("$ref")
    if ref and ref in seen:
        return {"$ref": ref}
    if ref:
        target = local_ref(api, schema)
        if target is schema:
            return {"$ref": ref}
        return {"$ref": ref, "schema": schema_shape(api, target, (*seen, ref))}
    node = {k: schema[k] for k in ("type", "format", "nullable", "required") if k in schema}
    if "properties" in schema:
        node["properties"] = {name: schema_shape(api, prop, seen) for name, prop in schema["properties"].items()}
    for key in ("items", "additionalProperties"):
        if key in schema:
            node[key] = schema_shape(api, schema[key], seen)
    for key in ("allOf", "oneOf", "anyOf"):
        if key in schema:
            node[key] = [schema_shape(api, item, seen) for item in schema[key]]
    return node


def media(api, obj):
    return {mime: schema_shape(api, spec.get("schema", {})) for mime, spec in obj.get("content", {}).items()}


def catalog(api, project, module):
    operations = []
    focus = []
    for path, path_item in api["paths"].items():
        for method, op in path_item.items():
            if method not in METHODS:
                continue
            row = {"method": method.upper(), "path": path_template(path), "summary": op.get("summary", ""),
                   "tags": op.get("tags", [])}
            operations.append(row)
            if not FOCUS.intersection(row["tags"]):
                continue
            # Operation-level definitions override path-level parameters of the same name/location.
            params = {}
            for raw in path_item.get("parameters", []) + op.get("parameters", []):
                p = local_ref(api, raw)
                params[p["in"], p["name"]] = {
                    "in": p["in"], "name": p["name"], "required": p.get("required", False),
                    "schema": schema_shape(api, p.get("schema", {}))}
            body = local_ref(api, op.get("requestBody", {}))
            responses = {code: media(api, local_ref(api, response)) for code, response in op.get("responses", {}).items()}
            focus.append({**row, "parameters": list(params.values()),
                          "request_required": body.get("required", False), "request": media(api, body),
                          "responses": responses, "security": op.get("security", api.get("security"))})
    return {"project": project, "module": module, "title": api["info"]["title"], "openapi": api["openapi"],
            "methods": dict(Counter(r["method"] for r in operations)), "operations": operations,
            "auth_and_linspirer": focus}


def main():
    cli = argparse.ArgumentParser(description=__doc__)
    cli.add_argument("output", type=Path)
    args = cli.parse_args()
    project, module = 8895319, 8662279
    token = getpass("Apifox access token: ")
    result = requests.post(f"https://api.apifox.com/v1/projects/{project}/export-openapi",
                           headers={"Authorization": "Bearer " + token, "X-Apifox-Api-Version": "2024-03-28"},
                           json={"scope": {"type": "ALL"}, "moduleId": module, "oasVersion": "3.1",
                                 "exportFormat": "JSON", "options": {"addFoldersToTags": True,
                                                                      "includeApifoxExtensionProperties": False}},
                           allow_redirects=False, timeout=35)
    result.raise_for_status()
    index = catalog(result.json(), project, module)
    args.output.write_text(json.dumps(index, ensure_ascii=False, indent=2) + "\n")
    print(f"{len(index['operations'])} operations, {len(index['auth_and_linspirer'])} focused contracts")


if __name__ == "__main__":
    main()
