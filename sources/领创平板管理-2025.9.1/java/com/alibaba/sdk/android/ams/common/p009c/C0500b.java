package com.alibaba.sdk.android.ams.common.p009c;

import com.huawei.hem.C0948f6;
import java.util.HashMap;
import java.util.Map;

/* renamed from: com.alibaba.sdk.android.ams.common.c.b */
/* loaded from: classes.dex */
public class C0500b {

    /* renamed from: a */
    public static Map<Class<?>, InterfaceC0499a<?>> f843a;

    static {
        HashMap map = new HashMap();
        for (InterfaceC0499a interfaceC0499a : C0502d.m497a(InterfaceC0499a.class, C0501c.class.getClassLoader())) {
            InterfaceC0499a interfaceC0499a2 = (InterfaceC0499a) map.get(interfaceC0499a.mo494a());
            if (map.containsKey(interfaceC0499a.mo494a())) {
                StringBuilder sbM1765j = C0948f6.m1765j("Ambiguous providers: ");
                sbM1765j.append(interfaceC0499a.getClass().getCanonicalName());
                sbM1765j.append(" versus ");
                sbM1765j.append(interfaceC0499a2.getClass().getCanonicalName());
                throw new IllegalStateException(sbM1765j.toString());
            }
            map.put(interfaceC0499a.mo494a(), interfaceC0499a);
        }
        f843a = map;
    }
}
