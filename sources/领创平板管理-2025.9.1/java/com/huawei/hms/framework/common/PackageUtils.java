package com.huawei.hms.framework.common;

import android.content.Context;
import android.content.pm.PackageManager;

/* loaded from: classes.dex */
public class PackageUtils {
    public static final String TAG = "PackageUtils";

    public static String getVersionName(Context context) {
        if (context == null) {
            return "";
        }
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 16384).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            Logger.m3439w("PackageUtils", "", e);
            return "";
        }
    }
}
