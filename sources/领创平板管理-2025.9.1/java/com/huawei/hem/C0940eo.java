package com.huawei.hem;

import android.support.v7.widget.ActivityChooserView;
import com.alibaba.sdk.android.tbrest.request.BizRequest;
import com.alibaba.sdk.android.tbrest.utils.Base64;
import com.bumptech.glide.disklrucache.StrictLineReader;
import com.huawei.hem.BaseNCodec;

/* compiled from: Base64.java */
/* renamed from: com.huawei.hem.eo */
/* loaded from: classes.dex */
public class C0940eo extends BaseNCodec {

    /* renamed from: k */
    public static final byte[] f2568k = {StrictLineReader.f2110CR, 10};

    /* renamed from: l */
    public static final byte[] f2569l = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47};

    /* renamed from: m */
    public static final byte[] f2570m = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95};

    /* renamed from: n */
    public static final byte[] f2571n = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, 62, -1, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, Base64.EQUALS_SIGN, -1, -1, -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, StrictLineReader.f2110CR, 14, 15, BizRequest.FLAGS_REAL_TIME_DEBUG, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, 63, -1, 26, 27, 28, 29, 30, 31, BizRequest.FLAGS_GET_CONFIG, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51};

    /* renamed from: f */
    public final byte[] f2572f;

    /* renamed from: g */
    public final byte[] f2573g;

    /* renamed from: h */
    public final byte[] f2574h;

    /* renamed from: i */
    public final int f2575i;

    /* renamed from: j */
    public final int f2576j;

    /* JADX WARN: Removed duplicated region for block: B:18:0x002b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C0940eo(int r10, byte[] r11, boolean r12) {
        /*
            r9 = this;
            r0 = 0
            if (r11 != 0) goto L5
            r1 = r0
            goto L6
        L5:
            int r1 = r11.length
        L6:
            r2 = 3
            r3 = 4
            r9.<init>(r2, r3, r10, r1)
            byte[] r1 = com.huawei.hem.C0940eo.f2571n
            r9.f2573g = r1
            r1 = 0
            r2 = 1
            if (r11 == 0) goto L61
            int r4 = r11.length
            r5 = r0
        L15:
            if (r5 >= r4) goto L34
            r6 = r11[r5]
            byte r7 = r9.f2706a
            if (r7 == r6) goto L32
            if (r6 < 0) goto L2b
            byte[] r7 = r9.f2573g
            int r8 = r7.length
            if (r6 >= r8) goto L2b
            r6 = r7[r6]
            r7 = -1
            if (r6 == r7) goto L2b
            r6 = r2
            goto L2c
        L2b:
            r6 = r0
        L2c:
            if (r6 == 0) goto L2f
            goto L32
        L2f:
            int r5 = r5 + 1
            goto L15
        L32:
            r4 = r2
            goto L35
        L34:
            r4 = r0
        L35:
            if (r4 == 0) goto L4c
            java.nio.charset.Charset r10 = com.huawei.hem.C0914do.f2488a
            java.lang.String r12 = new java.lang.String
            r12.<init>(r11, r10)
            java.lang.IllegalArgumentException r10 = new java.lang.IllegalArgumentException
            java.lang.String r11 = "lineSeparator must not contain base64 characters: ["
            java.lang.String r0 = "]"
            java.lang.String r11 = com.huawei.hem.C0948f6.m1761f(r11, r12, r0)
            r10.<init>(r11)
            throw r10
        L4c:
            if (r10 <= 0) goto L5c
            int r10 = r11.length
            int r10 = r10 + r3
            r9.f2576j = r10
            int r10 = r11.length
            byte[] r10 = new byte[r10]
            r9.f2574h = r10
            int r1 = r11.length
            java.lang.System.arraycopy(r11, r0, r10, r0, r1)
            goto L65
        L5c:
            r9.f2576j = r3
            r9.f2574h = r1
            goto L65
        L61:
            r9.f2576j = r3
            r9.f2574h = r1
        L65:
            int r10 = r9.f2576j
            int r10 = r10 - r2
            r9.f2575i = r10
            if (r12 == 0) goto L6f
            byte[] r10 = com.huawei.hem.C0940eo.f2570m
            goto L71
        L6f:
            byte[] r10 = com.huawei.hem.C0940eo.f2569l
        L71:
            r9.f2572f = r10
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.C0940eo.<init>(int, byte[], boolean):void");
    }

    /* renamed from: e */
    public static byte[] m1689e(byte[] bArr) {
        C0940eo c0940eo = new C0940eo(0, f2568k, false);
        if (bArr == null || bArr.length == 0) {
            return bArr;
        }
        BaseNCodec.a aVar = new BaseNCodec.a();
        c0940eo.mo1691a(bArr, 0, bArr.length, aVar);
        c0940eo.mo1691a(bArr, 0, -1, aVar);
        int i = aVar.f2713c;
        byte[] bArr2 = new byte[i];
        c0940eo.m1843d(bArr2, 0, i, aVar);
        return bArr2;
    }

    /* renamed from: f */
    public static byte[] m1690f(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return bArr;
        }
        C0940eo c0940eo = new C0940eo(0, f2568k, false);
        int length = bArr.length;
        int i = c0940eo.f2707b;
        long j = (((length + i) - 1) / i) * c0940eo.f2708c;
        int i2 = c0940eo.f2709d;
        if (i2 > 0) {
            long j2 = i2;
            j += (((j2 + j) - 1) / j2) * c0940eo.f2710e;
        }
        if (j > ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED) {
            throw new IllegalArgumentException("Input array too big, the output array would be bigger (" + j + ") than the specified maximum size of " + ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
        }
        if (bArr.length == 0) {
            return bArr;
        }
        int length2 = bArr.length;
        if (bArr.length == 0) {
            return bArr;
        }
        BaseNCodec.a aVar = new BaseNCodec.a();
        c0940eo.mo1692b(bArr, 0, length2, aVar);
        c0940eo.mo1692b(bArr, 0, -1, aVar);
        int i3 = aVar.f2713c - aVar.f2714d;
        byte[] bArr2 = new byte[i3];
        c0940eo.m1843d(bArr2, 0, i3, aVar);
        return bArr2;
    }

    @Override // com.huawei.hem.AbstractC0966fo
    /* renamed from: a */
    public void mo1691a(byte[] bArr, int i, int i2, BaseNCodec.a aVar) {
        byte b;
        if (aVar.f2715e) {
            return;
        }
        if (i2 < 0) {
            aVar.f2715e = true;
        }
        int i3 = 0;
        while (true) {
            if (i3 >= i2) {
                break;
            }
            byte[] bArrM1842c = m1842c(this.f2575i, aVar);
            int i4 = i + 1;
            byte b2 = bArr[i];
            if (b2 == this.f2706a) {
                aVar.f2715e = true;
                break;
            }
            if (b2 >= 0) {
                byte[] bArr2 = f2571n;
                if (b2 < bArr2.length && (b = bArr2[b2]) >= 0) {
                    int i5 = (aVar.f2717g + 1) % 4;
                    aVar.f2717g = i5;
                    int i6 = (aVar.f2711a << 6) + b;
                    aVar.f2711a = i6;
                    if (i5 == 0) {
                        int i7 = aVar.f2713c;
                        int i8 = i7 + 1;
                        aVar.f2713c = i8;
                        bArrM1842c[i7] = (byte) ((i6 >> 16) & 255);
                        int i9 = i8 + 1;
                        aVar.f2713c = i9;
                        bArrM1842c[i8] = (byte) ((i6 >> 8) & 255);
                        aVar.f2713c = i9 + 1;
                        bArrM1842c[i9] = (byte) (i6 & 255);
                    }
                }
            }
            i3++;
            i = i4;
        }
        if (!aVar.f2715e || aVar.f2717g == 0) {
            return;
        }
        byte[] bArrM1842c2 = m1842c(this.f2575i, aVar);
        int i10 = aVar.f2717g;
        if (i10 != 1) {
            if (i10 == 2) {
                int i11 = aVar.f2711a >> 4;
                aVar.f2711a = i11;
                int i12 = aVar.f2713c;
                aVar.f2713c = i12 + 1;
                bArrM1842c2[i12] = (byte) (i11 & 255);
                return;
            }
            if (i10 != 3) {
                StringBuilder sbM1765j = CompilerOutline.m1765j("Impossible modulus ");
                sbM1765j.append(aVar.f2717g);
                throw new IllegalStateException(sbM1765j.toString());
            }
            int i13 = aVar.f2711a >> 2;
            aVar.f2711a = i13;
            int i14 = aVar.f2713c;
            int i15 = i14 + 1;
            aVar.f2713c = i15;
            bArrM1842c2[i14] = (byte) ((i13 >> 8) & 255);
            aVar.f2713c = i15 + 1;
            bArrM1842c2[i15] = (byte) (i13 & 255);
        }
    }

    @Override // com.huawei.hem.AbstractC0966fo
    /* renamed from: b */
    public void mo1692b(byte[] bArr, int i, int i2, BaseNCodec.a aVar) {
        if (aVar.f2715e) {
            return;
        }
        if (i2 >= 0) {
            int i3 = 0;
            while (i3 < i2) {
                byte[] bArrM1842c = m1842c(this.f2576j, aVar);
                aVar.f2717g = (aVar.f2717g + 1) % 3;
                int i4 = i + 1;
                int i5 = bArr[i];
                if (i5 < 0) {
                    i5 += 256;
                }
                int i6 = (aVar.f2711a << 8) + i5;
                aVar.f2711a = i6;
                if (aVar.f2717g == 0) {
                    int i7 = aVar.f2713c;
                    int i8 = i7 + 1;
                    aVar.f2713c = i8;
                    byte[] bArr2 = this.f2572f;
                    bArrM1842c[i7] = bArr2[(i6 >> 18) & 63];
                    int i9 = i8 + 1;
                    aVar.f2713c = i9;
                    bArrM1842c[i8] = bArr2[(i6 >> 12) & 63];
                    int i10 = i9 + 1;
                    aVar.f2713c = i10;
                    bArrM1842c[i9] = bArr2[(i6 >> 6) & 63];
                    int i11 = i10 + 1;
                    aVar.f2713c = i11;
                    bArrM1842c[i10] = bArr2[i6 & 63];
                    int i12 = aVar.f2716f + 4;
                    aVar.f2716f = i12;
                    int i13 = this.f2709d;
                    if (i13 > 0 && i13 <= i12) {
                        byte[] bArr3 = this.f2574h;
                        System.arraycopy(bArr3, 0, bArrM1842c, i11, bArr3.length);
                        aVar.f2713c += this.f2574h.length;
                        aVar.f2716f = 0;
                    }
                }
                i3++;
                i = i4;
            }
            return;
        }
        aVar.f2715e = true;
        if (aVar.f2717g == 0 && this.f2709d == 0) {
            return;
        }
        byte[] bArrM1842c2 = m1842c(this.f2576j, aVar);
        int i14 = aVar.f2713c;
        int i15 = aVar.f2717g;
        if (i15 != 0) {
            if (i15 == 1) {
                int i16 = i14 + 1;
                aVar.f2713c = i16;
                byte[] bArr4 = this.f2572f;
                int i17 = aVar.f2711a;
                bArrM1842c2[i14] = bArr4[(i17 >> 2) & 63];
                int i18 = i16 + 1;
                aVar.f2713c = i18;
                bArrM1842c2[i16] = bArr4[(i17 << 4) & 63];
                if (bArr4 == f2569l) {
                    int i19 = i18 + 1;
                    aVar.f2713c = i19;
                    byte b = this.f2706a;
                    bArrM1842c2[i18] = b;
                    aVar.f2713c = i19 + 1;
                    bArrM1842c2[i19] = b;
                }
            } else {
                if (i15 != 2) {
                    StringBuilder sbM1765j = CompilerOutline.m1765j("Impossible modulus ");
                    sbM1765j.append(aVar.f2717g);
                    throw new IllegalStateException(sbM1765j.toString());
                }
                int i20 = i14 + 1;
                aVar.f2713c = i20;
                byte[] bArr5 = this.f2572f;
                int i21 = aVar.f2711a;
                bArrM1842c2[i14] = bArr5[(i21 >> 10) & 63];
                int i22 = i20 + 1;
                aVar.f2713c = i22;
                bArrM1842c2[i20] = bArr5[(i21 >> 4) & 63];
                int i23 = i22 + 1;
                aVar.f2713c = i23;
                bArrM1842c2[i22] = bArr5[(i21 << 2) & 63];
                if (bArr5 == f2569l) {
                    aVar.f2713c = i23 + 1;
                    bArrM1842c2[i23] = this.f2706a;
                }
            }
        }
        int i24 = aVar.f2716f;
        int i25 = aVar.f2713c;
        int i26 = (i25 - i14) + i24;
        aVar.f2716f = i26;
        if (this.f2709d <= 0 || i26 <= 0) {
            return;
        }
        byte[] bArr6 = this.f2574h;
        System.arraycopy(bArr6, 0, bArrM1842c2, i25, bArr6.length);
        aVar.f2713c += this.f2574h.length;
    }
}
