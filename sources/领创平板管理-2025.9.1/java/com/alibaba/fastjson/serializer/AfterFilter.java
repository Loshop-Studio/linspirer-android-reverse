package com.alibaba.fastjson.serializer;

import com.huawei.updatesdk.p034a.p043b.p046c.p047c.UpdateJsonBean;
import java.util.IdentityHashMap;

/* loaded from: classes.dex */
public abstract class AfterFilter implements SerializeFilter {
    public static final ThreadLocal<JSONSerializer> serializerLocal = new ThreadLocal<>();
    public static final ThreadLocal<Character> seperatorLocal = new ThreadLocal<>();
    public static final Character COMMA = Character.valueOf(UpdateJsonBean.COMMA);

    public final char writeAfter(JSONSerializer jSONSerializer, Object obj, char c) {
        JSONSerializer jSONSerializer2 = serializerLocal.get();
        serializerLocal.set(jSONSerializer);
        seperatorLocal.set(Character.valueOf(c));
        writeAfter(obj);
        serializerLocal.set(jSONSerializer2);
        return seperatorLocal.get().charValue();
    }

    public abstract void writeAfter(Object obj);

    public final void writeKeyValue(String str, Object obj) {
        IdentityHashMap<Object, SerialContext> identityHashMap;
        JSONSerializer jSONSerializer = serializerLocal.get();
        char cCharValue = seperatorLocal.get().charValue();
        boolean zContainsReference = jSONSerializer.containsReference(obj);
        jSONSerializer.writeKeyValue(cCharValue, str, obj);
        if (!zContainsReference && (identityHashMap = jSONSerializer.references) != null) {
            identityHashMap.remove(obj);
        }
        if (cCharValue != ',') {
            seperatorLocal.set(COMMA);
        }
    }
}
