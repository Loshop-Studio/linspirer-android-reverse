package com.alibaba.sdk.android.tool;

import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Process;
import android.text.TextUtils;
import com.taobao.accs.utl.Utils;
import java.lang.reflect.Method;
import java.util.List;

/* loaded from: classes.dex */
public class ProcessUtils {
    /* renamed from: a */
    public static String m1001a(Context context) throws NoSuchMethodException, SecurityException {
        try {
            Method declaredMethod = Class.forName("android.app.ActivityThread", false, context.getClassLoader()).getDeclaredMethod("currentProcessName", new Class[0]);
            declaredMethod.setAccessible(true);
            return (String) declaredMethod.invoke(null, new Object[0]);
        } catch (Exception e) {
            C0610b.m1021a(Utils.TAG, "getProcessNameByActivityThread error: " + e);
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0076 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r6v1, types: [int] */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v5, types: [java.io.BufferedReader] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m1002b(android.content.Context r6) throws java.lang.Throwable {
        /*
            int r6 = android.os.Process.myPid()
            r0 = 0
            java.io.File r1 = new java.io.File     // Catch: java.lang.Throwable -> L4b java.lang.Exception -> L50
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L4b java.lang.Exception -> L50
            r2.<init>()     // Catch: java.lang.Throwable -> L4b java.lang.Exception -> L50
            java.lang.String r3 = "/proc/"
            r2.append(r3)     // Catch: java.lang.Throwable -> L4b java.lang.Exception -> L50
            r2.append(r6)     // Catch: java.lang.Throwable -> L4b java.lang.Exception -> L50
            java.lang.String r6 = "/cmdline"
            r2.append(r6)     // Catch: java.lang.Throwable -> L4b java.lang.Exception -> L50
            java.lang.String r6 = r2.toString()     // Catch: java.lang.Throwable -> L4b java.lang.Exception -> L50
            r1.<init>(r6)     // Catch: java.lang.Throwable -> L4b java.lang.Exception -> L50
            boolean r6 = r1.exists()     // Catch: java.lang.Throwable -> L4b java.lang.Exception -> L50
            if (r6 == 0) goto L3e
            java.io.BufferedReader r6 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L4b java.lang.Exception -> L50
            java.io.FileReader r2 = new java.io.FileReader     // Catch: java.lang.Throwable -> L4b java.lang.Exception -> L50
            r2.<init>(r1)     // Catch: java.lang.Throwable -> L4b java.lang.Exception -> L50
            r6.<init>(r2)     // Catch: java.lang.Throwable -> L4b java.lang.Exception -> L50
            java.lang.String r1 = r6.readLine()     // Catch: java.lang.Exception -> L3c java.lang.Throwable -> L73
            java.lang.String r0 = r1.trim()     // Catch: java.lang.Exception -> L3c java.lang.Throwable -> L73
            r5 = r0
            r0 = r6
            r6 = r5
            goto L3f
        L3c:
            r1 = move-exception
            goto L52
        L3e:
            r6 = r0
        L3f:
            if (r0 == 0) goto L49
            r0.close()     // Catch: java.io.IOException -> L45
            goto L49
        L45:
            r0 = move-exception
            r0.printStackTrace()
        L49:
            r0 = r6
            goto L72
        L4b:
            r6 = move-exception
            r5 = r0
            r0 = r6
            r6 = r5
            goto L74
        L50:
            r1 = move-exception
            r6 = r0
        L52:
            java.lang.String r2 = "Utils"
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L73
            r3.<init>()     // Catch: java.lang.Throwable -> L73
            java.lang.String r4 = "getProcessNameByPid error: "
            r3.append(r4)     // Catch: java.lang.Throwable -> L73
            r3.append(r1)     // Catch: java.lang.Throwable -> L73
            java.lang.String r1 = r3.toString()     // Catch: java.lang.Throwable -> L73
            com.alibaba.sdk.android.tool.C0610b.m1021a(r2, r1)     // Catch: java.lang.Throwable -> L73
            if (r6 == 0) goto L72
            r6.close()     // Catch: java.io.IOException -> L6e
            goto L72
        L6e:
            r6 = move-exception
            r6.printStackTrace()
        L72:
            return r0
        L73:
            r0 = move-exception
        L74:
            if (r6 == 0) goto L7e
            r6.close()     // Catch: java.io.IOException -> L7a
            goto L7e
        L7a:
            r6 = move-exception
            r6.printStackTrace()
        L7e:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.sdk.android.tool.ProcessUtils.m1002b(android.content.Context):java.lang.String");
    }

    /* renamed from: c */
    public static String m1003c(Context context) {
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

    public static String getProcessName(Context context) throws Throwable {
        if (Build.VERSION.SDK_INT >= 28) {
            return Application.getProcessName();
        }
        String strM1001a = m1001a(context);
        if (!TextUtils.isEmpty(strM1001a)) {
            return strM1001a;
        }
        String strM1002b = m1002b(context);
        return !TextUtils.isEmpty(strM1002b) ? strM1002b : m1003c(context);
    }

    public static boolean isMainProcess(Context context) throws Throwable {
        if (context == null) {
            return false;
        }
        return context.getPackageName().equalsIgnoreCase(getProcessName(context));
    }
}
