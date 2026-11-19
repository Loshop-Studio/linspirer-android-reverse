package com.alibaba.fastjson.serializer;

import com.huawei.updatesdk.p034a.p043b.p046c.p047c.AbstractC1604b;

/* loaded from: classes.dex */
public abstract class BeforeFilter implements SerializeFilter {
    public static final ThreadLocal<JSONSerializer> serializerLocal = new ThreadLocal<>();
    public static final ThreadLocal<Character> seperatorLocal = new ThreadLocal<>();
    public static final Character COMMA = Character.valueOf(AbstractC1604b.COMMA);

    public final char writeBefore(JSONSerializer jSONSerializer, Object obj, char c) {
        JSONSerializer jSONSerializer2 = serializerLocal.get();
        serializerLocal.set(jSONSerializer);
        seperatorLocal.set(Character.valueOf(c));
        writeBefore(obj);
        serializerLocal.set(jSONSerializer2);
        return seperatorLocal.get().charValue();
    }

    public abstract void writeBefore(Object obj);

    public final void writeKeyValue(String str, Object obj) {
        JSONSerializer jSONSerializer = serializerLocal.get();
        char cCharValue = seperatorLocal.get().charValue();
        boolean zContainsKey = jSONSerializer.references.containsKey(obj);
        jSONSerializer.writeKeyValue(cCharValue, str, obj);
        if (!zContainsKey) {
            jSONSerializer.references.remove(obj);
        }
        if (cCharValue != ',') {
            seperatorLocal.set(COMMA);
        }
    }
}
