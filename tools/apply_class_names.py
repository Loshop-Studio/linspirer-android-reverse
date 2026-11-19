"""Apply a semantic class map to a project's exported JADX reading sources."""
import argparse
import fcntl
import os
from collections import Counter, defaultdict
from pathlib import Path
from tempfile import NamedTemporaryFile
import re

# Java literals and comments can contain runtime names, paths or original DEX evidence.
TOKEN = re.compile(r"""//[^\n]*|/\*[\s\S]*?\*/|"(?:\\.|[^"\\])*"|'(?:\\.|[^'\\])*'|(?:[^\W\d]|\$)[\w$]*""")
MAP_ROW = re.compile(r'([\w.$]+) -> ([\w.$]+):')
JAVA_LINK = re.compile(r'(?<=/)([\w$]+)(?=\.java#L\d+\))')


def read_map(path):
    mapping = {}
    old = None
    for line in path.read_text(encoding='utf-8').splitlines():
        if line.startswith('# jadx '):
            if old is not None:
                raise ValueError('Missing mapping for ' + old)
            old = line[7:].split(' | ', 1)[0]
        elif line and not line.startswith('#'):
            row = MAP_ROW.fullmatch(line)
            if row is None or old is None:
                raise ValueError('Invalid class mapping: ' + line)
            separator = '$' if '$' in row[2] else '.'
            owner, sep, alias = old.rpartition(separator)
            new_owner, _, new = row[1].rpartition(separator)
            if not sep or alias in mapping or owner != new_owner:
                raise ValueError('Duplicate alias or unexpected owner change: ' + old)
            mapping[alias] = (owner, new, row[2])
            old = None
    if old is not None or not mapping:
        raise ValueError('Incomplete or empty map')
    targets = Counter(new for _, new, _ in mapping.values())
    if any(count > 1 for count in targets.values()) or set(targets) & mapping.keys():
        raise ValueError('Semantic names must be distinct from each other and the old aliases')
    return mapping


def rewrite(text, names):
    return TOKEN.sub(lambda m: names.get(m[0], m[0]), text)


def atomic_write(path, content):
    with NamedTemporaryFile(dir=path.parent, delete=False) as tmp:
        temp = Path(tmp.name)
        try:
            tmp.write(content)
            tmp.flush()
            os.fchmod(tmp.fileno(), path.stat().st_mode & 0o777)
            tmp.close()
            temp.replace(path)
        finally:
            temp.unlink(missing_ok=True)


def apply_locked(root, app, sources):
    java = sources / 'java'
    mapping = read_map(sources / 'class-names.map')
    names = {old: new for old, (_, new, _) in mapping.items()}
    renamed = {}
    declarations = defaultdict(list)
    owners = {}
    for old, (package, new, raw) in mapping.items():
        if '$' in raw:
            continue
        directory = java.joinpath(*package.split('.'))
        before, after = directory / (old + '.java'), directory / (new + '.java')
        if before.is_file() == after.is_file():
            raise ValueError('Expected exactly one source for ' + raw)
        current = before if before.is_file() else after
        declarations[current].append((raw, new))
        owners[package + '.' + new] = current
        if current == before:
            renamed[before] = after
    for owner, new, raw in mapping.values():
        if '$' in raw:
            top = owner.split('$', 1)[0]
            path = owners.get(top, java.joinpath(*top.split('.')).with_suffix('.java'))
            if not path.is_file():
                raise ValueError('Missing outer class for ' + raw)
            declarations[path].append((raw, new))
    report = root / 'reports' / 'apps' / app / 'java-fallbacks.md'
    original_report = report.read_bytes()
    new_report = JAVA_LINK.sub(lambda m: names.get(m[0], m[0]),
                               original_report.decode('utf-8')).encode('utf-8')
    edits = []
    for path in sorted(java.rglob('*.java')):
        data = path.read_bytes()
        source = data.decode('utf-8')
        # A checkout can already contain aliases from an earlier version of the
        # map. Reverse only the substitutions made in this compilation unit.
        applied = {}

        def replace(match):
            old = match[0]
            if old not in names:
                return old
            new = names[old]
            applied[new] = old
            return new

        text = TOKEN.sub(replace, source)
        for raw, new in declarations.get(path, ()):
            if not re.search(r'^[ \t]*/\* (?:JADX INFO: )?renamed from: ' + re.escape(raw) + r'[, *]', text, re.M):
                raise ValueError('Original DEX name differs in ' + str(path))
            if not re.search(r'\b(?:class|interface|enum) ' + re.escape(new) + r'\b', text):
                raise ValueError('Missing semantic class declaration in ' + str(path))
        if source != text:
            if rewrite(text, applied).encode('utf-8') != data:
                raise ValueError('Identifier collision in ' + str(path))
            edits.append((path, data, text.encode('utf-8')))
    for path, data, text in edits:
        if path.read_bytes() != data:
            raise RuntimeError('Concurrent source edit: ' + str(path))
        atomic_write(path, text)
    # If interrupted, files already rewritten can still be renamed on the next run.
    for before, after in renamed.items():
        before.rename(after)
    if original_report != new_report:
        if report.read_bytes() != original_report:
            raise RuntimeError('Concurrent fallback report edit')
        atomic_write(report, new_report)
    print(f'{len(mapping)} verified aliases, {len(renamed)} renamed files, {len(edits)} rewritten sources')


def apply(root, app):
    sources = root / 'sources' / app
    lock = os.open(sources, os.O_RDONLY)
    try:
        fcntl.flock(lock, fcntl.LOCK_EX)
        apply_locked(root, app, sources)
    finally:
        os.close(lock)


if __name__ == '__main__':
    cli = argparse.ArgumentParser(description=__doc__)
    cli.add_argument('app', help='Directory name under sources/')
    cli.add_argument('--root', type=Path, default=Path(__file__).resolve().parents[1])
    args = cli.parse_args()
    apply(args.root, args.app)
