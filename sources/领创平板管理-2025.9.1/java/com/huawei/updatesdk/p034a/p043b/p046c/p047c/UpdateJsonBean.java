package com.huawei.updatesdk.p034a.p043b.p046c.p047c;

import com.huawei.hem.CompilerOutline;
import com.huawei.updatesdk.p034a.p035a.UpdateSdkLog;
import com.huawei.updatesdk.p034a.p035a.p037c.p038a.p039a.UpdateLogWriter;
import com.huawei.updatesdk.p034a.p035a.p040d.UpdateGenericFieldTypes;
import com.huawei.updatesdk.service.appmgr.bean.SDKNetTransmission;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.huawei.updatesdk.a.b.c.c.b */
/* loaded from: classes.dex */
public abstract class UpdateJsonBean {
    public static final char COMMA = ',';
    public static final String END_FLAG = "_";
    public static final String TAG = "b";

    /* renamed from: com.huawei.updatesdk.a.b.c.c.b$a */
    public static class a implements PrivilegedAction {

        /* renamed from: a */
        public Field f4653a;

        public a(Field field) {
            this.f4653a = field;
        }

        @Override // java.security.PrivilegedAction
        public Object run() {
            this.f4653a.setAccessible(true);
            return null;
        }
    }

    private String arrayToJson(Object obj) {
        int length = Array.getLength(obj);
        if (length <= 0) {
            return "[]";
        }
        StringBuilder sbM1765j = CompilerOutline.m1765j("[");
        for (int i = 0; i < length; i++) {
            String strValueToJson = valueToJson(Array.get(obj, i));
            if (strValueToJson != null) {
                sbM1765j.append(strValueToJson);
                sbM1765j.append(COMMA);
            }
        }
        formatJsonStr(sbM1765j);
        sbM1765j.append("]");
        return sbM1765j.toString();
    }

    private void formatJsonStr(StringBuilder sb) {
        int length = sb.length();
        if (length > 0) {
            int i = length - 1;
            if (sb.charAt(i) == ',') {
                sb.delete(i, length);
            }
        }
    }

    private boolean isPrimitiveObj(Object obj) {
        return (obj instanceof Integer) || (obj instanceof Long) || (obj instanceof Boolean) || (obj instanceof Float) || (obj instanceof Byte) || (obj instanceof Character) || (obj instanceof Double) || (obj instanceof Short);
    }

    private Object jsonBeanFromJson(Class cls, Object obj) throws JSONException, IllegalAccessException, IllegalArgumentException {
        UpdateJsonBean abstractC1604b = (UpdateJsonBean) cls.newInstance();
        abstractC1604b.fromJson((JSONObject) obj);
        return abstractC1604b;
    }

    private String mapToJson(Map map) {
        if (map.size() <= 0) {
            return "{}";
        }
        StringBuilder sbM1765j = CompilerOutline.m1765j("{");
        Iterator it = map.entrySet().iterator();
        while (true) {
            Map.Entry entry = (Map.Entry) it.next();
            String str = (String) entry.getKey();
            String strValueToJson = valueToJson(entry.getValue());
            if (strValueToJson != null) {
                sbM1765j.append("\"");
                sbM1765j.append(str);
                sbM1765j.append("\":");
                sbM1765j.append(strValueToJson);
            }
            if (!it.hasNext()) {
                sbM1765j.append("}");
                return sbM1765j.toString();
            }
            if (strValueToJson != null) {
                sbM1765j.append(COMMA);
            }
        }
    }

    private void processValueError(Field field, Object obj) throws IllegalAccessException, IllegalArgumentException {
        Object objValueOf;
        if (obj == null || !(obj instanceof String)) {
            return;
        }
        try {
            Class<?> type = field.getType();
            if (type.isPrimitive()) {
                String name = type.getName();
                if ("int".equals(name)) {
                    objValueOf = Integer.valueOf(Integer.parseInt((String) obj));
                } else if ("float".equals(name)) {
                    objValueOf = Float.valueOf(Float.parseFloat((String) obj));
                } else if ("long".equals(name)) {
                    objValueOf = Long.valueOf(Long.parseLong((String) obj));
                } else if ("boolean".equals(name)) {
                    objValueOf = Boolean.valueOf(Boolean.parseBoolean((String) obj));
                } else if ("double".equals(name)) {
                    objValueOf = Double.valueOf(Double.parseDouble((String) obj));
                } else if ("short".equals(name)) {
                    objValueOf = Short.valueOf(Short.parseShort((String) obj));
                } else if ("byte".equals(name)) {
                    objValueOf = Byte.valueOf(Byte.parseByte((String) obj));
                } else if (!"char".equals(name)) {
                    return;
                } else {
                    objValueOf = Character.valueOf(((String) obj).charAt(0));
                }
                field.set(this, objValueOf);
            }
        } catch (IllegalAccessException e) {
            String str = TAG;
            StringBuilder sbM1765j = CompilerOutline.m1765j("processValueError Throwable:");
            sbM1765j.append(e.getMessage());
            UpdateLogWriter.m3516b(str, sbM1765j.toString());
        }
    }

    private Object valueFromJson(Class cls, Class cls2, Object obj) {
        if (cls.isPrimitive() || cls.equals(String.class)) {
            return ("float".equals(cls.getName()) && (obj instanceof Double)) ? Float.valueOf(((Double) obj).floatValue()) : obj;
        }
        if (List.class.isAssignableFrom(cls)) {
            return listFromJson(cls2, obj);
        }
        if (UpdateJsonBean.class.isAssignableFrom(cls)) {
            if (!cls.equals(UpdateJsonBean.class)) {
                return jsonBeanFromJson(cls, obj);
            }
            throw new IllegalArgumentException("error type, type:" + cls);
        }
        if (Map.class.isAssignableFrom(cls)) {
            return mapFromJson(cls2, obj);
        }
        throw new IllegalArgumentException("unsupport type, Type:" + cls);
    }

    private String valueToJson(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof String) {
            return JSONObject.quote(obj.toString());
        }
        if (isPrimitiveObj(obj)) {
            return String.valueOf(obj);
        }
        if (obj instanceof UpdateJsonBean) {
            return ((UpdateJsonBean) obj).toJson();
        }
        if (obj instanceof List) {
            return listToJson((List) obj);
        }
        if (obj instanceof Map) {
            return mapToJson((Map) obj);
        }
        if (obj.getClass().isArray()) {
            return arrayToJson(obj);
        }
        return null;
    }

    public void fromJson(JSONObject jSONObject) throws JSONException, IllegalAccessException, IllegalArgumentException {
        Field[] fieldArrM3535a = UpdateGenericFieldTypes.m3535a(getClass());
        Object objValueFromJson = null;
        for (int i = 0; i < fieldArrM3535a.length; i++) {
            AccessController.doPrivileged(new a(fieldArrM3535a[i]));
            String name = fieldArrM3535a[i].getName();
            if (fieldArrM3535a[i].isAnnotationPresent(SDKNetTransmission.class) || name.endsWith("_")) {
                if (name.endsWith("_")) {
                    name = name.substring(0, name.length() - 1);
                }
                if (jSONObject.has(name)) {
                    Object obj = jSONObject.get(name);
                    if (!JSONObject.NULL.equals(obj)) {
                        try {
                            objValueFromJson = valueFromJson(fieldArrM3535a[i].getType(), UpdateGenericFieldTypes.m3533a(fieldArrM3535a[i]), obj);
                            fieldArrM3535a[i].set(this, objValueFromJson);
                        } catch (Exception e) {
                            UpdateSdkLog.m3500a(TAG, getClass().getName() + ".fromJson error, fieldName:" + name + e.toString());
                            processValueError(fieldArrM3535a[i], objValueFromJson);
                        }
                    }
                }
            }
        }
    }

    public Object listFromJson(Class cls, Object obj) {
        if (cls == null) {
            throw new IllegalArgumentException("generic type is null");
        }
        if (!(obj instanceof JSONArray)) {
            throw new IllegalArgumentException(CompilerOutline.m1759d("jsonobject is not JSONArray, jsonValue:", obj));
        }
        ArrayList arrayList = new ArrayList();
        JSONArray jSONArray = (JSONArray) obj;
        for (int i = 0; i < jSONArray.length(); i++) {
            Object objValueFromJson = valueFromJson(cls, null, jSONArray.get(i));
            if (objValueFromJson != null) {
                if (cls.equals(objValueFromJson.getClass())) {
                    arrayList.add(objValueFromJson);
                } else {
                    UpdateLogWriter.m3516b(TAG, "listFromJson error, memberClass:" + cls + ", valueClass:" + objValueFromJson.getClass());
                }
            }
        }
        return arrayList;
    }

    public String listToJson(List list) {
        if (list.size() <= 0) {
            return "[]";
        }
        StringBuilder sbM1765j = CompilerOutline.m1765j("[");
        for (int i = 0; i < list.size(); i++) {
            String strValueToJson = valueToJson(list.get(i));
            if (strValueToJson != null) {
                sbM1765j.append(strValueToJson);
                sbM1765j.append(COMMA);
            }
        }
        formatJsonStr(sbM1765j);
        sbM1765j.append("]");
        return sbM1765j.toString();
    }

    public Object mapFromJson(Class cls, Object obj) {
        if (cls == null) {
            throw new IllegalArgumentException("generic type is null");
        }
        if (!(obj instanceof JSONObject)) {
            throw new IllegalArgumentException(CompilerOutline.m1759d("jsonobject is not JSONObject, jsonValue:", obj));
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        JSONObject jSONObject = (JSONObject) obj;
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            Object objValueFromJson = valueFromJson(cls, null, jSONObject.get(next));
            if (objValueFromJson != null) {
                if (cls.equals(objValueFromJson.getClass())) {
                    linkedHashMap.put(next, objValueFromJson);
                } else {
                    UpdateLogWriter.m3516b(TAG, "mapFromJson error, memberClass:" + cls + ", valueClass:" + objValueFromJson.getClass());
                }
            }
        }
        return linkedHashMap;
    }

    public String toJson() {
        Field[] fieldArrM3535a = UpdateGenericFieldTypes.m3535a(getClass());
        if (fieldArrM3535a.length <= 0) {
            return "";
        }
        StringBuilder sbM1765j = CompilerOutline.m1765j("{");
        for (int i = 0; i < fieldArrM3535a.length; i++) {
            AccessController.doPrivileged(new a(fieldArrM3535a[i]));
            String name = fieldArrM3535a[i].getName();
            if (fieldArrM3535a[i].isAnnotationPresent(SDKNetTransmission.class) || (name != null && name.endsWith("_"))) {
                if (name.endsWith("_")) {
                    name = name.substring(0, name.length() - 1);
                }
                String strValueToJson = valueToJson(fieldArrM3535a[i].get(this));
                if (strValueToJson != null) {
                    sbM1765j.append("\"");
                    sbM1765j.append(name);
                    sbM1765j.append("\":");
                    sbM1765j.append(strValueToJson);
                    sbM1765j.append(COMMA);
                }
            }
        }
        formatJsonStr(sbM1765j);
        sbM1765j.append("}");
        return sbM1765j.toString();
    }
}
