package com.alibaba.sdk.android.ams.common.p009c;

import com.huawei.hem.CompilerOutline;
import java.util.HashMap;
import java.util.Map;

/* renamed from: com.alibaba.sdk.android.ams.common.c.b */
/* loaded from: classes.dex */
public class AmsServiceRegistryHolder {

    /* renamed from: a */
    public static Map<Class<?>, AmsServiceFactory<?>> f843a;

    static {
        HashMap map = new HashMap();
        for (AmsServiceFactory interfaceC0499a : AmsServiceLoader.m497a(AmsServiceFactory.class, AmsServiceRegistry.class.getClassLoader())) {
            AmsServiceFactory interfaceC0499a2 = (AmsServiceFactory) map.get(interfaceC0499a.mo494a());
            if (map.containsKey(interfaceC0499a.mo494a())) {
                StringBuilder sbM1765j = CompilerOutline.m1765j("Ambiguous providers: ");
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
