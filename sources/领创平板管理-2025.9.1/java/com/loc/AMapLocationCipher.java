package com.loc;

import com.alibaba.sdk.android.tbrest.utils.Base64;
import com.bumptech.glide.disklrucache.StrictLineReader;
import com.huawei.hem.AMapCoreUtilities;
import com.huawei.hem.AgooNotificationHandler;
import com.huawei.hms.common.internal.TransactionIdCreater;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.android.agoo.message.MessageService;

/* compiled from: Encrypt.java */
/* renamed from: com.loc.ee */
/* loaded from: classes.dex */
public final class AMapLocationCipher {

    /* renamed from: a */
    public static final char[] f5606a = {TransactionIdCreater.FILL_BYTE, '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* renamed from: b */
    public static final byte[] f5607b = {Base64.EQUALS_SIGN, Base64.EQUALS_SIGN, 81, 65, 65, 69, 119, 65, 67, 48, 74, 80, 115, 116, 54, 75, 104, 76, 122, 97, 88, 99, 53, 71, 49, 122, 68, 70, 79, 104, 113, 113, 65, 97, 76, 54, 65, 66, 87, 53, 103, 85, 84, 113, 71, 68, 69, 76, 80, 82, 106, 51, 66, 75, 75, 69, 98, 55, 84, 108, 115, 122, 51, 106, 76, 55, 88, 122, 70, 121, 73, 75, 52, 50, 43, 101, 70, 121, 56, 105, 115, 105, 89, 120, 117, 112, 53, 48, 76, 81, 70, 86, 108, 110, 73, 65, 66, 74, 65, 83, 119, 65, 119, 83, 68, 65, 81, 66, 66, 69, 81, 65, 78, 99, 118, 104, 73, 90, 111, 75, 74, 89, 81, 68, 119, 119, 70, 77};

    /* renamed from: c */
    public static final byte[] f5608c = {0, 1, 1, 2, 3, 5, 8, StrictLineReader.f2110CR, 8, 7, 6, 5, 4, 3, 2, 1};

    /* renamed from: d */
    public static final IvParameterSpec f5609d = new IvParameterSpec(f5608c);

    /* renamed from: a */
    public static String m4870a(String str) {
        if (str != null) {
            try {
                if (str.length() != 0) {
                    return m4871a("MD5", m4871a("SHA1", str) + str);
                }
            } catch (Throwable th) {
                CoreUtil.m5014a(th, "Encrypt", "generatorKey");
            }
        }
        return null;
    }

    /* renamed from: a */
    public static String m4871a(String str, String str2) {
        if (str2 == null) {
            return null;
        }
        try {
            return m4878c(AgooNotificationHandler.m2516l(str2.getBytes("UTF-8"), str));
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "Encrypt", "encode");
            return null;
        }
    }

    /* renamed from: a */
    public static byte[] m4872a() {
        return AMapCoreUtilities.m2252u();
    }

    /* renamed from: a */
    public static byte[] m4873a(byte[] bArr) throws InvalidKeySpecException, NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException {
        PublicKey publicKeyGeneratePublic = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(AMapBase64Codec.m4572a(new StringBuilder(new String(f5607b)).reverse().toString().getBytes())));
        Cipher cipher = Cipher.getInstance(AMapCoreUtilities.m2251t("WUlNBL0VDQi9PQUVQV0lUSFNIQS0xQU5ETUdGMVBBRERJTkc"));
        cipher.init(1, publicKeyGeneratePublic);
        return cipher.doFinal(bArr);
    }

    /* renamed from: a */
    public static byte[] m4874a(byte[] bArr, String str) {
        try {
            SecretKeySpec secretKeySpecM4875b = m4875b(str);
            IvParameterSpec ivParameterSpec = new IvParameterSpec(m4872a());
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
            cipher.init(1, secretKeySpecM4875b, ivParameterSpec);
            return cipher.doFinal(bArr);
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "Encrypt", "aesEncrypt");
            return null;
        }
    }

    /* renamed from: b */
    public static SecretKeySpec m4875b(String str) {
        byte[] bytes;
        if (str == null) {
            str = "";
        }
        StringBuffer stringBuffer = new StringBuffer(16);
        while (true) {
            stringBuffer.append(str);
            if (stringBuffer.length() >= 16) {
                break;
            }
            str = MessageService.MSG_DB_READY_REPORT;
        }
        if (stringBuffer.length() > 16) {
            stringBuffer.setLength(16);
        }
        try {
            bytes = stringBuffer.toString().getBytes("UTF-8");
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "Encrypt", "createKey");
            bytes = null;
        }
        return new SecretKeySpec(bytes, "AES");
    }

    /* renamed from: b */
    public static byte[] m4876b(byte[] bArr) {
        try {
            byte[] bArr2 = new byte[16];
            byte[] bArr3 = new byte[bArr.length - 16];
            System.arraycopy(bArr, 0, bArr2, 0, 16);
            System.arraycopy(bArr, 16, bArr3, 0, bArr.length - 16);
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr2, "AES");
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
            cipher.init(2, secretKeySpec, new IvParameterSpec(AMapCoreUtilities.m2252u()));
            return cipher.doFinal(bArr3);
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "Encrypt", "decryptRsponse length = ".concat(String.valueOf(bArr != null ? bArr.length : 0)));
            return null;
        }
    }

    /* renamed from: b */
    public static byte[] m4877b(byte[] bArr, String str) {
        try {
            SecretKeySpec secretKeySpecM4875b = m4875b(str);
            IvParameterSpec ivParameterSpec = new IvParameterSpec(m4872a());
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
            cipher.init(2, secretKeySpecM4875b, ivParameterSpec);
            return cipher.doFinal(bArr);
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "Encrypt", "aesDecrypt");
            return null;
        }
    }

    /* renamed from: c */
    public static String m4878c(byte[] bArr) {
        int length = bArr.length;
        StringBuilder sb = new StringBuilder(length * 2);
        for (int i = 0; i < length; i++) {
            sb.append(f5606a[(bArr[i] >> 4) & 15]);
            sb.append(f5606a[bArr[i] & 15]);
        }
        return sb.toString();
    }
}
