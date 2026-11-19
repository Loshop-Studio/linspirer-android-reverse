package com.alibaba.sdk.android.push.p022e.p023a;

import com.alibaba.sdk.android.ams.common.p008b.AmsIdentityProvider;
import com.alibaba.sdk.android.ams.common.p009c.AmsServiceFactory;

/* renamed from: com.alibaba.sdk.android.push.e.a.c */
/* loaded from: classes.dex */
public class PushIdentityServiceRegistration implements AmsServiceFactory<AmsIdentityProvider> {

    /* renamed from: a */
    public final PushIdentityProvider f1207a = new PushIdentityProvider();

    @Override // com.alibaba.sdk.android.ams.common.p009c.InterfaceC0499a
    /* renamed from: a */
    public Class<AmsIdentityProvider> mo494a() {
        return AmsIdentityProvider.class;
    }

    @Override // com.alibaba.sdk.android.ams.common.p009c.InterfaceC0499a
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public AmsIdentityProvider mo495b() {
        return this.f1207a;
    }
}
