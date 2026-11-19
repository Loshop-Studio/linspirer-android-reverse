package com.huawei.hms.support.log;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import com.huawei.hms.base.log.HmsLogAdaptor;

/* loaded from: classes.dex */
public class HMSLog {

    /* renamed from: a */
    public static final HmsLogAdaptor f4569a = new HmsLogAdaptor();

    /* renamed from: a */
    public static String m3457a(Context context) throws PackageManager.NameNotFoundException {
        PackageManager packageManager = context.getPackageManager();
        if (packageManager != null) {
            try {
                PackageInfo packageInfo = packageManager.getPackageInfo(context.getPackageName(), 16384);
                return "HMS-" + packageInfo.versionName + "(" + packageInfo.versionCode + ")";
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }
        return "HMS-[unknown-version]";
    }

    /* renamed from: d */
    public static void m3458d(String str, String str2) {
        f4569a.m3362a(3, str, str2);
    }

    /* renamed from: e */
    public static void m3461e(String str, String str2) {
        f4569a.m3362a(6, str, str2);
    }

    /* renamed from: i */
    public static void m3463i(String str, String str2) {
        f4569a.m3362a(4, str, str2);
    }

    public static void init(Context context, int i, String str) {
        f4569a.m3363a(context, i, str);
        f4569a.m3364a(str, "============================================================================\n====== " + m3457a(context) + "\n============================================================================");
    }

    public static boolean isErrorEnable() {
        return f4569a.m3365a(6);
    }

    public static boolean isInfoEnable() {
        return f4569a.m3365a(4);
    }

    public static boolean isWarnEnable() {
        return f4569a.m3365a(5);
    }

    /* renamed from: w */
    public static void m3464w(String str, String str2) {
        f4569a.m3362a(5, str, str2);
    }

    /* renamed from: e */
    public static void m3462e(String str, String str2, Throwable th) {
        f4569a.m3366b(6, str, str2, th);
    }

    /* renamed from: e */
    public static void m3459e(String str, long j, String str2) {
        f4569a.m3362a(6, str, "[" + j + "] " + str2);
    }

    /* renamed from: e */
    public static void m3460e(String str, long j, String str2, Throwable th) {
        f4569a.m3366b(6, str, "[" + j + "] " + str2, th);
    }
}
