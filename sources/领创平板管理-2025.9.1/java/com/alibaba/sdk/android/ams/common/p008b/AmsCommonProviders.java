package com.alibaba.sdk.android.ams.common.p008b;

import com.alibaba.sdk.android.ams.common.p009c.AmsServiceRegistry;

/* renamed from: com.alibaba.sdk.android.ams.common.b.c */
/* loaded from: classes.dex */
public class AmsCommonProviders {
    /* renamed from: a */
    public static AmsClientIdentity m492a() {
        return m493b().mo479a();
    }

    /* renamed from: b */
    public static AmsIdentityProvider m493b() {
        return (AmsIdentityProvider) AmsServiceRegistry.m496a(AmsIdentityProvider.class);
    }
}
