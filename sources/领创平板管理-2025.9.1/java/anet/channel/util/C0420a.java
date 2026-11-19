package anet.channel.util;

import java.io.IOException;
import java.io.InputStream;

/* compiled from: Taobao */
/* renamed from: anet.channel.util.a */
/* loaded from: classes.dex */
public class C0420a extends InputStream {

    /* renamed from: a */
    public InputStream f581a;

    /* renamed from: b */
    public long f582b = 0;

    public C0420a(InputStream inputStream) {
        this.f581a = null;
        if (inputStream == null) {
            throw new NullPointerException("input stream cannot be null");
        }
        this.f581a = inputStream;
    }

    /* renamed from: a */
    public long m343a() {
        return this.f582b;
    }

    @Override // java.io.InputStream
    public int read() {
        this.f582b++;
        return this.f581a.read();
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = this.f581a.read(bArr, i, i2);
        if (i3 != -1) {
            this.f582b += i3;
        }
        return i3;
    }
}
