package com.huawei.hem;

import android.support.v7.widget.ActivityChooserView;
import com.alibaba.sdk.android.tbrest.utils.Base64;
import com.huawei.hem.Hpack;
import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/* compiled from: Http2Writer.java */
/* renamed from: com.huawei.hem.mm */
/* loaded from: classes.dex */
public final class Http2Writer implements Closeable {

    /* renamed from: g */
    public static final Logger f3276g = Logger.getLogger(Http2.class.getName());

    /* renamed from: a */
    public final BufferedSink f3277a;

    /* renamed from: b */
    public final boolean f3278b;

    /* renamed from: c */
    public final OkioBuffer f3279c;

    /* renamed from: d */
    public int f3280d;

    /* renamed from: e */
    public boolean f3281e;

    /* renamed from: f */
    public final Hpack.b f3282f;

    public Http2Writer(BufferedSink interfaceC1041in, boolean z) {
        this.f3277a = interfaceC1041in;
        this.f3278b = z;
        OkioBuffer c1016hn = new OkioBuffer();
        this.f3279c = c1016hn;
        this.f3282f = new Hpack.b(c1016hn);
        this.f3280d = 16384;
    }

    /* renamed from: a */
    public synchronized void m2396a(Http2Settings c1216pm) {
        if (this.f3281e) {
            throw new IOException("closed");
        }
        int i = this.f3280d;
        if ((c1216pm.f3479a & 32) != 0) {
            i = c1216pm.f3480b[5];
        }
        this.f3280d = i;
        if (((c1216pm.f3479a & 2) != 0 ? c1216pm.f3480b[1] : -1) != -1) {
            Hpack.b bVar = this.f3282f;
            int i2 = (c1216pm.f3479a & 2) != 0 ? c1216pm.f3480b[1] : -1;
            if (bVar == null) {
                throw null;
            }
            int iMin = Math.min(i2, 16384);
            int i3 = bVar.f4247e;
            if (i3 != iMin) {
                if (iMin < i3) {
                    bVar.f4245c = Math.min(bVar.f4245c, iMin);
                }
                bVar.f4246d = true;
                bVar.f4247e = iMin;
                int i4 = bVar.f4251i;
                if (iMin < i4) {
                    if (iMin == 0) {
                        bVar.m3126a();
                    } else {
                        bVar.m3127b(i4 - iMin);
                    }
                }
            }
        }
        m2398d(0, 0, (byte) 4, (byte) 1);
        this.f3277a.flush();
    }

    /* renamed from: c */
    public synchronized void m2397c(boolean z, int i, OkioBuffer c1016hn, int i2) {
        if (this.f3281e) {
            throw new IOException("closed");
        }
        m2398d(i, i2, (byte) 0, z ? (byte) 1 : (byte) 0);
        if (i2 > 0) {
            this.f3277a.mo1619p(c1016hn, i2);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        this.f3281e = true;
        this.f3277a.close();
    }

    /* renamed from: d */
    public void m2398d(int i, int i2, byte b, byte b2) {
        if (f3276g.isLoggable(Level.FINE)) {
            f3276g.fine(Http2.m3175a(false, i, i2, b, b2));
        }
        int i3 = this.f3280d;
        if (i2 > i3) {
            Http2.m3176b("FRAME_SIZE_ERROR length > %d: %d", Integer.valueOf(i3), Integer.valueOf(i2));
            throw null;
        }
        if ((Integer.MIN_VALUE & i) != 0) {
            Http2.m3176b("reserved bit set: %s", Integer.valueOf(i));
            throw null;
        }
        BufferedSink interfaceC1041in = this.f3277a;
        interfaceC1041in.mo2018z((i2 >>> 16) & 255);
        interfaceC1041in.mo2018z((i2 >>> 8) & 255);
        interfaceC1041in.mo2018z(i2 & 255);
        this.f3277a.mo2018z(b & Base64.EQUALS_SIGN_ENC);
        this.f3277a.mo2018z(b2 & Base64.EQUALS_SIGN_ENC);
        this.f3277a.mo2012t(i & ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
    }

    /* renamed from: f */
    public synchronized void m2399f(int i, Http2ErrorCode enumC1390wl, byte[] bArr) {
        if (this.f3281e) {
            throw new IOException("closed");
        }
        if (enumC1390wl.httpCode == -1) {
            Http2.m3176b("errorCode.httpCode == -1", new Object[0]);
            throw null;
        }
        m2398d(0, bArr.length + 8, (byte) 7, (byte) 0);
        this.f3277a.mo2012t(i);
        this.f3277a.mo2012t(enumC1390wl.httpCode);
        if (bArr.length > 0) {
            this.f3277a.mo1972B(bArr);
        }
        this.f3277a.flush();
    }

    public synchronized void flush() {
        if (this.f3281e) {
            throw new IOException("closed");
        }
        this.f3277a.flush();
    }

    /* renamed from: g */
    public synchronized void m2400g(boolean z, int i, List<Http2Header> list) {
        if (this.f3281e) {
            throw new IOException("closed");
        }
        this.f3282f.m3130e(list);
        long j = this.f3279c.f2884b;
        int iMin = (int) Math.min(this.f3280d, j);
        long j2 = iMin;
        byte b = j == j2 ? (byte) 4 : (byte) 0;
        if (z) {
            b = (byte) (b | 1);
        }
        m2398d(i, iMin, (byte) 1, b);
        this.f3277a.mo1619p(this.f3279c, j2);
        if (j > j2) {
            m2404k(i, j - j2);
        }
    }

    /* renamed from: h */
    public synchronized void m2401h(boolean z, int i, int i2) {
        if (this.f3281e) {
            throw new IOException("closed");
        }
        m2398d(0, 8, (byte) 6, z ? (byte) 1 : (byte) 0);
        this.f3277a.mo2012t(i);
        this.f3277a.mo2012t(i2);
        this.f3277a.flush();
    }

    /* renamed from: i */
    public synchronized void m2402i(int i, Http2ErrorCode enumC1390wl) {
        if (this.f3281e) {
            throw new IOException("closed");
        }
        if (enumC1390wl.httpCode == -1) {
            throw new IllegalArgumentException();
        }
        m2398d(i, 4, (byte) 3, (byte) 0);
        this.f3277a.mo2012t(enumC1390wl.httpCode);
        this.f3277a.flush();
    }

    /* renamed from: j */
    public synchronized void m2403j(int i, long j) {
        if (this.f3281e) {
            throw new IOException("closed");
        }
        if (j == 0 || j > 2147483647L) {
            Http2.m3176b("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s", Long.valueOf(j));
            throw null;
        }
        m2398d(i, 4, (byte) 8, (byte) 0);
        this.f3277a.mo2012t((int) j);
        this.f3277a.flush();
    }

    /* renamed from: k */
    public final void m2404k(int i, long j) {
        while (j > 0) {
            int iMin = (int) Math.min(this.f3280d, j);
            long j2 = iMin;
            j -= j2;
            m2398d(i, iMin, (byte) 9, j == 0 ? (byte) 4 : (byte) 0);
            this.f3277a.mo1619p(this.f3279c, j2);
        }
    }
}
