package com.huawei.hms.utils;

import android.app.Activity;
import android.content.Context;
import android.content.ServiceConnection;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.text.TextUtils;
import com.huawei.hem.CompilerOutline;
import com.huawei.hms.android.SystemUtils;
import com.huawei.hms.common.util.AGCUtils;
import com.huawei.hms.framework.network.grs.local.model.CountryCodeBean;
import com.huawei.hms.support.log.HMSLog;

/* loaded from: classes.dex */
public class Util {
    public static final String AVAILABLE_LOADED = "availableLoaded";
    public static final Object LOCK_OBJECT = new Object();
    public static final String META_HMSVERSION_NAME = "com.huawei.hms.version";
    public static final String SERVICE_ACTION = "com.huawei.hms.core.aidl.action";
    public static final String TAG = "Util";
    public static boolean availableInit = false;
    public static boolean isAvailableAvailable = false;
    public static String serviceAction;

    public static int compareHmsVersion(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        if (TextUtils.isEmpty(str2)) {
            return 1;
        }
        if (StringUtil.checkVersion(str) && StringUtil.checkVersion(str2)) {
            String[] strArrSplit = str.split("\\.");
            String[] strArrSplit2 = str2.split("\\.");
            if (2 < strArrSplit.length && 2 < strArrSplit2.length) {
                if (Integer.parseInt(strArrSplit[0]) > Integer.parseInt(strArrSplit2[0])) {
                    return 1;
                }
                if (Integer.parseInt(strArrSplit[0]) < Integer.parseInt(strArrSplit2[0])) {
                    return -1;
                }
                if (Integer.parseInt(strArrSplit[1]) > Integer.parseInt(strArrSplit2[1])) {
                    return 1;
                }
                if (Integer.parseInt(strArrSplit[1]) < Integer.parseInt(strArrSplit2[1])) {
                    return -1;
                }
                if (Integer.parseInt(strArrSplit[2]) > Integer.parseInt(strArrSplit2[2])) {
                    return 1;
                }
                if (Integer.parseInt(strArrSplit[2]) < Integer.parseInt(strArrSplit2[2])) {
                    return -1;
                }
            }
        }
        return 0;
    }

    public static Activity getActiveActivity(Activity activity, Context context) {
        return UIUtil.getActiveActivity(activity, context);
    }

    public static String getAppId(Context context) {
        return AGCUtils.getAppId(context);
    }

    public static String getAppName(Context context, String str) {
        if (context == null) {
            HMSLog.m3461e(TAG, "In getAppName, context is null.");
            return "";
        }
        PackageManager packageManager = context.getPackageManager();
        if (packageManager == null) {
            HMSLog.m3461e(TAG, "In getAppName, Failed to get 'PackageManager' instance.");
            return "";
        }
        try {
            if (TextUtils.isEmpty(str)) {
                str = context.getPackageName();
            }
            CharSequence applicationLabel = packageManager.getApplicationLabel(packageManager.getApplicationInfo(str, 0));
            return applicationLabel == null ? "" : applicationLabel.toString();
        } catch (PackageManager.NameNotFoundException | Resources.NotFoundException unused) {
            HMSLog.m3461e(TAG, "In getAppName, Failed to get app name.");
            return "";
        }
    }

    public static String getCpId(Context context) {
        return AGCUtils.getCpId(context);
    }

    public static int getHmsVersion(Context context) {
        Object obj;
        PackageManager packageManager = context.getPackageManager();
        if (packageManager == null) {
            HMSLog.m3461e(TAG, "In getHmsVersion, Failed to get 'PackageManager' instance.");
            return 0;
        }
        try {
            ApplicationInfo applicationInfo = packageManager.getPackageInfo(context.getPackageName(), 128).applicationInfo;
            if (applicationInfo != null && applicationInfo.metaData != null && (obj = applicationInfo.metaData.get(META_HMSVERSION_NAME)) != null) {
                String strValueOf = String.valueOf(obj);
                if (!TextUtils.isEmpty(strValueOf)) {
                    return StringUtil.convertVersion2Integer(strValueOf);
                }
            }
            HMSLog.m3463i(TAG, "In getHmsVersion, Failed to read meta data for the HMS VERSION.");
            return 0;
        } catch (PackageManager.NameNotFoundException unused) {
            HMSLog.m3461e(TAG, "In getHmsVersion, Failed to read meta data for the HMS VERSION.");
            return 0;
        }
    }

    public static String getNetType(Context context) {
        return SystemUtils.getNetType(context);
    }

    public static String getProcessName(Context context, int i) {
        return UIUtil.getProcessName(context, i);
    }

    @Deprecated
    public static String getProductCountry() {
        int iLastIndexOf;
        String systemProperties = getSystemProperties(CountryCodeBean.LOCALE_REGION_COUNTRYSYSTEMPROP, "");
        if (!TextUtils.isEmpty(systemProperties)) {
            return systemProperties;
        }
        String systemProperties2 = getSystemProperties(CountryCodeBean.LOCALE_COUNTRYSYSTEMPROP, "");
        if (!TextUtils.isEmpty(systemProperties2) && (iLastIndexOf = systemProperties2.lastIndexOf("-")) != -1) {
            return systemProperties2.substring(iLastIndexOf + 1);
        }
        String localCountry = SystemUtils.getLocalCountry();
        return !TextUtils.isEmpty(localCountry) ? localCountry : "";
    }

    public static String getServiceActionMetadata(Context context) {
        Object obj;
        String str = serviceAction;
        if (str != null) {
            return str;
        }
        PackageManager packageManager = context.getPackageManager();
        if (packageManager == null) {
            HMSLog.m3461e(TAG, "In getHmsVersion, Failed to get 'PackageManager' instance.");
            return null;
        }
        try {
            ApplicationInfo applicationInfo = packageManager.getPackageInfo(context.getPackageName(), 128).applicationInfo;
            if (applicationInfo != null && applicationInfo.metaData != null && (obj = applicationInfo.metaData.get(SERVICE_ACTION)) != null) {
                String strValueOf = String.valueOf(obj);
                if (!TextUtils.isEmpty(strValueOf)) {
                    serviceAction = strValueOf;
                    return strValueOf;
                }
            }
            HMSLog.m3463i(TAG, "In getServiceActionMetadata, Failed to read meta data for the SERVICE ACTION.");
        } catch (PackageManager.NameNotFoundException unused) {
            HMSLog.m3464w(TAG, "In getServiceActionMetadata, Failed to read meta data for the SERVICE ACTION.");
        }
        serviceAction = "";
        return "";
    }

    public static String getSystemProperties(String str, String str2) {
        return SystemUtils.getSystemProperties(str, str2);
    }

    public static Activity getValidActivity(Activity activity, Activity activity2) {
        if (activity != null && !activity.isFinishing()) {
            return activity;
        }
        if (activity2 == null || activity2.isFinishing()) {
            return null;
        }
        return activity2;
    }

    public static boolean isAvailableLibExist(Context context) {
        Object obj;
        synchronized (LOCK_OBJECT) {
            if (!availableInit) {
                boolean z = false;
                PackageManager packageManager = context.getPackageManager();
                if (packageManager == null) {
                    HMSLog.m3461e(TAG, "In isAvailableLibExist, Failed to get 'PackageManager' instance.");
                    try {
                        Class.forName("com.huawei.hms.adapter.AvailableAdapter");
                        z = true;
                    } catch (ClassNotFoundException unused) {
                        HMSLog.m3461e(TAG, "In isAvailableLibExist, Failed to find class AvailableAdapter.");
                    }
                    isAvailableAvailable = z;
                    availableInit = true;
                } else {
                    try {
                        ApplicationInfo applicationInfo = packageManager.getPackageInfo(context.getPackageName(), 128).applicationInfo;
                        if (applicationInfo != null && applicationInfo.metaData != null && (obj = applicationInfo.metaData.get(AVAILABLE_LOADED)) != null && String.valueOf(obj).equalsIgnoreCase("yes")) {
                            HMSLog.m3463i(TAG, "available exist: true");
                            z = true;
                        }
                    } catch (PackageManager.NameNotFoundException unused2) {
                        HMSLog.m3461e(TAG, "In isAvailableLibExist, Failed to read meta data for the availableLoaded.");
                    }
                    isAvailableAvailable = z;
                    availableInit = true;
                }
            }
        }
        StringBuilder sbM1765j = CompilerOutline.m1765j("available exist: ");
        sbM1765j.append(isAvailableAvailable);
        HMSLog.m3463i(TAG, sbM1765j.toString());
        return isAvailableAvailable;
    }

    public static boolean isChinaROM() {
        return SystemUtils.isChinaROM();
    }

    public static boolean isEMUI() {
        return SystemUtils.isEMUI();
    }

    public static void unBindServiceCatchException(Context context, ServiceConnection serviceConnection) {
        try {
            HMSLog.m3463i(TAG, "Trying to unbind service from " + serviceConnection);
            context.unbindService(serviceConnection);
        } catch (Exception e) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("On unBindServiceException:");
            sbM1765j.append(e.getMessage());
            HMSLog.m3461e(TAG, sbM1765j.toString());
        }
    }
}
