package com.alibaba.sdk.android.ams.common.util;

import com.alibaba.sdk.android.tbrest.utils.Base64;
import com.huawei.hms.common.internal.TransactionIdCreater;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* renamed from: com.alibaba.sdk.android.ams.common.util.b */
/* loaded from: classes.dex */
public class C0506b {

    /* renamed from: a */
    public static final byte[] f849a = {-128, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};

    /* renamed from: b */
    public static final C0506b f850b = new C0506b();

    /* renamed from: c */
    public static final char[] f851c = {TransactionIdCreater.FILL_BYTE, '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* renamed from: g */
    public String f855g;

    /* renamed from: d */
    public long[] f852d = new long[4];

    /* renamed from: e */
    public long[] f853e = new long[2];

    /* renamed from: f */
    public byte[] f854f = new byte[64];

    /* renamed from: h */
    public byte[] f856h = new byte[16];

    public C0506b() {
        m530b();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* renamed from: a */
    public static long m518a(byte b) {
        byte b2 = b;
        if (b < 0) {
            b2 = b & Base64.EQUALS_SIGN_ENC;
        }
        return b2;
    }

    /* renamed from: a */
    private long m519a(long j, long j2, long j3) {
        return ((~j) & j3) | (j2 & j);
    }

    /* renamed from: a */
    private long m520a(long j, long j2, long j3, long j4, long j5, long j6, long j7) {
        int iM519a = (int) (m519a(j2, j3, j4) + j5 + j7 + j);
        return ((iM519a >>> ((int) (32 - j6))) | (iM519a << ((int) j6))) + j2;
    }

    /* renamed from: a */
    public static C0506b m521a() {
        return f850b;
    }

    /* renamed from: a */
    public static String m522a(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (int i = 0; i < bArr.length; i++) {
            sb.append(f851c[(bArr[i] & 240) >>> 4]);
            sb.append(f851c[bArr[i] & 15]);
        }
        return sb.toString();
    }

    /* renamed from: a */
    private void m523a(byte[] bArr, int i) {
        int i2;
        byte[] bArr2 = new byte[64];
        long[] jArr = this.f853e;
        int i3 = ((int) (jArr[0] >>> 3)) & 63;
        long j = i << 3;
        long j2 = jArr[0] + j;
        jArr[0] = j2;
        if (j2 < j) {
            jArr[1] = jArr[1] + 1;
        }
        long[] jArr2 = this.f853e;
        jArr2[1] = jArr2[1] + (i >>> 29);
        int i4 = 64 - i3;
        if (i >= i4) {
            m524a(this.f854f, bArr, i3, 0, i4);
            m531b(this.f854f);
            while (i4 + 63 < i) {
                m524a(bArr2, bArr, 0, i4, 64);
                m531b(bArr2);
                i4 += 64;
            }
            i3 = 0;
            i2 = i4;
        } else {
            i2 = 0;
        }
        m524a(this.f854f, bArr, i3, i2, i - i2);
    }

    /* renamed from: a */
    private void m524a(byte[] bArr, byte[] bArr2, int i, int i2, int i3) {
        for (int i4 = 0; i4 < i3; i4++) {
            bArr[i + i4] = bArr2[i2 + i4];
        }
    }

    /* renamed from: a */
    private void m525a(byte[] bArr, long[] jArr, int i) {
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3 += 4) {
            bArr[i3] = (byte) (jArr[i2] & 255);
            bArr[i3 + 1] = (byte) ((jArr[i2] >>> 8) & 255);
            bArr[i3 + 2] = (byte) ((jArr[i2] >>> 16) & 255);
            bArr[i3 + 3] = (byte) ((jArr[i2] >>> 24) & 255);
            i2++;
        }
    }

    /* renamed from: a */
    private void m526a(long[] jArr, byte[] bArr, int i) {
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3 += 4) {
            jArr[i2] = m518a(bArr[i3]) | (m518a(bArr[i3 + 1]) << 8) | (m518a(bArr[i3 + 2]) << 16) | (m518a(bArr[i3 + 3]) << 24);
            i2++;
        }
    }

    /* renamed from: b */
    private long m527b(long j, long j2, long j3) {
        return (j & j3) | (j2 & (~j3));
    }

    /* renamed from: b */
    private long m528b(long j, long j2, long j3, long j4, long j5, long j6, long j7) {
        int iM527b = (int) (m527b(j2, j3, j4) + j5 + j7 + j);
        return ((iM527b >>> ((int) (32 - j6))) | (iM527b << ((int) j6))) + j2;
    }

    /* renamed from: b */
    public static String m529b(byte b) {
        char[] cArr = {TransactionIdCreater.FILL_BYTE, '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
        return new String(new char[]{cArr[(b >>> 4) & 15], cArr[b & 15]});
    }

    /* renamed from: b */
    private void m530b() {
        long[] jArr = this.f853e;
        jArr[0] = 0;
        jArr[1] = 0;
        long[] jArr2 = this.f852d;
        jArr2[0] = 1732584193;
        jArr2[1] = 4023233417L;
        jArr2[2] = 2562383102L;
        jArr2[3] = 271733878;
    }

    /* renamed from: b */
    private void m531b(byte[] bArr) {
        long[] jArr = this.f852d;
        long j = jArr[0];
        long j2 = jArr[1];
        long j3 = jArr[2];
        long j4 = jArr[3];
        long[] jArr2 = new long[16];
        m526a(jArr2, bArr, 64);
        long jM520a = m520a(j, j2, j3, j4, jArr2[0], 7L, 3614090360L);
        long jM520a2 = m520a(j4, jM520a, j2, j3, jArr2[1], 12L, 3905402710L);
        long jM520a3 = m520a(j3, jM520a2, jM520a, j2, jArr2[2], 17L, 606105819L);
        long jM520a4 = m520a(j2, jM520a3, jM520a2, jM520a, jArr2[3], 22L, 3250441966L);
        long jM520a5 = m520a(jM520a, jM520a4, jM520a3, jM520a2, jArr2[4], 7L, 4118548399L);
        long jM520a6 = m520a(jM520a2, jM520a5, jM520a4, jM520a3, jArr2[5], 12L, 1200080426L);
        long jM520a7 = m520a(jM520a3, jM520a6, jM520a5, jM520a4, jArr2[6], 17L, 2821735955L);
        long jM520a8 = m520a(jM520a4, jM520a7, jM520a6, jM520a5, jArr2[7], 22L, 4249261313L);
        long jM520a9 = m520a(jM520a5, jM520a8, jM520a7, jM520a6, jArr2[8], 7L, 1770035416L);
        long jM520a10 = m520a(jM520a6, jM520a9, jM520a8, jM520a7, jArr2[9], 12L, 2336552879L);
        long jM520a11 = m520a(jM520a7, jM520a10, jM520a9, jM520a8, jArr2[10], 17L, 4294925233L);
        long jM520a12 = m520a(jM520a8, jM520a11, jM520a10, jM520a9, jArr2[11], 22L, 2304563134L);
        long jM520a13 = m520a(jM520a9, jM520a12, jM520a11, jM520a10, jArr2[12], 7L, 1804603682L);
        long jM520a14 = m520a(jM520a10, jM520a13, jM520a12, jM520a11, jArr2[13], 12L, 4254626195L);
        long jM520a15 = m520a(jM520a11, jM520a14, jM520a13, jM520a12, jArr2[14], 17L, 2792965006L);
        long jM520a16 = m520a(jM520a12, jM520a15, jM520a14, jM520a13, jArr2[15], 22L, 1236535329L);
        long jM528b = m528b(jM520a13, jM520a16, jM520a15, jM520a14, jArr2[1], 5L, 4129170786L);
        long jM528b2 = m528b(jM520a14, jM528b, jM520a16, jM520a15, jArr2[6], 9L, 3225465664L);
        long jM528b3 = m528b(jM520a15, jM528b2, jM528b, jM520a16, jArr2[11], 14L, 643717713L);
        long jM528b4 = m528b(jM520a16, jM528b3, jM528b2, jM528b, jArr2[0], 20L, 3921069994L);
        long jM528b5 = m528b(jM528b, jM528b4, jM528b3, jM528b2, jArr2[5], 5L, 3593408605L);
        long jM528b6 = m528b(jM528b2, jM528b5, jM528b4, jM528b3, jArr2[10], 9L, 38016083L);
        long jM528b7 = m528b(jM528b3, jM528b6, jM528b5, jM528b4, jArr2[15], 14L, 3634488961L);
        long jM528b8 = m528b(jM528b4, jM528b7, jM528b6, jM528b5, jArr2[4], 20L, 3889429448L);
        long jM528b9 = m528b(jM528b5, jM528b8, jM528b7, jM528b6, jArr2[9], 5L, 568446438L);
        long jM528b10 = m528b(jM528b6, jM528b9, jM528b8, jM528b7, jArr2[14], 9L, 3275163606L);
        long jM528b11 = m528b(jM528b7, jM528b10, jM528b9, jM528b8, jArr2[3], 14L, 4107603335L);
        long jM528b12 = m528b(jM528b8, jM528b11, jM528b10, jM528b9, jArr2[8], 20L, 1163531501L);
        long jM528b13 = m528b(jM528b9, jM528b12, jM528b11, jM528b10, jArr2[13], 5L, 2850285829L);
        long jM528b14 = m528b(jM528b10, jM528b13, jM528b12, jM528b11, jArr2[2], 9L, 4243563512L);
        long jM528b15 = m528b(jM528b11, jM528b14, jM528b13, jM528b12, jArr2[7], 14L, 1735328473L);
        long jM528b16 = m528b(jM528b12, jM528b15, jM528b14, jM528b13, jArr2[12], 20L, 2368359562L);
        long jM533c = m533c(jM528b13, jM528b16, jM528b15, jM528b14, jArr2[5], 4L, 4294588738L);
        long jM533c2 = m533c(jM528b14, jM533c, jM528b16, jM528b15, jArr2[8], 11L, 2272392833L);
        long jM533c3 = m533c(jM528b15, jM533c2, jM533c, jM528b16, jArr2[11], 16L, 1839030562L);
        long jM533c4 = m533c(jM528b16, jM533c3, jM533c2, jM533c, jArr2[14], 23L, 4259657740L);
        long jM533c5 = m533c(jM533c, jM533c4, jM533c3, jM533c2, jArr2[1], 4L, 2763975236L);
        long jM533c6 = m533c(jM533c2, jM533c5, jM533c4, jM533c3, jArr2[4], 11L, 1272893353L);
        long jM533c7 = m533c(jM533c3, jM533c6, jM533c5, jM533c4, jArr2[7], 16L, 4139469664L);
        long jM533c8 = m533c(jM533c4, jM533c7, jM533c6, jM533c5, jArr2[10], 23L, 3200236656L);
        long jM533c9 = m533c(jM533c5, jM533c8, jM533c7, jM533c6, jArr2[13], 4L, 681279174L);
        long jM533c10 = m533c(jM533c6, jM533c9, jM533c8, jM533c7, jArr2[0], 11L, 3936430074L);
        long jM533c11 = m533c(jM533c7, jM533c10, jM533c9, jM533c8, jArr2[3], 16L, 3572445317L);
        long jM533c12 = m533c(jM533c8, jM533c11, jM533c10, jM533c9, jArr2[6], 23L, 76029189L);
        long jM533c13 = m533c(jM533c9, jM533c12, jM533c11, jM533c10, jArr2[9], 4L, 3654602809L);
        long jM533c14 = m533c(jM533c10, jM533c13, jM533c12, jM533c11, jArr2[12], 11L, 3873151461L);
        long jM533c15 = m533c(jM533c11, jM533c14, jM533c13, jM533c12, jArr2[15], 16L, 530742520L);
        long jM533c16 = m533c(jM533c12, jM533c15, jM533c14, jM533c13, jArr2[2], 23L, 3299628645L);
        long jM536d = m536d(jM533c13, jM533c16, jM533c15, jM533c14, jArr2[0], 6L, 4096336452L);
        long jM536d2 = m536d(jM533c14, jM536d, jM533c16, jM533c15, jArr2[7], 10L, 1126891415L);
        long jM536d3 = m536d(jM533c15, jM536d2, jM536d, jM533c16, jArr2[14], 15L, 2878612391L);
        long jM536d4 = m536d(jM533c16, jM536d3, jM536d2, jM536d, jArr2[5], 21L, 4237533241L);
        long jM536d5 = m536d(jM536d, jM536d4, jM536d3, jM536d2, jArr2[12], 6L, 1700485571L);
        long jM536d6 = m536d(jM536d2, jM536d5, jM536d4, jM536d3, jArr2[3], 10L, 2399980690L);
        long jM536d7 = m536d(jM536d3, jM536d6, jM536d5, jM536d4, jArr2[10], 15L, 4293915773L);
        long jM536d8 = m536d(jM536d4, jM536d7, jM536d6, jM536d5, jArr2[1], 21L, 2240044497L);
        long jM536d9 = m536d(jM536d5, jM536d8, jM536d7, jM536d6, jArr2[8], 6L, 1873313359L);
        long jM536d10 = m536d(jM536d6, jM536d9, jM536d8, jM536d7, jArr2[15], 10L, 4264355552L);
        long jM536d11 = m536d(jM536d7, jM536d10, jM536d9, jM536d8, jArr2[6], 15L, 2734768916L);
        long jM536d12 = m536d(jM536d8, jM536d11, jM536d10, jM536d9, jArr2[13], 21L, 1309151649L);
        long jM536d13 = m536d(jM536d9, jM536d12, jM536d11, jM536d10, jArr2[4], 6L, 4149444226L);
        long jM536d14 = m536d(jM536d10, jM536d13, jM536d12, jM536d11, jArr2[11], 10L, 3174756917L);
        long jM536d15 = m536d(jM536d11, jM536d14, jM536d13, jM536d12, jArr2[2], 15L, 718787259L);
        long jM536d16 = m536d(jM536d12, jM536d15, jM536d14, jM536d13, jArr2[9], 21L, 3951481745L);
        long[] jArr3 = this.f852d;
        jArr3[0] = jArr3[0] + jM536d13;
        jArr3[1] = jArr3[1] + jM536d16;
        jArr3[2] = jArr3[2] + jM536d15;
        jArr3[3] = jArr3[3] + jM536d14;
    }

    /* renamed from: c */
    private long m532c(long j, long j2, long j3) {
        return (j ^ j2) ^ j3;
    }

    /* renamed from: c */
    private long m533c(long j, long j2, long j3, long j4, long j5, long j6, long j7) {
        int iM532c = (int) (m532c(j2, j3, j4) + j5 + j7 + j);
        return ((iM532c >>> ((int) (32 - j6))) | (iM532c << ((int) j6))) + j2;
    }

    /* renamed from: c */
    private void m534c() {
        byte[] bArr = new byte[8];
        m525a(bArr, this.f853e, 8);
        int i = ((int) (this.f853e[0] >>> 3)) & 63;
        m523a(f849a, i < 56 ? 56 - i : 120 - i);
        m523a(bArr, 8);
        m525a(this.f856h, this.f852d, 16);
    }

    /* renamed from: d */
    private long m535d(long j, long j2, long j3) {
        return (j | (~j3)) ^ j2;
    }

    /* renamed from: d */
    private long m536d(long j, long j2, long j3, long j4, long j5, long j6, long j7) {
        int iM535d = (int) (m535d(j2, j3, j4) + j5 + j7 + j);
        return ((iM535d >>> ((int) (32 - j6))) | (iM535d << ((int) j6))) + j2;
    }

    /* renamed from: a */
    public String m537a(String str) throws NoSuchAlgorithmException {
        MessageDigest messageDigest;
        try {
            messageDigest = MessageDigest.getInstance("MD5");
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            messageDigest = null;
        }
        messageDigest.update(str.getBytes(Charset.forName("UTF-8")));
        return m522a(messageDigest.digest());
    }

    /* renamed from: b */
    public String m538b(String str) {
        m530b();
        m523a(str.getBytes(Charset.forName("UTF-8")), str.length());
        m534c();
        this.f855g = "";
        for (int i = 0; i < 16; i++) {
            this.f855g += m529b(this.f856h[i]);
        }
        return this.f855g;
    }
}
