package com.huawei.hem;

import android.support.annotation.Nullable;
import com.huawei.hem.AbstractC0992h;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: ClassesInfoCache.java */
/* renamed from: com.huawei.hem.f */
/* loaded from: classes.dex */
public class C0941f {

    /* renamed from: c */
    public static C0941f f2577c = new C0941f();

    /* renamed from: a */
    public final Map<Class, a> f2578a = new HashMap();

    /* renamed from: b */
    public final Map<Class, Boolean> f2579b = new HashMap();

    /* compiled from: ClassesInfoCache.java */
    /* renamed from: com.huawei.hem.f$a */
    public static class a {

        /* renamed from: a */
        public final Map<AbstractC0992h.a, List<b>> f2580a = new HashMap();

        /* renamed from: b */
        public final Map<b, AbstractC0992h.a> f2581b;

        public a(Map<b, AbstractC0992h.a> map) {
            this.f2581b = map;
            for (Map.Entry<b, AbstractC0992h.a> entry : map.entrySet()) {
                AbstractC0992h.a value = entry.getValue();
                List<b> arrayList = this.f2580a.get(value);
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                    this.f2580a.put(value, arrayList);
                }
                arrayList.add(entry.getKey());
            }
        }

        /* renamed from: a */
        public static void m1696a(List<b> list, InterfaceC1042j interfaceC1042j, AbstractC0992h.a aVar, Object obj) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    b bVar = list.get(size);
                    if (bVar == null) {
                        throw null;
                    }
                    try {
                        int i = bVar.f2582a;
                        if (i == 0) {
                            bVar.f2583b.invoke(obj, new Object[0]);
                        } else if (i == 1) {
                            bVar.f2583b.invoke(obj, interfaceC1042j);
                        } else if (i == 2) {
                            bVar.f2583b.invoke(obj, interfaceC1042j, aVar);
                        }
                    } catch (IllegalAccessException e) {
                        throw new RuntimeException(e);
                    } catch (InvocationTargetException e2) {
                        throw new RuntimeException("Failed to call observer method", e2.getCause());
                    }
                }
            }
        }
    }

    /* compiled from: ClassesInfoCache.java */
    /* renamed from: com.huawei.hem.f$b */
    public static class b {

        /* renamed from: a */
        public final int f2582a;

        /* renamed from: b */
        public final Method f2583b;

        public b(int i, Method method) {
            this.f2582a = i;
            this.f2583b = method;
            method.setAccessible(true);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || b.class != obj.getClass()) {
                return false;
            }
            b bVar = (b) obj;
            return this.f2582a == bVar.f2582a && this.f2583b.getName().equals(bVar.f2583b.getName());
        }

        public int hashCode() {
            return this.f2583b.getName().hashCode() + (this.f2582a * 31);
        }
    }

    /* renamed from: a */
    public final a m1693a(Class cls, @Nullable Method[] methodArr) {
        int i;
        a aVarM1694b;
        Class superclass = cls.getSuperclass();
        HashMap map = new HashMap();
        if (superclass != null && (aVarM1694b = m1694b(superclass)) != null) {
            map.putAll(aVarM1694b.f2581b);
        }
        for (Class cls2 : cls.getInterfaces()) {
            for (Map.Entry<b, AbstractC0992h.a> entry : m1694b(cls2).f2581b.entrySet()) {
                m1695c(map, entry.getKey(), entry.getValue(), cls);
            }
        }
        if (methodArr == null) {
            try {
                methodArr = cls.getDeclaredMethods();
            } catch (NoClassDefFoundError e) {
                throw new IllegalArgumentException("The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor.", e);
            }
        }
        boolean z = false;
        for (Method method : methodArr) {
            InterfaceC1218q interfaceC1218q = (InterfaceC1218q) method.getAnnotation(InterfaceC1218q.class);
            if (interfaceC1218q != null) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length <= 0) {
                    i = 0;
                } else {
                    if (!parameterTypes[0].isAssignableFrom(InterfaceC1042j.class)) {
                        throw new IllegalArgumentException("invalid parameter type. Must be one and instanceof LifecycleOwner");
                    }
                    i = 1;
                }
                AbstractC0992h.a aVarValue = interfaceC1218q.value();
                if (parameterTypes.length > 1) {
                    if (!parameterTypes[1].isAssignableFrom(AbstractC0992h.a.class)) {
                        throw new IllegalArgumentException("invalid parameter type. second arg must be an event");
                    }
                    if (aVarValue != AbstractC0992h.a.ON_ANY) {
                        throw new IllegalArgumentException("Second arg is supported only for ON_ANY value");
                    }
                    i = 2;
                }
                if (parameterTypes.length > 2) {
                    throw new IllegalArgumentException("cannot have more than 2 params");
                }
                m1695c(map, new b(i, method), aVarValue, cls);
                z = true;
            }
        }
        a aVar = new a(map);
        this.f2578a.put(cls, aVar);
        this.f2579b.put(cls, Boolean.valueOf(z));
        return aVar;
    }

    /* renamed from: b */
    public a m1694b(Class cls) {
        a aVar = this.f2578a.get(cls);
        return aVar != null ? aVar : m1693a(cls, null);
    }

    /* renamed from: c */
    public final void m1695c(Map<b, AbstractC0992h.a> map, b bVar, AbstractC0992h.a aVar, Class cls) {
        AbstractC0992h.a aVar2 = map.get(bVar);
        if (aVar2 == null || aVar == aVar2) {
            if (aVar2 == null) {
                map.put(bVar, aVar);
                return;
            }
            return;
        }
        Method method = bVar.f2583b;
        StringBuilder sbM1765j = C0948f6.m1765j("Method ");
        sbM1765j.append(method.getName());
        sbM1765j.append(" in ");
        sbM1765j.append(cls.getName());
        sbM1765j.append(" already declared with different @OnLifecycleEvent value: previous value ");
        sbM1765j.append(aVar2);
        sbM1765j.append(", new value ");
        sbM1765j.append(aVar);
        throw new IllegalArgumentException(sbM1765j.toString());
    }
}
