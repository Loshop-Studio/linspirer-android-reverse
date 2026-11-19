package com.loc;

/* compiled from: EncryptProcessor.java */
/* renamed from: com.loc.ag */
/* loaded from: classes.dex */
public abstract class EncryptProcessor {

    /* renamed from: a */
    public EncryptProcessor f4884a;

    public EncryptProcessor() {
    }

    public EncryptProcessor(EncryptProcessor abstractC1717ag) {
        this.f4884a = abstractC1717ag;
    }

    /* renamed from: a */
    public abstract byte[] mo3997a(byte[] bArr);

    /* renamed from: b */
    public final byte[] m3998b(byte[] bArr) {
        EncryptProcessor abstractC1717ag = this.f4884a;
        if (abstractC1717ag != null) {
            bArr = abstractC1717ag.m3998b(bArr);
        }
        return mo3997a(bArr);
    }
}
