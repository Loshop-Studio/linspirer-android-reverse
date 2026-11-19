package com.huawei.hms.common.util;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.huawei.hem.AppGalleryConfigReader;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.utils.HMSPackageManager;

/* loaded from: classes.dex */
public class AGCUtils {
    /* JADX WARN: Removed duplicated region for block: B:16:0x006f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0070  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m3383a(android.content.Context r7, java.lang.String r8) throws java.io.IOException {
        /*
            java.lang.String r0 = "Get "
            java.lang.String r1 = ""
            java.lang.String r2 = "AGCUtils"
            com.huawei.hem.s6 r3 = com.huawei.hem.AbstractC1275s6.m2679a(r7)
            r4 = 0
            android.content.res.Resources r7 = r7.getResources()     // Catch: java.lang.Throwable -> L2a java.lang.NullPointerException -> L2c java.io.IOException -> L2e
            android.content.res.AssetManager r7 = r7.getAssets()     // Catch: java.lang.Throwable -> L2a java.lang.NullPointerException -> L2c java.io.IOException -> L2e
            java.lang.String r5 = "agconnect-services.json"
            java.io.InputStream r4 = r7.open(r5)     // Catch: java.lang.Throwable -> L2a java.lang.NullPointerException -> L2c java.io.IOException -> L2e
            r7 = r3
            com.huawei.hem.w6 r7 = (com.huawei.hem.C1375w6) r7     // Catch: java.lang.Throwable -> L2a java.lang.NullPointerException -> L2c java.io.IOException -> L2e
            android.content.Context r5 = r7.f3991c     // Catch: java.lang.Throwable -> L2a java.lang.NullPointerException -> L2c java.io.IOException -> L2e
            com.huawei.hem.v6 r6 = new com.huawei.hem.v6     // Catch: java.lang.Throwable -> L2a java.lang.NullPointerException -> L2c java.io.IOException -> L2e
            r6.<init>(r5, r4)     // Catch: java.lang.Throwable -> L2a java.lang.NullPointerException -> L2c java.io.IOException -> L2e
            r7.f3993e = r6     // Catch: java.lang.Throwable -> L2a java.lang.NullPointerException -> L2c java.io.IOException -> L2e
            java.lang.String r7 = r3.mo2681c(r8)     // Catch: java.lang.Throwable -> L2a java.lang.NullPointerException -> L2c java.io.IOException -> L2e
            goto L66
        L2a:
            r7 = move-exception
            goto L8a
        L2c:
            r7 = move-exception
            goto L30
        L2e:
            r7 = move-exception
            goto L4b
        L30:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L2a
            r3.<init>()     // Catch: java.lang.Throwable -> L2a
            r3.append(r0)     // Catch: java.lang.Throwable -> L2a
            r3.append(r8)     // Catch: java.lang.Throwable -> L2a
            java.lang.String r0 = " with AGConnectServicesConfig failed: "
            r3.append(r0)     // Catch: java.lang.Throwable -> L2a
            r3.append(r7)     // Catch: java.lang.Throwable -> L2a
            java.lang.String r7 = r3.toString()     // Catch: java.lang.Throwable -> L2a
            com.huawei.hms.support.log.HMSLog.m3461e(r2, r7)     // Catch: java.lang.Throwable -> L2a
            goto L65
        L4b:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L2a
            r3.<init>()     // Catch: java.lang.Throwable -> L2a
            r3.append(r0)     // Catch: java.lang.Throwable -> L2a
            r3.append(r8)     // Catch: java.lang.Throwable -> L2a
            java.lang.String r0 = " failed: "
            r3.append(r0)     // Catch: java.lang.Throwable -> L2a
            r3.append(r7)     // Catch: java.lang.Throwable -> L2a
            java.lang.String r7 = r3.toString()     // Catch: java.lang.Throwable -> L2a
            com.huawei.hms.support.log.HMSLog.m3461e(r2, r7)     // Catch: java.lang.Throwable -> L2a
        L65:
            r7 = r1
        L66:
            com.huawei.hms.utils.IOUtils.closeQuietly(r4)
            boolean r0 = android.text.TextUtils.isEmpty(r7)
            if (r0 != 0) goto L70
            return r7
        L70:
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            java.lang.String r0 = "The "
            r7.append(r0)
            r7.append(r8)
            java.lang.String r8 = " is null."
            r7.append(r8)
            java.lang.String r7 = r7.toString()
            com.huawei.hms.support.log.HMSLog.m3461e(r2, r7)
            return r1
        L8a:
            com.huawei.hms.utils.IOUtils.closeQuietly(r4)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.common.util.AGCUtils.m3383a(android.content.Context, java.lang.String):java.lang.String");
    }

    /* renamed from: b */
    public static String m3384b(Context context) {
        Object obj;
        PackageManager packageManager = context.getPackageManager();
        if (packageManager == null) {
            HMSLog.m3461e("AGCUtils", "In getMetaDataCpId, Failed to get 'PackageManager' instance.");
            return "";
        }
        try {
            ApplicationInfo applicationInfo = packageManager.getPackageInfo(context.getPackageName(), 128).applicationInfo;
            if (applicationInfo == null || applicationInfo.metaData == null || (obj = applicationInfo.metaData.get("com.huawei.hms.client.cpid")) == null) {
                HMSLog.m3463i("AGCUtils", "In getMetaDataCpId, Failed to read meta data for the CpId.");
                return "";
            }
            String strValueOf = String.valueOf(obj);
            return strValueOf.startsWith("cpid=") ? strValueOf.substring(5) : strValueOf;
        } catch (PackageManager.NameNotFoundException unused) {
            HMSLog.m3461e("AGCUtils", "In getMetaDataCpId, Failed to read meta data for the CpId.");
            return "";
        }
    }

    /* renamed from: c */
    public static boolean m3385c(Context context) {
        return context.getPackageName().equals(HMSPackageManager.getInstance(context).getHMSPackageName());
    }

    public static String getAppId(Context context) {
        if (m3385c(context)) {
            return m3383a(context, "client/app_id");
        }
        String strMo2681c = null;
        try {
            strMo2681c = AppGalleryConfigReader.m2679a(context).mo2681c("client/app_id");
        } catch (NullPointerException unused) {
            HMSLog.m3461e("AGCUtils", "Get appId with AGConnectServicesConfig failed");
        }
        if (!TextUtils.isEmpty(strMo2681c)) {
            return strMo2681c;
        }
        String strM3382a = m3382a(context);
        return !TextUtils.isEmpty(strM3382a) ? strM3382a : m3383a(context, "client/app_id");
    }

    public static String getCpId(Context context) {
        if (m3385c(context)) {
            return m3383a(context, "client/cp_id");
        }
        String strMo2681c = null;
        try {
            strMo2681c = AppGalleryConfigReader.m2679a(context).mo2681c("client/cp_id");
        } catch (NullPointerException unused) {
            HMSLog.m3461e("AGCUtils", "Get cpid with AGConnectServicesConfig failed");
        }
        if (!TextUtils.isEmpty(strMo2681c)) {
            return strMo2681c;
        }
        String strM3384b = m3384b(context);
        return !TextUtils.isEmpty(strM3384b) ? strM3384b : m3383a(context, "client/cp_id");
    }

    /* renamed from: a */
    public static String m3382a(Context context) {
        Object obj;
        PackageManager packageManager = context.getPackageManager();
        if (packageManager == null) {
            HMSLog.m3461e("AGCUtils", "In getMetaDataAppId, Failed to get 'PackageManager' instance.");
            return "";
        }
        try {
            ApplicationInfo applicationInfo = packageManager.getPackageInfo(context.getPackageName(), 128).applicationInfo;
            if (applicationInfo != null && applicationInfo.metaData != null && (obj = applicationInfo.metaData.get("com.huawei.hms.client.appid")) != null) {
                String strValueOf = String.valueOf(obj);
                return strValueOf.startsWith("appid=") ? strValueOf.substring(6) : strValueOf;
            }
            HMSLog.m3461e("AGCUtils", "In getMetaDataAppId, Failed to read meta data for the AppID.");
            return "";
        } catch (PackageManager.NameNotFoundException unused) {
            HMSLog.m3461e("AGCUtils", "In getMetaDataAppId, Failed to read meta data for the AppID.");
            return "";
        }
    }
}
