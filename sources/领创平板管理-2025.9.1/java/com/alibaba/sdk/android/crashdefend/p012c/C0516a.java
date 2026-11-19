package com.alibaba.sdk.android.crashdefend.p012c;

import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Process;
import android.text.TextUtils;
import android.util.Log;
import com.alibaba.sdk.android.crashdefend.p010a.C0513a;
import com.alibaba.sdk.android.crashdefend.p010a.C0514b;
import com.huawei.hem.C0948f6;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.taobao.accs.common.Constants;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.alibaba.sdk.android.crashdefend.c.a */
/* loaded from: classes.dex */
public class C0516a {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0076 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v0, types: [int] */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.StringBuilder] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m598a() throws java.lang.Throwable {
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
            java.lang.String r3 = "CrashUtils"
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L73
            r4.<init>()     // Catch: java.lang.Throwable -> L73
            java.lang.String r5 = "getProcessNameByPid error: "
            r4.append(r5)     // Catch: java.lang.Throwable -> L73
            r4.append(r2)     // Catch: java.lang.Throwable -> L73
            java.lang.String r2 = r4.toString()     // Catch: java.lang.Throwable -> L73
            android.util.Log.d(r3, r2)     // Catch: java.lang.Throwable -> L73
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
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.sdk.android.crashdefend.p012c.C0516a.m598a():java.lang.String");
    }

    /* renamed from: a */
    public static synchronized void m599a(Context context, C0513a c0513a, List<C0514b> list) {
        String str;
        String str2;
        if (context == null || list == null) {
            return;
        }
        FileOutputStream fileOutputStreamOpenFileOutput = null;
        try {
            try {
                JSONObject jSONObject = new JSONObject();
                if (c0513a != null) {
                    jSONObject.put("startSerialNumber", c0513a.f894a);
                }
                try {
                    JSONArray jSONArray = new JSONArray();
                    for (C0514b c0514b : list) {
                        if (c0514b != null) {
                            JSONObject jSONObject2 = new JSONObject();
                            jSONObject2.put("sdkId", c0514b.f898a);
                            jSONObject2.put(Constants.KEY_SDK_VERSION, c0514b.f899b);
                            jSONObject2.put("crashLimit", c0514b.f900c);
                            jSONObject2.put("crashCount", c0514b.f901d);
                            jSONObject2.put(HiAnalyticsConstant.HaKey.BI_KEY_WAITTIME, c0514b.f902e);
                            jSONObject2.put("registerSerialNumber", c0514b.f903f);
                            jSONObject2.put("startSerialNumber", c0514b.f904g);
                            jSONObject2.put("restoreCount", c0514b.f905h);
                            jSONObject2.put("nextRestoreInterval", c0514b.f906i);
                            jSONArray.put(jSONObject2);
                        }
                    }
                    jSONObject.put("sdkList", jSONArray);
                } catch (JSONException e) {
                    Log.e("CrashUtils", "save sdk json fail:", e);
                }
                String string = jSONObject.toString();
                fileOutputStreamOpenFileOutput = context.openFileOutput(m600a(context) ? "com_alibaba_aliyun_crash_defend_sdk_info" : "com_alibaba_aliyun_crash_defend_sdk_info_" + m601b(context), 0);
                fileOutputStreamOpenFileOutput.write(string.getBytes());
                try {
                    fileOutputStreamOpenFileOutput.close();
                } catch (IOException e2) {
                    e = e2;
                    str = "CrashUtils";
                    str2 = "save sdk io fail:";
                    Log.e(str, str2, e);
                }
            } finally {
            }
        } catch (IOException e3) {
            C0517b.m606a("CrashUtils", "save sdk io fail:", e3);
            if (fileOutputStreamOpenFileOutput != null) {
                try {
                    fileOutputStreamOpenFileOutput.close();
                } catch (IOException e4) {
                    e = e4;
                    str = "CrashUtils";
                    str2 = "save sdk io fail:";
                    Log.e(str, str2, e);
                }
            }
        } catch (Exception e5) {
            C0517b.m606a("CrashUtils", "save sdk exception:", e5);
            if (fileOutputStreamOpenFileOutput != null) {
                try {
                    fileOutputStreamOpenFileOutput.close();
                } catch (IOException e6) {
                    e = e6;
                    str = "CrashUtils";
                    str2 = "save sdk io fail:";
                    Log.e(str, str2, e);
                }
            }
        }
    }

    /* renamed from: a */
    public static boolean m600a(Context context) {
        return context.getPackageName().equalsIgnoreCase(m601b(context));
    }

    /* renamed from: b */
    public static String m601b(Context context) throws Throwable {
        try {
            if (Build.VERSION.SDK_INT >= 28) {
                return Application.getProcessName();
            }
        } catch (Throwable th) {
            StringBuilder sbM1765j = C0948f6.m1765j("Application gerProcessName error: ");
            sbM1765j.append(Log.getStackTraceString(th));
            Log.e("CrashUtils", sbM1765j.toString());
        }
        String strM604d = m604d(context);
        if (!TextUtils.isEmpty(strM604d)) {
            return strM604d;
        }
        String strM598a = m598a();
        return !TextUtils.isEmpty(strM598a) ? strM598a : m603c(context);
    }

    /* JADX WARN: Removed duplicated region for block: B:106:0x00d0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00ce A[DONT_GENERATE] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static synchronized boolean m602b(android.content.Context r10, com.alibaba.sdk.android.crashdefend.p010a.C0513a r11, java.util.List<com.alibaba.sdk.android.crashdefend.p010a.C0514b> r12) {
        /*
            Method dump skipped, instructions count: 382
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.sdk.android.crashdefend.p012c.C0516a.m602b(android.content.Context, com.alibaba.sdk.android.crashdefend.a.a, java.util.List):boolean");
    }

    /* renamed from: c */
    public static String m603c(Context context) {
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

    /* renamed from: d */
    public static String m604d(Context context) throws NoSuchMethodException, SecurityException {
        try {
            Method declaredMethod = Class.forName("android.app.ActivityThread", false, context.getClassLoader()).getDeclaredMethod("currentProcessName", new Class[0]);
            declaredMethod.setAccessible(true);
            return (String) declaredMethod.invoke(null, new Object[0]);
        } catch (Exception e) {
            Log.d("CrashUtils", "getProcessNameByActivityThread error: " + e);
            return null;
        }
    }
}
