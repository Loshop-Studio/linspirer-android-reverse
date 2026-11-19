package com.loc;

/* compiled from: EncryptRsaDataStrategy.java */
/* renamed from: com.loc.bb */
/* loaded from: classes.dex */
public final class EncryptRsaDataStrategy extends UpdateDataStrategy {

    /* renamed from: a */
    public EncryptProcessor f5094a;

    public EncryptRsaDataStrategy() {
        this.f5094a = new RSAAESEncryptProcessor();
    }

    public EncryptRsaDataStrategy(UpdateDataStrategy abstractC1744bg) {
        super(abstractC1744bg);
        this.f5094a = new RSAAESEncryptProcessor();
    }

    @Override // com.loc.AbstractC1744bg
    /* renamed from: a */
    public final byte[] mo4202a(byte[] bArr) {
        return this.f5094a.m3998b(bArr);
    }
}
