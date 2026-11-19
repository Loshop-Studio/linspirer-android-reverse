package com.loc;

import com.huawei.hem.C1094l1;

/* compiled from: LogJsonDataStrategy.java */
/* renamed from: com.loc.bd */
/* loaded from: classes.dex */
public final class C1741bd extends AbstractC1744bg {

    /* renamed from: a */
    public StringBuilder f5099a;

    /* renamed from: b */
    public boolean f5100b;

    public C1741bd() {
        this.f5099a = new StringBuilder();
        this.f5100b = true;
    }

    public C1741bd(AbstractC1744bg abstractC1744bg) {
        super(abstractC1744bg);
        this.f5099a = new StringBuilder();
        this.f5100b = true;
    }

    @Override // com.loc.AbstractC1744bg
    /* renamed from: a */
    public final byte[] mo4202a(byte[] bArr) {
        byte[] bArrM2245n = C1094l1.m2245n(this.f5099a.toString());
        this.f5105d = bArrM2245n;
        this.f5100b = true;
        StringBuilder sb = this.f5099a;
        sb.delete(0, sb.length());
        return bArrM2245n;
    }

    @Override // com.loc.AbstractC1744bg
    /* renamed from: b */
    public final void mo4203b(byte[] bArr) {
        String strM2236e = C1094l1.m2236e(bArr);
        if (this.f5100b) {
            this.f5100b = false;
        } else {
            this.f5099a.append(",");
        }
        StringBuilder sb = this.f5099a;
        sb.append("{\"log\":\"");
        sb.append(strM2236e);
        sb.append("\"}");
    }
}
