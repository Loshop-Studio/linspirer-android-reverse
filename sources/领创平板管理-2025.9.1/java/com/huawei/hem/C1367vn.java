package com.huawei.hem;

import android.support.v4.media.session.PlaybackStateCompat;
import android.support.v7.widget.RecyclerView;
import java.io.EOFException;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* compiled from: RealBufferedSource.java */
/* renamed from: com.huawei.hem.vn */
/* loaded from: classes.dex */
public final class C1367vn implements InterfaceC1066jn {

    /* renamed from: a */
    public final C1016hn f3976a = new C1016hn();

    /* renamed from: b */
    public final InterfaceC0836ao f3977b;

    /* renamed from: c */
    public boolean f3978c;

    public C1367vn(InterfaceC0836ao interfaceC0836ao) {
        if (interfaceC0836ao == null) {
            throw new NullPointerException("source == null");
        }
        this.f3977b = interfaceC0836ao;
    }

    @Override // com.huawei.hem.InterfaceC1066jn
    /* renamed from: A */
    public byte[] mo1971A(long j) throws EOFException {
        if (m2882d(j)) {
            return this.f3976a.mo1971A(j);
        }
        throw new EOFException();
    }

    @Override // com.huawei.hem.InterfaceC1066jn
    /* renamed from: D */
    public short mo1974D() throws EOFException {
        mo1977G(2L);
        return this.f3976a.mo1974D();
    }

    @Override // com.huawei.hem.InterfaceC1066jn
    /* renamed from: F */
    public String mo1976F(long j) throws EOFException {
        if (j < 0) {
            throw new IllegalArgumentException(C0948f6.m1755M("limit < 0: ", j));
        }
        long j2 = j == RecyclerView.FOREVER_NS ? Long.MAX_VALUE : j + 1;
        long jM2880a = m2880a((byte) 10, 0L, j2);
        if (jM2880a != -1) {
            return this.f3976a.m2005k(jM2880a);
        }
        if (j2 < RecyclerView.FOREVER_NS && m2882d(j2) && this.f3976a.m1999d(j2 - 1) == 13 && m2882d(1 + j2) && this.f3976a.m1999d(j2) == 10) {
            return this.f3976a.m2005k(j2);
        }
        C1016hn c1016hn = new C1016hn();
        C1016hn c1016hn2 = this.f3976a;
        c1016hn2.m1998c(c1016hn, 0L, Math.min(32L, c1016hn2.f2884b));
        StringBuilder sbM1765j = C0948f6.m1765j("\\n not found: limit=");
        sbM1765j.append(Math.min(this.f3976a.f2884b, j));
        sbM1765j.append(" content=");
        sbM1765j.append(c1016hn.m2001g().hex());
        sbM1765j.append((char) 8230);
        throw new EOFException(sbM1765j.toString());
    }

    @Override // com.huawei.hem.InterfaceC1066jn
    /* renamed from: G */
    public void mo1977G(long j) throws EOFException {
        if (!m2882d(j)) {
            throw new EOFException();
        }
    }

    @Override // com.huawei.hem.InterfaceC1066jn
    /* renamed from: J */
    public long mo1980J(byte b) {
        return m2880a(b, 0L, RecyclerView.FOREVER_NS);
    }

    @Override // com.huawei.hem.InterfaceC1066jn
    /* renamed from: K */
    public long mo1981K() throws EOFException {
        byte bM1999d;
        mo1977G(1L);
        int i = 0;
        while (true) {
            int i2 = i + 1;
            if (!m2882d(i2)) {
                break;
            }
            bM1999d = this.f3976a.m1999d(i);
            if ((bM1999d < 48 || bM1999d > 57) && ((bM1999d < 97 || bM1999d > 102) && (bM1999d < 65 || bM1999d > 70))) {
                break;
            }
            i = i2;
        }
        if (i == 0) {
            throw new NumberFormatException(String.format("Expected leading [0-9a-fA-F] character but was %#x", Byte.valueOf(bM1999d)));
        }
        return this.f3976a.mo1981K();
    }

    @Override // com.huawei.hem.InterfaceC1066jn
    /* renamed from: L */
    public String mo1982L(Charset charset) {
        if (charset == null) {
            throw new IllegalArgumentException("charset == null");
        }
        this.f3976a.mo2009q(this.f3977b);
        C1016hn c1016hn = this.f3976a;
        if (c1016hn == null) {
            throw null;
        }
        try {
            return c1016hn.m2003i(c1016hn.f2884b, charset);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    @Override // com.huawei.hem.InterfaceC1066jn
    /* renamed from: M */
    public int mo1983M(C1317tn c1317tn) throws EOFException {
        if (this.f3978c) {
            throw new IllegalStateException("closed");
        }
        do {
            int iM2006l = this.f3976a.m2006l(c1317tn, true);
            if (iM2006l == -1) {
                return -1;
            }
            if (iM2006l != -2) {
                this.f3976a.skip(c1317tn.f3829a[iM2006l].size());
                return iM2006l;
            }
        } while (this.f3977b.mo1380e(this.f3976a, PlaybackStateCompat.ACTION_PLAY_FROM_URI) != -1);
        return -1;
    }

    /* renamed from: a */
    public long m2880a(byte b, long j, long j2) {
        if (this.f3978c) {
            throw new IllegalStateException("closed");
        }
        if (j < 0 || j2 < j) {
            throw new IllegalArgumentException(String.format("fromIndex=%s toIndex=%s", Long.valueOf(j), Long.valueOf(j2)));
        }
        while (j < j2) {
            long jM2000f = this.f3976a.m2000f(b, j, j2);
            if (jM2000f != -1) {
                return jM2000f;
            }
            C1016hn c1016hn = this.f3976a;
            long j3 = c1016hn.f2884b;
            if (j3 >= j2 || this.f3977b.mo1380e(c1016hn, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                break;
            }
            j = Math.max(j, j3);
        }
        return -1L;
    }

    @Override // com.huawei.hem.InterfaceC1066jn
    /* renamed from: b */
    public C1091kn mo1997b(long j) throws EOFException {
        if (m2882d(j)) {
            return this.f3976a.mo1997b(j);
        }
        throw new EOFException();
    }

    /* renamed from: c */
    public void m2881c(byte[] bArr) throws EOFException {
        try {
            mo1977G(bArr.length);
            this.f3976a.m2002h(bArr);
        } catch (EOFException e) {
            int i = 0;
            while (true) {
                C1016hn c1016hn = this.f3976a;
                long j = c1016hn.f2884b;
                if (j <= 0) {
                    throw e;
                }
                int i2 = c1016hn.read(bArr, i, (int) j);
                if (i2 == -1) {
                    throw new AssertionError();
                }
                i += i2;
            }
        }
    }

    @Override // com.huawei.hem.InterfaceC0836ao, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.f3978c) {
            return;
        }
        this.f3978c = true;
        this.f3977b.close();
        this.f3976a.m1996a();
    }

    /* renamed from: d */
    public boolean m2882d(long j) {
        C1016hn c1016hn;
        if (j < 0) {
            throw new IllegalArgumentException(C0948f6.m1755M("byteCount < 0: ", j));
        }
        if (this.f3978c) {
            throw new IllegalStateException("closed");
        }
        do {
            c1016hn = this.f3976a;
            if (c1016hn.f2884b >= j) {
                return true;
            }
        } while (this.f3977b.mo1380e(c1016hn, PlaybackStateCompat.ACTION_PLAY_FROM_URI) != -1);
        return false;
    }

    @Override // com.huawei.hem.InterfaceC0836ao
    /* renamed from: e */
    public long mo1380e(C1016hn c1016hn, long j) {
        if (c1016hn == null) {
            throw new IllegalArgumentException("sink == null");
        }
        if (j < 0) {
            throw new IllegalArgumentException(C0948f6.m1755M("byteCount < 0: ", j));
        }
        if (this.f3978c) {
            throw new IllegalStateException("closed");
        }
        C1016hn c1016hn2 = this.f3976a;
        if (c1016hn2.f2884b == 0 && this.f3977b.mo1380e(c1016hn2, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
            return -1L;
        }
        return this.f3976a.mo1380e(c1016hn, Math.min(j, this.f3976a.f2884b));
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return !this.f3978c;
    }

    @Override // com.huawei.hem.InterfaceC1066jn, com.huawei.hem.InterfaceC1041in
    /* renamed from: m */
    public C1016hn mo2007m() {
        return this.f3976a;
    }

    @Override // com.huawei.hem.InterfaceC0836ao
    /* renamed from: n */
    public C0862bo mo1381n() {
        return this.f3977b.mo1381n();
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer byteBuffer) {
        C1016hn c1016hn = this.f3976a;
        if (c1016hn.f2884b == 0 && this.f3977b.mo1380e(c1016hn, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
            return -1;
        }
        return this.f3976a.read(byteBuffer);
    }

    @Override // com.huawei.hem.InterfaceC1066jn
    public byte readByte() throws EOFException {
        mo1977G(1L);
        return this.f3976a.readByte();
    }

    @Override // com.huawei.hem.InterfaceC1066jn
    public int readInt() throws EOFException {
        mo1977G(4L);
        return this.f3976a.readInt();
    }

    @Override // com.huawei.hem.InterfaceC1066jn
    public short readShort() throws EOFException {
        mo1977G(2L);
        return this.f3976a.readShort();
    }

    @Override // com.huawei.hem.InterfaceC1066jn
    public void skip(long j) throws EOFException {
        if (this.f3978c) {
            throw new IllegalStateException("closed");
        }
        while (j > 0) {
            C1016hn c1016hn = this.f3976a;
            if (c1016hn.f2884b == 0 && this.f3977b.mo1380e(c1016hn, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                throw new EOFException();
            }
            long jMin = Math.min(j, this.f3976a.f2884b);
            this.f3976a.skip(jMin);
            j -= jMin;
        }
    }

    public String toString() {
        StringBuilder sbM1765j = C0948f6.m1765j("buffer(");
        sbM1765j.append(this.f3977b);
        sbM1765j.append(")");
        return sbM1765j.toString();
    }

    @Override // com.huawei.hem.InterfaceC1066jn
    /* renamed from: u */
    public String mo2013u() {
        return mo1976F(RecyclerView.FOREVER_NS);
    }

    @Override // com.huawei.hem.InterfaceC1066jn
    /* renamed from: v */
    public byte[] mo2014v() {
        this.f3976a.mo2009q(this.f3977b);
        return this.f3976a.mo2014v();
    }

    @Override // com.huawei.hem.InterfaceC1066jn
    /* renamed from: w */
    public int mo2015w() throws EOFException {
        mo1977G(4L);
        return this.f3976a.mo2015w();
    }

    @Override // com.huawei.hem.InterfaceC1066jn
    /* renamed from: x */
    public C1016hn mo2016x() {
        return this.f3976a;
    }

    @Override // com.huawei.hem.InterfaceC1066jn
    /* renamed from: y */
    public boolean mo2017y() {
        if (this.f3978c) {
            throw new IllegalStateException("closed");
        }
        return this.f3976a.mo2017y() && this.f3977b.mo1380e(this.f3976a, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1;
    }
}
