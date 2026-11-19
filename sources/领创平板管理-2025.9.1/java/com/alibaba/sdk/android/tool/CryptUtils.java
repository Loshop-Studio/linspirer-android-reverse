package com.alibaba.sdk.android.tool;

import android.text.TextUtils;
import com.huawei.hms.common.internal.TransactionIdCreater;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.Mac;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes.dex */
public class CryptUtils {
    public static final char[] hexChar = {TransactionIdCreater.FILL_BYTE, '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    public static String aesDecrypt(String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            try {
                return aesDecryptByBytes(SdkGzipCodec.m1009a(str2), str);
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public static String aesDecryptByBytes(byte[] bArr, String str) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException {
        SecretKeySpec secretKeySpec = new SecretKeySpec(hash(str, "MD5").substring(0, 16).getBytes("utf-8"), "AES/ECB/PKCS5Padding");
        Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
        cipher.init(2, secretKeySpec);
        return new String(cipher.doFinal(bArr));
    }

    public static String aesEncrypt(String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            try {
                return SdkGzipCodec.m1014b(aesEncryptToBytes(str, str2));
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public static byte[] aesEncryptToBytes(String str, String str2) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException {
        SecretKeySpec secretKeySpec = new SecretKeySpec(hash(str, "MD5").substring(0, 16).getBytes("utf-8"), "AES/ECB/PKCS5Padding");
        Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
        cipher.init(1, secretKeySpec);
        return cipher.doFinal(str2.getBytes("utf-8"));
    }

    public static String bytesToHexString(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (byte b : bArr) {
            sb.append(hexChar[(b & 240) >>> 4]);
            sb.append(hexChar[b & 15]);
        }
        return sb.toString();
    }

    public static String getHmacSha1(String str, String str2) throws NoSuchAlgorithmException, InvalidKeyException {
        SecretKeySpec secretKeySpec = new SecretKeySpec(str.getBytes(), "HmacSHA1");
        Mac mac = Mac.getInstance("HmacSHA1");
        mac.init(secretKeySpec);
        return bytesToHexString(mac.doFinal(str2.getBytes()));
    }

    public static String getMD5String(String str) {
        return bytesToHexString(MessageDigest.getInstance("MD5").digest(str.getBytes()));
    }

    public static String getSHA1String(String str) {
        return bytesToHexString(MessageDigest.getInstance("SHA-1").digest(str.getBytes()));
    }

    public static String hash(String str, String str2) throws NoSuchAlgorithmException {
        if (str != null) {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance(str2);
                messageDigest.update(str.getBytes());
                return bytesToHexString(messageDigest.digest());
            } catch (Exception unused) {
            }
        }
        return "";
    }
}
