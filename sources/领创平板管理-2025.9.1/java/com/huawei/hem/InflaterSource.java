package com.huawei.hem;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

/* compiled from: InflaterSource.java */
/* renamed from: com.huawei.hem.pn */
/* loaded from: classes.dex */
public final class InflaterSource implements Source {

    /* renamed from: a */
    public final BufferedSource f3481a;

    /* renamed from: b */
    public final Inflater f3482b;

    /* renamed from: c */
    public int f3483c;

    /* renamed from: d */
    public boolean f3484d;

    public InflaterSource(BufferedSource interfaceC1066jn, Inflater inflater) {
        if (inflater == null) {
            throw new IllegalArgumentException("inflater == null");
        }
        this.f3481a = interfaceC1066jn;
        this.f3482b = inflater;
    }

    /* renamed from: a */
    public final void m2498a() {
        int i = this.f3483c;
        if (i == 0) {
            return;
        }
        int remaining = i - this.f3482b.getRemaining();
        this.f3483c -= remaining;
        this.f3481a.skip(remaining);
    }

    @Override // com.huawei.hem.InterfaceC0836ao, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.f3484d) {
            return;
        }
        this.f3482b.end();
        this.f3484d = true;
        this.f3481a.close();
    }

    @Override // com.huawei.hem.InterfaceC0836ao
    /* renamed from: e */
    public long mo1380e(OkioBuffer c1016hn, long j) throws DataFormatException, IOException {
        boolean z;
        if (j < 0) {
            throw new IllegalArgumentException(CompilerOutline.m1755M("byteCount < 0: ", j));
        }
        if (this.f3484d) {
            throw new IllegalStateException("closed");
        }
        if (j == 0) {
            return 0L;
        }
        do {
            z = false;
            if (this.f3482b.needsInput()) {
                m2498a();
                if (this.f3482b.getRemaining() != 0) {
                    throw new IllegalStateException("?");
                }
                if (this.f3481a.mo2017y()) {
                    z = true;
                } else {
                    OkioSegment c1392wn = this.f3481a.mo2007m().f2883a;
                    int i = c1392wn.f4033c;
                    int i2 = c1392wn.f4032b;
                    int i3 = i - i2;
                    this.f3483c = i3;
                    this.f3482b.setInput(c1392wn.f4031a, i2, i3);
                }
            }
            try {
                OkioSegment c1392wnM1984N = c1016hn.m1984N(1);
                int iInflate = this.f3482b.inflate(c1392wnM1984N.f4031a, c1392wnM1984N.f4033c, (int) Math.min(j, 8192 - c1392wnM1984N.f4033c));
                if (iInflate > 0) {
                    c1392wnM1984N.f4033c += iInflate;
                    long j2 = iInflate;
                    c1016hn.f2884b += j2;
                    return j2;
                }
                if (!this.f3482b.finished() && !this.f3482b.needsDictionary()) {
                }
                m2498a();
                if (c1392wnM1984N.f4032b != c1392wnM1984N.f4033c) {
                    return -1L;
                }
                c1016hn.f2883a = c1392wnM1984N.m2916a();
                SegmentPool.m2951a(c1392wnM1984N);
                return -1L;
            } catch (DataFormatException e) {
                throw new IOException(e);
            }
        } while (!z);
        throw new EOFException("source exhausted prematurely");
    }

    @Override // com.huawei.hem.InterfaceC0836ao
    /* renamed from: n */
    public Timeout mo1381n() {
        return this.f3481a.mo1381n();
    }
}
