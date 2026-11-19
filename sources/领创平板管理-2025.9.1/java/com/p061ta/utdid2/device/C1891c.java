package com.p061ta.utdid2.device;

import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.Build;
import android.os.Process;
import android.text.TextUtils;
import com.p061ta.p062a.p065c.C1882f;
import java.lang.reflect.Method;

/* renamed from: com.ta.utdid2.device.c */
/* loaded from: classes.dex */
public class C1891c {

    /* renamed from: e */
    public static String f6026e;

    /* renamed from: a */
    public static PackageInfo m5429a(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 16384);
        } catch (Exception e) {
            C1882f.m5403a("", e, new Object[0]);
            return null;
        }
    }

    /* renamed from: c */
    public static boolean m5431c(Context context) {
        try {
            String strM5433e = m5433e(context);
            String strM5430c = m5430c(context);
            C1882f.m5404a("", "curProcessName", strM5430c);
            if (!TextUtils.isEmpty(strM5430c) && !TextUtils.isEmpty(strM5433e)) {
                return strM5430c.equals(strM5433e);
            }
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    /* renamed from: d */
    public static String m5432d(Context context) {
        try {
            int iMyPid = Process.myPid();
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses()) {
                if (runningAppProcessInfo.pid == iMyPid) {
                    return runningAppProcessInfo.processName;
                }
            }
        } catch (Exception unused) {
        }
        return null;
    }

    /* renamed from: e */
    public static String m5433e(Context context) {
        PackageInfo packageInfoM5429a = m5429a(context);
        return packageInfoM5429a != null ? packageInfoM5429a.packageName : "";
    }

    /* renamed from: n */
    public static String m5434n() {
        if (Build.VERSION.SDK_INT >= 28) {
            try {
                return Application.getProcessName();
            } catch (Exception unused) {
            }
        }
        return null;
    }

    /* renamed from: o */
    public static String m5435o() {
        try {
            Method declaredMethod = Class.forName("android.app.ActivityThread", false, Application.class.getClassLoader()).getDeclaredMethod("currentProcessName", new Class[0]);
            declaredMethod.setAccessible(true);
            Object objInvoke = declaredMethod.invoke(null, new Object[0]);
            if (objInvoke instanceof String) {
                return (String) objInvoke;
            }
            return null;
        } catch (Throwable th) {
            C1882f.m5403a("", th, new Object[0]);
            return null;
        }
    }

    /* renamed from: c */
    public static String m5430c(Context context) {
        if (!TextUtils.isEmpty(f6026e)) {
            return f6026e;
        }
        String strM5434n = m5434n();
        f6026e = strM5434n;
        C1882f.m5404a("", "currentProcessName", strM5434n);
        if (!TextUtils.isEmpty(f6026e)) {
            return f6026e;
        }
        String strM5435o = m5435o();
        f6026e = strM5435o;
        C1882f.m5404a("", "currentProcessName2", strM5435o);
        if (!TextUtils.isEmpty(f6026e)) {
            return f6026e;
        }
        String strM5432d = m5432d(context);
        f6026e = strM5432d;
        C1882f.m5404a("", "currentProcessName3", strM5432d);
        return f6026e;
    }
}
