package com.loc;

/* compiled from: UpdateDataStrategy.java */
/* renamed from: com.loc.bg */
/* loaded from: classes.dex */
public abstract class AbstractC1744bg {

    /* renamed from: c */
    public AbstractC1744bg f5104c;

    /* renamed from: d */
    public byte[] f5105d = null;

    public AbstractC1744bg() {
    }

    public AbstractC1744bg(AbstractC1744bg abstractC1744bg) {
        this.f5104c = abstractC1744bg;
    }

    /* renamed from: a */
    public final byte[] m4206a() {
        byte[] bArrMo4202a = mo4202a(this.f5105d);
        AbstractC1744bg abstractC1744bg = this.f5104c;
        if (abstractC1744bg == null) {
            return bArrMo4202a;
        }
        abstractC1744bg.f5105d = bArrMo4202a;
        return abstractC1744bg.m4206a();
    }

    /* renamed from: a */
    public abstract byte[] mo4202a(byte[] bArr);

    /* renamed from: b */
    public void mo4203b(byte[] bArr) {
    }
}
