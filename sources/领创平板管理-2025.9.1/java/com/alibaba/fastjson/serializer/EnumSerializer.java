package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.JSONException;
import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Type;

/* loaded from: classes.dex */
public class EnumSerializer implements ObjectSerializer {
    public static final EnumSerializer instance = new EnumSerializer();
    public final Member member;

    public EnumSerializer() {
        this.member = null;
    }

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public void write(JSONSerializer jSONSerializer, Object obj, Object obj2, Type type, int i) {
        Member member = this.member;
        if (member == null) {
            jSONSerializer.out.writeEnum((Enum) obj);
            return;
        }
        try {
            jSONSerializer.write(member instanceof Field ? ((Field) member).get(obj) : ((Method) member).invoke(obj, new Object[0]));
        } catch (Exception e) {
            throw new JSONException("getEnumValue error", e);
        }
    }

    public EnumSerializer(Member member) {
        this.member = member;
    }
}
