package com.huawei.hms.base.p031ui;

import android.text.TextUtils;
import android.util.Log;
import java.util.regex.Pattern;

/* compiled from: LogUtil.java */
/* renamed from: com.huawei.hms.base.ui.a */
/* loaded from: classes.dex */
public class HmsSafeLogMask {

    /* renamed from: a */
    public static final Pattern f4523a = Pattern.compile("[0-9]*[a-z|A-Z]*[一-龥]*");

    /* renamed from: a */
    public static void m3380a(String str, String str2, boolean z) {
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        Log.e(str, m3378a(str2, z));
    }

    /* renamed from: a */
    public static void m3379a(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        Log.e(str, m3378a(str2, false));
    }

    /* renamed from: a */
    public static String m3378a(String str, boolean z) {
        StringBuilder sb = new StringBuilder(512);
        if (!TextUtils.isEmpty(str)) {
            if (z) {
                sb.append(m3377a(str));
            } else {
                sb.append(str);
            }
        }
        return sb.toString();
    }

    /* renamed from: a */
    public static String m3377a(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        int length = str.length();
        int i = 1;
        if (1 == length) {
            return String.valueOf('*');
        }
        StringBuilder sb = new StringBuilder(length);
        for (int i2 = 0; i2 < length; i2++) {
            char cCharAt = str.charAt(i2);
            if (f4523a.matcher(String.valueOf(cCharAt)).matches()) {
                if (i % 2 == 0) {
                    cCharAt = '*';
                }
                i++;
            }
            sb.append(cCharAt);
        }
        return sb.toString();
    }
}
