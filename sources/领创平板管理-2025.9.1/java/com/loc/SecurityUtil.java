package com.loc;

import com.alibaba.sdk.android.tbrest.utils.Base64;
import com.huawei.hem.CompilerOutline;
import com.huawei.hem.C0994h1;
import com.huawei.hem.C1094l1;
import com.huawei.hem.C1219q0;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* compiled from: SecurityUtil.java */
/* renamed from: com.loc.q */
/* loaded from: classes.dex */
public final class SecurityUtil {

    /* renamed from: a */
    public static byte[] f5914a;

    /* renamed from: b */
    public static String[] f5915b = {"kp6SsA", "cHE4dQ", "JKekrA", "XBxOHQ", "CSnpKw", "VwcThw", "wkp6Sg", "1cHE4Q"};

    /* renamed from: c */
    public static int[] f5916c;

    /* renamed from: a */
    public static int m5280a(int i, int i2) {
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            i3 = (i3 >> 1) | Integer.MIN_VALUE;
        }
        return (i << i2) | ((i & i3) >>> (32 - i2));
    }

    /* renamed from: a */
    public static String m5281a() {
        SecureRandom secureRandom = new SecureRandom();
        try {
            KeyGenerator keyGenerator = KeyGenerator.getInstance(C1094l1.m2251t("EQUVT"));
            keyGenerator.init(128, secureRandom);
            return Base64Util.m5262a(keyGenerator.generateKey().getEncoded());
        } catch (Throwable unused) {
            return null;
        }
    }

    /* renamed from: a */
    public static String m5282a(int i) {
        char[] cArr = new char[4];
        for (int i2 = 0; i2 < 4; i2++) {
            int i3 = (4 - i2) - 1;
            cArr[i3] = (char) ((i >>> (i2 * 8)) & 255);
            char c = cArr[i3];
            String strM1754L = " ";
            for (int i4 = 0; i4 < 32; i4++) {
                strM1754L = CompilerOutline.m1754L(strM1754L, ((Integer.MIN_VALUE >>> i4) & c) >>> (31 - i4));
            }
        }
        return new String(cArr);
    }

    /* renamed from: a */
    public static String m5283a(String str) {
        return C1219q0.m2507c(str);
    }

    /* renamed from: a */
    public static String m5284a(int[] iArr) {
        StringBuilder sb = new StringBuilder();
        if (iArr != null) {
            for (int i = 0; i < iArr.length; i++) {
                sb.append(m5282a(m5280a(m5286b(iArr[i]), i)));
            }
        }
        return sb.toString();
    }

    /* renamed from: a */
    public static byte[] m5285a(byte[] bArr) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        try {
            if (f5914a == null) {
                f5914a = C1094l1.m2251t("YAAAAAAAAAAAAAAAAAAAAAA").getBytes();
            }
            IvParameterSpec ivParameterSpec = new IvParameterSpec(f5914a);
            SecretKeySpec secretKeySpec = new SecretKeySpec(m5284a(m5288b()).getBytes("UTF-8"), C1094l1.m2251t("EQUVT"));
            Cipher cipher = Cipher.getInstance(C1094l1.m2251t("CQUVTL0NCQy9QS0NTNVBhZGRpbmc"));
            cipher.init(1, secretKeySpec, ivParameterSpec);
            return cipher.doFinal(bArr);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: b */
    public static int m5286b(int i) {
        int i2 = 1;
        for (int i3 = 0; i3 < 15; i3++) {
            i2 = (i2 << 2) | 1;
        }
        return ((i & i2) << 1) | (((i2 << 1) & i) >>> 1);
    }

    /* renamed from: b */
    public static String m5287b(String str) {
        try {
            return Base64Util.m5262a(m5285a(str.getBytes("UTF-8")));
        } catch (Throwable unused) {
            return null;
        }
    }

    /* renamed from: b */
    public static int[] m5288b() {
        int[] iArr = f5916c;
        if (iArr != null) {
            return iArr;
        }
        int[] iArr2 = new int[8];
        int i = 0;
        while (true) {
            String[] strArr = f5915b;
            if (i >= strArr.length) {
                return iArr2;
            }
            byte[] bArrM1934e = C0994h1.m1934e(strArr[i]);
            iArr2[i] = ((bArrM1934e[0] & Base64.EQUALS_SIGN_ENC) << 24) | (bArrM1934e[3] & Base64.EQUALS_SIGN_ENC) | ((bArrM1934e[2] & Base64.EQUALS_SIGN_ENC) << 8) | ((bArrM1934e[1] & Base64.EQUALS_SIGN_ENC) << 16);
            i++;
        }
    }
}
