package com.huawei.hem;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.CRC32;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

/* compiled from: GzipSource.java */
/* renamed from: com.huawei.hem.on */
/* loaded from: classes.dex */
public final class GzipSource implements Source {

    /* renamed from: b */
    public final BufferedSource f3417b;

    /* renamed from: c */
    public final Inflater f3418c;

    /* renamed from: d */
    public final InflaterSource f3419d;

    /* renamed from: a */
    public int f3416a = 0;

    /* renamed from: e */
    public final CRC32 f3420e = new CRC32();

    public GzipSource(Source interfaceC0836ao) {
        if (interfaceC0836ao == null) {
            throw new IllegalArgumentException("source == null");
        }
        this.f3418c = new Inflater(true);
        BufferedSource interfaceC1066jnM2670b = OkioStreamFactory.m2670b(interfaceC0836ao);
        this.f3417b = interfaceC1066jnM2670b;
        this.f3419d = new InflaterSource(interfaceC1066jnM2670b, this.f3418c);
    }

    /* renamed from: a */
    public final void m2452a(String str, int i, int i2) throws IOException {
        if (i2 != i) {
            throw new IOException(String.format("%s: actual 0x%08x != expected 0x%08x", str, Integer.valueOf(i2), Integer.valueOf(i)));
        }
    }

    /* renamed from: c */
    public final void m2453c(OkioBuffer c1016hn, long j, long j2) {
        OkioSegment c1392wn = c1016hn.f2883a;
        while (true) {
            int i = c1392wn.f4033c;
            int i2 = c1392wn.f4032b;
            if (j < i - i2) {
                break;
            }
            j -= i - i2;
            c1392wn = c1392wn.f4036f;
        }
        while (j2 > 0) {
            int iMin = (int) Math.min(c1392wn.f4033c - r6, j2);
            this.f3420e.update(c1392wn.f4031a, (int) (c1392wn.f4032b + j), iMin);
            j2 -= iMin;
            c1392wn = c1392wn.f4036f;
            j = 0;
        }
    }

    @Override // com.huawei.hem.InterfaceC0836ao, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f3419d.close();
    }

    @Override // com.huawei.hem.InterfaceC0836ao
    /* renamed from: e */
    public long mo1380e(OkioBuffer c1016hn, long j) throws DataFormatException, IOException {
        long j2;
        if (j < 0) {
            throw new IllegalArgumentException(CompilerOutline.m1755M("byteCount < 0: ", j));
        }
        if (j == 0) {
            return 0L;
        }
        if (this.f3416a == 0) {
            this.f3417b.mo1977G(10L);
            byte bM1999d = this.f3417b.mo2007m().m1999d(3L);
            boolean z = ((bM1999d >> 1) & 1) == 1;
            if (z) {
                m2453c(this.f3417b.mo2007m(), 0L, 10L);
            }
            m2452a("ID1ID2", 8075, this.f3417b.readShort());
            this.f3417b.skip(8L);
            if (((bM1999d >> 2) & 1) == 1) {
                this.f3417b.mo1977G(2L);
                if (z) {
                    m2453c(this.f3417b.mo2007m(), 0L, 2L);
                }
                long jMo1974D = this.f3417b.mo2007m().mo1974D();
                this.f3417b.mo1977G(jMo1974D);
                if (z) {
                    j2 = jMo1974D;
                    m2453c(this.f3417b.mo2007m(), 0L, jMo1974D);
                } else {
                    j2 = jMo1974D;
                }
                this.f3417b.skip(j2);
            }
            if (((bM1999d >> 3) & 1) == 1) {
                long jMo1980J = this.f3417b.mo1980J((byte) 0);
                if (jMo1980J == -1) {
                    throw new EOFException();
                }
                if (z) {
                    m2453c(this.f3417b.mo2007m(), 0L, jMo1980J + 1);
                }
                this.f3417b.skip(jMo1980J + 1);
            }
            if (((bM1999d >> 4) & 1) == 1) {
                long jMo1980J2 = this.f3417b.mo1980J((byte) 0);
                if (jMo1980J2 == -1) {
                    throw new EOFException();
                }
                if (z) {
                    m2453c(this.f3417b.mo2007m(), 0L, jMo1980J2 + 1);
                }
                this.f3417b.skip(jMo1980J2 + 1);
            }
            if (z) {
                m2452a("FHCRC", this.f3417b.mo1974D(), (short) this.f3420e.getValue());
                this.f3420e.reset();
            }
            this.f3416a = 1;
        }
        if (this.f3416a == 1) {
            long j3 = c1016hn.f2884b;
            long jMo1380e = this.f3419d.mo1380e(c1016hn, j);
            if (jMo1380e != -1) {
                m2453c(c1016hn, j3, jMo1380e);
                return jMo1380e;
            }
            this.f3416a = 2;
        }
        if (this.f3416a == 2) {
            m2452a("CRC", this.f3417b.mo2015w(), (int) this.f3420e.getValue());
            m2452a("ISIZE", this.f3417b.mo2015w(), (int) this.f3418c.getBytesWritten());
            this.f3416a = 3;
            if (!this.f3417b.mo2017y()) {
                throw new IOException("gzip finished without exhausting source");
            }
        }
        return -1L;
    }

    @Override // com.huawei.hem.InterfaceC0836ao
    /* renamed from: n */
    public Timeout mo1381n() {
        return this.f3417b.mo1381n();
    }
}
