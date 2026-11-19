package com.huawei.hem;

import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;

/* renamed from: com.huawei.hem.bb */
/* loaded from: classes.dex */
public abstract class PasswordBasedKeyDerivation {
    /* renamed from: a */
    public static byte[] m1389a(char[] cArr, byte[] bArr, int i, int i2) {
        try {
            return SecretKeyFactory.getInstance("PBKDF2WithHmacSHA1").generateSecret(new PBEKeySpec(cArr, bArr, i, i2)).getEncoded();
        } catch (NoSuchAlgorithmException | InvalidKeySpecException e) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("pbkdf exception : ");
            sbM1765j.append(e.getMessage());
            MobileSdkPlatformUtilities.m2269J("bb", sbM1765j.toString());
            return new byte[0];
        }
    }
}
