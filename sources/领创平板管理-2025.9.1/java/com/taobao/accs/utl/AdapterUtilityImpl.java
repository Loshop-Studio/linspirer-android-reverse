package com.taobao.accs.utl;

import android.app.ActivityManager;
import android.app.AppOpsManager;
import android.app.Application;
import android.app.NotificationManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Environment;
import android.os.Process;
import android.os.StatFs;
import android.support.v4.app.NotificationManagerCompat;
import android.text.TextUtils;
import com.huawei.hem.C0948f6;
import com.p061ta.utdid2.device.UTDevice;
import com.taobao.accs.ChannelService;
import com.taobao.accs.client.AdapterGlobalClientInfo;
import com.taobao.accs.data.MsgDistributeService;
import java.io.File;
import java.lang.reflect.Method;
import java.util.List;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public class AdapterUtilityImpl {
    public static String BACK_APP_KEY = "";
    public static final String TAG = "AdapterUtilityImpl";
    public static String mAgooAppSecret = null;
    public static boolean mChecked = false;
    public static boolean mIsMainProc = true;
    public static final String channelService = ChannelService.class.getName();
    public static final String msgService = MsgDistributeService.class.getName();

    public static final boolean checkIsWritable(String str, int i) {
        if (str == null) {
            return false;
        }
        StatFs statFs = new StatFs(str);
        int blockSize = statFs.getBlockSize();
        boolean z = statFs.getAvailableBlocks() > 10 && ((long) statFs.getAvailableBlocks()) * ((long) blockSize) > ((long) i);
        if (!z) {
            StringBuilder sbM1766k = C0948f6.m1766k("target : ", i, " st.getAvailableBlocks()=");
            sbM1766k.append(statFs.getAvailableBlocks());
            sbM1766k.append(",st.getAvailableBlocks() * blockSize=");
            sbM1766k.append(statFs.getAvailableBlocks() * blockSize);
            ALog.m5732w("FileCheckUtils", sbM1766k.toString(), new Object[0]);
        }
        return z;
    }

    public static String getDeviceId(Context context) {
        return UTDevice.getUtdid(context);
    }

    public static String getProcessName(Context context) throws Throwable {
        try {
            if (Build.VERSION.SDK_INT >= 28) {
                return Application.getProcessName();
            }
        } catch (Exception unused) {
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
            ALog.m5731w(TAG, "getProcessNameByActivityThread error: ", e, new Object[0]);
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

    /* JADX WARN: Removed duplicated region for block: B:42:0x006a A[EXC_TOP_SPLITTER, SYNTHETIC] */
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
            java.lang.String r2 = r0.readLine()     // Catch: java.lang.Exception -> L3c java.lang.Throwable -> L67
            java.lang.String r1 = r2.trim()     // Catch: java.lang.Exception -> L3c java.lang.Throwable -> L67
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
            goto L66
        L4b:
            r0 = move-exception
            r6 = r1
            r1 = r0
            r0 = r6
            goto L68
        L50:
            r2 = move-exception
            r0 = r1
        L52:
            java.lang.String r3 = "AdapterUtilityImpl"
            java.lang.String r4 = "getProcessNameByPid error: "
            r5 = 0
            java.lang.Object[] r5 = new java.lang.Object[r5]     // Catch: java.lang.Throwable -> L67
            com.taobao.accs.utl.ALog.m5731w(r3, r4, r2, r5)     // Catch: java.lang.Throwable -> L67
            if (r0 == 0) goto L66
            r0.close()     // Catch: java.io.IOException -> L62
            goto L66
        L62:
            r0 = move-exception
            r0.printStackTrace()
        L66:
            return r1
        L67:
            r1 = move-exception
        L68:
            if (r0 == 0) goto L72
            r0.close()     // Catch: java.io.IOException -> L6e
            goto L72
        L6e:
            r0 = move-exception
            r0.printStackTrace()
        L72:
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.taobao.accs.utl.AdapterUtilityImpl.getProcessNameByPid():java.lang.String");
    }

    public static String getStackMsg(Throwable th) {
        StringBuffer stringBuffer = new StringBuffer();
        try {
            StackTraceElement[] stackTrace = th.getStackTrace();
            if (stackTrace != null && stackTrace.length > 0) {
                for (StackTraceElement stackTraceElement : stackTrace) {
                    stringBuffer.append(stackTraceElement.toString());
                    stringBuffer.append("\n");
                }
            }
        } catch (Exception unused) {
        }
        return stringBuffer.toString();
    }

    public static long getUsableSpace() {
        try {
            File dataDirectory = Environment.getDataDirectory();
            if (dataDirectory == null) {
                return -1L;
            }
            return dataDirectory.getUsableSpace();
        } catch (Throwable th) {
            ALog.m5727e(TAG, "getUsableSpace", th, new Object[0]);
            return -1L;
        }
    }

    public static boolean isMainProcess(Context context) throws Throwable {
        if (mChecked) {
            return mIsMainProc;
        }
        boolean zEqualsIgnoreCase = context.getPackageName().equalsIgnoreCase(getProcessName(context));
        mIsMainProc = zEqualsIgnoreCase;
        mChecked = true;
        return zEqualsIgnoreCase;
    }

    public static boolean isNetworkConnected(Context context) {
        if (context == null) {
            return false;
        }
        try {
            NetworkInfo activeNetworkInfo = AdapterGlobalClientInfo.getInstance(context).getConnectivityManager().getActiveNetworkInfo();
            if (activeNetworkInfo != null) {
                return activeNetworkInfo.isConnected();
            }
            return false;
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    public static String isNotificationEnabled(Context context) {
        boolean z = true;
        if (!Utils.isTarget26(context)) {
            try {
                AppOpsManager appOpsManager = (AppOpsManager) context.getSystemService("appops");
                ApplicationInfo applicationInfo = context.getApplicationInfo();
                String packageName = context.getApplicationContext().getPackageName();
                int i = applicationInfo.uid;
                Class<?> cls = Class.forName(AppOpsManager.class.getName());
                if (((Integer) cls.getMethod(NotificationManagerCompat.CHECK_OP_NO_THROW, Integer.TYPE, Integer.TYPE, String.class).invoke(appOpsManager, Integer.valueOf(((Integer) cls.getDeclaredField(NotificationManagerCompat.OP_POST_NOTIFICATION).get(appOpsManager)).intValue()), Integer.valueOf(i), packageName)).intValue() != 0) {
                    z = false;
                }
                return String.valueOf(z);
            } catch (Throwable th) {
                ALog.m5727e(TAG, "isNotificationEnabled", th, new Object[0]);
                return "unknown";
            }
        }
        ApplicationInfo applicationInfo2 = context.getApplicationInfo();
        String packageName2 = context.getApplicationContext().getPackageName();
        int i2 = applicationInfo2.uid;
        try {
            NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
            Method declaredMethod = notificationManager.getClass().getDeclaredMethod("getService", new Class[0]);
            declaredMethod.setAccessible(true);
            Object objInvoke = declaredMethod.invoke(notificationManager, new Object[0]);
            Method declaredMethod2 = objInvoke.getClass().getDeclaredMethod("areNotificationsEnabledForPackage", String.class, Integer.TYPE);
            declaredMethod2.setAccessible(true);
            return String.valueOf(declaredMethod2.invoke(objInvoke, packageName2, Integer.valueOf(i2)));
        } catch (Throwable th2) {
            ALog.m5727e(TAG, "Android O isNotificationEnabled", th2, new Object[0]);
            return "unknown";
        }
    }
}
