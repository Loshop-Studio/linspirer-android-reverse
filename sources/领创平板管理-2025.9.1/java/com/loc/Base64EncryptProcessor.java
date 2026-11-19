package com.loc;

import com.huawei.hem.AMapEncryptionUtilities;
import com.huawei.hem.AMapCoreUtilities;

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
        return AMapCoreUtilities.m2245n(AMapEncryptionUtilities.m1935f(bArr));
    }
}
