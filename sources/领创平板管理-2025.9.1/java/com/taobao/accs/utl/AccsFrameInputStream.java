package com.taobao.accs.utl;

import java.io.ByteArrayInputStream;
import java.io.IOException;

/* compiled from: Taobao */
/* renamed from: com.taobao.accs.utl.h */
/* loaded from: classes.dex */
public class AccsFrameInputStream extends ByteArrayInputStream {
    public AccsFrameInputStream(byte[] bArr) {
        super(bArr);
    }

    /* renamed from: a */
    public int m5785a() {
        return read() & 255;
    }

    /* renamed from: b */
    public int m5787b() {
        return (m5785a() << 8) | m5785a();
    }

    /* renamed from: c */
    public byte[] m5788c() {
        byte[] bArr = new byte[available()];
        read(bArr);
        return bArr;
    }

    /* renamed from: a */
    public String m5786a(int i) throws IOException {
        byte[] bArr = new byte[i];
        int i2 = read(bArr);
        if (i2 == i) {
            return new String(bArr, "utf-8");
        }
        throw new IOException("read len not match. ask for " + i + " but read for " + i2);
    }
}
