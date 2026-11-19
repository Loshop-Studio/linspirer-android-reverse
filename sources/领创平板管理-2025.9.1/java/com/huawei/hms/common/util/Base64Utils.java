package com.huawei.hms.common.util;

import android.util.Base64;
import com.huawei.hem.C0948f6;
import com.huawei.hms.support.log.HMSLog;

/* loaded from: classes.dex */
public final class Base64Utils {
    public static final int FLAG_DEFAULT = 0;
    public static final int FLAG_URL = 10;
    public static final int FLAG_URL_NOPADDING = 11;
    public static final String TAG = "Base64Utils";

    public static byte[] decode(String str) {
        byte[] bArr = new byte[0];
        if (str != null) {
            try {
                return Base64.decode(str, 0);
            } catch (IllegalArgumentException e) {
                StringBuilder sbM1765j = C0948f6.m1765j("decode failed : ");
                sbM1765j.append(e.getMessage());
                HMSLog.m3461e(TAG, sbM1765j.toString());
            }
        }
        return bArr;
    }

    public static byte[] decodeUrlSafe(String str) {
        byte[] bArr = new byte[0];
        if (str != null) {
            try {
                return Base64.decode(str, 10);
            } catch (IllegalArgumentException e) {
                StringBuilder sbM1765j = C0948f6.m1765j("decodeUrlSafe failed : ");
                sbM1765j.append(e.getMessage());
                HMSLog.m3461e(TAG, sbM1765j.toString());
            }
        }
        return bArr;
    }

    public static byte[] decodeUrlSafeNoPadding(String str) {
        byte[] bArr = new byte[0];
        if (str != null) {
            try {
                return Base64.decode(str, 11);
            } catch (IllegalArgumentException e) {
                StringBuilder sbM1765j = C0948f6.m1765j("decodeUrlSafeNoPadding failed : ");
                sbM1765j.append(e.getMessage());
                HMSLog.m3461e(TAG, sbM1765j.toString());
            }
        }
        return bArr;
    }

    public static String encode(byte[] bArr) {
        if (bArr != null) {
            return Base64.encodeToString(bArr, 0);
        }
        return null;
    }

    public static String encodeUrlSafe(byte[] bArr) {
        if (bArr != null) {
            return Base64.encodeToString(bArr, 10);
        }
        return null;
    }

    public static String encodeUrlSafeNoPadding(byte[] bArr) {
        if (bArr != null) {
            return Base64.encodeToString(bArr, 11);
        }
        return null;
    }
}
