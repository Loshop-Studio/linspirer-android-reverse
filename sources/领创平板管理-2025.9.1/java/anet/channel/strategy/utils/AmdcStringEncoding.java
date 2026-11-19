package anet.channel.strategy.utils;

import android.text.TextUtils;
import anet.channel.util.ALog;
import com.huawei.hms.framework.common.ContainerUtils;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Map;

/* compiled from: Taobao */
/* renamed from: anet.channel.strategy.utils.c */
/* loaded from: classes.dex */
public class AmdcStringEncoding {
    /* renamed from: a */
    public static boolean m331a(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        char[] charArray = str.toCharArray();
        if (charArray.length < 7 || charArray.length > 15) {
            return false;
        }
        int i = 0;
        int i2 = 0;
        for (char c : charArray) {
            if (c >= '0' && c <= '9') {
                i2 = ((i2 * 10) + c) - 48;
                if (i2 > 255) {
                    return false;
                }
            } else {
                if (c != '.' || (i = i + 1) > 3) {
                    return false;
                }
                i2 = 0;
            }
        }
        return true;
    }

    /* renamed from: b */
    public static boolean m332b(String str) {
        int i;
        boolean z;
        int i2;
        int i3;
        boolean z2;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        char[] charArray = str.toCharArray();
        if (charArray.length < 2) {
            return false;
        }
        if (charArray[0] != ':') {
            i = 0;
            z = false;
            i2 = 0;
            i3 = 0;
            z2 = true;
        } else {
            if (charArray[1] != ':') {
                return false;
            }
            z = false;
            i3 = 0;
            i = 1;
            i2 = 1;
            z2 = true;
        }
        while (i < charArray.length) {
            char c = charArray[i];
            int iDigit = Character.digit(c, 16);
            if (iDigit != -1) {
                i3 = (i3 << 4) + iDigit;
                if (i3 > 65535) {
                    return false;
                }
                z2 = false;
            } else {
                if (c != ':' || (i2 = i2 + 1) > 7) {
                    return false;
                }
                if (!z2) {
                    i3 = 0;
                    z2 = true;
                } else {
                    if (z) {
                        return false;
                    }
                    z = true;
                }
            }
            i++;
        }
        return z || i2 >= 7;
    }

    /* renamed from: c */
    public static boolean m333c(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        char[] charArray = str.toCharArray();
        if (charArray.length <= 0 || charArray.length > 255) {
            return false;
        }
        boolean z = false;
        for (int i = 0; i < charArray.length; i++) {
            if ((charArray[i] >= 'A' && charArray[i] <= 'Z') || ((charArray[i] >= 'a' && charArray[i] <= 'z') || charArray[i] == '*')) {
                z = true;
            } else if ((charArray[i] < '0' || charArray[i] > '9') && charArray[i] != '.' && charArray[i] != '-') {
                return false;
            }
        }
        return z;
    }

    /* renamed from: d */
    public static String m334d(String str) {
        return str == null ? "" : str;
    }

    /* renamed from: a */
    public static String m329a(long j) {
        StringBuilder sb = new StringBuilder(16);
        long j2 = 1000000000;
        do {
            sb.append(j / j2);
            sb.append('.');
            j %= j2;
            j2 /= 1000;
        } while (j2 > 0);
        sb.setLength(sb.length() - 1);
        return sb.toString();
    }

    /* renamed from: a */
    public static String m330a(Map<String, String> map, String str) {
        if (map == null || map.isEmpty()) {
            return "";
        }
        StringBuilder sb = new StringBuilder(64);
        try {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                if (entry.getKey() != null) {
                    sb.append(URLEncoder.encode(entry.getKey(), str));
                    sb.append(ContainerUtils.KEY_VALUE_DELIMITER);
                    sb.append(URLEncoder.encode(m334d(entry.getValue()), str).replace("+", "%20"));
                    sb.append("&");
                }
            }
            sb.deleteCharAt(sb.length() - 1);
        } catch (UnsupportedEncodingException e) {
            ALog.m338e("Request", "format params failed", null, e, new Object[0]);
        }
        return sb.toString();
    }
}
