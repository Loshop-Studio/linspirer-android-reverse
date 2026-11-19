package com.huawei.hem;

import com.alibaba.sdk.android.tbrest.utils.Base64;

/* compiled from: XXTEA.java */
/* renamed from: com.huawei.hem.p1 */
/* loaded from: classes.dex */
public final class XXTEA {
    /* renamed from: a */
    public static byte[] m2454a(byte[] bArr, byte[] bArr2) {
        if (bArr.length == 0) {
            return bArr;
        }
        int length = bArr.length;
        int i = 4 - (length % 4);
        int i2 = ((length / 4) + 1) * 4;
        byte[] bArr3 = new byte[i2];
        System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
        while (length < i2) {
            bArr3[length] = (byte) i;
            length++;
        }
        int[] iArrM2455b = m2455b(bArr3);
        int[] iArrM2455b2 = m2455b(bArr2);
        int length2 = iArrM2455b.length - 1;
        if (length2 > 0) {
            if (iArrM2455b2.length < 4) {
                int[] iArr = new int[4];
                System.arraycopy(iArrM2455b2, 0, iArr, 0, iArrM2455b2.length);
                iArrM2455b2 = iArr;
            }
            int i3 = iArrM2455b[length2];
            int i4 = (52 / (length2 + 1)) + 6;
            int i5 = 0;
            while (true) {
                int i6 = i4 - 1;
                if (i4 <= 0) {
                    break;
                }
                i5 -= 1640531527;
                int i7 = (i5 >>> 2) & 3;
                int i8 = 0;
                while (i8 < length2) {
                    int i9 = i8 + 1;
                    int i10 = iArrM2455b[i9];
                    i3 = ((((i3 >>> 5) ^ (i10 << 2)) + ((i10 >>> 3) ^ (i3 << 4))) ^ ((i10 ^ i5) + (i3 ^ iArrM2455b2[(i8 & 3) ^ i7]))) + iArrM2455b[i8];
                    iArrM2455b[i8] = i3;
                    i8 = i9;
                }
                int i11 = iArrM2455b[0];
                i3 = ((((i3 >>> 5) ^ (i11 << 2)) + ((i11 >>> 3) ^ (i3 << 4))) ^ ((i11 ^ i5) + (i3 ^ iArrM2455b2[i7 ^ (i8 & 3)]))) + iArrM2455b[length2];
                iArrM2455b[length2] = i3;
                i4 = i6;
            }
        }
        int length3 = iArrM2455b.length << 2;
        byte[] bArr4 = new byte[length3];
        for (int i12 = 0; i12 < length3; i12++) {
            bArr4[i12] = (byte) ((iArrM2455b[i12 >>> 2] >>> ((i12 & 3) << 3)) & 255);
        }
        return bArr4;
    }

    /* renamed from: b */
    public static int[] m2455b(byte[] bArr) {
        int[] iArr = new int[bArr.length >>> 2];
        int length = bArr.length;
        for (int i = 0; i < length; i++) {
            int i2 = i >>> 2;
            iArr[i2] = iArr[i2] | ((bArr[i] & Base64.EQUALS_SIGN_ENC) << ((i & 3) << 3));
        }
        return iArr;
    }
}
