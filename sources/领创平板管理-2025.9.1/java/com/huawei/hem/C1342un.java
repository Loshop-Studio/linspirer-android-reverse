package com.huawei.hem;

import android.support.v4.media.session.PlaybackStateCompat;
import com.huawei.hem.C1267rn;
import java.nio.ByteBuffer;

/* compiled from: RealBufferedSink.java */
/* renamed from: com.huawei.hem.un */
/* loaded from: classes.dex */
public final class C1342un implements InterfaceC1041in {

    /* renamed from: a */
    public final C1016hn f3906a = new C1016hn();

    /* renamed from: b */
    public final InterfaceC1467zn f3907b;

    /* renamed from: c */
    public boolean f3908c;

    public C1342un(InterfaceC1467zn interfaceC1467zn) {
        if (interfaceC1467zn == null) {
            throw new NullPointerException("sink == null");
        }
        this.f3907b = interfaceC1467zn;
    }

    @Override // com.huawei.hem.InterfaceC1041in
    /* renamed from: B */
    public InterfaceC1041in mo1972B(byte[] bArr) {
        if (this.f3908c) {
            throw new IllegalStateException("closed");
        }
        this.f3906a.m1986P(bArr);
        return mo1975E();
    }

    @Override // com.huawei.hem.InterfaceC1041in
    /* renamed from: C */
    public InterfaceC1041in mo1973C(C1091kn c1091kn) {
        if (this.f3908c) {
            throw new IllegalStateException("closed");
        }
        this.f3906a.m1985O(c1091kn);
        return mo1975E();
    }

    @Override // com.huawei.hem.InterfaceC1041in
    /* renamed from: E */
    public InterfaceC1041in mo1975E() {
        if (this.f3908c) {
            throw new IllegalStateException("closed");
        }
        C1016hn c1016hn = this.f3906a;
        long j = c1016hn.f2884b;
        if (j == 0) {
            j = 0;
        } else {
            C1392wn c1392wn = c1016hn.f2883a.f4037g;
            if (c1392wn.f4033c < 8192 && c1392wn.f4035e) {
                j -= r5 - c1392wn.f4032b;
            }
        }
        if (j > 0) {
            this.f3907b.mo1619p(this.f3906a, j);
        }
        return this;
    }

    @Override // com.huawei.hem.InterfaceC1041in
    /* renamed from: H */
    public InterfaceC1041in mo1978H(String str) {
        if (this.f3908c) {
            throw new IllegalStateException("closed");
        }
        this.f3906a.m1993W(str);
        mo1975E();
        return this;
    }

    @Override // com.huawei.hem.InterfaceC1041in
    /* renamed from: I */
    public InterfaceC1041in mo1979I(long j) {
        if (this.f3908c) {
            throw new IllegalStateException("closed");
        }
        this.f3906a.mo1979I(j);
        return mo1975E();
    }

    @Override // com.huawei.hem.InterfaceC1467zn, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws Throwable {
        if (this.f3908c) {
            return;
        }
        try {
            if (this.f3906a.f2884b > 0) {
                this.f3907b.mo1619p(this.f3906a, this.f3906a.f2884b);
            }
            th = null;
        } catch (Throwable th) {
            th = th;
        }
        try {
            this.f3907b.close();
        } catch (Throwable th2) {
            if (th == null) {
                th = th2;
            }
        }
        this.f3908c = true;
        if (th == null) {
            return;
        }
        C0888co.m1546e(th);
        throw null;
    }

    @Override // com.huawei.hem.InterfaceC1041in, com.huawei.hem.InterfaceC1467zn, java.io.Flushable
    public void flush() {
        if (this.f3908c) {
            throw new IllegalStateException("closed");
        }
        C1016hn c1016hn = this.f3906a;
        long j = c1016hn.f2884b;
        if (j > 0) {
            this.f3907b.mo1619p(c1016hn, j);
        }
        this.f3907b.flush();
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return !this.f3908c;
    }

    @Override // com.huawei.hem.InterfaceC1041in
    /* renamed from: m */
    public C1016hn mo2007m() {
        return this.f3906a;
    }

    @Override // com.huawei.hem.InterfaceC1467zn
    /* renamed from: n */
    public C0862bo mo1621n() {
        return this.f3907b.mo1621n();
    }

    @Override // com.huawei.hem.InterfaceC1041in
    /* renamed from: o */
    public InterfaceC1041in mo2008o(byte[] bArr, int i, int i2) {
        if (this.f3908c) {
            throw new IllegalStateException("closed");
        }
        this.f3906a.m1987Q(bArr, i, i2);
        return mo1975E();
    }

    @Override // com.huawei.hem.InterfaceC1467zn
    /* renamed from: p */
    public void mo1619p(C1016hn c1016hn, long j) {
        if (this.f3908c) {
            throw new IllegalStateException("closed");
        }
        this.f3906a.mo1619p(c1016hn, j);
        mo1975E();
    }

    @Override // com.huawei.hem.InterfaceC1041in
    /* renamed from: q */
    public long mo2009q(InterfaceC0836ao interfaceC0836ao) {
        long j = 0;
        while (true) {
            long jMo1380e = ((C1267rn.a) interfaceC0836ao).mo1380e(this.f3906a, PlaybackStateCompat.ACTION_PLAY_FROM_URI);
            if (jMo1380e == -1) {
                return j;
            }
            j += jMo1380e;
            mo1975E();
        }
    }

    @Override // com.huawei.hem.InterfaceC1041in
    /* renamed from: r */
    public InterfaceC1041in mo2010r(long j) {
        if (this.f3908c) {
            throw new IllegalStateException("closed");
        }
        this.f3906a.mo2010r(j);
        return mo1975E();
    }

    @Override // com.huawei.hem.InterfaceC1041in
    /* renamed from: s */
    public InterfaceC1041in mo2011s(int i) {
        if (this.f3908c) {
            throw new IllegalStateException("closed");
        }
        this.f3906a.m1992V(i);
        mo1975E();
        return this;
    }

    @Override // com.huawei.hem.InterfaceC1041in
    /* renamed from: t */
    public InterfaceC1041in mo2012t(int i) {
        if (this.f3908c) {
            throw new IllegalStateException("closed");
        }
        this.f3906a.m1991U(i);
        return mo1975E();
    }

    public String toString() {
        StringBuilder sbM1765j = C0948f6.m1765j("buffer(");
        sbM1765j.append(this.f3907b);
        sbM1765j.append(")");
        return sbM1765j.toString();
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(ByteBuffer byteBuffer) {
        if (this.f3908c) {
            throw new IllegalStateException("closed");
        }
        int iWrite = this.f3906a.write(byteBuffer);
        mo1975E();
        return iWrite;
    }

    @Override // com.huawei.hem.InterfaceC1041in
    /* renamed from: z */
    public InterfaceC1041in mo2018z(int i) {
        if (this.f3908c) {
            throw new IllegalStateException("closed");
        }
        this.f3906a.m1988R(i);
        return mo1975E();
    }
}
