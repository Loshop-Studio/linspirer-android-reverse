package com.loc;

import com.huawei.hem.C0994h1;
import com.huawei.hem.C1094l1;

/* compiled from: Base64EncryptProcessor.java */
/* renamed from: com.loc.af */
/* loaded from: classes.dex */
public final class Base64EncryptProcessor extends EncryptProcessor {
    public Base64EncryptProcessor() {
    }

    public Base64EncryptProcessor(EncryptProcessor abstractC1717ag) {
        super(abstractC1717ag);
    }

    @Override // com.loc.AbstractC1717ag
    /* renamed from: a */
    public final byte[] mo3997a(byte[] bArr) {
        return C1094l1.m2245n(C0994h1.m1935f(bArr));
    }
}
