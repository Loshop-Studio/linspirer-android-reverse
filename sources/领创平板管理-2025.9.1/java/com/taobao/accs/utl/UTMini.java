package com.taobao.accs.utl;

import android.app.Application;
import android.content.Context;
import android.text.TextUtils;
import com.huawei.hem.C0948f6;
import com.huawei.hms.framework.common.ContainerUtils;
import com.p061ta.utdid2.device.UTDevice;
import java.util.Map;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public final class UTMini {
    public static final int EVENTID_AGOO = 19999;
    public static final String PAGE_AGOO = "Page_Push";
    public static final String TAG = "UTMini";
    public static UTMini instance = new UTMini();

    private String _convertStringAToKVSString(String... strArr) {
        if (strArr != null && strArr.length == 0) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer();
        if (strArr != null && strArr.length > 0) {
            boolean z = false;
            for (int i = 0; i < strArr.length; i++) {
                if (!TextUtils.isEmpty(strArr[i])) {
                    if (z) {
                        stringBuffer.append(",");
                    }
                    stringBuffer.append(strArr[i]);
                    z = true;
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

    public static String getCommitInfo(int i, String str, String str2, String str3, Map<String, String> map) {
        StringBuilder sb = new StringBuilder();
        sb.append("eventId=");
        sb.append(i);
        sb.append(";arg1=");
        sb.append(str);
        sb.append(";arg2=");
        sb.append(str2);
        sb.append(";arg3=");
        sb.append(str3);
        if (map != null) {
            sb.append(";");
            sb.append("args=");
            sb.append(map.toString());
        }
        return sb.toString();
    }

    public static UTMini getInstance() {
        return instance;
    }

    public static String[] mapToArray(Map<String, String> map) {
        int i = 0;
        if (map == null || map.isEmpty()) {
            return new String[0];
        }
        String[] strArr = new String[map.size()];
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            if (key == null) {
                strArr[i] = "";
            } else {
                strArr[i] = C0948f6.m1761f(key, ContainerUtils.KEY_VALUE_DELIMITER, value);
            }
            i++;
        }
        return strArr;
    }

    public final void commitEvent(int i, String str, Object obj) {
    }

    public final void commitEvent(int i, String str, Object obj, Object obj2) {
    }

    public final void commitEvent(int i, String str, Object obj, Object obj2, Object obj3) {
    }

    public final void commitEvent(int i, String str, Object obj, Object obj2, Object obj3, Map<String, String> map) {
    }

    public final void commitEvent(int i, String str, Object obj, Object obj2, Object obj3, String... strArr) {
    }

    public final String getUtdId(Context context) {
        try {
            return UTDevice.getUtdid(context);
        } catch (Throwable unused) {
            return null;
        }
    }

    public final void onCaughException(Throwable th) {
    }

    public final void start(Application application, String str, String str2, String str3) {
    }

    public final void stop(Context context) {
    }

    public static String getCommitInfo(int i, String str, String str2, String str3, String str4) {
        StringBuilder sb = new StringBuilder();
        sb.append("eventId=");
        sb.append(i);
        sb.append(";arg1=");
        sb.append(str);
        sb.append(";arg2=");
        sb.append(str2);
        sb.append(";arg3=");
        sb.append(str3);
        if (str4 != null) {
            sb.append(";");
            sb.append("args=");
            sb.append(str4);
        }
        return sb.toString();
    }
}
