package com.huawei.hem;

import android.content.Context;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Locale;
import org.json.JSONObject;

/* renamed from: com.huawei.hem.v9 */
/* loaded from: classes.dex */
public class HmsAnalyticsEventManager {

    /* renamed from: b */
    public static HmsAnalyticsEventManager f3941b;

    /* renamed from: a */
    public Context f3942a;

    static {
        new HashMap();
    }

    /* renamed from: a */
    public static HmsAnalyticsEventManager m2861a() {
        HmsAnalyticsEventManager c1353v9;
        synchronized (HmsAnalyticsEventManager.class) {
            if (f3941b == null) {
                f3941b = new HmsAnalyticsEventManager();
            }
            c1353v9 = f3941b;
        }
        return c1353v9;
    }

    /* renamed from: b */
    public void m2862b(Context context) {
        String str;
        String str2;
        this.f3942a = context;
        if (context == null) {
            str = "";
        } else {
            try {
                str = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
            } catch (PackageManager.NameNotFoundException unused) {
                HiAnalyticsSdkState.m2940g("hmsSdk", "getVersion(): The package name is not correct!");
            }
        }
        HmsAnalyticsConfiguration.m3144b().f4293a.f2754h = str;
        if (AnalyticsUserUnlockState.f3513c.m2584a()) {
            String strM2283f = MobileSdkPlatformUtilities.m2283f(context, "global_v2", "app_ver", "");
            MobileSdkPlatformUtilities.m2263D(context, "global_v2", "app_ver", str);
            if (HmsAnalyticsConfiguration.m3144b().f4293a == null) {
                throw null;
            }
            if (!TextUtils.isEmpty(strM2283f)) {
                if (!strM2283f.equals(str)) {
                    HiAnalyticsSdkState.m2937d("hmsSdk", "the appVers are different!");
                    m2861a().m2865e("", "alltype", strM2283f);
                }
                HmsAnalyticsConfiguration.m3144b().f4293a.f2747a = MobileSdkPlatformUtilities.m2281d();
            }
            str2 = "app ver is first save!";
        } else {
            str2 = "userManager.isUserUnlocked() == false";
        }
        HiAnalyticsSdkState.m2937d("hmsSdk", str2);
        HmsAnalyticsConfiguration.m3144b().f4293a.f2747a = MobileSdkPlatformUtilities.m2281d();
    }

    /* renamed from: c */
    public void m2863c(String str, int i, String str2, JSONObject jSONObject) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (2 == i) {
            try {
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault());
                jCurrentTimeMillis = simpleDateFormat.parse(simpleDateFormat.format(Long.valueOf(jCurrentTimeMillis))).getTime();
            } catch (ParseException unused) {
                HiAnalyticsSdkState.m2940g("hmsSdk/stringUtil", "getMillisOfDate(): Time conversion Exception !");
                jCurrentTimeMillis = 0;
            }
        }
        AnalyticsTaskExecutor.f3060b.m2190a(new AnalyticsEventRecordTask(str2, jSONObject, str, MobileSdkPlatformUtilities.m2282e(i), jCurrentTimeMillis));
    }

    /* renamed from: d */
    public void m2864d(String str, String str2) {
        AnalyticsInstanceConfig c0926eaM2270K = MobileSdkPlatformUtilities.m2270K(str, str2);
        if (!(c0926eaM2270K != null ? c0926eaM2270K.f2533n : true)) {
            HiAnalyticsSdkState.m2937d("hmsSdk", "auto report is closed tag:" + str);
            return;
        }
        AnalyticsInstanceConfig c0926eaM2270K2 = MobileSdkPlatformUtilities.m2270K(str, str2);
        long j = c0926eaM2270K2 != null ? c0926eaM2270K2.f2536q : 0L;
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - j <= 30000) {
            HiAnalyticsSdkState.m2940g("hmsSdk", "autoReport timeout. interval < 30s ");
            return;
        }
        HiAnalyticsSdkState.m2934a("hmsSdk", "begin to call onReport!");
        AnalyticsInstanceConfig c0926eaM2270K3 = MobileSdkPlatformUtilities.m2270K(str, str2);
        if (c0926eaM2270K3 != null) {
            c0926eaM2270K3.f2536q = jCurrentTimeMillis;
        }
        m2865e(str, str2, LauncherMenuHelper.m2997r());
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0084, code lost:
    
        if (r2.equalsIgnoreCase("CDMA2000") == false) goto L40;
     */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m2865e(java.lang.String r8, java.lang.String r9, java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 300
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.C1353v9.m2865e(java.lang.String, java.lang.String, java.lang.String):void");
    }
}
