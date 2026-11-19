package com.huawei.hms.support.gentyref;

import com.huawei.hem.CompilerOutline;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;

/* loaded from: classes.dex */
public final class GenericTypeReflector {
    public static Class<?> getType(Type type) {
        if (type instanceof Class) {
            return (Class) type;
        }
        if (type instanceof ParameterizedType) {
            return (Class) ((ParameterizedType) type).getRawType();
        }
        if (type instanceof TypeVariable) {
            TypeVariable typeVariable = (TypeVariable) type;
            return typeVariable.getBounds().length == 0 ? Object.class : getType(typeVariable.getBounds()[0]);
        }
        StringBuilder sbM1765j = CompilerOutline.m1765j("not supported: ");
        sbM1765j.append(type.getClass());
        throw new IllegalArgumentException(sbM1765j.toString());
    }
}
