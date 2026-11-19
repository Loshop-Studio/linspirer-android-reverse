package com.huawei.hem;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Arrays;

/* compiled from: SegmentedByteString.java */
/* renamed from: com.huawei.hem.yn */
/* loaded from: classes.dex */
public final class C1442yn extends C1091kn {
    public final transient int[] directory;
    public final transient byte[][] segments;

    public C1442yn(C1016hn c1016hn, int i) {
        super(null);
        C0888co.m1543b(c1016hn.f2884b, 0L, i);
        C1392wn c1392wn = c1016hn.f2883a;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i3 < i) {
            int i5 = c1392wn.f4033c;
            int i6 = c1392wn.f4032b;
            if (i5 == i6) {
                throw new AssertionError("s.limit == s.pos");
            }
            i3 += i5 - i6;
            i4++;
            c1392wn = c1392wn.f4036f;
        }
        this.segments = new byte[i4][];
        this.directory = new int[i4 * 2];
        C1392wn c1392wn2 = c1016hn.f2883a;
        int i7 = 0;
        while (i2 < i) {
            this.segments[i7] = c1392wn2.f4031a;
            int i8 = (c1392wn2.f4033c - c1392wn2.f4032b) + i2;
            i2 = i8 > i ? i : i8;
            int[] iArr = this.directory;
            iArr[i7] = i2;
            iArr[this.segments.length + i7] = c1392wn2.f4032b;
            c1392wn2.f4034d = true;
            i7++;
            c1392wn2 = c1392wn2.f4036f;
        }
    }

    private Object writeReplace() {
        return m3134e();
    }

    @Override // com.huawei.hem.C1091kn
    public ByteBuffer asByteBuffer() {
        return ByteBuffer.wrap(toByteArray()).asReadOnlyBuffer();
    }

    @Override // com.huawei.hem.C1091kn
    public String base64() {
        return m3134e().base64();
    }

    @Override // com.huawei.hem.C1091kn
    public String base64Url() {
        return m3134e().base64Url();
    }

    /* renamed from: d */
    public final int m3133d(int i) {
        int iBinarySearch = Arrays.binarySearch(this.directory, 0, this.segments.length, i + 1);
        return iBinarySearch >= 0 ? iBinarySearch : ~iBinarySearch;
    }

    /* renamed from: e */
    public final C1091kn m3134e() {
        return new C1091kn(toByteArray());
    }

    @Override // com.huawei.hem.C1091kn
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C1091kn) {
            C1091kn c1091kn = (C1091kn) obj;
            if (c1091kn.size() == size() && rangeEquals(0, c1091kn, 0, size())) {
                return true;
            }
        }
        return false;
    }

    @Override // com.huawei.hem.C1091kn
    public byte getByte(int i) {
        C0888co.m1543b(this.directory[this.segments.length - 1], i, 1L);
        int iM3133d = m3133d(i);
        int i2 = iM3133d == 0 ? 0 : this.directory[iM3133d - 1];
        int[] iArr = this.directory;
        byte[][] bArr = this.segments;
        return bArr[iM3133d][(i - i2) + iArr[bArr.length + iM3133d]];
    }

    @Override // com.huawei.hem.C1091kn
    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int length = this.segments.length;
        int i2 = 0;
        int i3 = 1;
        int i4 = 0;
        while (i2 < length) {
            byte[] bArr = this.segments[i2];
            int[] iArr = this.directory;
            int i5 = iArr[length + i2];
            int i6 = iArr[i2];
            int i7 = (i6 - i4) + i5;
            while (i5 < i7) {
                i3 = (i3 * 31) + bArr[i5];
                i5++;
            }
            i2++;
            i4 = i6;
        }
        this.hashCode = i3;
        return i3;
    }

    @Override // com.huawei.hem.C1091kn
    public String hex() {
        return m3134e().hex();
    }

    @Override // com.huawei.hem.C1091kn
    public C1091kn hmacSha1(C1091kn c1091kn) {
        return m3134e().hmacSha1(c1091kn);
    }

    @Override // com.huawei.hem.C1091kn
    public C1091kn hmacSha256(C1091kn c1091kn) {
        return m3134e().hmacSha256(c1091kn);
    }

    @Override // com.huawei.hem.C1091kn
    public int indexOf(byte[] bArr, int i) {
        return m3134e().indexOf(bArr, i);
    }

    @Override // com.huawei.hem.C1091kn
    public byte[] internalArray() {
        return toByteArray();
    }

    @Override // com.huawei.hem.C1091kn
    public int lastIndexOf(byte[] bArr, int i) {
        return m3134e().lastIndexOf(bArr, i);
    }

    @Override // com.huawei.hem.C1091kn
    public C1091kn md5() {
        return m3134e().md5();
    }

    @Override // com.huawei.hem.C1091kn
    public boolean rangeEquals(int i, C1091kn c1091kn, int i2, int i3) {
        if (i < 0 || i > size() - i3) {
            return false;
        }
        int iM3133d = m3133d(i);
        while (i3 > 0) {
            int i4 = iM3133d == 0 ? 0 : this.directory[iM3133d - 1];
            int iMin = Math.min(i3, ((this.directory[iM3133d] - i4) + i4) - i);
            int[] iArr = this.directory;
            byte[][] bArr = this.segments;
            if (!c1091kn.rangeEquals(i2, bArr[iM3133d], (i - i4) + iArr[bArr.length + iM3133d], iMin)) {
                return false;
            }
            i += iMin;
            i2 += iMin;
            i3 -= iMin;
            iM3133d++;
        }
        return true;
    }

    @Override // com.huawei.hem.C1091kn
    public C1091kn sha1() {
        return m3134e().sha1();
    }

    @Override // com.huawei.hem.C1091kn
    public C1091kn sha256() {
        return m3134e().sha256();
    }

    @Override // com.huawei.hem.C1091kn
    public int size() {
        return this.directory[this.segments.length - 1];
    }

    @Override // com.huawei.hem.C1091kn
    public String string(Charset charset) {
        return m3134e().string(charset);
    }

    @Override // com.huawei.hem.C1091kn
    public C1091kn substring(int i) {
        return m3134e().substring(i);
    }

    @Override // com.huawei.hem.C1091kn
    public C1091kn toAsciiLowercase() {
        return m3134e().toAsciiLowercase();
    }

    @Override // com.huawei.hem.C1091kn
    public C1091kn toAsciiUppercase() {
        return m3134e().toAsciiUppercase();
    }

    @Override // com.huawei.hem.C1091kn
    public byte[] toByteArray() {
        int[] iArr = this.directory;
        byte[][] bArr = this.segments;
        byte[] bArr2 = new byte[iArr[bArr.length - 1]];
        int length = bArr.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int[] iArr2 = this.directory;
            int i3 = iArr2[length + i];
            int i4 = iArr2[i];
            System.arraycopy(this.segments[i], i3, bArr2, i2, i4 - i2);
            i++;
            i2 = i4;
        }
        return bArr2;
    }

    @Override // com.huawei.hem.C1091kn
    public String toString() {
        return m3134e().toString();
    }

    @Override // com.huawei.hem.C1091kn
    public String utf8() {
        return m3134e().utf8();
    }

    @Override // com.huawei.hem.C1091kn
    public void write(OutputStream outputStream) throws IOException {
        if (outputStream == null) {
            throw new IllegalArgumentException("out == null");
        }
        int length = this.segments.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int[] iArr = this.directory;
            int i3 = iArr[length + i];
            int i4 = iArr[i];
            outputStream.write(this.segments[i], i3, i4 - i2);
            i++;
            i2 = i4;
        }
    }

    @Override // com.huawei.hem.C1091kn
    public C1091kn substring(int i, int i2) {
        return m3134e().substring(i, i2);
    }

    @Override // com.huawei.hem.C1091kn
    public void write(C1016hn c1016hn) {
        int length = this.segments.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int[] iArr = this.directory;
            int i3 = iArr[length + i];
            int i4 = iArr[i];
            C1392wn c1392wn = new C1392wn(this.segments[i], i3, (i3 + i4) - i2, true, false);
            C1392wn c1392wn2 = c1016hn.f2883a;
            if (c1392wn2 == null) {
                c1392wn.f4037g = c1392wn;
                c1392wn.f4036f = c1392wn;
                c1016hn.f2883a = c1392wn;
            } else {
                c1392wn2.f4037g.m2917b(c1392wn);
            }
            i++;
            i2 = i4;
        }
        c1016hn.f2884b += i2;
    }

    @Override // com.huawei.hem.C1091kn
    public boolean rangeEquals(int i, byte[] bArr, int i2, int i3) {
        if (i < 0 || i > size() - i3 || i2 < 0 || i2 > bArr.length - i3) {
            return false;
        }
        int iM3133d = m3133d(i);
        while (i3 > 0) {
            int i4 = iM3133d == 0 ? 0 : this.directory[iM3133d - 1];
            int iMin = Math.min(i3, ((this.directory[iM3133d] - i4) + i4) - i);
            int[] iArr = this.directory;
            byte[][] bArr2 = this.segments;
            if (!C0888co.m1542a(bArr2[iM3133d], (i - i4) + iArr[bArr2.length + iM3133d], bArr, i2, iMin)) {
                return false;
            }
            i += iMin;
            i2 += iMin;
            i3 -= iMin;
            iM3133d++;
        }
        return true;
    }
}
