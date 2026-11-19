package com.loc;

import com.huawei.hem.AMapCoreUtilities;

/* compiled from: ADDNumEncryptProcessor.java */
/* renamed from: com.loc.ae */
/* loaded from: classes.dex */
public final class ADDNumEncryptProcessor extends EncryptProcessor {
    public ADDNumEncryptProcessor() {
    }

    public ADDNumEncryptProcessor(EncryptProcessor abstractC1717ag) {
        super(abstractC1717ag);
    }

    @Override // com.loc.AbstractC1717ag
    /* renamed from: a */
    public final byte[] mo3997a(byte[] bArr) {
        return AMapCoreUtilities.m2245n(AMapCoreUtilities.m2236e(bArr) + "||1");
    }
}
