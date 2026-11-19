package com.loc;

import com.huawei.hem.AMapEncryptionUtilities;

/* compiled from: RSAAESEncryptProcessor.java */
/* renamed from: com.loc.ai */
/* loaded from: classes.dex */
public final class RSAAESEncryptProcessor extends EncryptProcessor {
    public RSAAESEncryptProcessor() {
    }

    public RSAAESEncryptProcessor(EncryptProcessor abstractC1717ag) {
        super(abstractC1717ag);
    }

    @Override // com.loc.AbstractC1717ag
    /* renamed from: a */
    public final byte[] mo3997a(byte[] bArr) {
        return AMapEncryptionUtilities.m1930a(bArr);
    }
}
