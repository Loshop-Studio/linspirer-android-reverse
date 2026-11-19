package com.huawei.hms.stats;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.provider.Settings;
import com.huawei.hms.framework.network.grs.GrsApp;
import com.huawei.hms.support.log.HMSLog;

/* compiled from: AnalyticsSwitchHolder.java */
/* renamed from: com.huawei.hms.stats.a */
/* loaded from: classes.dex */
public class C1557a {

    /* renamed from: a */
    public static int f4536a;

    /* renamed from: b */
    public static final Object f4537b = new Object();

    /* renamed from: a */
    public static boolean m3441a(Context context) {
        if (context == null) {
            HMSLog.m3461e("AnalyticsSwitchHolder", "In getBiIsReportSetting, context is null.");
            return false;
        }
        PackageManager packageManager = context.getPackageManager();
        if (packageManager != null) {
            try {
                ApplicationInfo applicationInfo = packageManager.getPackageInfo(context.getPackageName(), 128).applicationInfo;
                if (applicationInfo != null && applicationInfo.metaData != null) {
                    return applicationInfo.metaData.getBoolean("com.huawei.hms.client.bireport.setting");
                }
            } catch (PackageManager.NameNotFoundException unused) {
                HMSLog.m3461e("AnalyticsSwitchHolder", "In getBiIsReportSetting, Failed to read meta data bi report setting.");
            }
        }
        HMSLog.m3463i("AnalyticsSwitchHolder", "In getBiIsReportSetting, configuration not found for bi report setting.");
        return false;
    }

    /* renamed from: b */
    public static boolean m3442b(Context context) {
        if (context == null) {
            HMSLog.m3461e("AnalyticsSwitchHolder", "In getBiSetting, context is null.");
            return false;
        }
        PackageManager packageManager = context.getPackageManager();
        if (packageManager != null) {
            try {
                ApplicationInfo applicationInfo = packageManager.getPackageInfo(context.getPackageName(), 128).applicationInfo;
                if (applicationInfo != null && applicationInfo.metaData != null) {
                    return applicationInfo.metaData.getBoolean("com.huawei.hms.client.bi.setting");
                }
            } catch (PackageManager.NameNotFoundException unused) {
                HMSLog.m3461e("AnalyticsSwitchHolder", "In getBiSetting, Failed to read meta data bisetting.");
            }
        }
        HMSLog.m3463i("AnalyticsSwitchHolder", "In getBiSetting, configuration not found for bisetting.");
        return false;
    }

    /* renamed from: c */
    public static boolean m3443c(Context context) {
        synchronized (f4537b) {
            boolean z = true;
            if (f4536a == 0) {
                if (context == null) {
                    return true;
                }
                if (m3441a(context)) {
                    HMSLog.m3463i("AnalyticsSwitchHolder", "Builder->biReportSetting :true");
                    f4536a = 1;
                } else if (m3442b(context)) {
                    HMSLog.m3463i("AnalyticsSwitchHolder", "Builder->biSetting :true");
                    f4536a = 2;
                } else if ("CN".equalsIgnoreCase(GrsApp.getInstance().getIssueCountryCode(context))) {
                    f4536a = 1;
                } else {
                    HMSLog.m3463i("AnalyticsSwitchHolder", "not ChinaROM");
                    try {
                        int i = Settings.Secure.getInt(context.getContentResolver(), "hw_app_analytics_state");
                        HMSLog.m3463i("AnalyticsSwitchHolder", "hw_app_analytics_state value is " + i);
                        if (i == 1) {
                            f4536a = 1;
                        } else {
                            f4536a = 2;
                        }
                    } catch (Settings.SettingNotFoundException unused) {
                        HMSLog.m3463i("AnalyticsSwitchHolder", "Get OOBE failed");
                        f4536a = 2;
                    }
                }
            }
            if (f4536a == 1) {
                z = false;
            }
            return z;
        }
    }
}
