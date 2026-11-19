package com.alibaba.sdk.android.push.common.util;

import android.app.ActivityManager;
import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.os.Build;
import android.os.Process;
import android.text.TextUtils;
import com.alibaba.sdk.android.ams.common.logger.AmsLogger;
import com.alibaba.sdk.android.push.common.p018a.C0558b;
import com.alibaba.sdk.android.push.common.p018a.EnumC0557a;
import com.huawei.hem.CompilerOutline;
import java.lang.reflect.Method;
import java.util.List;

/* loaded from: classes.dex */
public class AppInfoUtil {
    public static final int CHANNEL_SERVICE_PROCESS = 1;
    public static final String TAG = "MPS:AppInfoUtil";
    public static AmsLogger sLogger = AmsLogger.getLogger(TAG);

    public static String getAppVersionName(Context context) {
        if (context == null) {
            sLogger.m501e("Get app version name failed: context null");
            return null;
        }
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            sLogger.m502e("version name not found!", e);
            return null;
        }
    }

    public static String getChannelServiceData(Context context, int i) throws PackageManager.NameNotFoundException {
        try {
            ServiceInfo serviceInfo = context.getPackageManager().getServiceInfo(new ComponentName(context.getPackageName(), EnumC0557a.CHANNEL_SERVICE.m749a()), 131584);
            if (i != 1) {
                return null;
            }
            return serviceInfo.processName;
        } catch (PackageManager.NameNotFoundException unused) {
            AmsLogger amsLogger = sLogger;
            StringBuilder sbM1765j = CompilerOutline.m1765j("Meta data name ");
            sbM1765j.append(EnumC0557a.CHANNEL_SERVICE.m749a());
            sbM1765j.append(" not found!");
            amsLogger.m501e(sbM1765j.toString());
            return null;
        }
    }

    public static String getProcessName(Context context) throws Throwable {
        try {
            if (Build.VERSION.SDK_INT >= 28) {
                return Application.getProcessName();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        String processNameByActivityThread = getProcessNameByActivityThread(context);
        if (!TextUtils.isEmpty(processNameByActivityThread)) {
            return processNameByActivityThread;
        }
        String processNameByPid = getProcessNameByPid();
        return !TextUtils.isEmpty(processNameByPid) ? processNameByPid : getProcessNameByAm(context);
    }

    public static String getProcessNameByActivityThread(Context context) throws NoSuchMethodException, SecurityException {
        try {
            Method declaredMethod = Class.forName("android.app.ActivityThread", false, context.getClassLoader()).getDeclaredMethod("currentProcessName", new Class[0]);
            declaredMethod.setAccessible(true);
            return (String) declaredMethod.invoke(null, new Object[0]);
        } catch (Exception e) {
            sLogger.m498d("getProcessNameByActivityThread error: " + e);
            return null;
        }
    }

    public static String getProcessNameByAm(Context context) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        if (activityManager == null || (runningAppProcesses = activityManager.getRunningAppProcesses()) == null) {
            return "";
        }
        int iMyPid = Process.myPid();
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
            if (runningAppProcessInfo.pid == iMyPid) {
                return runningAppProcessInfo.processName;
            }
        }
        return "";
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0076 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v0, types: [int] */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.StringBuilder] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String getProcessNameByPid() throws java.lang.Throwable {
        /*
            int r0 = android.os.Process.myPid()
            r1 = 0
            java.io.File r2 = new java.io.File     // Catch: java.lang.Throwable -> L4b java.lang.Exception -> L50
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L4b java.lang.Exception -> L50
            r3.<init>()     // Catch: java.lang.Throwable -> L4b java.lang.Exception -> L50
            java.lang.String r4 = "/proc/"
            r3.append(r4)     // Catch: java.lang.Throwable -> L4b java.lang.Exception -> L50
            r3.append(r0)     // Catch: java.lang.Throwable -> L4b java.lang.Exception -> L50
            java.lang.String r0 = "/cmdline"
            r3.append(r0)     // Catch: java.lang.Throwable -> L4b java.lang.Exception -> L50
            java.lang.String r0 = r3.toString()     // Catch: java.lang.Throwable -> L4b java.lang.Exception -> L50
            r2.<init>(r0)     // Catch: java.lang.Throwable -> L4b java.lang.Exception -> L50
            boolean r0 = r2.exists()     // Catch: java.lang.Throwable -> L4b java.lang.Exception -> L50
            if (r0 == 0) goto L3e
            java.io.BufferedReader r0 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L4b java.lang.Exception -> L50
            java.io.FileReader r3 = new java.io.FileReader     // Catch: java.lang.Throwable -> L4b java.lang.Exception -> L50
            r3.<init>(r2)     // Catch: java.lang.Throwable -> L4b java.lang.Exception -> L50
            r0.<init>(r3)     // Catch: java.lang.Throwable -> L4b java.lang.Exception -> L50
            java.lang.String r2 = r0.readLine()     // Catch: java.lang.Exception -> L3c java.lang.Throwable -> L73
            java.lang.String r1 = r2.trim()     // Catch: java.lang.Exception -> L3c java.lang.Throwable -> L73
            r6 = r1
            r1 = r0
            r0 = r6
            goto L3f
        L3c:
            r2 = move-exception
            goto L52
        L3e:
            r0 = r1
        L3f:
            if (r1 == 0) goto L49
            r1.close()     // Catch: java.io.IOException -> L45
            goto L49
        L45:
            r1 = move-exception
            r1.printStackTrace()
        L49:
            r1 = r0
            goto L72
        L4b:
            r0 = move-exception
            r6 = r1
            r1 = r0
            r0 = r6
            goto L74
        L50:
            r2 = move-exception
            r0 = r1
        L52:
            com.alibaba.sdk.android.ams.common.logger.AmsLogger r3 = com.alibaba.sdk.android.push.common.util.AppInfoUtil.sLogger     // Catch: java.lang.Throwable -> L73
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L73
            r4.<init>()     // Catch: java.lang.Throwable -> L73
            java.lang.String r5 = "getProcessNameByPid error: "
            r4.append(r5)     // Catch: java.lang.Throwable -> L73
            r4.append(r2)     // Catch: java.lang.Throwable -> L73
            java.lang.String r2 = r4.toString()     // Catch: java.lang.Throwable -> L73
            r3.m498d(r2)     // Catch: java.lang.Throwable -> L73
            if (r0 == 0) goto L72
            r0.close()     // Catch: java.io.IOException -> L6e
            goto L72
        L6e:
            r0 = move-exception
            r0.printStackTrace()
        L72:
            return r1
        L73:
            r1 = move-exception
        L74:
            if (r0 == 0) goto L7e
            r0.close()     // Catch: java.io.IOException -> L7a
            goto L7e
        L7a:
            r0 = move-exception
            r0.printStackTrace()
        L7e:
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.sdk.android.push.common.util.AppInfoUtil.getProcessNameByPid():java.lang.String");
    }

    public static boolean isChannelProcess(Context context) {
        try {
            String str = context.getPackageName() + C0558b.m755d();
            String processName = getProcessName(context);
            if (str.equals("")) {
                return false;
            }
            return str.equalsIgnoreCase(processName);
        } catch (Throwable th) {
            sLogger.m502e("isChannelProcess:get process name failed.", th);
            return false;
        }
    }

    public static boolean isComponentExists(Context context, String str, String str2) throws PackageManager.NameNotFoundException {
        if (context == null) {
            sLogger.m501e("Get component info failed: context null");
            return false;
        }
        PackageManager packageManager = context.getPackageManager();
        ComponentName componentName = new ComponentName(context.getPackageName(), str);
        try {
            if (str2.equals("service")) {
                packageManager.getServiceInfo(componentName, 131584);
            } else if (str2.equals("activity")) {
                packageManager.getActivityInfo(componentName, 131584);
            } else {
                if (!str2.equals("receiver")) {
                    return false;
                }
                packageManager.getReceiverInfo(componentName, 131584);
            }
            return true;
        } catch (PackageManager.NameNotFoundException unused) {
            sLogger.m501e("component:" + str + " not found!");
            return false;
        }
    }

    public static boolean isMainProcess(Context context) {
        try {
            String str = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).applicationInfo.processName;
            String processName = getProcessName(context);
            if (str.equals("")) {
                return false;
            }
            return str.equalsIgnoreCase(processName);
        } catch (Throwable th) {
            sLogger.m502e("isMainProcess:get process name failed.", th);
            return false;
        }
    }

    public static boolean isPermissionGranted(Context context, String str) {
        if (context == null) {
            sLogger.m501e("Get permission info failed: context null");
            return false;
        }
        try {
            return context.getPackageManager().checkPermission(str, context.getPackageName()) == 0;
        } catch (Throwable th) {
            sLogger.m502e("isPermissionGranted:Get permission info failed.", th);
            return false;
        }
    }
}
