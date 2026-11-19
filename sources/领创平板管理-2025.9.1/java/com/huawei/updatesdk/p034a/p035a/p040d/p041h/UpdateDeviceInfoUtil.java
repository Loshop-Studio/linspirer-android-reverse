package com.huawei.updatesdk.p034a.p035a.p040d.p041h;

import android.content.Context;
import android.content.pm.FeatureInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.os.Build;
import android.os.LocaleList;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.Window;
import android.view.WindowManager;
import com.huawei.hem.CompilerOutline;
import com.huawei.updatesdk.p034a.p035a.p037c.p038a.p039a.UpdateLogWriter;
import com.huawei.updatesdk.p034a.p035a.p040d.UpdateHardwareFeatureMap;
import com.huawei.updatesdk.p034a.p035a.p040d.UpdateStringJoiner;
import com.huawei.updatesdk.p048b.p058h.EmuiSupportInfo;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* renamed from: com.huawei.updatesdk.a.a.d.h.c */
/* loaded from: classes.dex */
public class UpdateDeviceInfoUtil {

    /* renamed from: c */
    public static UpdateDeviceInfoUtil f4636c = new UpdateDeviceInfoUtil();

    /* renamed from: d */
    public static String f4637d = null;

    /* renamed from: a */
    public int f4638a;

    /* renamed from: b */
    public int f4639b;

    static {
        m3561a("ro.product.brand", "");
    }

    public UpdateDeviceInfoUtil() {
        this.f4638a = 0;
        this.f4639b = 0;
        if (m3558a("ro.maple.enable", 0) == 1) {
            this.f4638a = 1;
        }
        this.f4639b = m3558a("ro.build.version.ark", 0);
    }

    /* renamed from: a */
    public static int m3558a(String str, int i) {
        try {
            return ((Integer) Class.forName("android.os.SystemProperties").getMethod("getInt", String.class, Integer.TYPE).invoke(null, str, Integer.valueOf(i))).intValue();
        } catch (Throwable th) {
            UpdateLogWriter.m3515a("DeviceUtil", "Exception while getting system property: ", th);
            return i;
        }
    }

    /* renamed from: a */
    public static String m3559a(Context context) {
        if (f4637d == null) {
            f4637d = UpdateStringJoiner.m3529a(m3565b(context), ",");
        }
        return f4637d;
    }

    /* renamed from: a */
    public static String m3560a(Context context, String str) {
        try {
            return context.getPackageManager().getPackageInfo(str, 16).versionName + "";
        } catch (Exception unused) {
            return "";
        }
    }

    /* renamed from: a */
    public static String m3561a(String str, String str2) {
        try {
            return (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class, String.class).invoke(null, str, str2);
        } catch (Throwable th) {
            UpdateLogWriter.m3515a("DeviceUtil", "Exception while getting system property: ", th);
            return str2;
        }
    }

    /* renamed from: a */
    public static List<String> m3562a(List<String> list, String[] strArr) {
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            if (!m3563a(str, strArr)) {
                arrayList.add(str);
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public static boolean m3563a(String str, String[] strArr) {
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        for (String str2 : strArr) {
            if (str2.startsWith("config.")) {
                i = 1;
            } else if (!str2.contains(".config.")) {
                i2++;
            }
            if (str2.endsWith("config." + str)) {
                i3++;
            }
        }
        return i + i2 == i3;
    }

    /* renamed from: b */
    public static String m3564b(Context context, String str) {
        String strM3560a = m3560a(context, str);
        int i = 0;
        int i2 = 0;
        while (i < strM3560a.length() && i2 < 3) {
            if (strM3560a.charAt(i) == '.') {
                i2++;
            }
            i++;
        }
        return 3 == i2 ? strM3560a.substring(0, i - 1) : strM3560a;
    }

    /* renamed from: b */
    public static List<String> m3565b(Context context) {
        ArrayList arrayList = new ArrayList();
        FeatureInfo[] systemAvailableFeatures = context.getPackageManager().getSystemAvailableFeatures();
        if (systemAvailableFeatures != null) {
            for (FeatureInfo featureInfo : systemAvailableFeatures) {
                String str = featureInfo.name;
                if (str != null) {
                    arrayList.add(UpdateHardwareFeatureMap.m3524a(str));
                }
            }
        }
        return arrayList;
    }

    /* renamed from: c */
    public static DisplayMetrics m3566c(Context context) {
        Display defaultDisplay;
        Object systemService = context.getSystemService("window");
        WindowManager windowManager = systemService instanceof WindowManager ? (WindowManager) systemService : null;
        if (windowManager == null || (defaultDisplay = windowManager.getDefaultDisplay()) == null) {
            return null;
        }
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics);
        return displayMetrics;
    }

    /* renamed from: c */
    public static String m3567c() {
        try {
            Object obj = Class.forName("com.huawei.system.BuildEx").getField("DISPLAY").get(null);
            return obj == null ? Build.DISPLAY : obj.toString();
        } catch (ClassNotFoundException unused) {
            return Build.DISPLAY;
        } catch (IllegalAccessException unused2) {
            return Build.DISPLAY;
        } catch (NoSuchFieldException unused3) {
            return Build.DISPLAY;
        } catch (Throwable unused4) {
            return Build.DISPLAY;
        }
    }

    /* renamed from: d */
    public static UpdateDeviceInfoUtil m3568d() {
        return f4636c;
    }

    /* renamed from: d */
    public static List<String> m3569d(Context context) {
        ArrayList arrayList = new ArrayList();
        int i = Build.VERSION.SDK_INT;
        Configuration configuration = context.getResources().getConfiguration();
        if (i >= 24) {
            LocaleList locales = configuration.getLocales();
            for (int i2 = 0; i2 < locales.size(); i2++) {
                String language = locales.get(i2).getLanguage();
                if (!TextUtils.isEmpty(language) && !arrayList.contains(language)) {
                    arrayList.add(language);
                }
            }
        } else {
            arrayList.add(configuration.locale.getLanguage());
        }
        return arrayList;
    }

    /* renamed from: e */
    public static String m3570e() {
        Locale locale = Locale.getDefault();
        String language = locale.getLanguage();
        String country = locale.getCountry();
        String variant = locale.getVariant();
        String script = locale.getScript();
        return (TextUtils.isEmpty(script) && TextUtils.isEmpty(variant)) ? CompilerOutline.m1761f(language, "_", country) : CompilerOutline.m1762g(CompilerOutline.m1770o(language, "_", script, "_", country), "_", variant);
    }

    /* renamed from: e */
    public static String m3571e(Context context) {
        DisplayMetrics displayMetricsM3566c = m3566c(context);
        return displayMetricsM3566c != null ? CompilerOutline.m1761f(String.valueOf(displayMetricsM3566c.widthPixels), "_", String.valueOf(displayMetricsM3566c.heightPixels)) : "";
    }

    /* renamed from: f */
    public static String m3572f(Context context) {
        DisplayMetrics displayMetricsM3566c = m3566c(context);
        return displayMetricsM3566c != null ? String.valueOf(displayMetricsM3566c.densityDpi) : "";
    }

    /* renamed from: f */
    public static String[] m3573f() {
        String[] strArr = Build.SUPPORTED_ABIS;
        return strArr == null ? new String[0] : strArr;
    }

    /* renamed from: g */
    public static int m3574g() {
        return m3561a("ro.product.cpu.abi", "").contains("arm64") ? 2 : 1;
    }

    /* renamed from: g */
    public static int m3575g(Context context) {
        try {
            return Integer.parseInt(context.getPackageManager().getPackageInfo(context.getPackageName(), 16).versionCode + "");
        } catch (Exception unused) {
            return 1;
        }
    }

    /* renamed from: h */
    public static String m3576h() {
        String language;
        String script;
        String country;
        Locale locale = Locale.getDefault();
        if (locale != null) {
            language = locale.getLanguage();
            script = locale.getScript();
            country = locale.getCountry();
        } else {
            language = "en";
            script = "";
            country = "US";
        }
        if (TextUtils.isEmpty(script)) {
            return CompilerOutline.m1761f(language, "_", country);
        }
        return language + "_" + script + "_" + country;
    }

    /* renamed from: h */
    public static String m3577h(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 16).versionName + "";
        } catch (Exception unused) {
            return null;
        }
    }

    /* renamed from: i */
    public static boolean m3578i() {
        return EmuiSupportInfo.m3756d().m3757a() > 0;
    }

    /* renamed from: i */
    public static boolean m3579i(Context context) throws PackageManager.NameNotFoundException {
        PackageManager packageManager = context.getPackageManager();
        try {
            packageManager.getPackageInfo("com.google.android.gsf.login", 16);
            packageManager.getPackageInfo("com.google.android.gsf", 16);
            return (packageManager.getPackageInfo("com.google.android.gms", 16).applicationInfo.flags & 1) != 0;
        } catch (Exception e) {
            UpdateLogWriter.m3518d("DeviceUtil", e.getMessage());
            return false;
        }
    }

    /* renamed from: a */
    public int m3580a() {
        return this.f4638a;
    }

    /* renamed from: a */
    public void m3581a(Window window) {
        if (EmuiSupportInfo.m3756d().m3757a() < 21 || window == null) {
            return;
        }
        WindowManager.LayoutParams attributes = window.getAttributes();
        try {
            Class<?> cls = Class.forName("com.huawei.android.view.WindowManagerEx$LayoutParamsEx");
            cls.getMethod("setDisplaySideMode", Integer.TYPE).invoke(cls.getConstructor(WindowManager.LayoutParams.class).newInstance(attributes), 1);
        } catch (Throwable unused) {
            UpdateLogWriter.m3516b("DeviceUtil", "setWindowDisplaySideMode: exception");
        }
    }

    /* renamed from: b */
    public int m3582b() {
        return this.f4639b;
    }
}
