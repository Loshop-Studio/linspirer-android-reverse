package com.p061ta.p062a.p065c;

import com.huawei.hms.common.internal.TransactionIdCreater;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* renamed from: com.ta.a.c.b */
/* loaded from: classes.dex */
public class C1878b {

    /* renamed from: a */
    public static final char[] f5996a = {TransactionIdCreater.FILL_BYTE, '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* renamed from: a */
    public static String m5388a(String str, String str2) {
        try {
            byte[] bArrM5391a = m5391a(str.getBytes(), str2.getBytes());
            return bArrM5391a != null ? m5389a(bArrM5391a) : "0000000000000000";
        } catch (Exception e) {
            C1882f.m5404a("", e);
            return "0000000000000000";
        }
    }

    /* renamed from: d */
    public static String m5392d(String str) {
        return m5388a(m5393f(), str);
    }

    /* renamed from: f */
    public static String m5393f() {
        byte[] bytes = "QrMgt8GGYI6T52ZY5AnhtxkLzb8egpFn".getBytes();
        for (byte b = 0; b < 32; b = (byte) (b + 1)) {
            try {
                bytes[b] = (byte) (bytes[b] + b);
            } catch (Exception unused) {
                return null;
            }
        }
        return m5389a(bytes);
    }

    /* renamed from: a */
    public static byte[] m5390a(byte[] bArr) throws NoSuchAlgorithmException {
        if (bArr == null) {
            return null;
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(bArr);
            return messageDigest.digest();
        } catch (Exception e) {
            C1882f.m5403a("", e, new Object[0]);
            return null;
        }
    }

    /* renamed from: a */
    public static String m5389a(byte[] bArr) {
        if (bArr == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (int i = 0; i < bArr.length; i++) {
            sb.append(f5996a[(bArr[i] & 240) >>> 4]);
            sb.append(f5996a[bArr[i] & 15]);
        }
        return sb.toString();
    }

    /* renamed from: a */
    public static byte[] m5391a(byte[] bArr, byte[] bArr2) throws NoSuchAlgorithmException {
        byte[] bArr3 = new byte[64];
        byte[] bArr4 = new byte[64];
        for (int i = 0; i < 64; i++) {
            bArr3[i] = 54;
            bArr4[i] = 92;
        }
        byte[] bArr5 = new byte[64];
        if (bArr.length > 64) {
            bArr = m5390a(bArr);
        }
        for (int i2 = 0; i2 < bArr.length; i2++) {
            bArr5[i2] = bArr[i2];
        }
        if (bArr.length < 64) {
            for (int length = bArr.length; length < 64; length++) {
                bArr5[length] = 0;
            }
        }
        byte[] bArr6 = new byte[64];
        for (int i3 = 0; i3 < 64; i3++) {
            bArr6[i3] = (byte) (bArr5[i3] ^ bArr3[i3]);
        }
        byte[] bArr7 = new byte[bArr2.length + 64];
        for (int i4 = 0; i4 < 64; i4++) {
            bArr7[i4] = bArr6[i4];
        }
        for (int i5 = 0; i5 < bArr2.length; i5++) {
            bArr7[i5 + 64] = bArr2[i5];
        }
        byte[] bArrM5390a = m5390a(bArr7);
        byte[] bArr8 = new byte[64];
        for (int i6 = 0; i6 < 64; i6++) {
            bArr8[i6] = (byte) (bArr5[i6] ^ bArr4[i6]);
        }
        byte[] bArr9 = new byte[bArrM5390a.length + 64];
        for (int i7 = 0; i7 < 64; i7++) {
            bArr9[i7] = bArr8[i7];
        }
        for (int i8 = 0; i8 < bArrM5390a.length; i8++) {
            bArr9[i8 + 64] = bArrM5390a[i8];
        }
        return m5390a(bArr9);
    }
}
