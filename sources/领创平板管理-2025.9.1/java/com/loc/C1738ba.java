package com.loc;

import java.io.ByteArrayOutputStream;
import java.io.IOException;

/* compiled from: ByteJoinDataStrategy.java */
/* renamed from: com.loc.ba */
/* loaded from: classes.dex */
public final class C1738ba extends AbstractC1744bg {

    /* renamed from: a */
    public ByteArrayOutputStream f5093a;

    public C1738ba() {
        this.f5093a = new ByteArrayOutputStream();
    }

    public C1738ba(AbstractC1744bg abstractC1744bg) {
        super(abstractC1744bg);
        this.f5093a = new ByteArrayOutputStream();
    }

    @Override // com.loc.AbstractC1744bg
    /* renamed from: a */
    public final byte[] mo4202a(byte[] bArr) throws IOException {
        byte[] byteArray = this.f5093a.toByteArray();
        try {
            this.f5093a.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        this.f5093a = new ByteArrayOutputStream();
        return byteArray;
    }

    @Override // com.loc.AbstractC1744bg
    /* renamed from: b */
    public final void mo4203b(byte[] bArr) {
        try {
            this.f5093a.write(bArr);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
