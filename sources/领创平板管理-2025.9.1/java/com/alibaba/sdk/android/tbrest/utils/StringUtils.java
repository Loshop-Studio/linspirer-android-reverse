package com.alibaba.sdk.android.tbrest.utils;

import com.huawei.hem.C0948f6;
import com.huawei.hms.framework.common.ContainerUtils;
import java.util.Map;

/* loaded from: classes.dex */
public class StringUtils {
    public static String convertMapToString(Map<String, String> map) {
        if (map == null) {
            return null;
        }
        boolean z = true;
        StringBuffer stringBuffer = new StringBuffer();
        for (String str : map.keySet()) {
            String str2 = map.get(str);
            if (str2 != null && str != null) {
                if (z) {
                    if ("--invalid--".equals(str2)) {
                        stringBuffer.append(str);
                    } else {
                        stringBuffer.append(str + ContainerUtils.KEY_VALUE_DELIMITER + str2);
                    }
                    z = false;
                } else if ("--invalid--".equals(str2)) {
                    stringBuffer.append(",");
                    stringBuffer.append(str);
                } else {
                    stringBuffer.append(",");
                    stringBuffer.append(str + ContainerUtils.KEY_VALUE_DELIMITER + str2);
                }
            }
        }
        return stringBuffer.toString();
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
            sbM1765j.append(((Integer) obj).intValue());
            return sbM1765j.toString();
        }
        if (obj instanceof Long) {
            StringBuilder sbM1765j2 = C0948f6.m1765j("");
            sbM1765j2.append(((Long) obj).longValue());
            return sbM1765j2.toString();
        }
        if (obj instanceof Double) {
            StringBuilder sbM1765j3 = C0948f6.m1765j("");
            sbM1765j3.append(((Double) obj).doubleValue());
            return sbM1765j3.toString();
        }
        if (obj instanceof Float) {
            StringBuilder sbM1765j4 = C0948f6.m1765j("");
            sbM1765j4.append(((Float) obj).floatValue());
            return sbM1765j4.toString();
        }
        if (obj instanceof Short) {
            StringBuilder sbM1765j5 = C0948f6.m1765j("");
            sbM1765j5.append((int) ((Short) obj).shortValue());
            return sbM1765j5.toString();
        }
        if (!(obj instanceof Byte)) {
            return obj instanceof Boolean ? ((Boolean) obj).toString() : obj instanceof Character ? ((Character) obj).toString() : obj.toString();
        }
        StringBuilder sbM1765j6 = C0948f6.m1765j("");
        sbM1765j6.append((int) ((Byte) obj).byteValue());
        return sbM1765j6.toString();
    }

    public static String defaultString(String str, String str2) {
        return isBlank(str) ? str2 : str;
    }

    public static int hashCode(String str) {
        if (str.length() <= 0) {
            return 0;
        }
        int i = 0;
        for (char c : str.toCharArray()) {
            i = (i * 31) + c;
        }
        return i;
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

    public static boolean isNotBlank(CharSequence charSequence) {
        return !isBlank(charSequence);
    }
}
