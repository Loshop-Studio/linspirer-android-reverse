package com.huawei.hms.utils;

import android.text.TextUtils;
import com.huawei.hem.C0948f6;
import com.huawei.hms.core.aidl.IMessageEntity;
import com.huawei.hms.core.aidl.annotation.Packed;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.support.log.common.Base64;
import java.lang.reflect.Field;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.android.agoo.common.AgooConstants;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class JsonUtil {
    public static final String BYTE_BYTE = "_byte_";
    public static final String LIST_FIELD_VALUE = "_value_";
    public static final String LIST_ITEM_VALUE = "_list_item_";
    public static final String LIST_SIZE = "_list_size_";
    public static final String MAP_MAP = "_map_";
    public static final String NEXT_ITEM = "_next_item_";
    public static final String PRE_PKG = "com.huawei";
    public static final String TAG = "JsonUtil";
    public static final int VAL_BYTE = 2;
    public static final int VAL_ENTITY = 0;
    public static final int VAL_LIST = 1;
    public static final int VAL_MAP = 3;
    public static final int VAL_NULL = -1;
    public static final String VAL_TYPE = "_val_type_";

    public static String createInnerJsonString(IMessageEntity iMessageEntity) throws IllegalAccessException, JSONException, IllegalArgumentException {
        JSONObject jSONObject = new JSONObject();
        for (Class<?> superclass = iMessageEntity.getClass(); superclass != null; superclass = superclass.getSuperclass()) {
            for (Field field : superclass.getDeclaredFields()) {
                if (field.isAnnotationPresent(Packed.class)) {
                    boolean zIsAccessible = field.isAccessible();
                    setAccessible(field, true);
                    String name = field.getName();
                    Object obj = field.get(iMessageEntity);
                    setAccessible(field, zIsAccessible);
                    disposeType(name, obj, jSONObject);
                }
            }
        }
        return jSONObject.toString();
    }

    public static String createJsonString(IMessageEntity iMessageEntity) {
        if (iMessageEntity == null) {
            HMSLog.m3461e(TAG, "createJsonString error, the input IMessageEntity is null");
            return "";
        }
        try {
            return createInnerJsonString(iMessageEntity);
        } catch (IllegalAccessException e) {
            StringBuilder sbM1765j = C0948f6.m1765j("catch IllegalAccessException ");
            sbM1765j.append(e.getMessage());
            HMSLog.m3461e(TAG, sbM1765j.toString());
            return "";
        } catch (JSONException e2) {
            StringBuilder sbM1765j2 = C0948f6.m1765j("catch JSONException ");
            sbM1765j2.append(e2.getMessage());
            HMSLog.m3461e(TAG, sbM1765j2.toString());
            return "";
        }
    }

    public static boolean disposeType(String str, Object obj, JSONObject jSONObject) throws JSONException {
        if (obj instanceof String) {
            jSONObject.put(str, (String) obj);
            return true;
        }
        if (obj instanceof Integer) {
            jSONObject.put(str, ((Integer) obj).intValue());
            return true;
        }
        if (obj instanceof Short) {
            jSONObject.put(str, (Short) obj);
            return true;
        }
        if (obj instanceof Long) {
            jSONObject.put(str, (Long) obj);
            return true;
        }
        if (obj instanceof Float) {
            jSONObject.put(str, (Float) obj);
            return true;
        }
        if (obj instanceof Double) {
            jSONObject.put(str, (Double) obj);
            return true;
        }
        if (obj instanceof Boolean) {
            jSONObject.put(str, (Boolean) obj);
            return true;
        }
        if (obj instanceof JSONObject) {
            jSONObject.put(str, (JSONObject) obj);
            return true;
        }
        if (obj instanceof byte[]) {
            writeByte(str, (byte[]) obj, jSONObject);
            return true;
        }
        if (obj instanceof List) {
            writeList(str, (List) obj, jSONObject);
            return true;
        }
        if (obj instanceof Map) {
            writeMap(str, (Map) obj, jSONObject);
            return true;
        }
        if (obj instanceof IMessageEntity) {
            try {
                jSONObject.put(str, createInnerJsonString((IMessageEntity) obj));
                return true;
            } catch (IllegalAccessException e) {
                HMSLog.m3461e(TAG, "IllegalAccessException , " + e);
            }
        }
        return false;
    }

    public static Object getInfoFromJsonobject(String str, String str2) throws JSONException {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                if (!jSONObject.has(str2)) {
                    return null;
                }
                Object obj = jSONObject.get(str2);
                if (obj instanceof String) {
                    return obj;
                }
            } catch (JSONException unused) {
                HMSLog.m3461e(TAG, "getInfoFromJsonobject:parser json error :" + str2);
            }
        }
        return null;
    }

    public static int getIntValue(JSONObject jSONObject, String str) {
        if (jSONObject == null || !jSONObject.has(str)) {
            return -1;
        }
        return jSONObject.getInt(str);
    }

    public static Object getObjectValue(String str, JSONObject jSONObject) {
        if (jSONObject.has(str)) {
            return jSONObject.get(str);
        }
        if (jSONObject.has("header") && jSONObject.getJSONObject("header").has(str)) {
            return jSONObject.getJSONObject("header").get(str);
        }
        if (jSONObject.has(AgooConstants.MESSAGE_BODY) && jSONObject.getJSONObject(AgooConstants.MESSAGE_BODY).has(str)) {
            return jSONObject.getJSONObject(AgooConstants.MESSAGE_BODY).get(str);
        }
        return null;
    }

    public static String getStringValue(JSONObject jSONObject, String str) {
        if (jSONObject == null || !jSONObject.has(str)) {
            return null;
        }
        return jSONObject.getString(str);
    }

    public static IMessageEntity jsonToEntity(String str, IMessageEntity iMessageEntity) throws IllegalArgumentException {
        try {
            JSONObject jSONObject = new JSONObject(str);
            for (Class<?> superclass = iMessageEntity.getClass(); superclass != null; superclass = superclass.getSuperclass()) {
                for (Field field : superclass.getDeclaredFields()) {
                    if (field.isAnnotationPresent(Packed.class)) {
                        try {
                            readFiled(iMessageEntity, field, jSONObject);
                        } catch (IllegalAccessException unused) {
                            HMSLog.m3461e(TAG, "jsonToEntity, set value of the field exception, field name:" + field.getName());
                        }
                    }
                }
            }
        } catch (JSONException e) {
            StringBuilder sbM1765j = C0948f6.m1765j("catch JSONException when parse jsonString");
            sbM1765j.append(e.getMessage());
            HMSLog.m3461e(TAG, sbM1765j.toString());
        }
        return iMessageEntity;
    }

    public static byte[] readByte(JSONObject jSONObject) {
        try {
            return Base64.decode(jSONObject.getString(BYTE_BYTE));
        } catch (IllegalArgumentException e) {
            StringBuilder sbM1765j = C0948f6.m1765j("readByte failed : ");
            sbM1765j.append(e.getMessage());
            HMSLog.m3461e(TAG, sbM1765j.toString());
            return null;
        }
    }

    public static void readFiled(IMessageEntity iMessageEntity, Field field, JSONObject jSONObject) throws JSONException, IllegalAccessException, IllegalArgumentException {
        Object json = readJson(iMessageEntity, field, jSONObject);
        if (json != null) {
            boolean zIsAccessible = field.isAccessible();
            setAccessible(field, true);
            field.set(iMessageEntity, json);
            setAccessible(field, zIsAccessible);
        }
    }

    public static Object readJson(IMessageEntity iMessageEntity, Field field, JSONObject jSONObject) throws JSONException {
        Object objectValue = getObjectValue(field.getName(), jSONObject);
        if (objectValue != null) {
            try {
                if (field.getType().getName().startsWith(PRE_PKG) && (field.getType().newInstance() instanceof IMessageEntity)) {
                    return jsonToEntity((String) objectValue, (IMessageEntity) field.getType().newInstance());
                }
                if (!(objectValue instanceof JSONObject) || !((JSONObject) objectValue).has(VAL_TYPE)) {
                    return objectValue;
                }
                int i = ((JSONObject) objectValue).getInt(VAL_TYPE);
                if (i != 1 && i != 0) {
                    if (i == 2) {
                        return readByte((JSONObject) objectValue);
                    }
                    if (i == 3) {
                        return readMap(field.getGenericType(), (JSONObject) objectValue);
                    }
                    HMSLog.m3461e(TAG, "cannot support type : " + i);
                }
                return readList(field.getGenericType(), (JSONObject) objectValue);
            } catch (InstantiationException unused) {
                HMSLog.m3461e(TAG, "InstantiationException  ");
            }
        }
        return null;
    }

    public static List<Object> readList(Type type, JSONObject jSONObject) throws JSONException {
        int i = jSONObject.getInt(LIST_SIZE);
        int i2 = jSONObject.getInt(VAL_TYPE);
        ArrayList arrayList = new ArrayList(i);
        for (int i3 = 0; i3 < i; i3++) {
            Object obj = jSONObject.get(LIST_ITEM_VALUE + i3);
            if (i2 == 0) {
                arrayList.add(jsonToEntity((String) obj, (IMessageEntity) ((Class) ((ParameterizedType) type).getActualTypeArguments()[0]).newInstance()));
            } else if (i2 == 1) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public static Map readMap(Type type, JSONObject jSONObject) throws IllegalArgumentException {
        Class cls = (Class) ((ParameterizedType) type).getActualTypeArguments()[1];
        JSONArray jSONArray = new JSONArray(jSONObject.getString(MAP_MAP));
        HashMap map = new HashMap();
        for (int i = 0; i < jSONArray.length(); i += 2) {
            if (cls.newInstance() instanceof IMessageEntity) {
                map.put(jSONArray.get(i), jsonToEntity(jSONArray.getString(i + 1), (IMessageEntity) cls.newInstance()));
            } else {
                map.put(jSONArray.get(i), jSONArray.get(i + 1));
            }
        }
        return map;
    }

    public static void setAccessible(final Field field, final boolean z) {
        AccessController.doPrivileged(new PrivilegedAction() { // from class: com.huawei.hms.utils.JsonUtil.1
            @Override // java.security.PrivilegedAction
            public Object run() {
                field.setAccessible(z);
                return null;
            }
        });
    }

    public static void writeByte(String str, byte[] bArr, JSONObject jSONObject) throws JSONException {
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put(VAL_TYPE, 2);
        try {
            jSONObject2.put(BYTE_BYTE, Base64.encode(bArr));
        } catch (IllegalArgumentException e) {
            StringBuilder sbM1765j = C0948f6.m1765j("writeByte failed : ");
            sbM1765j.append(e.getMessage());
            HMSLog.m3461e(TAG, sbM1765j.toString());
        }
        jSONObject.put(str, jSONObject2);
    }

    public static void writeList(String str, List<?> list, JSONObject jSONObject) throws JSONException {
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put(VAL_TYPE, 1);
        jSONObject2.put(LIST_SIZE, list.size());
        for (int i = 0; i < list.size(); i++) {
            disposeType(C0948f6.m1754L(LIST_ITEM_VALUE, i), list.get(i), jSONObject2);
            if (list.get(i) instanceof IMessageEntity) {
                jSONObject2.put(VAL_TYPE, 0);
            }
        }
        jSONObject.put(str, jSONObject2);
    }

    public static void writeMap(String str, Map map, JSONObject jSONObject) throws JSONException {
        JSONArray jSONArray = new JSONArray();
        for (Map.Entry entry : map.entrySet()) {
            Object key = entry.getKey();
            Object value = entry.getValue();
            if (key instanceof IMessageEntity) {
                jSONArray.put(createInnerJsonString((IMessageEntity) key));
            } else {
                jSONArray.put(key);
            }
            if (value instanceof IMessageEntity) {
                jSONArray.put(createInnerJsonString((IMessageEntity) value));
            } else {
                jSONArray.put(value);
            }
        }
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put(VAL_TYPE, 3);
        jSONObject2.put(MAP_MAP, jSONArray.toString());
        jSONObject.put(str, jSONObject2);
    }
}
