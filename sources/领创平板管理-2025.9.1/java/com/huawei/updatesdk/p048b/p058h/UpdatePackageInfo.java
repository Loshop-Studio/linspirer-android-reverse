package com.huawei.updatesdk.p048b.p058h;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import com.huawei.hem.CompilerOutline;
import com.huawei.updatesdk.p034a.p035a.UpdateSdkLog;
import com.huawei.updatesdk.p034a.p035a.p037c.p038a.p039a.UpdateLogWriter;
import com.huawei.updatesdk.p034a.p035a.p040d.UpdateFileDigests;
import com.huawei.updatesdk.p034a.p043b.p044a.UpdateApplicationContext;
import com.huawei.updatesdk.p048b.p054d.MarketDownloadConnection;
import com.huawei.updatesdk.service.otaupdate.MarketStoreOptions;
import java.io.File;
import java.lang.Thread;
import java.lang.reflect.Field;

/* renamed from: com.huawei.updatesdk.b.h.b */
/* loaded from: classes.dex */
public class UpdatePackageInfo {

    /* renamed from: a */
    public static Integer f4718a = null;

    /* renamed from: b */
    public static boolean f4719b = false;

    /* renamed from: c */
    public static boolean f4720c = false;

    /* renamed from: d */
    public static Field f4721d;

    /* renamed from: com.huawei.updatesdk.b.h.b$a */
    public static class a implements Thread.UncaughtExceptionHandler {
        @Override // java.lang.Thread.UncaughtExceptionHandler
        public void uncaughtException(Thread thread, Throwable th) {
            UpdateLogWriter.m3514a("PackageUtils", thread.getName() + " : " + th.getMessage());
        }
    }

    /* renamed from: com.huawei.updatesdk.b.h.b$b */
    public enum b {
        NOT_INSTALLED,
        INSTALLED,
        INSTALLED_LOWCODE
    }

    /* renamed from: com.huawei.updatesdk.b.h.b$c */
    public static class c implements Runnable {
        public c() {
        }

        public /* synthetic */ c(a aVar) {
            this();
        }

        @Override // java.lang.Runnable
        public void run() {
            UpdateLogWriter.m3514a("PackageManagerRunnable", "PackageManagerRunnable run!!!!");
            UpdateFileDigests.m3527a(new File(MarketDownloadConnection.m3719b()));
        }
    }

    /* renamed from: a */
    public static int m3758a(PackageInfo packageInfo) {
        ApplicationInfo applicationInfo = packageInfo.applicationInfo;
        if ((applicationInfo.flags & 1) == 0) {
            return 0;
        }
        return m3763a(applicationInfo) ? 1 : 2;
    }

    /* renamed from: a */
    public static int m3759a(String str) throws PackageManager.NameNotFoundException {
        ApplicationInfo applicationInfo;
        Bundle bundle;
        try {
            PackageInfo packageInfo = UpdateApplicationContext.m3591c().m3592a().getPackageManager().getPackageInfo(str, 128);
            return (packageInfo == null || (applicationInfo = packageInfo.applicationInfo) == null || (bundle = applicationInfo.metaData) == null || !bundle.containsKey("com.huawei.maple.flag")) ? 0 : 1;
        } catch (Exception unused) {
            UpdateLogWriter.m3518d("PackageUtils", "getMapleStatus not found: " + str);
            return 0;
        }
    }

    /* renamed from: a */
    public static PackageInfo m3760a(String str, Context context) {
        try {
            return context.getPackageManager().getPackageInfo(str, 64);
        } catch (Exception unused) {
            UpdateLogWriter.m3518d("PackageUtils", "not found: " + str);
            return null;
        }
    }

    /* renamed from: a */
    public static b m3761a(Context context, String str) throws PackageManager.NameNotFoundException {
        b bVar = b.NOT_INSTALLED;
        if (context == null) {
            return bVar;
        }
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(str, 0);
            if (packageInfo == null) {
                return bVar;
            }
            UpdateSdkLog.m3501b("PackageUtils", "appmarket info,versioncode = " + packageInfo.versionCode + "versioncode = " + packageInfo.versionName);
            return packageInfo.versionCode < 70203000 ? b.INSTALLED_LOWCODE : b.INSTALLED;
        } catch (Exception e) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("isInstallByPackage Exception:");
            sbM1765j.append(e.toString());
            UpdateLogWriter.m3518d("PackageUtils", sbM1765j.toString());
            return bVar;
        }
    }

    /* renamed from: a */
    public static void m3762a() {
        Thread thread = new Thread(new c(null));
        thread.setName("delete market file task");
        thread.setUncaughtExceptionHandler(new a());
        thread.start();
    }

    /* renamed from: a */
    public static boolean m3763a(ApplicationInfo applicationInfo) throws ClassNotFoundException {
        StringBuilder sbM1765j;
        String string;
        int i = applicationInfo.flags;
        Integer numM3766c = m3766c();
        if (numM3766c != null && (i & numM3766c.intValue()) != 0) {
            return true;
        }
        Field fieldM3765b = m3765b();
        if (fieldM3765b == null) {
            return false;
        }
        try {
            return (fieldM3765b.getInt(applicationInfo) & 33554432) != 0;
        } catch (IllegalAccessException e) {
            sbM1765j = CompilerOutline.m1765j("can not get hwflags");
            string = e.toString();
            sbM1765j.append(string);
            UpdateLogWriter.m3514a("PackageUtils", sbM1765j.toString());
            return false;
        } catch (IllegalArgumentException e2) {
            sbM1765j = CompilerOutline.m1765j("can not get hwflags");
            string = e2.toString();
            sbM1765j.append(string);
            UpdateLogWriter.m3514a("PackageUtils", sbM1765j.toString());
            return false;
        }
    }

    /* renamed from: b */
    public static int m3764b(Context context, String str) {
        try {
            return context.getPackageManager().getPackageInfo(str, 0).versionCode;
        } catch (Exception e) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("isInstallByPackage:");
            sbM1765j.append(e.toString());
            UpdateLogWriter.m3518d("PackageUtils", sbM1765j.toString());
            return 0;
        }
    }

    /* renamed from: b */
    public static Field m3765b() {
        if (f4720c) {
            return f4721d;
        }
        try {
            f4721d = ApplicationInfo.class.getField("hwFlags");
        } catch (NoSuchFieldException unused) {
            UpdateLogWriter.m3514a("PackageUtils", "can not find hwFlags");
        }
        f4720c = true;
        return f4721d;
    }

    /* renamed from: c */
    public static Integer m3766c() throws ClassNotFoundException {
        String string;
        StringBuilder sbM1765j;
        String string2;
        if (f4719b) {
            return f4718a;
        }
        try {
            Class<?> cls = Class.forName("android.content.pm.PackageParser");
            f4718a = Integer.valueOf(cls.getDeclaredField("PARSE_IS_REMOVABLE_PREINSTALLED_APK").getInt(cls));
        } catch (ClassNotFoundException e) {
            sbM1765j = CompilerOutline.m1765j("isDelApp error ClassNotFoundException:");
            string2 = e.toString();
            sbM1765j.append(string2);
            string = sbM1765j.toString();
            UpdateLogWriter.m3514a("PackageUtils", string);
            f4719b = true;
            return f4718a;
        } catch (IllegalAccessException e2) {
            sbM1765j = CompilerOutline.m1765j("isDelApp error IllegalAccessException:");
            string2 = e2.toString();
            sbM1765j.append(string2);
            string = sbM1765j.toString();
            UpdateLogWriter.m3514a("PackageUtils", string);
            f4719b = true;
            return f4718a;
        } catch (IllegalArgumentException e3) {
            sbM1765j = CompilerOutline.m1765j("isDelApp error IllegalArgumentException:");
            string2 = e3.toString();
            sbM1765j.append(string2);
            string = sbM1765j.toString();
            UpdateLogWriter.m3514a("PackageUtils", string);
            f4719b = true;
            return f4718a;
        } catch (NoSuchFieldException e4) {
            sbM1765j = CompilerOutline.m1765j("isDelApp error NoSuchFieldException:");
            string2 = e4.toString();
            sbM1765j.append(string2);
            string = sbM1765j.toString();
            UpdateLogWriter.m3514a("PackageUtils", string);
            f4719b = true;
            return f4718a;
        } catch (Exception e5) {
            string = e5.toString();
            UpdateLogWriter.m3514a("PackageUtils", string);
            f4719b = true;
            return f4718a;
        }
        f4719b = true;
        return f4718a;
    }

    /* renamed from: c */
    public static boolean m3767c(Context context, String str) {
        if (context != null && !TextUtils.isEmpty(str)) {
            try {
                return context.getPackageManager().getPackageInfo(str, 0) != null;
            } catch (Exception e) {
                StringBuilder sbM1765j = CompilerOutline.m1765j("isAppInstalled NameNotFoundException:");
                sbM1765j.append(e.toString());
                UpdateLogWriter.m3518d("PackageUtils", sbM1765j.toString());
            }
        }
        return false;
    }

    /* renamed from: d */
    public static boolean m3768d(Context context, String str) {
        return MarketStoreOptions.m3889f().m3898e() || m3764b(context, str) > 90000000;
    }

    /* renamed from: e */
    public static boolean m3769e(Context context, String str) {
        return MarketStoreOptions.m3889f().m3898e() || m3764b(context, str) > 100200000;
    }
}
