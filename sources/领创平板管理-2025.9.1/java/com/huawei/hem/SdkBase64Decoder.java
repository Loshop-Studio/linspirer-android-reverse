package com.huawei.hem;

import com.alibaba.sdk.android.tbrest.request.BizRequest;
import com.alibaba.sdk.android.tbrest.utils.Base64;
import com.bumptech.glide.disklrucache.StrictLineReader;

/* renamed from: com.huawei.hem.j7 */
/* loaded from: classes.dex */
public class SdkBase64Decoder {

    /* renamed from: a */
    public static byte[] f2938a = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, -1, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, Base64.EQUALS_SIGN, -1, -1, -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, StrictLineReader.f2110CR, 14, 15, BizRequest.FLAGS_REAL_TIME_DEBUG, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, -1, -1, 26, 27, 28, 29, 30, 31, BizRequest.FLAGS_GET_CONFIG, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};

    /* renamed from: a */
    public static byte[] m2119a(String str) {
        int length = str.length();
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt > 255 || f2938a[cCharAt] < 0) {
                length--;
            }
        }
        int i2 = (length / 4) * 3;
        int i3 = length % 4;
        if (i3 == 3) {
            i2 += 2;
        }
        if (i3 == 2) {
            i2++;
        }
        byte[] bArr = new byte[i2];
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        for (int i7 = 0; i7 < str.length(); i7++) {
            char cCharAt2 = str.charAt(i7);
            byte b = cCharAt2 > 255 ? (byte) -1 : f2938a[cCharAt2];
            if (b >= 0) {
                i6 += 6;
                i5 = (i5 << 6) | b;
                if (i6 >= 8) {
                    i6 -= 8;
                    bArr[i4] = (byte) ((i5 >> i6) & 255);
                    i4++;
                }
            }
        }
        return i4 != i2 ? new byte[0] : bArr;
    }
}
