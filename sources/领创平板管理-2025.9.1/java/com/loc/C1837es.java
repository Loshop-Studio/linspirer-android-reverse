package com.loc;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* compiled from: Reflect.java */
/* renamed from: com.loc.es */
/* loaded from: classes.dex */
public final class C1837es {
    /* renamed from: a */
    public static Object m5050a(Class<?> cls, String str, Object[] objArr, Class<?>[] clsArr) throws NoSuchMethodException, SecurityException {
        Method declaredMethod = cls.getDeclaredMethod(str, clsArr);
        if (!declaredMethod.isAccessible()) {
            declaredMethod.setAccessible(true);
        }
        return declaredMethod.invoke(null, objArr);
    }

    /* renamed from: a */
    public static Object m5051a(Object obj, Class<?> cls, String str, Object... objArr) throws NoSuchMethodException, SecurityException {
        Class<?>[] clsArr = new Class[objArr.length];
        int length = objArr.length;
        for (int i = 0; i < length; i++) {
            clsArr[i] = objArr[i].getClass();
            if (clsArr[i] == Integer.class) {
                clsArr[i] = Integer.TYPE;
            }
            if (clsArr[i] == Boolean.class) {
                clsArr[i] = Boolean.TYPE;
            }
            if (clsArr[i] == Double.class) {
                clsArr[i] = Double.TYPE;
            }
        }
        Method declaredMethod = cls.getDeclaredMethod(str, clsArr);
        if (!declaredMethod.isAccessible()) {
            declaredMethod.setAccessible(true);
        }
        try {
            return declaredMethod.invoke(obj, objArr);
        } catch (Throwable th) {
            try {
                if (!(th instanceof InvocationTargetException)) {
                    return null;
                }
                C1834ep.m5014a(th.getTargetException(), "Reflect", "invokeMethod ".concat(String.valueOf(str)));
                return null;
            } catch (Throwable unused) {
                return null;
            }
        }
    }

    /* renamed from: a */
    public static Object m5052a(Object obj, String str, Object... objArr) {
        try {
            return m5051a(obj, obj.getClass(), str, objArr);
        } catch (Throwable unused) {
            return null;
        }
    }

    /* renamed from: a */
    public static Object m5053a(String str, String str2) throws NoSuchFieldException, ClassNotFoundException {
        Class<?> cls = Class.forName(str);
        Field field = cls.getField(str2);
        field.setAccessible(true);
        return field.get(cls);
    }

    /* renamed from: a */
    public static Object m5054a(String str, String str2, Object[] objArr, Class<?>[] clsArr) {
        return m5050a(Class.forName(str), str2, objArr, clsArr);
    }

    /* renamed from: b */
    public static int m5055b(Object obj, String str, Object... objArr) {
        return ((Integer) m5052a(obj, str, objArr)).intValue();
    }

    /* renamed from: b */
    public static int m5056b(String str, String str2) {
        return ((Integer) m5053a(str, str2)).intValue();
    }
}
