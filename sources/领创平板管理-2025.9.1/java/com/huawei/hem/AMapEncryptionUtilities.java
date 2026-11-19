package com.huawei.hem;

import com.alibaba.sdk.android.tbrest.utils.Base64;
import com.huawei.hms.common.internal.TransactionIdCreater;
import com.huawei.hms.framework.common.ContainerUtils;
import com.loc.BasicLogHandler;
import java.io.ByteArrayOutputStream;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* compiled from: Encrypt.java */
/* renamed from: com.huawei.hem.h1 */
/* loaded from: classes.dex */
public final class AMapEncryptionUtilities {

    /* renamed from: a */
    public static final char[] f2808a = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', TransactionIdCreater.FILL_BYTE, '1', '2', '3', '4', '5', '6', '7', '8', '9', '+', '/'};

    /* renamed from: b */
    public static final byte[] f2809b = new byte[128];

    static {
        for (int i = 0; i < 128; i++) {
            f2809b[i] = -1;
        }
        for (int i2 = 65; i2 <= 90; i2++) {
            f2809b[i2] = (byte) (i2 - 65);
        }
        for (int i3 = 97; i3 <= 122; i3++) {
            f2809b[i3] = (byte) ((i3 - 97) + 26);
        }
        for (int i4 = 48; i4 <= 57; i4++) {
            f2809b[i4] = (byte) ((i4 - 48) + 52);
        }
        byte[] bArr = f2809b;
        bArr[43] = 62;
        bArr[47] = 63;
    }

    /* renamed from: a */
    public static byte[] m1930a(byte[] bArr) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException {
        KeyGenerator keyGenerator = KeyGenerator.getInstance(AMapCoreUtilities.m2251t("EQUVT"));
        byte[] bArrM1936g = null;
        if (keyGenerator == null) {
            return null;
        }
        keyGenerator.init(256);
        byte[] encoded = keyGenerator.generateKey().getEncoded();
        PublicKey publicKeyM2254w = AMapCoreUtilities.m2254w();
        if (publicKeyM2254w == null) {
            return null;
        }
        byte[] bArrM1931b = m1931b(encoded, publicKeyM2254w);
        try {
            bArrM1936g = m1936g(encoded, bArr, AMapCoreUtilities.m2252u());
        } catch (Throwable th) {
            BasicLogHandler.m5312a(th, "er", "asEn");
        }
        byte[] bArr2 = new byte[bArrM1931b.length + bArrM1936g.length];
        System.arraycopy(bArrM1931b, 0, bArr2, 0, bArrM1931b.length);
        System.arraycopy(bArrM1936g, 0, bArr2, bArrM1931b.length, bArrM1936g.length);
        return bArr2;
    }

    /* renamed from: b */
    public static byte[] m1931b(byte[] bArr, Key key) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException {
        Cipher cipher = Cipher.getInstance(AMapCoreUtilities.m2251t("CUlNBL0VDQi9QS0NTMVBhZGRpbmc"));
        cipher.init(1, key);
        return cipher.doFinal(bArr);
    }

    /* renamed from: c */
    public static byte[] m1932c(byte[] bArr, byte[] bArr2, byte[] bArr3) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        IvParameterSpec ivParameterSpec = new IvParameterSpec(bArr3);
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, AMapCoreUtilities.m2251t("EQUVT"));
        Cipher cipher = Cipher.getInstance(AMapCoreUtilities.m2251t("CQUVTL0NCQy9QS0NTNVBhZGRpbmc"));
        cipher.init(2, secretKeySpec, ivParameterSpec);
        return cipher.doFinal(bArr2);
    }

    /* renamed from: d */
    public static String m1933d(byte[] bArr) {
        try {
            return m1937h(bArr);
        } catch (Throwable th) {
            BasicLogHandler.m5312a(th, "er", "e64");
            return null;
        }
    }

    /* renamed from: e */
    public static byte[] m1934e(String str) {
        int i;
        byte b;
        int i2;
        byte b2;
        int i3 = 0;
        if (str == null) {
            return new byte[0];
        }
        byte[] bArrM2245n = AMapCoreUtilities.m2245n(str);
        int length = bArrM2245n.length;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(length);
        while (i3 < length) {
            while (true) {
                i = i3 + 1;
                b = f2809b[bArrM2245n[i3]];
                if (i >= length || b != -1) {
                    break;
                }
                i3 = i;
            }
            if (b == -1) {
                break;
            }
            while (true) {
                i2 = i + 1;
                b2 = f2809b[bArrM2245n[i]];
                if (i2 >= length || b2 != -1) {
                    break;
                }
                i = i2;
            }
            if (b2 == -1) {
                break;
            }
            byteArrayOutputStream.write((b << 2) | ((b2 & 48) >>> 4));
            while (i2 != length) {
                int i4 = i2 + 1;
                byte b3 = bArrM2245n[i2];
                if (b3 == 61) {
                    return byteArrayOutputStream.toByteArray();
                }
                byte b4 = f2809b[b3];
                if (i4 >= length || b4 != -1) {
                    if (b4 == -1) {
                        break;
                    }
                    byteArrayOutputStream.write(((b2 & 15) << 4) | ((b4 & 60) >>> 2));
                    while (i4 != length) {
                        int i5 = i4 + 1;
                        byte b5 = bArrM2245n[i4];
                        if (b5 == 61) {
                            return byteArrayOutputStream.toByteArray();
                        }
                        byte b6 = f2809b[b5];
                        if (i5 < length && b6 == -1) {
                            i4 = i5;
                        } else {
                            if (b6 == -1) {
                                break;
                            }
                            byteArrayOutputStream.write(b6 | ((b4 & 3) << 6));
                            i3 = i5;
                        }
                    }
                    return byteArrayOutputStream.toByteArray();
                }
                i2 = i4;
            }
            return byteArrayOutputStream.toByteArray();
        }
        return byteArrayOutputStream.toByteArray();
    }

    /* renamed from: f */
    public static String m1935f(byte[] bArr) {
        try {
            return m1937h(bArr);
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    /* renamed from: g */
    public static byte[] m1936g(byte[] bArr, byte[] bArr2, byte[] bArr3) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        IvParameterSpec ivParameterSpec = new IvParameterSpec(bArr3);
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, AMapCoreUtilities.m2251t("EQUVT"));
        Cipher cipher = Cipher.getInstance(AMapCoreUtilities.m2251t("CQUVTL0NCQy9QS0NTNVBhZGRpbmc"));
        try {
            cipher.init(1, secretKeySpec, ivParameterSpec);
        } catch (InvalidAlgorithmParameterException e) {
            e.printStackTrace();
        }
        return cipher.doFinal(bArr2);
    }

    /* renamed from: h */
    public static String m1937h(byte[] bArr) {
        String str;
        StringBuffer stringBuffer = new StringBuffer();
        int length = bArr.length;
        int i = 0;
        while (i < length) {
            int i2 = i + 1;
            int i3 = bArr[i] & Base64.EQUALS_SIGN_ENC;
            if (i2 == length) {
                stringBuffer.append(f2808a[i3 >>> 2]);
                stringBuffer.append(f2808a[(i3 & 3) << 4]);
                str = "==";
            } else {
                int i4 = i2 + 1;
                int i5 = bArr[i2] & Base64.EQUALS_SIGN_ENC;
                if (i4 == length) {
                    stringBuffer.append(f2808a[i3 >>> 2]);
                    stringBuffer.append(f2808a[((i3 & 3) << 4) | ((i5 & 240) >>> 4)]);
                    stringBuffer.append(f2808a[(i5 & 15) << 2]);
                    str = ContainerUtils.KEY_VALUE_DELIMITER;
                } else {
                    int i6 = i4 + 1;
                    int i7 = bArr[i4] & Base64.EQUALS_SIGN_ENC;
                    stringBuffer.append(f2808a[i3 >>> 2]);
                    stringBuffer.append(f2808a[((i3 & 3) << 4) | ((i5 & 240) >>> 4)]);
                    stringBuffer.append(f2808a[((i5 & 15) << 2) | ((i7 & 192) >>> 6)]);
                    stringBuffer.append(f2808a[i7 & 63]);
                    i = i6;
                }
            }
            stringBuffer.append(str);
            break;
        }
        return stringBuffer.toString();
    }
}
