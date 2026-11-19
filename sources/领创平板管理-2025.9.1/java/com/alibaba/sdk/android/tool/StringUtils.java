package com.alibaba.sdk.android.tool;

import com.huawei.hem.C0948f6;
import com.huawei.hms.framework.common.ContainerUtils;
import java.util.Map;

/* loaded from: classes.dex */
public class StringUtils {
    public static String convertMaoToString(Map<String, String> map) {
        if (map == null) {
            return null;
        }
        boolean z = true;
        StringBuilder sb = new StringBuilder();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            if (key != null && value != null) {
                if (z) {
                    sb.append(key + ContainerUtils.KEY_VALUE_DELIMITER + value);
                    z = false;
                } else {
                    sb.append(",");
                    sb.append(key + ContainerUtils.KEY_VALUE_DELIMITER + value);
                }
            }
        }
        return sb.toString();
    }

    public static String convertObjectToString(Object obj) {
        if (obj == null) {
            return "";
        }
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof Integer) {
            StringBuilder sbM1765j = C0948f6.m1765j("");
            sbM1765j.append((Integer) obj);
            return sbM1765j.toString();
        }
        if (obj instanceof Long) {
            StringBuilder sbM1765j2 = C0948f6.m1765j("");
            sbM1765j2.append((Long) obj);
            return sbM1765j2.toString();
        }
        if (obj instanceof Double) {
            StringBuilder sbM1765j3 = C0948f6.m1765j("");
            sbM1765j3.append((Double) obj);
            return sbM1765j3.toString();
        }
        if (obj instanceof Float) {
            StringBuilder sbM1765j4 = C0948f6.m1765j("");
            sbM1765j4.append((Float) obj);
            return sbM1765j4.toString();
        }
        if (obj instanceof Short) {
            StringBuilder sbM1765j5 = C0948f6.m1765j("");
            sbM1765j5.append((Short) obj);
            return sbM1765j5.toString();
        }
        if (!(obj instanceof Byte)) {
            return obj instanceof Boolean ? ((Boolean) obj).toString() : obj instanceof Character ? ((Character) obj).toString() : obj.toString();
        }
        StringBuilder sbM1765j6 = C0948f6.m1765j("");
        sbM1765j6.append((Byte) obj);
        return sbM1765j6.toString();
    }

    public static boolean isBlank(CharSequence charSequence) {
        int length;
        if (charSequence != null && (length = charSequence.length()) != 0) {
            for (int i = 0; i < length; i++) {
                if (!Character.isWhitespace(charSequence.charAt(i))) {
                    return false;
                }
            }
        }
        return true;
    }

    public static boolean isEmpty(String str) {
        return str == null || str.length() <= 0;
    }
}
