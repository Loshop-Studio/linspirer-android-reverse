package com.alibaba.sdk.android.beacon;

import android.content.Context;
import com.alibaba.sdk.android.tbrest.utils.Base64;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* renamed from: com.alibaba.sdk.android.beacon.c */
/* loaded from: classes.dex */
public final class C0511c {

    /* renamed from: a */
    public static final char[] f885a = "0123456789abcdef".toCharArray();

    /* renamed from: a */
    public static String m580a(Context context) {
        if (context == null) {
            return "";
        }
        try {
            String str = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
            return str == null ? "" : str;
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    /* renamed from: a */
    public static String m581a(String str, String str2) {
        SecretKeySpec secretKeySpec = new SecretKeySpec(str.getBytes(), "HmacSHA1");
        try {
            Mac mac = Mac.getInstance("HmacSHA1");
            mac.init(secretKeySpec);
            return m582a(mac.doFinal(str2.getBytes()));
        } catch (Throwable th) {
            th.printStackTrace();
            return "";
        }
    }

    /* renamed from: a */
    public static String m582a(byte[] bArr) {
        char[] cArr = new char[bArr.length * 2];
        for (int i = 0; i < bArr.length; i++) {
            int i2 = bArr[i] & Base64.EQUALS_SIGN_ENC;
            int i3 = i * 2;
            char[] cArr2 = f885a;
            cArr[i3] = cArr2[i2 >>> 4];
            cArr[i3 + 1] = cArr2[i2 & 15];
        }
        return new String(cArr);
    }
}
