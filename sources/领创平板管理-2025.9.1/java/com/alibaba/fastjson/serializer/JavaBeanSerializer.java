package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.PropertyNamingStrategy;
import com.alibaba.fastjson.annotation.JSONType;
import com.alibaba.fastjson.util.FieldInfo;
import com.alibaba.fastjson.util.TypeUtils;
import com.huawei.hem.C0948f6;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public class JavaBeanSerializer extends SerializeFilterable implements ObjectSerializer {
    public final SerializeBeanInfo beanInfo;
    public final FieldSerializer[] getters;
    public volatile transient long[] hashArray;
    public volatile transient short[] hashArrayMapping;
    public final FieldSerializer[] sortedGetters;

    public JavaBeanSerializer(Class<?> cls) {
        this(cls, (Map<String, String>) null);
    }

    public static Map<String, String> createAliasMap(String... strArr) {
        HashMap map = new HashMap();
        for (String str : strArr) {
            map.put(str, str);
        }
        return map;
    }

    public boolean applyLabel(JSONSerializer jSONSerializer, String str) {
        List<LabelFilter> list = jSONSerializer.labelFilters;
        if (list != null) {
            Iterator<LabelFilter> it = list.iterator();
            while (it.hasNext()) {
                if (!it.next().apply(str)) {
                    return false;
                }
            }
        }
        List<LabelFilter> list2 = this.labelFilters;
        if (list2 == null) {
            return true;
        }
        Iterator<LabelFilter> it2 = list2.iterator();
        while (it2.hasNext()) {
            if (!it2.next().apply(str)) {
                return false;
            }
        }
        return true;
    }

    public BeanContext getBeanContext(int i) {
        return this.sortedGetters[i].fieldContext;
    }

    public Set<String> getFieldNames(Object obj) {
        HashSet hashSet = new HashSet();
        for (FieldSerializer fieldSerializer : this.sortedGetters) {
            if (fieldSerializer.getPropertyValueDirect(obj) != null) {
                hashSet.add(fieldSerializer.fieldInfo.name);
            }
        }
        return hashSet;
    }

    public FieldSerializer getFieldSerializer(String str) {
        if (str == null) {
            return null;
        }
        int i = 0;
        int length = this.sortedGetters.length - 1;
        while (i <= length) {
            int i2 = (i + length) >>> 1;
            int iCompareTo = this.sortedGetters[i2].fieldInfo.name.compareTo(str);
            if (iCompareTo < 0) {
                i = i2 + 1;
            } else {
                if (iCompareTo <= 0) {
                    return this.sortedGetters[i2];
                }
                length = i2 - 1;
            }
        }
        return null;
    }

    public Type getFieldType(int i) {
        return this.sortedGetters[i].fieldInfo.fieldType;
    }

    public Object getFieldValue(Object obj, String str) {
        FieldSerializer fieldSerializer = getFieldSerializer(str);
        if (fieldSerializer == null) {
            throw new JSONException(C0948f6.m1760e("field not found. ", str));
        }
        try {
            return fieldSerializer.getPropertyValue(obj);
        } catch (IllegalAccessException e) {
            throw new JSONException(C0948f6.m1760e("getFieldValue error.", str), e);
        } catch (InvocationTargetException e2) {
            throw new JSONException(C0948f6.m1760e("getFieldValue error.", str), e2);
        }
    }

    public List<Object> getFieldValues(Object obj) {
        ArrayList arrayList = new ArrayList(this.sortedGetters.length);
        for (FieldSerializer fieldSerializer : this.sortedGetters) {
            arrayList.add(fieldSerializer.getPropertyValue(obj));
        }
        return arrayList;
    }

    public Map<String, Object> getFieldValuesMap(Object obj) {
        LinkedHashMap linkedHashMap = new LinkedHashMap(this.sortedGetters.length);
        for (FieldSerializer fieldSerializer : this.sortedGetters) {
            boolean zIsEnabled = SerializerFeature.isEnabled(fieldSerializer.features, SerializerFeature.SkipTransientField);
            FieldInfo fieldInfo = fieldSerializer.fieldInfo;
            if (!zIsEnabled || fieldInfo == null || !fieldInfo.fieldTransient) {
                FieldInfo fieldInfo2 = fieldSerializer.fieldInfo;
                if (fieldInfo2.unwrapped) {
                    Object json = JSON.toJSON(fieldSerializer.getPropertyValue(obj));
                    if (json instanceof Map) {
                        linkedHashMap.putAll((Map) json);
                    } else {
                        linkedHashMap.put(fieldSerializer.fieldInfo.name, fieldSerializer.getPropertyValue(obj));
                    }
                } else {
                    linkedHashMap.put(fieldInfo2.name, fieldSerializer.getPropertyValue(obj));
                }
            }
        }
        return linkedHashMap;
    }

    public JSONType getJSONType() {
        return this.beanInfo.jsonType;
    }

    public List<Object> getObjectFieldValues(Object obj) {
        ArrayList arrayList = new ArrayList(this.sortedGetters.length);
        for (FieldSerializer fieldSerializer : this.sortedGetters) {
            Class<?> cls = fieldSerializer.fieldInfo.fieldClass;
            if (!cls.isPrimitive() && !cls.getName().startsWith("java.lang.")) {
                arrayList.add(fieldSerializer.getPropertyValue(obj));
            }
        }
        return arrayList;
    }

    public int getSize(Object obj) {
        int i = 0;
        for (FieldSerializer fieldSerializer : this.sortedGetters) {
            if (fieldSerializer.getPropertyValueDirect(obj) != null) {
                i++;
            }
        }
        return i;
    }

    public Class<?> getType() {
        return this.beanInfo.beanType;
    }

    public boolean isWriteAsArray(JSONSerializer jSONSerializer) {
        return isWriteAsArray(jSONSerializer, 0);
    }

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public void write(JSONSerializer jSONSerializer, Object obj, Object obj2, Type type, int i) throws Throwable {
        write(jSONSerializer, obj, obj2, type, i, false);
    }

    public char writeAfter(JSONSerializer jSONSerializer, Object obj, char c) {
        List<AfterFilter> list = jSONSerializer.afterFilters;
        if (list != null) {
            Iterator<AfterFilter> it = list.iterator();
            while (it.hasNext()) {
                c = it.next().writeAfter(jSONSerializer, obj, c);
            }
        }
        List<AfterFilter> list2 = this.afterFilters;
        if (list2 != null) {
            Iterator<AfterFilter> it2 = list2.iterator();
            while (it2.hasNext()) {
                c = it2.next().writeAfter(jSONSerializer, obj, c);
            }
        }
        return c;
    }

    public void writeAsArray(JSONSerializer jSONSerializer, Object obj, Object obj2, Type type, int i) throws Throwable {
        write(jSONSerializer, obj, obj2, type, i);
    }

    public void writeAsArrayNonContext(JSONSerializer jSONSerializer, Object obj, Object obj2, Type type, int i) throws Throwable {
        write(jSONSerializer, obj, obj2, type, i);
    }

    public char writeBefore(JSONSerializer jSONSerializer, Object obj, char c) {
        List<BeforeFilter> list = jSONSerializer.beforeFilters;
        if (list != null) {
            Iterator<BeforeFilter> it = list.iterator();
            while (it.hasNext()) {
                c = it.next().writeBefore(jSONSerializer, obj, c);
            }
        }
        List<BeforeFilter> list2 = this.beforeFilters;
        if (list2 != null) {
            Iterator<BeforeFilter> it2 = list2.iterator();
            while (it2.hasNext()) {
                c = it2.next().writeBefore(jSONSerializer, obj, c);
            }
        }
        return c;
    }

    public void writeClassName(JSONSerializer jSONSerializer, String str, Object obj) {
        if (str == null) {
            str = jSONSerializer.config.typeKey;
        }
        jSONSerializer.out.writeFieldName(str, false);
        String name = this.beanInfo.typeName;
        if (name == null) {
            Class<?> superclass = obj.getClass();
            if (TypeUtils.isProxy(superclass)) {
                superclass = superclass.getSuperclass();
            }
            name = superclass.getName();
        }
        jSONSerializer.write(name);
    }

    public void writeDirectNonContext(JSONSerializer jSONSerializer, Object obj, Object obj2, Type type, int i) throws Throwable {
        write(jSONSerializer, obj, obj2, type, i);
    }

    public void writeNoneASM(JSONSerializer jSONSerializer, Object obj, Object obj2, Type type, int i) throws Throwable {
        write(jSONSerializer, obj, obj2, type, i, false);
    }

    public boolean writeReference(JSONSerializer jSONSerializer, Object obj, int i) {
        IdentityHashMap<Object, SerialContext> identityHashMap;
        SerialContext serialContext = jSONSerializer.context;
        int i2 = SerializerFeature.DisableCircularReferenceDetect.mask;
        if (serialContext == null || (serialContext.features & i2) != 0 || (i & i2) != 0 || (identityHashMap = jSONSerializer.references) == null || !identityHashMap.containsKey(obj)) {
            return false;
        }
        jSONSerializer.writeReference(obj);
        return true;
    }

    public JavaBeanSerializer(Class<?> cls, String... strArr) {
        this(cls, createAliasMap(strArr));
    }

    public boolean isWriteAsArray(JSONSerializer jSONSerializer, int i) {
        int i2 = SerializerFeature.BeanToArray.mask;
        return ((this.beanInfo.features & i2) == 0 && !jSONSerializer.out.beanToArray && (i & i2) == 0) ? false : true;
    }

    /* JADX WARN: Removed duplicated region for block: B:106:0x0152 A[PHI: r26
      0x0152: PHI (r26v11 com.alibaba.fastjson.serializer.FieldSerializer) = 
      (r26v9 com.alibaba.fastjson.serializer.FieldSerializer)
      (r26v9 com.alibaba.fastjson.serializer.FieldSerializer)
      (r26v13 com.alibaba.fastjson.serializer.FieldSerializer)
      (r26v9 com.alibaba.fastjson.serializer.FieldSerializer)
      (r26v9 com.alibaba.fastjson.serializer.FieldSerializer)
     binds: [B:75:0x0103, B:88:0x0121, B:105:0x0150, B:93:0x0132, B:80:0x010d] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:107:0x015c  */
    /* JADX WARN: Removed duplicated region for block: B:254:0x0356  */
    /* JADX WARN: Removed duplicated region for block: B:255:0x0358 A[Catch: Exception -> 0x04b2, all -> 0x04fc, TryCatch #7 {Exception -> 0x04b2, blocks: (B:68:0x00ea, B:82:0x0110, B:90:0x0124, B:104:0x014c, B:113:0x0171, B:116:0x019c, B:118:0x01a8, B:120:0x01b7, B:122:0x01c1, B:125:0x01cb, B:127:0x01d6, B:129:0x01da, B:132:0x01e1, B:134:0x01e5, B:135:0x01e9, B:137:0x01ee, B:139:0x01f5, B:141:0x01fb, B:143:0x0206, B:145:0x020a, B:148:0x0211, B:151:0x0218, B:153:0x021d, B:156:0x0225, B:158:0x022d, B:160:0x0238, B:162:0x023c, B:165:0x0243, B:167:0x0247, B:168:0x024c, B:170:0x0251, B:172:0x0258, B:173:0x025d, B:175:0x0265, B:177:0x0270, B:179:0x0274, B:182:0x027b, B:184:0x027f, B:185:0x0284, B:187:0x0289, B:189:0x0290, B:191:0x0297, B:193:0x029b, B:195:0x02a5, B:199:0x02b0, B:201:0x02b4, B:203:0x02bd, B:205:0x02c8, B:207:0x02ce, B:209:0x02d2, B:212:0x02dd, B:214:0x02e1, B:216:0x02e5, B:219:0x02f0, B:221:0x02f4, B:223:0x02f8, B:226:0x0303, B:228:0x0307, B:230:0x030b, B:233:0x0319, B:235:0x031d, B:237:0x0321, B:240:0x032e, B:242:0x0332, B:244:0x0336, B:247:0x0344, B:249:0x0348, B:251:0x034c, B:255:0x0358, B:257:0x035c, B:259:0x0360, B:262:0x0370, B:264:0x037d, B:269:0x0389, B:271:0x038f, B:328:0x0459, B:330:0x045d, B:332:0x0461, B:335:0x046b, B:337:0x0473, B:338:0x047b, B:340:0x0481, B:276:0x039d, B:277:0x03a0, B:279:0x03a6, B:281:0x03b2, B:288:0x03c8, B:293:0x03d2, B:297:0x03e7, B:300:0x03ef, B:303:0x03f9, B:305:0x0401, B:306:0x040e, B:308:0x0417, B:310:0x041e, B:311:0x0422, B:313:0x0429, B:314:0x042d, B:315:0x0431, B:317:0x0436, B:318:0x043a, B:319:0x043e, B:321:0x0442, B:323:0x0446, B:326:0x0452, B:327:0x0456, B:294:0x03dd), top: B:437:0x00ea }] */
    /* JADX WARN: Removed duplicated region for block: B:265:0x0381  */
    /* JADX WARN: Removed duplicated region for block: B:268:0x0387  */
    /* JADX WARN: Removed duplicated region for block: B:273:0x0396  */
    /* JADX WARN: Removed duplicated region for block: B:295:0x03e3  */
    /* JADX WARN: Removed duplicated region for block: B:330:0x045d A[Catch: Exception -> 0x04b2, all -> 0x04fc, TryCatch #7 {Exception -> 0x04b2, blocks: (B:68:0x00ea, B:82:0x0110, B:90:0x0124, B:104:0x014c, B:113:0x0171, B:116:0x019c, B:118:0x01a8, B:120:0x01b7, B:122:0x01c1, B:125:0x01cb, B:127:0x01d6, B:129:0x01da, B:132:0x01e1, B:134:0x01e5, B:135:0x01e9, B:137:0x01ee, B:139:0x01f5, B:141:0x01fb, B:143:0x0206, B:145:0x020a, B:148:0x0211, B:151:0x0218, B:153:0x021d, B:156:0x0225, B:158:0x022d, B:160:0x0238, B:162:0x023c, B:165:0x0243, B:167:0x0247, B:168:0x024c, B:170:0x0251, B:172:0x0258, B:173:0x025d, B:175:0x0265, B:177:0x0270, B:179:0x0274, B:182:0x027b, B:184:0x027f, B:185:0x0284, B:187:0x0289, B:189:0x0290, B:191:0x0297, B:193:0x029b, B:195:0x02a5, B:199:0x02b0, B:201:0x02b4, B:203:0x02bd, B:205:0x02c8, B:207:0x02ce, B:209:0x02d2, B:212:0x02dd, B:214:0x02e1, B:216:0x02e5, B:219:0x02f0, B:221:0x02f4, B:223:0x02f8, B:226:0x0303, B:228:0x0307, B:230:0x030b, B:233:0x0319, B:235:0x031d, B:237:0x0321, B:240:0x032e, B:242:0x0332, B:244:0x0336, B:247:0x0344, B:249:0x0348, B:251:0x034c, B:255:0x0358, B:257:0x035c, B:259:0x0360, B:262:0x0370, B:264:0x037d, B:269:0x0389, B:271:0x038f, B:328:0x0459, B:330:0x045d, B:332:0x0461, B:335:0x046b, B:337:0x0473, B:338:0x047b, B:340:0x0481, B:276:0x039d, B:277:0x03a0, B:279:0x03a6, B:281:0x03b2, B:288:0x03c8, B:293:0x03d2, B:297:0x03e7, B:300:0x03ef, B:303:0x03f9, B:305:0x0401, B:306:0x040e, B:308:0x0417, B:310:0x041e, B:311:0x0422, B:313:0x0429, B:314:0x042d, B:315:0x0431, B:317:0x0436, B:318:0x043a, B:319:0x043e, B:321:0x0442, B:323:0x0446, B:326:0x0452, B:327:0x0456, B:294:0x03dd), top: B:437:0x00ea }] */
    /* JADX WARN: Removed duplicated region for block: B:346:0x048d  */
    /* JADX WARN: Removed duplicated region for block: B:348:0x0490  */
    /* JADX WARN: Removed duplicated region for block: B:397:0x053f A[Catch: all -> 0x0552, TRY_ENTER, TryCatch #9 {all -> 0x0552, blocks: (B:397:0x053f, B:407:0x0592, B:409:0x0598, B:410:0x05b0, B:412:0x05b4, B:416:0x05bd, B:417:0x05c2, B:401:0x0557, B:403:0x055b, B:405:0x0561, B:406:0x057c), top: B:441:0x053d }] */
    /* JADX WARN: Removed duplicated region for block: B:400:0x0555  */
    /* JADX WARN: Removed duplicated region for block: B:409:0x0598 A[Catch: all -> 0x0552, TryCatch #9 {all -> 0x0552, blocks: (B:397:0x053f, B:407:0x0592, B:409:0x0598, B:410:0x05b0, B:412:0x05b4, B:416:0x05bd, B:417:0x05c2, B:401:0x0557, B:403:0x055b, B:405:0x0561, B:406:0x057c), top: B:441:0x053d }] */
    /* JADX WARN: Removed duplicated region for block: B:412:0x05b4 A[Catch: all -> 0x0552, TryCatch #9 {all -> 0x0552, blocks: (B:397:0x053f, B:407:0x0592, B:409:0x0598, B:410:0x05b0, B:412:0x05b4, B:416:0x05bd, B:417:0x05c2, B:401:0x0557, B:403:0x055b, B:405:0x0561, B:406:0x057c), top: B:441:0x053d }] */
    /* JADX WARN: Removed duplicated region for block: B:414:0x05ba  */
    /* JADX WARN: Removed duplicated region for block: B:415:0x05bb  */
    /* JADX WARN: Removed duplicated region for block: B:456:0x04a0 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00ab  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void write(com.alibaba.fastjson.serializer.JSONSerializer r35, java.lang.Object r36, java.lang.Object r37, java.lang.reflect.Type r38, int r39, boolean r40) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 1481
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.serializer.JavaBeanSerializer.write(com.alibaba.fastjson.serializer.JSONSerializer, java.lang.Object, java.lang.Object, java.lang.reflect.Type, int, boolean):void");
    }

    public JavaBeanSerializer(Class<?> cls, Map<String, String> map) {
        this(TypeUtils.buildBeanInfo(cls, map, null));
    }

    public JavaBeanSerializer(SerializeBeanInfo serializeBeanInfo) {
        FieldSerializer[] fieldSerializerArr;
        boolean z;
        this.beanInfo = serializeBeanInfo;
        this.sortedGetters = new FieldSerializer[serializeBeanInfo.sortedFields.length];
        int i = 0;
        while (true) {
            fieldSerializerArr = this.sortedGetters;
            if (i >= fieldSerializerArr.length) {
                break;
            }
            fieldSerializerArr[i] = new FieldSerializer(serializeBeanInfo.beanType, serializeBeanInfo.sortedFields[i]);
            i++;
        }
        FieldInfo[] fieldInfoArr = serializeBeanInfo.fields;
        if (fieldInfoArr == serializeBeanInfo.sortedFields) {
            this.getters = fieldSerializerArr;
        } else {
            this.getters = new FieldSerializer[fieldInfoArr.length];
            int i2 = 0;
            while (true) {
                if (i2 >= this.getters.length) {
                    z = false;
                    break;
                }
                FieldSerializer fieldSerializer = getFieldSerializer(serializeBeanInfo.fields[i2].name);
                if (fieldSerializer == null) {
                    z = true;
                    break;
                } else {
                    this.getters[i2] = fieldSerializer;
                    i2++;
                }
            }
            if (z) {
                FieldSerializer[] fieldSerializerArr2 = this.sortedGetters;
                System.arraycopy(fieldSerializerArr2, 0, this.getters, 0, fieldSerializerArr2.length);
            }
        }
        JSONType jSONType = serializeBeanInfo.jsonType;
        if (jSONType != null) {
            for (Class<? extends SerializeFilter> cls : jSONType.serialzeFilters()) {
                try {
                    addFilter(cls.getConstructor(new Class[0]).newInstance(new Object[0]));
                } catch (Exception unused) {
                }
            }
        }
    }

    public FieldSerializer getFieldSerializer(long j) {
        PropertyNamingStrategy[] propertyNamingStrategyArrValues;
        int iBinarySearch;
        if (this.hashArray == null) {
            propertyNamingStrategyArrValues = PropertyNamingStrategy.values();
            long[] jArr = new long[this.sortedGetters.length * propertyNamingStrategyArrValues.length];
            int i = 0;
            int i2 = 0;
            while (true) {
                FieldSerializer[] fieldSerializerArr = this.sortedGetters;
                if (i >= fieldSerializerArr.length) {
                    break;
                }
                String str = fieldSerializerArr[i].fieldInfo.name;
                jArr[i2] = TypeUtils.fnv1a_64(str);
                i2++;
                for (PropertyNamingStrategy propertyNamingStrategy : propertyNamingStrategyArrValues) {
                    String strTranslate = propertyNamingStrategy.translate(str);
                    if (!str.equals(strTranslate)) {
                        jArr[i2] = TypeUtils.fnv1a_64(strTranslate);
                        i2++;
                    }
                }
                i++;
            }
            Arrays.sort(jArr, 0, i2);
            this.hashArray = new long[i2];
            System.arraycopy(jArr, 0, this.hashArray, 0, i2);
        } else {
            propertyNamingStrategyArrValues = null;
        }
        int iBinarySearch2 = Arrays.binarySearch(this.hashArray, j);
        if (iBinarySearch2 < 0) {
            return null;
        }
        if (this.hashArrayMapping == null) {
            if (propertyNamingStrategyArrValues == null) {
                propertyNamingStrategyArrValues = PropertyNamingStrategy.values();
            }
            short[] sArr = new short[this.hashArray.length];
            Arrays.fill(sArr, (short) -1);
            int i3 = 0;
            while (true) {
                FieldSerializer[] fieldSerializerArr2 = this.sortedGetters;
                if (i3 >= fieldSerializerArr2.length) {
                    break;
                }
                String str2 = fieldSerializerArr2[i3].fieldInfo.name;
                int iBinarySearch3 = Arrays.binarySearch(this.hashArray, TypeUtils.fnv1a_64(str2));
                if (iBinarySearch3 >= 0) {
                    sArr[iBinarySearch3] = (short) i3;
                }
                for (PropertyNamingStrategy propertyNamingStrategy2 : propertyNamingStrategyArrValues) {
                    String strTranslate2 = propertyNamingStrategy2.translate(str2);
                    if (!str2.equals(strTranslate2) && (iBinarySearch = Arrays.binarySearch(this.hashArray, TypeUtils.fnv1a_64(strTranslate2))) >= 0) {
                        sArr[iBinarySearch] = (short) i3;
                    }
                }
                i3++;
            }
            this.hashArrayMapping = sArr;
        }
        short s = this.hashArrayMapping[iBinarySearch2];
        if (s != -1) {
            return this.sortedGetters[s];
        }
        return null;
    }

    public Object getFieldValue(Object obj, String str, long j, boolean z) {
        FieldSerializer fieldSerializer = getFieldSerializer(j);
        if (fieldSerializer == null) {
            if (z) {
                throw new JSONException(C0948f6.m1760e("field not found. ", str));
            }
            return null;
        }
        try {
            return fieldSerializer.getPropertyValue(obj);
        } catch (IllegalAccessException e) {
            throw new JSONException(C0948f6.m1760e("getFieldValue error.", str), e);
        } catch (InvocationTargetException e2) {
            throw new JSONException(C0948f6.m1760e("getFieldValue error.", str), e2);
        }
    }
}
