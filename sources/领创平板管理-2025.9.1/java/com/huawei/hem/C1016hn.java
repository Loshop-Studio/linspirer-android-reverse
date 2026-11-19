package com.huawei.hem;

import android.support.v4.media.session.PlaybackStateCompat;
import android.support.v7.widget.RecyclerView;
import com.alibaba.sdk.android.tbrest.utils.Base64;
import java.io.EOFException;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.charset.Charset;
import javax.annotation.Nullable;

/* compiled from: Buffer.java */
/* renamed from: com.huawei.hem.hn */
/* loaded from: classes.dex */
public final class C1016hn implements InterfaceC1066jn, InterfaceC1041in, Cloneable, ByteChannel {

    /* renamed from: c */
    public static final byte[] f2882c = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102};

    /* renamed from: a */
    @Nullable
    public C1392wn f2883a;

    /* renamed from: b */
    public long f2884b;

    @Override // com.huawei.hem.InterfaceC1066jn
    /* renamed from: A */
    public byte[] mo1971A(long j) throws EOFException {
        C0888co.m1543b(this.f2884b, 0L, j);
        if (j > 2147483647L) {
            throw new IllegalArgumentException(C0948f6.m1755M("byteCount > Integer.MAX_VALUE: ", j));
        }
        byte[] bArr = new byte[(int) j];
        m2002h(bArr);
        return bArr;
    }

    @Override // com.huawei.hem.InterfaceC1041in
    /* renamed from: B */
    public /* bridge */ /* synthetic */ InterfaceC1041in mo1972B(byte[] bArr) {
        m1986P(bArr);
        return this;
    }

    @Override // com.huawei.hem.InterfaceC1041in
    /* renamed from: C */
    public /* bridge */ /* synthetic */ InterfaceC1041in mo1973C(C1091kn c1091kn) {
        m1985O(c1091kn);
        return this;
    }

    @Override // com.huawei.hem.InterfaceC1066jn
    /* renamed from: D */
    public short mo1974D() {
        return C0888co.m1545d(readShort());
    }

    @Override // com.huawei.hem.InterfaceC1041in
    /* renamed from: E */
    public InterfaceC1041in mo1975E() {
        return this;
    }

    @Override // com.huawei.hem.InterfaceC1066jn
    /* renamed from: F */
    public String mo1976F(long j) throws EOFException {
        if (j < 0) {
            throw new IllegalArgumentException(C0948f6.m1755M("limit < 0: ", j));
        }
        long j2 = RecyclerView.FOREVER_NS;
        if (j != RecyclerView.FOREVER_NS) {
            j2 = j + 1;
        }
        long jM2000f = m2000f((byte) 10, 0L, j2);
        if (jM2000f != -1) {
            return m2005k(jM2000f);
        }
        if (j2 < this.f2884b && m1999d(j2 - 1) == 13 && m1999d(j2) == 10) {
            return m2005k(j2);
        }
        C1016hn c1016hn = new C1016hn();
        m1998c(c1016hn, 0L, Math.min(32L, this.f2884b));
        StringBuilder sbM1765j = C0948f6.m1765j("\\n not found: limit=");
        sbM1765j.append(Math.min(this.f2884b, j));
        sbM1765j.append(" content=");
        sbM1765j.append(c1016hn.m2001g().hex());
        sbM1765j.append((char) 8230);
        throw new EOFException(sbM1765j.toString());
    }

    @Override // com.huawei.hem.InterfaceC1066jn
    /* renamed from: G */
    public void mo1977G(long j) throws EOFException {
        if (this.f2884b < j) {
            throw new EOFException();
        }
    }

    @Override // com.huawei.hem.InterfaceC1041in
    /* renamed from: H */
    public /* bridge */ /* synthetic */ InterfaceC1041in mo1978H(String str) {
        m1993W(str);
        return this;
    }

    @Override // com.huawei.hem.InterfaceC1066jn
    /* renamed from: J */
    public long mo1980J(byte b) {
        return m2000f(b, 0L, RecyclerView.FOREVER_NS);
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x009b A[EDGE_INSN: B:44:0x009b->B:38:0x009b BREAK  A[LOOP:0: B:5:0x000b->B:46:?], SYNTHETIC] */
    @Override // com.huawei.hem.InterfaceC1066jn
    /* renamed from: K */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long mo1981K() {
        /*
            r14 = this;
            long r0 = r14.f2884b
            r2 = 0
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 == 0) goto La2
            r0 = 0
            r1 = r0
            r4 = r2
        Lb:
            com.huawei.hem.wn r6 = r14.f2883a
            byte[] r7 = r6.f4031a
            int r8 = r6.f4032b
            int r9 = r6.f4033c
        L13:
            if (r8 >= r9) goto L87
            r10 = r7[r8]
            r11 = 48
            if (r10 < r11) goto L22
            r11 = 57
            if (r10 > r11) goto L22
            int r11 = r10 + (-48)
            goto L39
        L22:
            r11 = 97
            if (r10 < r11) goto L2d
            r11 = 102(0x66, float:1.43E-43)
            if (r10 > r11) goto L2d
            int r11 = r10 + (-97)
            goto L37
        L2d:
            r11 = 65
            if (r10 < r11) goto L6c
            r11 = 70
            if (r10 > r11) goto L6c
            int r11 = r10 + (-65)
        L37:
            int r11 = r11 + 10
        L39:
            r12 = -1152921504606846976(0xf000000000000000, double:-3.105036184601418E231)
            long r12 = r12 & r4
            int r12 = (r12 > r2 ? 1 : (r12 == r2 ? 0 : -1))
            if (r12 != 0) goto L49
            r10 = 4
            long r4 = r4 << r10
            long r10 = (long) r11
            long r4 = r4 | r10
            int r8 = r8 + 1
            int r0 = r0 + 1
            goto L13
        L49:
            com.huawei.hem.hn r0 = new com.huawei.hem.hn
            r0.<init>()
            com.huawei.hem.hn r0 = r0.mo2010r(r4)
            r0.m1988R(r10)
            java.lang.NumberFormatException r1 = new java.lang.NumberFormatException
            java.lang.String r2 = "Number too large: "
            java.lang.StringBuilder r2 = com.huawei.hem.C0948f6.m1765j(r2)
            java.lang.String r0 = r0.m2004j()
            r2.append(r0)
            java.lang.String r0 = r2.toString()
            r1.<init>(r0)
            throw r1
        L6c:
            if (r0 == 0) goto L70
            r1 = 1
            goto L87
        L70:
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            java.lang.String r1 = "Expected leading [0-9a-fA-F] character but was 0x"
            java.lang.StringBuilder r1 = com.huawei.hem.C0948f6.m1765j(r1)
            java.lang.String r2 = java.lang.Integer.toHexString(r10)
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L87:
            if (r8 != r9) goto L93
            com.huawei.hem.wn r7 = r6.m2916a()
            r14.f2883a = r7
            com.huawei.hem.C1417xn.m2951a(r6)
            goto L95
        L93:
            r6.f4032b = r8
        L95:
            if (r1 != 0) goto L9b
            com.huawei.hem.wn r6 = r14.f2883a
            if (r6 != 0) goto Lb
        L9b:
            long r1 = r14.f2884b
            long r6 = (long) r0
            long r1 = r1 - r6
            r14.f2884b = r1
            return r4
        La2:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "size == 0"
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.C1016hn.mo1981K():long");
    }

    @Override // com.huawei.hem.InterfaceC1066jn
    /* renamed from: L */
    public String mo1982L(Charset charset) {
        try {
            return m2003i(this.f2884b, charset);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    @Override // com.huawei.hem.InterfaceC1066jn
    /* renamed from: M */
    public int mo1983M(C1317tn c1317tn) {
        int iM2006l = m2006l(c1317tn, false);
        if (iM2006l == -1) {
            return -1;
        }
        try {
            skip(c1317tn.f3829a[iM2006l].size());
            return iM2006l;
        } catch (EOFException unused) {
            throw new AssertionError();
        }
    }

    /* renamed from: N */
    public C1392wn m1984N(int i) {
        if (i < 1 || i > 8192) {
            throw new IllegalArgumentException();
        }
        C1392wn c1392wn = this.f2883a;
        if (c1392wn == null) {
            C1392wn c1392wnM2952b = C1417xn.m2952b();
            this.f2883a = c1392wnM2952b;
            c1392wnM2952b.f4037g = c1392wnM2952b;
            c1392wnM2952b.f4036f = c1392wnM2952b;
            return c1392wnM2952b;
        }
        C1392wn c1392wn2 = c1392wn.f4037g;
        if (c1392wn2.f4033c + i <= 8192 && c1392wn2.f4035e) {
            return c1392wn2;
        }
        C1392wn c1392wnM2952b2 = C1417xn.m2952b();
        c1392wn2.m2917b(c1392wnM2952b2);
        return c1392wnM2952b2;
    }

    /* renamed from: O */
    public C1016hn m1985O(C1091kn c1091kn) {
        if (c1091kn == null) {
            throw new IllegalArgumentException("byteString == null");
        }
        c1091kn.write(this);
        return this;
    }

    /* renamed from: P */
    public C1016hn m1986P(byte[] bArr) {
        if (bArr == null) {
            throw new IllegalArgumentException("source == null");
        }
        m1987Q(bArr, 0, bArr.length);
        return this;
    }

    /* renamed from: Q */
    public C1016hn m1987Q(byte[] bArr, int i, int i2) {
        if (bArr == null) {
            throw new IllegalArgumentException("source == null");
        }
        long j = i2;
        C0888co.m1543b(bArr.length, i, j);
        int i3 = i2 + i;
        while (i < i3) {
            C1392wn c1392wnM1984N = m1984N(1);
            int iMin = Math.min(i3 - i, 8192 - c1392wnM1984N.f4033c);
            System.arraycopy(bArr, i, c1392wnM1984N.f4031a, c1392wnM1984N.f4033c, iMin);
            i += iMin;
            c1392wnM1984N.f4033c += iMin;
        }
        this.f2884b += j;
        return this;
    }

    /* renamed from: R */
    public C1016hn m1988R(int i) {
        C1392wn c1392wnM1984N = m1984N(1);
        byte[] bArr = c1392wnM1984N.f4031a;
        int i2 = c1392wnM1984N.f4033c;
        c1392wnM1984N.f4033c = i2 + 1;
        bArr[i2] = (byte) i;
        this.f2884b++;
        return this;
    }

    @Override // com.huawei.hem.InterfaceC1041in
    /* renamed from: S, reason: merged with bridge method [inline-methods] */
    public C1016hn mo1979I(long j) {
        if (j == 0) {
            m1988R(48);
            return this;
        }
        boolean z = false;
        int i = 1;
        if (j < 0) {
            j = -j;
            if (j < 0) {
                m1993W("-9223372036854775808");
                return this;
            }
            z = true;
        }
        if (j >= 100000000) {
            i = j < 1000000000000L ? j < 10000000000L ? j < 1000000000 ? 9 : 10 : j < 100000000000L ? 11 : 12 : j < 1000000000000000L ? j < 10000000000000L ? 13 : j < 100000000000000L ? 14 : 15 : j < 100000000000000000L ? j < 10000000000000000L ? 16 : 17 : j < 1000000000000000000L ? 18 : 19;
        } else if (j >= 10000) {
            i = j < 1000000 ? j < 100000 ? 5 : 6 : j < 10000000 ? 7 : 8;
        } else if (j >= 100) {
            i = j < 1000 ? 3 : 4;
        } else if (j >= 10) {
            i = 2;
        }
        if (z) {
            i++;
        }
        C1392wn c1392wnM1984N = m1984N(i);
        byte[] bArr = c1392wnM1984N.f4031a;
        int i2 = c1392wnM1984N.f4033c + i;
        while (j != 0) {
            i2--;
            bArr[i2] = f2882c[(int) (j % 10)];
            j /= 10;
        }
        if (z) {
            bArr[i2 - 1] = 45;
        }
        c1392wnM1984N.f4033c += i;
        this.f2884b += i;
        return this;
    }

    @Override // com.huawei.hem.InterfaceC1041in
    /* renamed from: T, reason: merged with bridge method [inline-methods] */
    public C1016hn mo2010r(long j) {
        if (j == 0) {
            m1988R(48);
            return this;
        }
        int iNumberOfTrailingZeros = (Long.numberOfTrailingZeros(Long.highestOneBit(j)) / 4) + 1;
        C1392wn c1392wnM1984N = m1984N(iNumberOfTrailingZeros);
        byte[] bArr = c1392wnM1984N.f4031a;
        int i = c1392wnM1984N.f4033c;
        for (int i2 = (i + iNumberOfTrailingZeros) - 1; i2 >= i; i2--) {
            bArr[i2] = f2882c[(int) (15 & j)];
            j >>>= 4;
        }
        c1392wnM1984N.f4033c += iNumberOfTrailingZeros;
        this.f2884b += iNumberOfTrailingZeros;
        return this;
    }

    /* renamed from: U */
    public C1016hn m1991U(int i) {
        C1392wn c1392wnM1984N = m1984N(4);
        byte[] bArr = c1392wnM1984N.f4031a;
        int i2 = c1392wnM1984N.f4033c;
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((i >>> 24) & 255);
        int i4 = i3 + 1;
        bArr[i3] = (byte) ((i >>> 16) & 255);
        int i5 = i4 + 1;
        bArr[i4] = (byte) ((i >>> 8) & 255);
        bArr[i5] = (byte) (i & 255);
        c1392wnM1984N.f4033c = i5 + 1;
        this.f2884b += 4;
        return this;
    }

    /* renamed from: V */
    public C1016hn m1992V(int i) {
        C1392wn c1392wnM1984N = m1984N(2);
        byte[] bArr = c1392wnM1984N.f4031a;
        int i2 = c1392wnM1984N.f4033c;
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((i >>> 8) & 255);
        bArr[i3] = (byte) (i & 255);
        c1392wnM1984N.f4033c = i3 + 1;
        this.f2884b += 2;
        return this;
    }

    /* renamed from: W */
    public C1016hn m1993W(String str) {
        m1994X(str, 0, str.length());
        return this;
    }

    /* renamed from: X */
    public C1016hn m1994X(String str, int i, int i2) {
        char cCharAt;
        if (i < 0) {
            throw new IllegalArgumentException(C0948f6.m1754L("beginIndex < 0: ", i));
        }
        if (i2 < i) {
            throw new IllegalArgumentException("endIndex < beginIndex: " + i2 + " < " + i);
        }
        if (i2 > str.length()) {
            StringBuilder sbM1766k = C0948f6.m1766k("endIndex > string.length: ", i2, " > ");
            sbM1766k.append(str.length());
            throw new IllegalArgumentException(sbM1766k.toString());
        }
        while (i < i2) {
            char cCharAt2 = str.charAt(i);
            if (cCharAt2 < 128) {
                C1392wn c1392wnM1984N = m1984N(1);
                byte[] bArr = c1392wnM1984N.f4031a;
                int i3 = c1392wnM1984N.f4033c - i;
                int iMin = Math.min(i2, 8192 - i3);
                int i4 = i + 1;
                bArr[i + i3] = (byte) cCharAt2;
                while (true) {
                    i = i4;
                    if (i >= iMin || (cCharAt = str.charAt(i)) >= 128) {
                        break;
                    }
                    i4 = i + 1;
                    bArr[i + i3] = (byte) cCharAt;
                }
                int i5 = c1392wnM1984N.f4033c;
                int i6 = (i3 + i) - i5;
                c1392wnM1984N.f4033c = i5 + i6;
                this.f2884b += i6;
            } else {
                if (cCharAt2 < 2048) {
                    m1988R((cCharAt2 >> 6) | 192);
                    m1988R((cCharAt2 & '?') | 128);
                } else if (cCharAt2 < 55296 || cCharAt2 > 57343) {
                    m1988R((cCharAt2 >> '\f') | 224);
                    m1988R(((cCharAt2 >> 6) & 63) | 128);
                    m1988R((cCharAt2 & '?') | 128);
                } else {
                    int i7 = i + 1;
                    char cCharAt3 = i7 < i2 ? str.charAt(i7) : (char) 0;
                    if (cCharAt2 > 56319 || cCharAt3 < 56320 || cCharAt3 > 57343) {
                        m1988R(63);
                        i = i7;
                    } else {
                        int i8 = (((cCharAt2 & 10239) << 10) | (9215 & cCharAt3)) + 65536;
                        m1988R((i8 >> 18) | 240);
                        m1988R(((i8 >> 12) & 63) | 128);
                        m1988R(((i8 >> 6) & 63) | 128);
                        m1988R((i8 & 63) | 128);
                        i += 2;
                    }
                }
                i++;
            }
        }
        return this;
    }

    /* renamed from: Y */
    public C1016hn m1995Y(int i) {
        if (i < 128) {
            m1988R(i);
        } else if (i < 2048) {
            m1988R((i >> 6) | 192);
            m1988R((i & 63) | 128);
        } else if (i < 65536) {
            if (i < 55296 || i > 57343) {
                m1988R((i >> 12) | 224);
                m1988R(((i >> 6) & 63) | 128);
                m1988R((i & 63) | 128);
            } else {
                m1988R(63);
            }
        } else {
            if (i > 1114111) {
                StringBuilder sbM1765j = C0948f6.m1765j("Unexpected code point: ");
                sbM1765j.append(Integer.toHexString(i));
                throw new IllegalArgumentException(sbM1765j.toString());
            }
            m1988R((i >> 18) | 240);
            m1988R(((i >> 12) & 63) | 128);
            m1988R(((i >> 6) & 63) | 128);
            m1988R((i & 63) | 128);
        }
        return this;
    }

    /* renamed from: a */
    public final void m1996a() {
        try {
            skip(this.f2884b);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    @Override // com.huawei.hem.InterfaceC1066jn
    /* renamed from: b */
    public C1091kn mo1997b(long j) {
        return new C1091kn(mo1971A(j));
    }

    /* renamed from: c */
    public final C1016hn m1998c(C1016hn c1016hn, long j, long j2) {
        if (c1016hn == null) {
            throw new IllegalArgumentException("out == null");
        }
        C0888co.m1543b(this.f2884b, j, j2);
        if (j2 == 0) {
            return this;
        }
        c1016hn.f2884b += j2;
        C1392wn c1392wn = this.f2883a;
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
            C1392wn c1392wnM2918c = c1392wn.m2918c();
            int i3 = (int) (c1392wnM2918c.f4032b + j);
            c1392wnM2918c.f4032b = i3;
            c1392wnM2918c.f4033c = Math.min(i3 + ((int) j2), c1392wnM2918c.f4033c);
            C1392wn c1392wn2 = c1016hn.f2883a;
            if (c1392wn2 == null) {
                c1392wnM2918c.f4037g = c1392wnM2918c;
                c1392wnM2918c.f4036f = c1392wnM2918c;
                c1016hn.f2883a = c1392wnM2918c;
            } else {
                c1392wn2.f4037g.m2917b(c1392wnM2918c);
            }
            j2 -= c1392wnM2918c.f4033c - c1392wnM2918c.f4032b;
            c1392wn = c1392wn.f4036f;
            j = 0;
        }
        return this;
    }

    public Object clone() {
        C1016hn c1016hn = new C1016hn();
        if (this.f2884b != 0) {
            C1392wn c1392wnM2918c = this.f2883a.m2918c();
            c1016hn.f2883a = c1392wnM2918c;
            c1392wnM2918c.f4037g = c1392wnM2918c;
            c1392wnM2918c.f4036f = c1392wnM2918c;
            C1392wn c1392wn = this.f2883a;
            while (true) {
                c1392wn = c1392wn.f4036f;
                if (c1392wn == this.f2883a) {
                    break;
                }
                c1016hn.f2883a.f4037g.m2917b(c1392wn.m2918c());
            }
            c1016hn.f2884b = this.f2884b;
        }
        return c1016hn;
    }

    @Override // com.huawei.hem.InterfaceC0836ao, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    /* renamed from: d */
    public final byte m1999d(long j) {
        int i;
        C0888co.m1543b(this.f2884b, j, 1L);
        long j2 = this.f2884b;
        if (j2 - j <= j) {
            long j3 = j - j2;
            C1392wn c1392wn = this.f2883a;
            do {
                c1392wn = c1392wn.f4037g;
                int i2 = c1392wn.f4033c;
                i = c1392wn.f4032b;
                j3 += i2 - i;
            } while (j3 < 0);
            return c1392wn.f4031a[i + ((int) j3)];
        }
        C1392wn c1392wn2 = this.f2883a;
        while (true) {
            int i3 = c1392wn2.f4033c;
            int i4 = c1392wn2.f4032b;
            long j4 = i3 - i4;
            if (j < j4) {
                return c1392wn2.f4031a[i4 + ((int) j)];
            }
            j -= j4;
            c1392wn2 = c1392wn2.f4036f;
        }
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
        long j2 = this.f2884b;
        if (j2 == 0) {
            return -1L;
        }
        if (j > j2) {
            j = j2;
        }
        c1016hn.mo1619p(this, j);
        return j;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1016hn)) {
            return false;
        }
        C1016hn c1016hn = (C1016hn) obj;
        long j = this.f2884b;
        if (j != c1016hn.f2884b) {
            return false;
        }
        long j2 = 0;
        if (j == 0) {
            return true;
        }
        C1392wn c1392wn = this.f2883a;
        C1392wn c1392wn2 = c1016hn.f2883a;
        int i = c1392wn.f4032b;
        int i2 = c1392wn2.f4032b;
        while (j2 < this.f2884b) {
            long jMin = Math.min(c1392wn.f4033c - i, c1392wn2.f4033c - i2);
            int i3 = 0;
            while (i3 < jMin) {
                int i4 = i + 1;
                int i5 = i2 + 1;
                if (c1392wn.f4031a[i] != c1392wn2.f4031a[i2]) {
                    return false;
                }
                i3++;
                i = i4;
                i2 = i5;
            }
            if (i == c1392wn.f4033c) {
                c1392wn = c1392wn.f4036f;
                i = c1392wn.f4032b;
            }
            if (i2 == c1392wn2.f4033c) {
                c1392wn2 = c1392wn2.f4036f;
                i2 = c1392wn2.f4032b;
            }
            j2 += jMin;
        }
        return true;
    }

    /* renamed from: f */
    public long m2000f(byte b, long j, long j2) {
        C1392wn c1392wn;
        long j3 = 0;
        if (j < 0 || j2 < j) {
            throw new IllegalArgumentException(String.format("size=%s fromIndex=%s toIndex=%s", Long.valueOf(this.f2884b), Long.valueOf(j), Long.valueOf(j2)));
        }
        long j4 = this.f2884b;
        if (j2 <= j4) {
            j4 = j2;
        }
        if (j == j4 || (c1392wn = this.f2883a) == null) {
            return -1L;
        }
        long j5 = this.f2884b;
        if (j5 - j < j) {
            while (j5 > j) {
                c1392wn = c1392wn.f4037g;
                j5 -= c1392wn.f4033c - c1392wn.f4032b;
            }
        } else {
            while (true) {
                long j6 = (c1392wn.f4033c - c1392wn.f4032b) + j3;
                if (j6 >= j) {
                    break;
                }
                c1392wn = c1392wn.f4036f;
                j3 = j6;
            }
            j5 = j3;
        }
        long j7 = j;
        while (j5 < j4) {
            byte[] bArr = c1392wn.f4031a;
            int iMin = (int) Math.min(c1392wn.f4033c, (c1392wn.f4032b + j4) - j5);
            for (int i = (int) ((c1392wn.f4032b + j7) - j5); i < iMin; i++) {
                if (bArr[i] == b) {
                    return (i - c1392wn.f4032b) + j5;
                }
            }
            j5 += c1392wn.f4033c - c1392wn.f4032b;
            c1392wn = c1392wn.f4036f;
            j7 = j5;
        }
        return -1L;
    }

    @Override // com.huawei.hem.InterfaceC1041in, com.huawei.hem.InterfaceC1467zn, java.io.Flushable
    public void flush() {
    }

    /* renamed from: g */
    public C1091kn m2001g() {
        return new C1091kn(mo2014v());
    }

    /* renamed from: h */
    public void m2002h(byte[] bArr) throws EOFException {
        int i = 0;
        while (i < bArr.length) {
            int i2 = read(bArr, i, bArr.length - i);
            if (i2 == -1) {
                throw new EOFException();
            }
            i += i2;
        }
    }

    public int hashCode() {
        C1392wn c1392wn = this.f2883a;
        if (c1392wn == null) {
            return 0;
        }
        int i = 1;
        do {
            int i2 = c1392wn.f4033c;
            for (int i3 = c1392wn.f4032b; i3 < i2; i3++) {
                i = (i * 31) + c1392wn.f4031a[i3];
            }
            c1392wn = c1392wn.f4036f;
        } while (c1392wn != this.f2883a);
        return i;
    }

    /* renamed from: i */
    public String m2003i(long j, Charset charset) {
        C0888co.m1543b(this.f2884b, 0L, j);
        if (charset == null) {
            throw new IllegalArgumentException("charset == null");
        }
        if (j > 2147483647L) {
            throw new IllegalArgumentException(C0948f6.m1755M("byteCount > Integer.MAX_VALUE: ", j));
        }
        if (j == 0) {
            return "";
        }
        C1392wn c1392wn = this.f2883a;
        if (c1392wn.f4032b + j > c1392wn.f4033c) {
            return new String(mo1971A(j), charset);
        }
        String str = new String(c1392wn.f4031a, c1392wn.f4032b, (int) j, charset);
        int i = (int) (c1392wn.f4032b + j);
        c1392wn.f4032b = i;
        this.f2884b -= j;
        if (i == c1392wn.f4033c) {
            this.f2883a = c1392wn.m2916a();
            C1417xn.m2951a(c1392wn);
        }
        return str;
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return true;
    }

    /* renamed from: j */
    public String m2004j() {
        try {
            return m2003i(this.f2884b, C0888co.f2363a);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    /* renamed from: k */
    public String m2005k(long j) throws EOFException {
        if (j > 0) {
            long j2 = j - 1;
            if (m1999d(j2) == 13) {
                String strM2003i = m2003i(j2, C0888co.f2363a);
                skip(2L);
                return strM2003i;
            }
        }
        String strM2003i2 = m2003i(j, C0888co.f2363a);
        skip(1L);
        return strM2003i2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0055, code lost:
    
        if (r19 == false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0057, code lost:
    
        return r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0058, code lost:
    
        return r11;
     */
    /* renamed from: l */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int m2006l(com.huawei.hem.C1317tn r18, boolean r19) {
        /*
            Method dump skipped, instructions count: 161
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.C1016hn.m2006l(com.huawei.hem.tn, boolean):int");
    }

    @Override // com.huawei.hem.InterfaceC1066jn, com.huawei.hem.InterfaceC1041in
    /* renamed from: m */
    public C1016hn mo2007m() {
        return this;
    }

    @Override // com.huawei.hem.InterfaceC0836ao
    /* renamed from: n */
    public C0862bo mo1381n() {
        return C0862bo.f2312d;
    }

    @Override // com.huawei.hem.InterfaceC1041in
    /* renamed from: o */
    public /* bridge */ /* synthetic */ InterfaceC1041in mo2008o(byte[] bArr, int i, int i2) {
        m1987Q(bArr, i, i2);
        return this;
    }

    @Override // com.huawei.hem.InterfaceC1467zn
    /* renamed from: p */
    public void mo1619p(C1016hn c1016hn, long j) {
        C1392wn c1392wnM2952b;
        if (c1016hn == null) {
            throw new IllegalArgumentException("source == null");
        }
        if (c1016hn == this) {
            throw new IllegalArgumentException("source == this");
        }
        C0888co.m1543b(c1016hn.f2884b, 0L, j);
        while (j > 0) {
            C1392wn c1392wn = c1016hn.f2883a;
            if (j < c1392wn.f4033c - c1392wn.f4032b) {
                C1392wn c1392wn2 = this.f2883a;
                C1392wn c1392wn3 = c1392wn2 != null ? c1392wn2.f4037g : null;
                if (c1392wn3 != null && c1392wn3.f4035e) {
                    if ((c1392wn3.f4033c + j) - (c1392wn3.f4034d ? 0 : c1392wn3.f4032b) <= PlaybackStateCompat.ACTION_PLAY_FROM_URI) {
                        c1016hn.f2883a.m2919d(c1392wn3, (int) j);
                        c1016hn.f2884b -= j;
                        this.f2884b += j;
                        return;
                    }
                }
                C1392wn c1392wn4 = c1016hn.f2883a;
                int i = (int) j;
                if (c1392wn4 == null) {
                    throw null;
                }
                if (i <= 0 || i > c1392wn4.f4033c - c1392wn4.f4032b) {
                    throw new IllegalArgumentException();
                }
                if (i >= 1024) {
                    c1392wnM2952b = c1392wn4.m2918c();
                } else {
                    c1392wnM2952b = C1417xn.m2952b();
                    System.arraycopy(c1392wn4.f4031a, c1392wn4.f4032b, c1392wnM2952b.f4031a, 0, i);
                }
                c1392wnM2952b.f4033c = c1392wnM2952b.f4032b + i;
                c1392wn4.f4032b += i;
                c1392wn4.f4037g.m2917b(c1392wnM2952b);
                c1016hn.f2883a = c1392wnM2952b;
            }
            C1392wn c1392wn5 = c1016hn.f2883a;
            long j2 = c1392wn5.f4033c - c1392wn5.f4032b;
            c1016hn.f2883a = c1392wn5.m2916a();
            C1392wn c1392wn6 = this.f2883a;
            if (c1392wn6 == null) {
                this.f2883a = c1392wn5;
                c1392wn5.f4037g = c1392wn5;
                c1392wn5.f4036f = c1392wn5;
            } else {
                c1392wn6.f4037g.m2917b(c1392wn5);
                C1392wn c1392wn7 = c1392wn5.f4037g;
                if (c1392wn7 == c1392wn5) {
                    throw new IllegalStateException();
                }
                if (c1392wn7.f4035e) {
                    int i2 = c1392wn5.f4033c - c1392wn5.f4032b;
                    if (i2 <= (8192 - c1392wn7.f4033c) + (c1392wn7.f4034d ? 0 : c1392wn7.f4032b)) {
                        c1392wn5.m2919d(c1392wn5.f4037g, i2);
                        c1392wn5.m2916a();
                        C1417xn.m2951a(c1392wn5);
                    }
                }
            }
            c1016hn.f2884b -= j2;
            this.f2884b += j2;
            j -= j2;
        }
    }

    @Override // com.huawei.hem.InterfaceC1041in
    /* renamed from: q */
    public long mo2009q(InterfaceC0836ao interfaceC0836ao) {
        if (interfaceC0836ao == null) {
            throw new IllegalArgumentException("source == null");
        }
        long j = 0;
        while (true) {
            long jMo1380e = interfaceC0836ao.mo1380e(this, PlaybackStateCompat.ACTION_PLAY_FROM_URI);
            if (jMo1380e == -1) {
                return j;
            }
            j += jMo1380e;
        }
    }

    public int read(byte[] bArr, int i, int i2) {
        C0888co.m1543b(bArr.length, i, i2);
        C1392wn c1392wn = this.f2883a;
        if (c1392wn == null) {
            return -1;
        }
        int iMin = Math.min(i2, c1392wn.f4033c - c1392wn.f4032b);
        System.arraycopy(c1392wn.f4031a, c1392wn.f4032b, bArr, i, iMin);
        int i3 = c1392wn.f4032b + iMin;
        c1392wn.f4032b = i3;
        this.f2884b -= iMin;
        if (i3 == c1392wn.f4033c) {
            this.f2883a = c1392wn.m2916a();
            C1417xn.m2951a(c1392wn);
        }
        return iMin;
    }

    @Override // com.huawei.hem.InterfaceC1066jn
    public byte readByte() {
        long j = this.f2884b;
        if (j == 0) {
            throw new IllegalStateException("size == 0");
        }
        C1392wn c1392wn = this.f2883a;
        int i = c1392wn.f4032b;
        int i2 = c1392wn.f4033c;
        int i3 = i + 1;
        byte b = c1392wn.f4031a[i];
        this.f2884b = j - 1;
        if (i3 == i2) {
            this.f2883a = c1392wn.m2916a();
            C1417xn.m2951a(c1392wn);
        } else {
            c1392wn.f4032b = i3;
        }
        return b;
    }

    @Override // com.huawei.hem.InterfaceC1066jn
    public int readInt() {
        long j = this.f2884b;
        if (j < 4) {
            StringBuilder sbM1765j = C0948f6.m1765j("size < 4: ");
            sbM1765j.append(this.f2884b);
            throw new IllegalStateException(sbM1765j.toString());
        }
        C1392wn c1392wn = this.f2883a;
        int i = c1392wn.f4032b;
        int i2 = c1392wn.f4033c;
        if (i2 - i < 4) {
            return ((readByte() & Base64.EQUALS_SIGN_ENC) << 24) | ((readByte() & Base64.EQUALS_SIGN_ENC) << 16) | ((readByte() & Base64.EQUALS_SIGN_ENC) << 8) | (readByte() & Base64.EQUALS_SIGN_ENC);
        }
        byte[] bArr = c1392wn.f4031a;
        int i3 = i + 1;
        int i4 = i3 + 1;
        int i5 = ((bArr[i] & Base64.EQUALS_SIGN_ENC) << 24) | ((bArr[i3] & Base64.EQUALS_SIGN_ENC) << 16);
        int i6 = i4 + 1;
        int i7 = i5 | ((bArr[i4] & Base64.EQUALS_SIGN_ENC) << 8);
        int i8 = i6 + 1;
        int i9 = i7 | (bArr[i6] & Base64.EQUALS_SIGN_ENC);
        this.f2884b = j - 4;
        if (i8 == i2) {
            this.f2883a = c1392wn.m2916a();
            C1417xn.m2951a(c1392wn);
        } else {
            c1392wn.f4032b = i8;
        }
        return i9;
    }

    @Override // com.huawei.hem.InterfaceC1066jn
    public short readShort() {
        long j = this.f2884b;
        if (j < 2) {
            StringBuilder sbM1765j = C0948f6.m1765j("size < 2: ");
            sbM1765j.append(this.f2884b);
            throw new IllegalStateException(sbM1765j.toString());
        }
        C1392wn c1392wn = this.f2883a;
        int i = c1392wn.f4032b;
        int i2 = c1392wn.f4033c;
        if (i2 - i < 2) {
            return (short) (((readByte() & Base64.EQUALS_SIGN_ENC) << 8) | (readByte() & Base64.EQUALS_SIGN_ENC));
        }
        byte[] bArr = c1392wn.f4031a;
        int i3 = i + 1;
        int i4 = i3 + 1;
        int i5 = ((bArr[i] & Base64.EQUALS_SIGN_ENC) << 8) | (bArr[i3] & Base64.EQUALS_SIGN_ENC);
        this.f2884b = j - 2;
        if (i4 == i2) {
            this.f2883a = c1392wn.m2916a();
            C1417xn.m2951a(c1392wn);
        } else {
            c1392wn.f4032b = i4;
        }
        return (short) i5;
    }

    @Override // com.huawei.hem.InterfaceC1041in
    /* renamed from: s */
    public /* bridge */ /* synthetic */ InterfaceC1041in mo2011s(int i) {
        m1992V(i);
        return this;
    }

    @Override // com.huawei.hem.InterfaceC1066jn
    public void skip(long j) throws EOFException {
        while (j > 0) {
            if (this.f2883a == null) {
                throw new EOFException();
            }
            int iMin = (int) Math.min(j, r0.f4033c - r0.f4032b);
            long j2 = iMin;
            this.f2884b -= j2;
            j -= j2;
            C1392wn c1392wn = this.f2883a;
            int i = c1392wn.f4032b + iMin;
            c1392wn.f4032b = i;
            if (i == c1392wn.f4033c) {
                this.f2883a = c1392wn.m2916a();
                C1417xn.m2951a(c1392wn);
            }
        }
    }

    @Override // com.huawei.hem.InterfaceC1041in
    /* renamed from: t */
    public /* bridge */ /* synthetic */ InterfaceC1041in mo2012t(int i) {
        m1991U(i);
        return this;
    }

    public String toString() {
        long j = this.f2884b;
        if (j <= 2147483647L) {
            int i = (int) j;
            return (i == 0 ? C1091kn.EMPTY : new C1442yn(this, i)).toString();
        }
        StringBuilder sbM1765j = C0948f6.m1765j("size > Integer.MAX_VALUE: ");
        sbM1765j.append(this.f2884b);
        throw new IllegalArgumentException(sbM1765j.toString());
    }

    @Override // com.huawei.hem.InterfaceC1066jn
    /* renamed from: u */
    public String mo2013u() {
        return mo1976F(RecyclerView.FOREVER_NS);
    }

    @Override // com.huawei.hem.InterfaceC1066jn
    /* renamed from: v */
    public byte[] mo2014v() {
        try {
            return mo1971A(this.f2884b);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    @Override // com.huawei.hem.InterfaceC1066jn
    /* renamed from: w */
    public int mo2015w() {
        return C0888co.m1544c(readInt());
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(ByteBuffer byteBuffer) {
        if (byteBuffer == null) {
            throw new IllegalArgumentException("source == null");
        }
        int iRemaining = byteBuffer.remaining();
        int i = iRemaining;
        while (i > 0) {
            C1392wn c1392wnM1984N = m1984N(1);
            int iMin = Math.min(i, 8192 - c1392wnM1984N.f4033c);
            byteBuffer.get(c1392wnM1984N.f4031a, c1392wnM1984N.f4033c, iMin);
            i -= iMin;
            c1392wnM1984N.f4033c += iMin;
        }
        this.f2884b += iRemaining;
        return iRemaining;
    }

    @Override // com.huawei.hem.InterfaceC1066jn
    /* renamed from: x */
    public C1016hn mo2016x() {
        return this;
    }

    @Override // com.huawei.hem.InterfaceC1066jn
    /* renamed from: y */
    public boolean mo2017y() {
        return this.f2884b == 0;
    }

    @Override // com.huawei.hem.InterfaceC1041in
    /* renamed from: z */
    public /* bridge */ /* synthetic */ InterfaceC1041in mo2018z(int i) {
        m1988R(i);
        return this;
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer byteBuffer) {
        C1392wn c1392wn = this.f2883a;
        if (c1392wn == null) {
            return -1;
        }
        int iMin = Math.min(byteBuffer.remaining(), c1392wn.f4033c - c1392wn.f4032b);
        byteBuffer.put(c1392wn.f4031a, c1392wn.f4032b, iMin);
        int i = c1392wn.f4032b + iMin;
        c1392wn.f4032b = i;
        this.f2884b -= iMin;
        if (i == c1392wn.f4033c) {
            this.f2883a = c1392wn.m2916a();
            C1417xn.m2951a(c1392wn);
        }
        return iMin;
    }
}
