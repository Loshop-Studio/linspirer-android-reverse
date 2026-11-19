package com.loc;

/* compiled from: EncryptProcessor.java */
/* renamed from: com.loc.ag */
/* loaded from: classes.dex */
public abstract class AbstractC1717ag {

    /* renamed from: a */
    public AbstractC1717ag f4884a;

    public AbstractC1717ag() {
    }

    public AbstractC1717ag(AbstractC1717ag abstractC1717ag) {
        this.f4884a = abstractC1717ag;
    }

    /* renamed from: a */
    public abstract byte[] mo3997a(byte[] bArr);

    /* renamed from: b */
    public final byte[] m3998b(byte[] bArr) {
        AbstractC1717ag abstractC1717ag = this.f4884a;
        if (abstractC1717ag != null) {
            bArr = abstractC1717ag.m3998b(bArr);
        }
        return mo3997a(bArr);
    }
}
