package com.huawei.updatesdk.p034a.p035a.p040d;

import android.support.v4.view.InputDeviceCompat;
import android.text.TextUtils;
import com.huawei.hms.framework.common.StringUtils;
import com.huawei.updatesdk.p034a.p035a.p037c.p038a.p039a.UpdateLogWriter;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.IllegalFormatException;
import java.util.Locale;

/* renamed from: com.huawei.updatesdk.a.a.d.g */
/* loaded from: classes.dex */
public abstract class UpdateStringEncoding {
    /* renamed from: a */
    public static String m3536a(String str) {
        if (str == null) {
            return null;
        }
        try {
            return URLEncoder.encode(str, "UTF-8").replace("+", "%20").replace("*", "%2A").replace("~", "%7E");
        } catch (UnsupportedEncodingException e) {
            UpdateLogWriter.m3515a(StringUtils.TAG, "encode2utf8 error", e);
            return null;
        }
    }

    /* renamed from: a */
    public static String m3537a(byte[] bArr) throws NoSuchAlgorithmException {
        String str;
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            messageDigest.update(bArr);
            StringBuilder sb = new StringBuilder(256);
            for (byte b : messageDigest.digest()) {
                sb.append(String.format(Locale.ENGLISH, "%02X", Byte.valueOf(b)));
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException unused) {
            str = "sha256EncryptStr error:NoSuchAlgorithmException";
            UpdateLogWriter.m3516b(StringUtils.TAG, str);
            return null;
        } catch (IllegalFormatException unused2) {
            str = "sha256EncryptStr error:IllegalFormatException";
            UpdateLogWriter.m3516b(StringUtils.TAG, str);
            return null;
        } catch (Exception unused3) {
            str = "sha256EncryptStr error:Exception";
            UpdateLogWriter.m3516b(StringUtils.TAG, str);
            return null;
        }
    }

    /* renamed from: b */
    public static String m3538b(String str) {
        String strM3541e = m3541e(str);
        if (strM3541e == null) {
            return null;
        }
        return strM3541e.toLowerCase(Locale.getDefault());
    }

    /* renamed from: c */
    public static byte[] m3539c(String str) {
        char[] charArray = str.toCharArray();
        int length = charArray.length / 2;
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            int i2 = i * 2;
            int iDigit = Character.digit(charArray[i2 + 1], 16) | (Character.digit(charArray[i2], 16) << 4);
            if (iDigit > 127) {
                iDigit += InputDeviceCompat.SOURCE_ANY;
            }
            bArr[i] = Byte.valueOf(String.valueOf(iDigit)).byteValue();
        }
        return bArr;
    }

    /* renamed from: d */
    public static boolean m3540d(String str) {
        return str != null && str.trim().startsWith("{") && str.trim().endsWith("}");
    }

    /* renamed from: e */
    public static String m3541e(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return m3537a(str.getBytes("UTF-8"));
        } catch (UnsupportedEncodingException unused) {
            UpdateLogWriter.m3516b(StringUtils.TAG, "can not getBytes");
            return null;
        }
    }
}
