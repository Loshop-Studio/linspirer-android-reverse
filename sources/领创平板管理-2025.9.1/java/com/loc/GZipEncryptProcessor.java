package com.loc;

import com.huawei.hem.AMapCoreUtilities;

/* compiled from: GZipEncryptProcessor.java */
/* renamed from: com.loc.ah */
/* loaded from: classes.dex */
public final class GZipEncryptProcessor extends EncryptProcessor {
    public GZipEncryptProcessor() {
    }

    public GZipEncryptProcessor(EncryptProcessor abstractC1717ag) {
        super(abstractC1717ag);
    }

    @Override // com.loc.AbstractC1717ag
    /* renamed from: a */
    public final byte[] mo3997a(byte[] bArr) {
        return AMapCoreUtilities.m2256y(bArr);
    }
}
