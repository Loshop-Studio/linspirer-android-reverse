package com.huawei.hem;

import java.security.SecureRandom;

/* renamed from: com.huawei.hem.eb */
/* loaded from: classes.dex */
public class SecureRandomBytes {
    /* renamed from: a */
    public static byte[] m1673a(int i) {
        try {
            byte[] bArr = new byte[i];
            new SecureRandom().nextBytes(bArr);
            return bArr;
        } catch (Exception e) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("generate secure random error");
            sbM1765j.append(e.getMessage());
            MobileSdkPlatformUtilities.m2269J("EncryptUtil", sbM1765j.toString());
            return new byte[0];
        }
    }

    /* renamed from: b */
    public static String m1674b(int i) {
        return MobileSdkPlatformUtilities.m2265F(m1673a(i));
    }
}
