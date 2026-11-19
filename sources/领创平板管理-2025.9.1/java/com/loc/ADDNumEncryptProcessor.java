package com.loc;

import com.huawei.hem.C1094l1;

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
        return C1094l1.m2245n(C1094l1.m2236e(bArr) + "||1");
    }
}
