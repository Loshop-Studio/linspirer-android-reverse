package com.huawei.hem;

import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* renamed from: com.huawei.hem.ab */
/* loaded from: classes.dex */
public final class AnalyticsBlockCipher {
    /* renamed from: a */
    public static byte[] m1302a(byte[] bArr, byte[] bArr2, byte[] bArr3) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        if (bArr.length == 0 || bArr2.length < 16 || bArr3 == null || bArr3.length < 16) {
            MobileSdkPlatformUtilities.m2269J("ab", "cbc decrypt param is not right");
            return new byte[0];
        }
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr2, "AES");
        try {
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
            cipher.init(2, secretKeySpec, new IvParameterSpec(bArr3));
            return cipher.doFinal(bArr);
        } catch (InvalidAlgorithmParameterException e) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("InvalidAlgorithmParameterException: ");
            sbM1765j.append(e.getMessage());
            MobileSdkPlatformUtilities.m2269J("ab", sbM1765j.toString());
            return new byte[0];
        } catch (InvalidKeyException e2) {
            StringBuilder sbM1765j2 = CompilerOutline.m1765j("InvalidKeyException: ");
            sbM1765j2.append(e2.getMessage());
            MobileSdkPlatformUtilities.m2269J("ab", sbM1765j2.toString());
            return new byte[0];
        } catch (NoSuchAlgorithmException e3) {
            StringBuilder sbM1765j3 = CompilerOutline.m1765j("NoSuchAlgorithmException: ");
            sbM1765j3.append(e3.getMessage());
            MobileSdkPlatformUtilities.m2269J("ab", sbM1765j3.toString());
            return new byte[0];
        } catch (BadPaddingException e4) {
            StringBuilder sbM1765j4 = CompilerOutline.m1765j("BadPaddingException: ");
            sbM1765j4.append(e4.getMessage());
            MobileSdkPlatformUtilities.m2269J("ab", sbM1765j4.toString());
            return new byte[0];
        } catch (IllegalBlockSizeException e5) {
            StringBuilder sbM1765j5 = CompilerOutline.m1765j("IllegalBlockSizeException: ");
            sbM1765j5.append(e5.getMessage());
            MobileSdkPlatformUtilities.m2269J("ab", sbM1765j5.toString());
            return new byte[0];
        } catch (NoSuchPaddingException e6) {
            StringBuilder sbM1765j6 = CompilerOutline.m1765j("NoSuchPaddingException: ");
            sbM1765j6.append(e6.getMessage());
            MobileSdkPlatformUtilities.m2269J("ab", sbM1765j6.toString());
            return new byte[0];
        }
    }

    /* renamed from: b */
    public static byte[] m1303b(byte[] bArr, byte[] bArr2) throws BadPaddingException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        byte[] bArrDoFinal;
        byte[] bArrM1673a = SecureRandomBytes.m1673a(16);
        if (bArr == null || bArr.length == 0 || bArr2.length < 16 || bArrM1673a.length < 16) {
            MobileSdkPlatformUtilities.m2269J("ab", "cbc encrypt param is not right");
            bArrDoFinal = new byte[0];
        } else {
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr2, "AES");
            try {
                Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
                cipher.init(1, secretKeySpec, new IvParameterSpec(bArrM1673a));
                bArrDoFinal = cipher.doFinal(bArr);
            } catch (InvalidAlgorithmParameterException e) {
                StringBuilder sbM1765j = CompilerOutline.m1765j("InvalidAlgorithmParameterException: ");
                sbM1765j.append(e.getMessage());
                MobileSdkPlatformUtilities.m2269J("ab", sbM1765j.toString());
                bArrDoFinal = new byte[0];
                byte[] bArr3 = new byte[bArrM1673a.length + bArrDoFinal.length];
                System.arraycopy(bArrM1673a, 0, bArr3, 0, bArrM1673a.length);
                System.arraycopy(bArrDoFinal, 0, bArr3, bArrM1673a.length, bArrDoFinal.length);
                return bArr3;
            } catch (InvalidKeyException e2) {
                StringBuilder sbM1765j2 = CompilerOutline.m1765j("InvalidKeyException: ");
                sbM1765j2.append(e2.getMessage());
                MobileSdkPlatformUtilities.m2269J("ab", sbM1765j2.toString());
                bArrDoFinal = new byte[0];
                byte[] bArr32 = new byte[bArrM1673a.length + bArrDoFinal.length];
                System.arraycopy(bArrM1673a, 0, bArr32, 0, bArrM1673a.length);
                System.arraycopy(bArrDoFinal, 0, bArr32, bArrM1673a.length, bArrDoFinal.length);
                return bArr32;
            } catch (NoSuchAlgorithmException e3) {
                StringBuilder sbM1765j3 = CompilerOutline.m1765j("NoSuchAlgorithmException: ");
                sbM1765j3.append(e3.getMessage());
                MobileSdkPlatformUtilities.m2269J("ab", sbM1765j3.toString());
                bArrDoFinal = new byte[0];
                byte[] bArr322 = new byte[bArrM1673a.length + bArrDoFinal.length];
                System.arraycopy(bArrM1673a, 0, bArr322, 0, bArrM1673a.length);
                System.arraycopy(bArrDoFinal, 0, bArr322, bArrM1673a.length, bArrDoFinal.length);
                return bArr322;
            } catch (BadPaddingException e4) {
                StringBuilder sbM1765j4 = CompilerOutline.m1765j("BadPaddingException: ");
                sbM1765j4.append(e4.getMessage());
                MobileSdkPlatformUtilities.m2269J("ab", sbM1765j4.toString());
                bArrDoFinal = new byte[0];
                byte[] bArr3222 = new byte[bArrM1673a.length + bArrDoFinal.length];
                System.arraycopy(bArrM1673a, 0, bArr3222, 0, bArrM1673a.length);
                System.arraycopy(bArrDoFinal, 0, bArr3222, bArrM1673a.length, bArrDoFinal.length);
                return bArr3222;
            } catch (IllegalBlockSizeException e5) {
                StringBuilder sbM1765j5 = CompilerOutline.m1765j("IllegalBlockSizeException: ");
                sbM1765j5.append(e5.getMessage());
                MobileSdkPlatformUtilities.m2269J("ab", sbM1765j5.toString());
                bArrDoFinal = new byte[0];
                byte[] bArr32222 = new byte[bArrM1673a.length + bArrDoFinal.length];
                System.arraycopy(bArrM1673a, 0, bArr32222, 0, bArrM1673a.length);
                System.arraycopy(bArrDoFinal, 0, bArr32222, bArrM1673a.length, bArrDoFinal.length);
                return bArr32222;
            } catch (NoSuchPaddingException e6) {
                StringBuilder sbM1765j6 = CompilerOutline.m1765j("NoSuchPaddingException: ");
                sbM1765j6.append(e6.getMessage());
                MobileSdkPlatformUtilities.m2269J("ab", sbM1765j6.toString());
                bArrDoFinal = new byte[0];
                byte[] bArr322222 = new byte[bArrM1673a.length + bArrDoFinal.length];
                System.arraycopy(bArrM1673a, 0, bArr322222, 0, bArrM1673a.length);
                System.arraycopy(bArrDoFinal, 0, bArr322222, bArrM1673a.length, bArrDoFinal.length);
                return bArr322222;
            }
        }
        byte[] bArr3222222 = new byte[bArrM1673a.length + bArrDoFinal.length];
        System.arraycopy(bArrM1673a, 0, bArr3222222, 0, bArrM1673a.length);
        System.arraycopy(bArrDoFinal, 0, bArr3222222, bArrM1673a.length, bArrDoFinal.length);
        return bArr3222222;
    }
}
