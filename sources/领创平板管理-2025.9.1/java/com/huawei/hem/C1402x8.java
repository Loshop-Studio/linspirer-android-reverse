package com.huawei.hem;

import android.text.TextUtils;
import com.alibaba.sdk.android.tbrest.utils.Base64;
import com.huawei.hms.framework.common.Logger;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.regex.Pattern;
import org.android.agoo.message.MessageService;

/* renamed from: com.huawei.hem.x8 */
/* loaded from: classes.dex */
public class C1402x8 {

    /* renamed from: a */
    public static final Pattern f4054a = Pattern.compile("[0-9]*[a-z|A-Z]*[一-龥]*");

    /* renamed from: a */
    public static String m2932a(String str) throws UnsupportedEncodingException {
        String str2;
        try {
            try {
                byte[] bArrDigest = MessageDigest.getInstance("SHA-256").digest(str.getBytes("UTF-8"));
                StringBuffer stringBuffer = new StringBuffer();
                for (byte b : bArrDigest) {
                    String hexString = Integer.toHexString(b & Base64.EQUALS_SIGN_ENC);
                    if (hexString.length() == 1) {
                        stringBuffer.append(MessageService.MSG_DB_READY_REPORT);
                    }
                    stringBuffer.append(hexString);
                }
                return stringBuffer.toString();
            } catch (NoSuchAlgorithmException unused) {
                str2 = "encrypt NoSuchAlgorithmException";
                Logger.m3438w("b", str2);
                return null;
            }
        } catch (UnsupportedEncodingException unused2) {
            str2 = "encrypt UnsupportedEncodingException";
        }
    }

    /* renamed from: b */
    public static String m2933b(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        int i = 1;
        if (str.length() == 1) {
            return "*";
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (int i2 = 0; i2 < str.length(); i2++) {
            String str2 = str.charAt(i2) + "";
            if (f4054a.matcher(str2).matches()) {
                if (i % 2 == 0) {
                    str2 = "*";
                }
                i++;
            }
            stringBuffer.append(str2);
        }
        return stringBuffer.toString();
    }
}
