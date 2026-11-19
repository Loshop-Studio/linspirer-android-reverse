package com.alibaba.sdk.android.ams.common.p007a;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.preference.PreferenceManager;
import com.alibaba.sdk.android.ams.common.logger.AmsLogger;
import com.huawei.hem.C0948f6;

/* renamed from: com.alibaba.sdk.android.ams.common.a.a */
/* loaded from: classes.dex */
public class C0494a {

    /* renamed from: a */
    public static volatile Context f840a = null;

    /* renamed from: b */
    public static volatile Application f841b = null;

    /* renamed from: c */
    public static volatile boolean f842c = false;

    /* renamed from: a */
    public static Application m468a() {
        return f841b;
    }

    /* renamed from: a */
    public static String m469a(String str) throws PackageManager.NameNotFoundException {
        try {
            ApplicationInfo applicationInfo = f840a.getPackageManager().getApplicationInfo(f840a.getPackageName(), 128);
            if (applicationInfo == null || applicationInfo.metaData == null || !applicationInfo.metaData.containsKey(str)) {
                return null;
            }
            return String.valueOf(applicationInfo.metaData.get(str));
        } catch (PackageManager.NameNotFoundException unused) {
            AmsLogger.getImportantLogger().m501e("Meta data name " + str + " not found!");
            return null;
        }
    }

    /* renamed from: b */
    public static Context m470b() {
        return f840a;
    }

    /* renamed from: c */
    public static boolean m471c() {
        return f842c;
    }

    /* renamed from: d */
    public static String m472d() {
        return "mpush-api.aliyun.com";
    }

    /* renamed from: e */
    public static String m473e() {
        StringBuilder sbM1765j = C0948f6.m1765j("https://");
        sbM1765j.append(m472d());
        sbM1765j.append("/config");
        return sbM1765j.toString();
    }

    /* renamed from: f */
    public static SharedPreferences m474f() {
        return PreferenceManager.getDefaultSharedPreferences(f840a);
    }

    /* renamed from: g */
    public static String m475g() {
        return f840a.getPackageName();
    }
}
