package com.huawei.hms.support.hianalytics;

import android.content.Context;
import android.text.TextUtils;
import com.huawei.hem.MobileSdkPlatformUtilities;
import com.huawei.hem.CompilerOutline;
import com.huawei.hem.HmsHiAnalyticsUtils;
import com.huawei.hem.AnalyticsReportingContext;
import com.huawei.hem.HmsAnalyticsEventManager;
import com.huawei.hem.HmsAnalyticsInstance;
import com.huawei.hem.HiAnalyticsSdkState;
import com.huawei.hianalytics.process.HiAnalyticsManager;
import com.huawei.hianalytics.util.HiAnalyticTools;
import com.huawei.hms.stats.AnalyticsSwitchHolder;
import com.huawei.hms.stats.HiAnalyticsOfCpUtils;
import com.huawei.hms.stats.HianalyticsExist;
import com.huawei.hms.support.log.HMSLog;
import java.util.LinkedHashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class HiAnalyticsUtils {

    /* renamed from: c */
    public static final Object f4564c = new Object();

    /* renamed from: d */
    public static final Object f4565d = new Object();

    /* renamed from: e */
    public static HiAnalyticsUtils f4566e;

    /* renamed from: a */
    public int f4567a = 0;

    /* renamed from: b */
    public boolean f4568b = HianalyticsExist.m3448a();

    /* renamed from: a */
    public static LinkedHashMap<String, String> m3455a(Map<String, String> map) {
        LinkedHashMap<String, String> linkedHashMap = new LinkedHashMap<>();
        for (String str : map.keySet()) {
            linkedHashMap.put(str, map.get(str));
        }
        return linkedHashMap;
    }

    public static HiAnalyticsUtils getInstance() {
        HiAnalyticsUtils hiAnalyticsUtils;
        synchronized (f4564c) {
            if (f4566e == null) {
                f4566e = new HiAnalyticsUtils();
            }
            hiAnalyticsUtils = f4566e;
        }
        return hiAnalyticsUtils;
    }

    public static String versionCodeToName(String str) throws NumberFormatException {
        if (!TextUtils.isEmpty(str) && (str.length() == 8 || str.length() == 9)) {
            try {
                Integer.parseInt(str);
                return Integer.parseInt(str.substring(0, str.length() - 7)) + "." + Integer.parseInt(str.substring(str.length() - 7, str.length() - 5)) + "." + Integer.parseInt(str.substring(str.length() - 5, str.length() - 3)) + "." + Integer.parseInt(str.substring(str.length() - 3));
            } catch (NumberFormatException unused) {
            }
        }
        return "";
    }

    public void enableLog(Context context) {
        HMSLog.m3463i("HiAnalyticsUtils", "Enable Log");
        if (this.f4568b) {
            HiAnalyticTools.enableLog(context);
        } else {
            HmsHiAnalyticsUtils.m1783a();
        }
    }

    public boolean getInitFlag() {
        return !this.f4568b ? HmsHiAnalyticsUtils.m1784b() : HiAnalyticsManager.getInitFlag(HiAnalyticsConstant.HA_SERVICE_TAG);
    }

    public boolean hasError(Context context) {
        return AnalyticsSwitchHolder.m3443c(context);
    }

    public void onBuoyEvent(Context context, String str, String str2) {
        if (hasError(context) || context == null) {
            return;
        }
        onEvent2(context, str, str2);
    }

    public void onEvent(Context context, String str, Map<String, String> map) {
        if (hasError(context) || map == null || map.isEmpty() || context == null || !getInitFlag()) {
            return;
        }
        if (this.f4568b) {
            HiAnalyticsOfCpUtils.m3446a(context, 0, str, m3455a(map));
            HiAnalyticsOfCpUtils.m3446a(context, 1, str, m3455a(map));
        } else {
            HmsHiAnalyticsUtils.m1785c(0, str, m3455a(map));
            HmsHiAnalyticsUtils.m1785c(1, str, m3455a(map));
        }
        m3456a(context);
    }

    public void onEvent2(Context context, String str, String str2) {
        if (hasError(context) || context == null || !getInitFlag()) {
            return;
        }
        if (this.f4568b) {
            HiAnalyticsOfCpUtils.m3447a(context, str, str2);
            return;
        }
        if (MobileSdkPlatformUtilities.m2279b() != null) {
            HmsAnalyticsInstance c1378w9 = MobileSdkPlatformUtilities.f3158a;
            if (c1378w9 == null) {
                throw null;
            }
            StringBuilder sbM1765j = CompilerOutline.m1765j("HiAnalyticsInstance.onEvent(eventId, mapValue) is execute.TAG : ");
            sbM1765j.append(c1378w9.f4012a);
            HiAnalyticsSdkState.m2937d("hmsSdk", sbM1765j.toString());
            if ((!MobileSdkPlatformUtilities.m2298u("eventId", str, 256)) || !c1378w9.m2903a(0)) {
                StringBuilder sbM1765j2 = CompilerOutline.m1765j("onEvent() parameters check fail. Nothing will be recorded.TAG: ");
                sbM1765j2.append(c1378w9.f4012a);
                HiAnalyticsSdkState.m2939f("hmsSdk", sbM1765j2.toString());
                return;
            }
            if (!MobileSdkPlatformUtilities.m2298u("value", str2, 65536)) {
                StringBuilder sbM1765j3 = CompilerOutline.m1765j("onEvent() parameter VALUE is overlong, content will be cleared.TAG: ");
                sbM1765j3.append(c1378w9.f4012a);
                HiAnalyticsSdkState.m2939f("hmsSdk", sbM1765j3.toString());
                str2 = "";
            }
            AnalyticsReportingContext c1328u9M2787a = AnalyticsReportingContext.m2787a();
            String str3 = c1378w9.f4012a;
            if (c1328u9M2787a == null) {
                throw null;
            }
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("_constants", str2);
                HmsAnalyticsEventManager.m2861a().m2863c(str3, 0, str, jSONObject);
            } catch (JSONException unused) {
                HiAnalyticsSdkState.m2940g("hmsSdk", "onEvent():JSON structure Exception!");
            }
        }
    }

    public void onNewEvent(Context context, String str, Map map) {
        if (hasError(context) || map == null || map.isEmpty() || context == null || !getInitFlag()) {
            return;
        }
        if (this.f4568b) {
            HiAnalyticsOfCpUtils.m3446a(context, 0, str, m3455a((Map<String, String>) map));
            HiAnalyticsOfCpUtils.m3446a(context, 1, str, m3455a((Map<String, String>) map));
        } else {
            HmsHiAnalyticsUtils.m1785c(0, str, m3455a((Map<String, String>) map));
            HmsHiAnalyticsUtils.m1785c(1, str, m3455a((Map<String, String>) map));
        }
        m3456a(context);
    }

    public void onReport(Context context, String str, Map map) {
        if (hasError(context) || map == null || map.isEmpty() || context == null || !getInitFlag()) {
            return;
        }
        if (!this.f4568b) {
            HmsHiAnalyticsUtils.m1785c(0, str, m3455a((Map<String, String>) map));
            HmsHiAnalyticsUtils.m1785c(1, str, m3455a((Map<String, String>) map));
            HmsHiAnalyticsUtils.m1786d();
        } else {
            HiAnalyticsOfCpUtils.m3446a(context, 0, str, m3455a((Map<String, String>) map));
            HiAnalyticsOfCpUtils.m3446a(context, 1, str, m3455a((Map<String, String>) map));
            HiAnalyticsOfCpUtils.m3445a(context, 0);
            HiAnalyticsOfCpUtils.m3445a(context, 1);
        }
    }

    /* renamed from: a */
    public final void m3456a(Context context) {
        synchronized (f4565d) {
            if (this.f4567a < 60) {
                this.f4567a++;
            } else {
                this.f4567a = 0;
                if (!this.f4568b) {
                    HmsHiAnalyticsUtils.m1786d();
                } else {
                    HiAnalyticsOfCpUtils.m3445a(context, 0);
                    HiAnalyticsOfCpUtils.m3445a(context, 1);
                }
            }
        }
    }

    public void enableLog() {
        HMSLog.m3463i("HiAnalyticsUtils", "Enable Log");
        if (!this.f4568b) {
            HmsHiAnalyticsUtils.m1783a();
        } else {
            HMSLog.m3463i("HiAnalyticsUtils", "cp needs to pass in the context, this method is not supported");
        }
    }

    public void onNewEvent(Context context, String str, Map map, int i) {
        if (hasError(context)) {
            return;
        }
        if (i != 0 && i != 1) {
            HMSLog.m3461e("HiAnalyticsUtils", "Data reporting type is not supported");
            return;
        }
        if (map == null || map.isEmpty() || context == null || !getInitFlag()) {
            return;
        }
        if (!this.f4568b) {
            HmsHiAnalyticsUtils.m1785c(i, str, m3455a((Map<String, String>) map));
        } else {
            HiAnalyticsOfCpUtils.m3446a(context, i, str, m3455a((Map<String, String>) map));
        }
        m3456a(context);
    }

    public void onReport(Context context, String str, Map map, int i) {
        if (hasError(context)) {
            return;
        }
        if (i != 0 && i != 1) {
            HMSLog.m3461e("HiAnalyticsUtils", "Data reporting type is not supported");
            return;
        }
        if (map == null || map.isEmpty() || context == null || !getInitFlag()) {
            return;
        }
        if (!this.f4568b) {
            HmsHiAnalyticsUtils.m1785c(i, str, m3455a((Map<String, String>) map));
            HmsHiAnalyticsUtils.m1786d();
        } else {
            HiAnalyticsOfCpUtils.m3446a(context, i, str, m3455a((Map<String, String>) map));
            HiAnalyticsOfCpUtils.m3445a(context, i);
        }
    }
}
