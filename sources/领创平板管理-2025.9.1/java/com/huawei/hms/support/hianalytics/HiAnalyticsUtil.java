package com.huawei.hms.support.hianalytics;

import android.content.Context;
import android.text.TextUtils;
import com.huawei.hem.CompilerOutline;
import com.huawei.hms.android.SystemUtils;
import com.huawei.hms.common.internal.RequestHeader;
import com.huawei.hms.common.internal.ResponseHeader;
import com.huawei.hms.common.internal.TransactionIdCreater;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.utils.Util;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class HiAnalyticsUtil {

    /* renamed from: a */
    public static final Object f4561a = new Object();

    /* renamed from: b */
    public static HiAnalyticsUtil f4562b;

    /* renamed from: c */
    public static HiAnalyticsUtils f4563c;

    /* renamed from: a */
    private String m3454a(Context context, String str) {
        StringBuilder sbM1770o = CompilerOutline.m1770o("01|", "", "|", context.getPackageName(), "|");
        sbM1770o.append(Util.getAppId(context));
        sbM1770o.append("|");
        sbM1770o.append(50200300);
        sbM1770o.append("|");
        sbM1770o.append(str);
        return sbM1770o.toString();
    }

    public static HiAnalyticsUtil getInstance() {
        HiAnalyticsUtil hiAnalyticsUtil;
        synchronized (f4561a) {
            if (f4562b == null) {
                f4562b = new HiAnalyticsUtil();
                f4563c = HiAnalyticsUtils.getInstance();
            }
            hiAnalyticsUtil = f4562b;
        }
        return hiAnalyticsUtil;
    }

    public static Map<String, String> getMapFromForegroundResponseHeader(ResponseHeader responseHeader) {
        HashMap map = new HashMap();
        if (responseHeader == null) {
            return map;
        }
        map.put(HiAnalyticsConstant.HaKey.BI_KEY_TRANSID, responseHeader.getTransactionId());
        map.put(HiAnalyticsConstant.HaKey.BI_KEY_APPID, responseHeader.getActualAppID());
        map.put("service", responseHeader.getSrvName());
        map.put(HiAnalyticsConstant.HaKey.BI_KEY_APINAME, responseHeader.getApiName());
        map.put("package", responseHeader.getPkgName());
        map.put(HiAnalyticsConstant.HaKey.BI_KEY_RESULT, String.valueOf(responseHeader.getStatusCode()));
        map.put("result", String.valueOf(responseHeader.getErrorCode()));
        map.put(HiAnalyticsConstant.HaKey.BI_KEY_ERRORREASON, responseHeader.getErrorReason());
        map.put(HiAnalyticsConstant.HaKey.BI_KEY_CALLTMEI, String.valueOf(System.currentTimeMillis()));
        map.put(HiAnalyticsConstant.HaKey.BI_KEY_BASE_VERSION, "5.2.0.300");
        return map;
    }

    public static Map<String, String> getMapFromRequestHeader(ResponseHeader responseHeader) {
        HashMap map = new HashMap();
        if (responseHeader == null) {
            return map;
        }
        map.put(HiAnalyticsConstant.HaKey.BI_KEY_TRANSID, responseHeader.getTransactionId());
        map.put(HiAnalyticsConstant.HaKey.BI_KEY_APPID, responseHeader.getActualAppID());
        map.put("service", responseHeader.getSrvName());
        String apiName = responseHeader.getApiName();
        if (!TextUtils.isEmpty(apiName)) {
            String[] strArrSplit = apiName.split("\\.");
            if (strArrSplit.length >= 2) {
                map.put(HiAnalyticsConstant.HaKey.BI_KEY_APINAME, strArrSplit[1]);
            }
        }
        map.put("package", responseHeader.getPkgName());
        map.put(HiAnalyticsConstant.HaKey.BI_KEY_RESULT, String.valueOf(responseHeader.getStatusCode()));
        map.put("result", String.valueOf(responseHeader.getErrorCode()));
        map.put(HiAnalyticsConstant.HaKey.BI_KEY_ERRORREASON, responseHeader.getErrorReason());
        map.put(HiAnalyticsConstant.HaKey.BI_KEY_CALLTMEI, String.valueOf(System.currentTimeMillis()));
        map.put(HiAnalyticsConstant.HaKey.BI_KEY_BASE_VERSION, "5.2.0.300");
        return map;
    }

    public static String versionCodeToName(String str) {
        return HiAnalyticsUtils.versionCodeToName(str);
    }

    @Deprecated
    public Map<String, String> getMapForBi(Context context, String str) {
        HashMap map = new HashMap();
        String[] strArrSplit = str.split("\\.");
        if (strArrSplit.length >= 2) {
            String str2 = strArrSplit[0];
            String str3 = strArrSplit[1];
            String appId = Util.getAppId(context);
            map.put(HiAnalyticsConstant.HaKey.BI_KEY_TRANSID, TransactionIdCreater.getId(appId, str));
            map.put(HiAnalyticsConstant.HaKey.BI_KEY_APPID, appId);
            map.put("service", str2);
            map.put(HiAnalyticsConstant.HaKey.BI_KEY_APINAME, str3);
            map.put("package", context.getPackageName());
            map.put("version", "5.2.0.300");
            map.put(HiAnalyticsConstant.HaKey.BI_KEY_CALLTMEI, String.valueOf(System.currentTimeMillis()));
        }
        return map;
    }

    public Map<String, String> getMapFromForegroundRequestHeader(RequestHeader requestHeader) {
        HashMap map = new HashMap();
        if (requestHeader == null) {
            return map;
        }
        map.put(HiAnalyticsConstant.HaKey.BI_KEY_TRANSID, requestHeader.getTransactionId());
        map.put(HiAnalyticsConstant.HaKey.BI_KEY_APPID, requestHeader.getActualAppID());
        map.put("service", requestHeader.getSrvName());
        map.put(HiAnalyticsConstant.HaKey.BI_KEY_APINAME, requestHeader.getApiName());
        map.put("package", requestHeader.getPkgName());
        map.put(HiAnalyticsConstant.HaKey.BI_KEY_CALLTMEI, String.valueOf(System.currentTimeMillis()));
        map.put(HiAnalyticsConstant.HaKey.BI_KEY_BASE_VERSION, "5.2.0.300");
        return map;
    }

    @Deprecated
    public boolean hasError() {
        if (SystemUtils.isChinaROM()) {
            return false;
        }
        HMSLog.m3463i("HiAnalyticsUtil", "not ChinaROM ");
        return true;
    }

    public void onBuoyEvent(Context context, String str, String str2) {
        f4563c.onBuoyEvent(context, str, str2);
    }

    public void onEvent(Context context, String str, Map<String, String> map) {
        f4563c.onEvent(context, str, map);
    }

    public void onEvent2(Context context, String str, String str2) {
        f4563c.onEvent2(context, str, str2);
    }

    public void onNewEvent(Context context, String str, Map map) {
        f4563c.onNewEvent(context, str, map);
    }

    public void onEvent(Context context, String str, String str2) {
        if (context != null) {
            onEvent2(context, str, m3454a(context, str2));
        }
    }

    public boolean hasError(Context context) {
        return f4563c.hasError(context);
    }

    public Map<String, String> getMapFromRequestHeader(RequestHeader requestHeader) {
        HashMap map = new HashMap();
        if (requestHeader == null) {
            return map;
        }
        map.put(HiAnalyticsConstant.HaKey.BI_KEY_TRANSID, requestHeader.getTransactionId());
        map.put(HiAnalyticsConstant.HaKey.BI_KEY_APPID, requestHeader.getActualAppID());
        map.put("service", requestHeader.getSrvName());
        String apiName = requestHeader.getApiName();
        if (!TextUtils.isEmpty(apiName)) {
            String[] strArrSplit = apiName.split("\\.");
            if (strArrSplit.length >= 2) {
                map.put(HiAnalyticsConstant.HaKey.BI_KEY_APINAME, strArrSplit[1]);
            }
        }
        map.put("package", requestHeader.getPkgName());
        map.put(HiAnalyticsConstant.HaKey.BI_KEY_CALLTMEI, String.valueOf(System.currentTimeMillis()));
        map.put(HiAnalyticsConstant.HaKey.BI_KEY_BASE_VERSION, "5.2.0.300");
        return map;
    }
}
