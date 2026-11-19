package com.alibaba.sdk.android.emas;

import android.util.Base64;
import android.util.Log;
import java.io.UnsupportedEncodingException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* compiled from: AESCrypt.java */
/* renamed from: com.alibaba.sdk.android.emas.a */
/* loaded from: classes.dex */
public final class C0522a {

    /* renamed from: a */
    public static final byte[] f924a = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};

    /* renamed from: a */
    public static boolean f923a = false;

    /* renamed from: a */
    public static SecretKeySpec m611a(String str) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
        byte[] bytes = str.getBytes("UTF-8");
        messageDigest.update(bytes, 0, bytes.length);
        return new SecretKeySpec(messageDigest.digest(), "AES");
    }

    /* renamed from: b */
    public static String m613b(String str, String str2) throws NoSuchAlgorithmException {
        try {
            return new String(m614b(m611a(str), f924a, Base64.decode(str2, 2)), "UTF-8");
        } catch (UnsupportedEncodingException e) {
            if (!f923a) {
                return null;
            }
            Log.e("AESCrypt", "UnsupportedEncodingException ", e);
            return null;
        }
    }

    /* renamed from: a */
    public static String m610a(String str, String str2) {
        try {
            return Base64.encodeToString(m612a(m611a(str), f924a, str2.getBytes("UTF-8")), 2);
        } catch (UnsupportedEncodingException e) {
            if (!f923a) {
                return null;
            }
            Log.e("AESCrypt", "UnsupportedEncodingException ", e);
            return null;
        }
    }

    /* renamed from: b */
    public static byte[] m614b(SecretKeySpec secretKeySpec, byte[] bArr, byte[] bArr2) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        Cipher cipher = Cipher.getInstance("AES/CBC/PKCS7Padding");
        cipher.init(2, secretKeySpec, new IvParameterSpec(bArr));
        return cipher.doFinal(bArr2);
    }

    /* renamed from: a */
    public static byte[] m612a(SecretKeySpec secretKeySpec, byte[] bArr, byte[] bArr2) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        Cipher cipher = Cipher.getInstance("AES/CBC/PKCS7Padding");
        cipher.init(1, secretKeySpec, new IvParameterSpec(bArr));
        return cipher.doFinal(bArr2);
    }
}
