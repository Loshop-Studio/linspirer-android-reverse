package com.huawei.hem;

import android.arch.lifecycle.CompositeGeneratedAdaptersObserver;
import android.arch.lifecycle.FullLifecycleObserver;
import android.arch.lifecycle.FullLifecycleObserverAdapter;
import android.arch.lifecycle.GenericLifecycleObserver;
import android.arch.lifecycle.ReflectiveGenericLifecycleObserver;
import android.arch.lifecycle.SingleGeneratedAdapterObserver;
import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: Lifecycling.java */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: com.huawei.hem.m */
/* loaded from: classes.dex */
public class C1118m {

    /* renamed from: a */
    public static Map<Class, Integer> f3226a = new HashMap();

    /* renamed from: b */
    public static Map<Class, List<Constructor<? extends InterfaceC0967g>>> f3227b = new HashMap();

    /* renamed from: a */
    public static InterfaceC0967g m2340a(Constructor<? extends InterfaceC0967g> constructor, Object obj) {
        try {
            return constructor.newInstance(obj);
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        } catch (InstantiationException e2) {
            throw new RuntimeException(e2);
        } catch (InvocationTargetException e3) {
            throw new RuntimeException(e3);
        }
    }

    /* renamed from: b */
    public static String m2341b(String str) {
        return str.replace(".", "_") + "_LifecycleAdapter";
    }

    @NonNull
    /* renamed from: c */
    public static GenericLifecycleObserver m2342c(Object obj) {
        if (obj instanceof FullLifecycleObserver) {
            return new FullLifecycleObserverAdapter((FullLifecycleObserver) obj);
        }
        if (obj instanceof GenericLifecycleObserver) {
            return (GenericLifecycleObserver) obj;
        }
        Class<?> cls = obj.getClass();
        if (m2343d(cls) != 2) {
            return new ReflectiveGenericLifecycleObserver(obj);
        }
        List<Constructor<? extends InterfaceC0967g>> list = f3227b.get(cls);
        if (list.size() == 1) {
            return new SingleGeneratedAdapterObserver(m2340a(list.get(0), obj));
        }
        InterfaceC0967g[] interfaceC0967gArr = new InterfaceC0967g[list.size()];
        for (int i = 0; i < list.size(); i++) {
            interfaceC0967gArr[i] = m2340a(list.get(i), obj);
        }
        return new CompositeGeneratedAdaptersObserver(interfaceC0967gArr);
    }

    /* JADX WARN: Removed duplicated region for block: B:60:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0127 A[SYNTHETIC] */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m2343d(java.lang.Class<?> r11) throws java.lang.NoSuchMethodException, java.lang.SecurityException {
        /*
            Method dump skipped, instructions count: 323
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.C1118m.m2343d(java.lang.Class):int");
    }
}
