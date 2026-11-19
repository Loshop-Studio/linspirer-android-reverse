package com.huawei.hem;

import android.util.Pair;
import java.nio.charset.Charset;

/* renamed from: com.huawei.hem.o9 */
/* loaded from: classes.dex */
public class AnalyticsTextDecryption {

    /* renamed from: a */
    public static final Charset f3378a = Charset.forName("UTF-8");

    /* renamed from: a */
    public static String m2430a(String str, String str2) {
        Pair pair;
        if (str == null || str.length() < 32) {
            pair = new Pair(new byte[0], str);
        } else {
            String strSubstring = str.substring(0, 32);
            pair = new Pair(MobileSdkPlatformUtilities.m2271L(strSubstring), str.substring(32));
        }
        return new String(AnalyticsBlockCipher.m1302a(MobileSdkPlatformUtilities.m2271L((String) pair.second), MobileSdkPlatformUtilities.m2271L(str2), (byte[]) pair.first), f3378a);
    }
}
