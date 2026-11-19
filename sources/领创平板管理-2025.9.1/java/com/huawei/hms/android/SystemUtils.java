package com.huawei.hms.android;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.text.TextUtils;
import com.huawei.hem.C0948f6;
import com.huawei.hms.android.HwBuildEx;
import com.huawei.hms.framework.network.grs.local.model.CountryCodeBean;
import com.huawei.hms.support.log.HMSLog;
import com.taobao.accs.AccsClientConfig;
import java.lang.reflect.InvocationTargetException;
import java.util.Locale;

/* loaded from: classes.dex */
public class SystemUtils {
    /* renamed from: a */
    public static String m3198a() {
        return getSystemProperties(CountryCodeBean.LOCALE_COUNTRYSYSTEMPROP, "");
    }

    /* renamed from: b */
    public static String m3199b() {
        return getSystemProperties(CountryCodeBean.LOCALE_REGION_COUNTRYSYSTEMPROP, "");
    }

    public static String getLocalCountry() {
        Locale locale = Locale.getDefault();
        return locale != null ? locale.getCountry() : "";
    }

    public static String getNetType(Context context) {
        ConnectivityManager connectivityManager;
        NetworkInfo activeNetworkInfo;
        return (context == null || (connectivityManager = (ConnectivityManager) context.getSystemService("connectivity")) == null || (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null || !activeNetworkInfo.isAvailable()) ? "" : activeNetworkInfo.getTypeName();
    }

    public static String getSystemProperties(String str, String str2) throws ClassNotFoundException {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getDeclaredMethod("get", String.class, String.class).invoke(cls, str, str2);
        } catch (ClassCastException | ClassNotFoundException | IllegalAccessException | IllegalArgumentException | NoSuchMethodException | InvocationTargetException unused) {
            HMSLog.m3461e("SystemUtils", "An exception occurred while reading: getSystemProperties:" + str);
            return str2;
        }
    }

    public static boolean isChinaROM() {
        String strM3199b = m3199b();
        if (!TextUtils.isEmpty(strM3199b)) {
            return CountryCodeBean.SPECIAL_COUNTRYCODE_CN.equalsIgnoreCase(strM3199b);
        }
        String strM3198a = m3198a();
        if (!TextUtils.isEmpty(strM3198a)) {
            return strM3198a.toLowerCase(Locale.US).contains(CountryCodeBean.SPECIAL_COUNTRYCODE_CN);
        }
        String localCountry = getLocalCountry();
        if (TextUtils.isEmpty(localCountry)) {
            return false;
        }
        return CountryCodeBean.SPECIAL_COUNTRYCODE_CN.equalsIgnoreCase(localCountry);
    }

    public static boolean isEMUI() {
        StringBuilder sbM1765j = C0948f6.m1765j("is Emui :");
        sbM1765j.append(HwBuildEx.VERSION.EMUI_SDK_INT);
        HMSLog.m3463i("SystemUtils", sbM1765j.toString());
        return HwBuildEx.VERSION.EMUI_SDK_INT > 0;
    }

    public static boolean isSystemApp(Context context, String str) throws PackageManager.NameNotFoundException {
        PackageInfo packageInfo;
        try {
            packageInfo = context.getPackageManager().getPackageInfo(str, 16384);
        } catch (PackageManager.NameNotFoundException e) {
            HMSLog.m3461e("SystemUtils", "isSystemApp Exception: " + e);
            packageInfo = null;
        }
        return packageInfo != null && (packageInfo.applicationInfo.flags & 1) > 0;
    }

    public static boolean isTVDevice() {
        return getSystemProperties("ro.build.characteristics", AccsClientConfig.DEFAULT_CONFIGTAG).equalsIgnoreCase("tv");
    }
}
