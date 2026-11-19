package com.alibaba.sdk.android.ams.common.p009c;

import com.huawei.hem.CompilerOutline;

/* renamed from: com.alibaba.sdk.android.ams.common.c.c */
/* loaded from: classes.dex */
public final class AmsServiceRegistry {
    /* renamed from: a */
    public static <T> T m496a(Class<T> cls) {
        AmsServiceFactory<?> interfaceC0499a = AmsServiceRegistryHolder.f843a.get(cls);
        if (interfaceC0499a != null) {
            return cls.cast(interfaceC0499a.mo495b());
        }
        StringBuilder sbM1765j = CompilerOutline.m1765j("No factory was registered for ");
        sbM1765j.append(cls.getCanonicalName());
        throw new IllegalArgumentException(sbM1765j.toString());
    }
}
