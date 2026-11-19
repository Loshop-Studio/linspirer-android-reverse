package org.android.agoo.common;

import com.huawei.hem.C0948f6;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.Mac;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* compiled from: Taobao */
/* renamed from: org.android.agoo.common.a */
/* loaded from: classes.dex */
public final class C2008a {

    /* renamed from: a */
    public static byte[] f6460a = {82, 22, 50, 44, -16, 124, -40, -114, -87, -40, 37, 23, -56, 23, -33, 75};

    /* renamed from: b */
    public static ThreadLocal<Cipher> f6461b = new ThreadLocal<>();

    /* renamed from: c */
    public static final AlgorithmParameterSpec f6462c = new IvParameterSpec(f6460a);

    /* renamed from: a */
    public static final byte[] m5839a(byte[] bArr, SecretKeySpec secretKeySpec, byte[] bArr2) {
        try {
            return m5837a(secretKeySpec, bArr2, 2).doFinal(bArr);
        } catch (BadPaddingException e) {
            StringBuilder sbM1765j = C0948f6.m1765j("AES decrypt error:");
            sbM1765j.append(e.getMessage());
            throw new IllegalArgumentException(sbM1765j.toString(), e);
        } catch (IllegalBlockSizeException e2) {
            StringBuilder sbM1765j2 = C0948f6.m1765j("AES decrypt error:");
            sbM1765j2.append(e2.getMessage());
            throw new IllegalArgumentException(sbM1765j2.toString(), e2);
        }
    }

    /* renamed from: a */
    public static final Cipher m5837a(SecretKeySpec secretKeySpec, byte[] bArr, int i) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        Cipher cipherM5836a = m5836a();
        try {
            cipherM5836a.init(i, secretKeySpec, new IvParameterSpec(bArr));
            return cipherM5836a;
        } catch (IllegalArgumentException e) {
            StringBuilder sbM1765j = C0948f6.m1765j("init Chipher error:");
            sbM1765j.append(e.getMessage());
            throw new RuntimeException(sbM1765j.toString(), e);
        } catch (InvalidAlgorithmParameterException e2) {
            StringBuilder sbM1765j2 = C0948f6.m1765j("init Chipher error:");
            sbM1765j2.append(e2.getMessage());
            throw new RuntimeException(sbM1765j2.toString(), e2);
        } catch (InvalidKeyException e3) {
            StringBuilder sbM1765j3 = C0948f6.m1765j("init Chipher error:");
            sbM1765j3.append(e3.getMessage());
            throw new RuntimeException(sbM1765j3.toString(), e3);
        }
    }

    /* renamed from: a */
    public static final Cipher m5836a() throws NoSuchPaddingException, NoSuchAlgorithmException {
        Cipher cipher = f6461b.get();
        if (cipher == null) {
            try {
                cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
                f6461b.set(cipher);
            } catch (NoSuchAlgorithmException e) {
                StringBuilder sbM1765j = C0948f6.m1765j("get Chipher error:");
                sbM1765j.append(e.getMessage());
                throw new RuntimeException(sbM1765j.toString(), e);
            } catch (NoSuchPaddingException e2) {
                StringBuilder sbM1765j2 = C0948f6.m1765j("get Chipher error:");
                sbM1765j2.append(e2.getMessage());
                throw new RuntimeException(sbM1765j2.toString(), e2);
            }
        }
        return cipher;
    }

    /* renamed from: a */
    public static final byte[] m5838a(byte[] bArr) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(bArr);
            return messageDigest.digest();
        } catch (Throwable th) {
            throw new RuntimeException("md5 value Throwable", th);
        }
    }

    /* renamed from: a */
    public static byte[] m5840a(byte[] bArr, byte[] bArr2) {
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "HmacSHA1");
        try {
            Mac mac = Mac.getInstance("HmacSHA1");
            mac.init(secretKeySpec);
            return mac.doFinal(bArr2);
        } catch (Throwable th) {
            throw new RuntimeException("HmacSHA1 Throwable", th);
        }
    }
}
