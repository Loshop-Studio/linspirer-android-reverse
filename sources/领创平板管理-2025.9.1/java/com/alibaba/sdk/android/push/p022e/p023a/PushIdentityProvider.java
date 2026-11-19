package com.alibaba.sdk.android.push.p022e.p023a;

import com.alibaba.sdk.android.ams.common.p008b.AmsIdentityProvider;
import com.alibaba.sdk.android.ams.common.p008b.AmsClientIdentity;

/* renamed from: com.alibaba.sdk.android.push.e.a.b */
/* loaded from: classes.dex */
public class PushIdentityProvider implements AmsIdentityProvider {

    /* renamed from: a */
    public final AmsClientIdentity f1206a = new PushStoredClientIdentity();

    @Override // com.alibaba.sdk.android.ams.common.p008b.InterfaceC0496a
    /* renamed from: a */
    public AmsClientIdentity mo479a() {
        return this.f1206a;
    }
}
