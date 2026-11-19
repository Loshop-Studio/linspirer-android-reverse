package com.huawei.hem;

import android.text.TextUtils;
import com.alibaba.sdk.android.tbrest.utils.Base64;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: ConstConfig.java */
/* renamed from: com.huawei.hem.m1 */
/* loaded from: classes.dex */
public final class ConstConfig {

    /* renamed from: a */
    public static String f3228a = "9aj&#k81";

    /* renamed from: b */
    public static String f3229b = "IaHR0cDovL2xvZ3MuYW1hcC5jb20vd3MvbG9nL3VwbG9hZD9wcm9kdWN0PSVzJnR5cGU9JXMmcGxhdGZvcm09JXMmY2hhbm5lbD0lcyZzaWduPSVz";

    /* renamed from: c */
    public static byte[] f3230c = null;

    /* renamed from: d */
    public static boolean f3231d = false;

    /* renamed from: e */
    public static boolean f3232e = false;

    /* renamed from: f */
    public static volatile ConcurrentHashMap<String, String> f3233f = new ConcurrentHashMap<>(8);

    /* renamed from: g */
    public static final Integer f3234g = 1;

    /* renamed from: h */
    public static final Integer f3235h = 2;

    /* renamed from: i */
    public static final Integer f3236i = 3;

    /* renamed from: j */
    public static final Integer f3237j = 4;

    /* renamed from: k */
    public static final Integer f3238k = 5;

    /* renamed from: a */
    public static String m2344a(String str) {
        String str2 = "";
        try {
            synchronized (f3233f) {
                if (f3233f != null && f3233f.containsKey(str)) {
                    str2 = f3233f.get(str);
                }
            }
        } catch (Throwable unused) {
        }
        return str2;
    }

    /* renamed from: b */
    public static void m2345b(String str, String str2) {
        try {
            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
                synchronized (f3233f) {
                    if (f3233f == null) {
                        f3233f = new ConcurrentHashMap<>(8);
                    }
                    if (!f3233f.containsKey(str)) {
                        f3233f.put(str, str2);
                    }
                }
            }
        } catch (Throwable unused) {
        }
    }

    /* renamed from: c */
    public static byte[] m2346c(int i) {
        if (f3230c == null) {
            f3230c = AMapEncryptionUtilities.m1934e("ADgAJQBdABEAbgAJAHcAFQCMAEEAzQBFARIAIQEzADkBbAA9AakAoQJKASEDawAJA3QADQOBABFLWVc1a2NtOXBaQzV2Y3k1VFpYSjJhV05sVFdGdVlXZGxjZz09UVoyVjBVMlZ5ZG1salpRPT1JY0dodmJtVT1VYVhCb2IyNWxjM1ZpYVc1bWJ3PT1NWTI5dExtRnVaSEp2YVdRdWFXNTBaWEp1WVd3dWRHVnNaWEJvYjI1NUxrbFVaV3hsY0dodmJua2tVM1IxWWc9PVFZMjl0TG1GdVpISnZhV1F1YVc1MFpYSnVZV3d1ZEdWc1pYQm9iMjU1TGtsUWFHOXVaVk4xWWtsdVptOGtVM1IxWWc9PUdWRkpCVGxOQlExUkpUMDVmWjJWMFJHVjJhV05sU1dRPUVZMjl0TG1GdVpISnZhV1F1YVc1MFpYSnVZV3d1ZEdWc1pYQm9iMjU1TGtsVVpXeGxjR2h2Ym5rPUlZMjl0TG1GdVpISnZhV1F1YVc1MFpYSnVZV3d1ZEdWc1pYQm9iMjU1TGtsUWFHOXVaVk4xWWtsdVptOD1FSW10bGVTSTZJaVZ6SWl3aWNHeGhkR1p2Y20waU9pSmhibVJ5YjJsa0lpd2laR2wxSWpvaUpYTWlMQ0p3YTJjaU9pSWxjeUlzSW0xdlpHVnNJam9pSlhNaUxDSmhjSEJ1WVcxbElqb2lKWE1pTENKaGNIQjJaWEp6YVc5dUlqb2lKWE1pTENKemVYTjJaWEp6YVc5dUlqb2lKWE1pTEE9PUNJbXRsZVNJNklpVnpJaXdpY0d4aGRHWnZjbTBpT2lKaGJtUnliMmxrSWl3aVpHbDFJam9pSlhNaUxDSnRZV01pT2lJbGN5SXNJblJwWkNJNklpVnpJaXdpZFcxcFpIUWlPaUlsY3lJc0ltMWhiblZtWVdOMGRYSmxJam9pSlhNaUxDSmtaWFpwWTJVaU9pSWxjeUlzSW5OcGJTSTZJaVZ6SWl3aWNHdG5Jam9pSlhNaUxDSnRiMlJsYkNJNklpVnpJaXdpWVhCd2RtVnljMmx2YmlJNklpVnpJaXdpWVhCd2JtRnRaU0k2SWlWeklpd2liMkZwWkNJNklpVnpJaXdpWVdScGRTSTZJaVZ6SWl3aWIzTmZkbVZ5SWpvaUpYTWlJWVdsa1BRPT1NZkhObGNtbGhiRDA9UVlXNWtjbTlwWkY5cFpBPT0=");
        }
        byte[] bArr = new byte[4];
        System.arraycopy(f3230c, i * 4, bArr, 0, 4);
        int i2 = ((bArr[0] & Base64.EQUALS_SIGN_ENC) * 256) + (bArr[1] & Base64.EQUALS_SIGN_ENC);
        int i3 = ((bArr[2] & 255) * 256) + (bArr[3] & 255);
        byte[] bArr2 = new byte[i3];
        System.arraycopy(f3230c, i2, bArr2, 0, i3);
        return bArr2;
    }
}
