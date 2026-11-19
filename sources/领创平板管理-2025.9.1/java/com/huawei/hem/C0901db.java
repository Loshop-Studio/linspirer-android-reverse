package com.huawei.hem;

import android.security.keystore.KeyGenParameterSpec;
import android.text.TextUtils;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.UnrecoverableKeyException;
import java.security.cert.CertificateException;
import java.util.Arrays;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.KeyGenerator;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.spec.GCMParameterSpec;

/* renamed from: com.huawei.hem.db */
/* loaded from: classes.dex */
public class C0901db {
    /* renamed from: a */
    public static String m1578a(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            AbstractC1102l9.m2269J("db", "alias or encrypt content is null");
            return "";
        }
        try {
            return new String(m1579b(str, AbstractC1102l9.m2271L(str2)), "UTF-8");
        } catch (UnsupportedEncodingException e) {
            StringBuilder sbM1765j = C0948f6.m1765j("decrypt: UnsupportedEncodingException : ");
            sbM1765j.append(e.getMessage());
            AbstractC1102l9.m2269J("db", sbM1765j.toString());
            return "";
        }
    }

    /* renamed from: b */
    public static byte[] m1579b(String str, byte[] bArr) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        byte[] bArr2 = new byte[0];
        if (TextUtils.isEmpty(str)) {
            AbstractC1102l9.m2269J("db", "alias or encrypt content is null");
            return bArr2;
        }
        if (bArr.length <= 12) {
            AbstractC1102l9.m2269J("db", "Decrypt source data is invalid.");
            return bArr2;
        }
        SecretKey secretKeyM1580c = m1580c(str);
        if (secretKeyM1580c == null) {
            AbstractC1102l9.m2269J("db", "Decrypt secret key is null");
            return bArr2;
        }
        byte[] bArrCopyOf = Arrays.copyOf(bArr, 12);
        try {
            Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
            cipher.init(2, secretKeyM1580c, new GCMParameterSpec(128, bArrCopyOf));
            return cipher.doFinal(bArr, 12, bArr.length - 12);
        } catch (InvalidAlgorithmParameterException e) {
            StringBuilder sbM1765j = C0948f6.m1765j("InvalidAlgorithmParameterException : ");
            sbM1765j.append(e.getMessage());
            AbstractC1102l9.m2269J("db", sbM1765j.toString());
            return bArr2;
        } catch (InvalidKeyException e2) {
            StringBuilder sbM1765j2 = C0948f6.m1765j("InvalidKeyException : ");
            sbM1765j2.append(e2.getMessage());
            AbstractC1102l9.m2269J("db", sbM1765j2.toString());
            return bArr2;
        } catch (NoSuchAlgorithmException e3) {
            StringBuilder sbM1765j3 = C0948f6.m1765j("NoSuchAlgorithmException : ");
            sbM1765j3.append(e3.getMessage());
            AbstractC1102l9.m2269J("db", sbM1765j3.toString());
            return bArr2;
        } catch (BadPaddingException e4) {
            StringBuilder sbM1765j4 = C0948f6.m1765j("BadPaddingException : ");
            sbM1765j4.append(e4.getMessage());
            AbstractC1102l9.m2269J("db", sbM1765j4.toString());
            return bArr2;
        } catch (IllegalBlockSizeException e5) {
            StringBuilder sbM1765j5 = C0948f6.m1765j("IllegalBlockSizeException : ");
            sbM1765j5.append(e5.getMessage());
            AbstractC1102l9.m2269J("db", sbM1765j5.toString());
            return bArr2;
        } catch (NoSuchPaddingException e6) {
            StringBuilder sbM1765j6 = C0948f6.m1765j("NoSuchPaddingException : ");
            sbM1765j6.append(e6.getMessage());
            AbstractC1102l9.m2269J("db", sbM1765j6.toString());
            return bArr2;
        } catch (Exception e7) {
            StringBuilder sbM1765j7 = C0948f6.m1765j("Exception: ");
            sbM1765j7.append(e7.getMessage());
            AbstractC1102l9.m2269J("db", sbM1765j7.toString());
            return bArr2;
        }
    }

    /* renamed from: c */
    public static synchronized SecretKey m1580c(String str) {
        SecretKey secretKeyGenerateKey;
        secretKeyGenerateKey = null;
        try {
            try {
                try {
                    try {
                        try {
                            try {
                                try {
                                    KeyStore keyStore = KeyStore.getInstance("AndroidKeyStore");
                                    keyStore.load(null);
                                    Key key = keyStore.getKey(str, null);
                                    if (key == null || !(key instanceof SecretKey)) {
                                        KeyGenerator keyGenerator = KeyGenerator.getInstance("AES", "AndroidKeyStore");
                                        keyGenerator.init(new KeyGenParameterSpec.Builder(str, 3).setBlockModes("GCM").setEncryptionPaddings("NoPadding").setKeySize(256).build());
                                        secretKeyGenerateKey = keyGenerator.generateKey();
                                    } else {
                                        secretKeyGenerateKey = (SecretKey) key;
                                    }
                                } catch (InvalidAlgorithmParameterException e) {
                                    AbstractC1102l9.m2269J("db", "InvalidAlgorithmParameterException : " + e.getMessage());
                                }
                            } catch (KeyStoreException e2) {
                                AbstractC1102l9.m2269J("db", "KeyStoreException : " + e2.getMessage());
                            }
                        } catch (NoSuchAlgorithmException e3) {
                            AbstractC1102l9.m2269J("db", "NoSuchAlgorithmException : " + e3.getMessage());
                        }
                    } catch (IOException e4) {
                        AbstractC1102l9.m2269J("db", "IOException : " + e4.getMessage());
                    }
                } catch (Exception e5) {
                    AbstractC1102l9.m2269J("db", "Exception: " + e5.getMessage());
                }
            } catch (CertificateException e6) {
                AbstractC1102l9.m2269J("db", "CertificateException : " + e6.getMessage());
            }
        } catch (NoSuchProviderException e7) {
            AbstractC1102l9.m2269J("db", "NoSuchProviderException : " + e7.getMessage());
        } catch (UnrecoverableKeyException e8) {
            AbstractC1102l9.m2269J("db", "UnrecoverableKeyException : " + e8.getMessage());
        }
        return secretKeyGenerateKey;
    }

    /* renamed from: d */
    public static String m1581d(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            AbstractC1102l9.m2269J("db", "alias or encrypt content is null");
            return "";
        }
        try {
            return AbstractC1102l9.m2265F(m1582e(str, str2.getBytes("UTF-8")));
        } catch (UnsupportedEncodingException e) {
            StringBuilder sbM1765j = C0948f6.m1765j("encrypt: UnsupportedEncodingException : ");
            sbM1765j.append(e.getMessage());
            AbstractC1102l9.m2269J("db", sbM1765j.toString());
            return "";
        }
    }

    /* renamed from: e */
    public static byte[] m1582e(String str, byte[] bArr) throws BadPaddingException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, InvalidKeyException {
        byte[] bArr2 = new byte[0];
        if (TextUtils.isEmpty(str) || bArr == null) {
            AbstractC1102l9.m2269J("db", "alias or encrypt content is null");
            return bArr2;
        }
        try {
            Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
            SecretKey secretKeyM1580c = m1580c(str);
            if (secretKeyM1580c == null) {
                AbstractC1102l9.m2269J("db", "Encrypt secret key is null");
                return bArr2;
            }
            cipher.init(1, secretKeyM1580c);
            byte[] bArrDoFinal = cipher.doFinal(bArr);
            byte[] iv = cipher.getIV();
            if (iv != null && iv.length == 12) {
                byte[] bArrCopyOf = Arrays.copyOf(iv, iv.length + bArrDoFinal.length);
                System.arraycopy(bArrDoFinal, 0, bArrCopyOf, iv.length, bArrDoFinal.length);
                return bArrCopyOf;
            }
            AbstractC1102l9.m2269J("db", "IV is invalid.");
            return bArr2;
        } catch (InvalidKeyException e) {
            StringBuilder sbM1765j = C0948f6.m1765j("InvalidKeyException : ");
            sbM1765j.append(e.getMessage());
            AbstractC1102l9.m2269J("db", sbM1765j.toString());
            return bArr2;
        } catch (NoSuchAlgorithmException e2) {
            StringBuilder sbM1765j2 = C0948f6.m1765j("NoSuchAlgorithmException : ");
            sbM1765j2.append(e2.getMessage());
            AbstractC1102l9.m2269J("db", sbM1765j2.toString());
            return bArr2;
        } catch (BadPaddingException e3) {
            StringBuilder sbM1765j3 = C0948f6.m1765j("BadPaddingException : ");
            sbM1765j3.append(e3.getMessage());
            AbstractC1102l9.m2269J("db", sbM1765j3.toString());
            return bArr2;
        } catch (IllegalBlockSizeException e4) {
            StringBuilder sbM1765j4 = C0948f6.m1765j("IllegalBlockSizeException : ");
            sbM1765j4.append(e4.getMessage());
            AbstractC1102l9.m2269J("db", sbM1765j4.toString());
            return bArr2;
        } catch (NoSuchPaddingException e5) {
            StringBuilder sbM1765j5 = C0948f6.m1765j("NoSuchPaddingException : ");
            sbM1765j5.append(e5.getMessage());
            AbstractC1102l9.m2269J("db", sbM1765j5.toString());
            return bArr2;
        } catch (Exception e6) {
            StringBuilder sbM1765j6 = C0948f6.m1765j("Exception: ");
            sbM1765j6.append(e6.getMessage());
            AbstractC1102l9.m2269J("db", sbM1765j6.toString());
            return bArr2;
        }
    }
}
