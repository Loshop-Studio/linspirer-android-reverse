package com.alibaba.sdk.android.tbrest.utils;

import com.huawei.hms.common.internal.TransactionIdCreater;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* loaded from: classes.dex */
public class MD5Utils {
    public static char[] hexChar = {TransactionIdCreater.FILL_BYTE, '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    public static byte[] getMd5(byte[] bArr) throws NoSuchAlgorithmException {
        if (bArr == null) {
            return null;
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(bArr);
            return messageDigest.digest();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String getMd5Hex(byte[] bArr) throws NoSuchAlgorithmException {
        byte[] md5 = getMd5(bArr);
        return md5 != null ? toHexString(md5) : "0000000000000000";
    }

    public static String toHexString(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (byte b : bArr) {
            sb.append(hexChar[(b & 240) >>> 4]);
            sb.append(hexChar[b & 15]);
        }
        return sb.toString();
    }
}
