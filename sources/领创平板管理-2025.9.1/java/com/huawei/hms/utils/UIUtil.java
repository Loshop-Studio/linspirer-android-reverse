package com.huawei.hms.utils;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.KeyguardManager;
import android.content.Context;
import android.os.Process;
import android.text.TextUtils;
import com.huawei.hem.CompilerOutline;
import com.huawei.hms.support.common.ActivityMgr;
import com.huawei.hms.support.log.HMSLog;
import java.util.List;

/* loaded from: classes.dex */
public class UIUtil {
    public static Activity getActiveActivity(Activity activity, Context context) {
        if (isBackground(context)) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("isBackground");
            sbM1765j.append(isBackground(context));
            HMSLog.m3463i("UIUtil", sbM1765j.toString());
            return null;
        }
        if (activity == null) {
            HMSLog.m3463i("UIUtil", "activity is " + activity);
            return ActivityMgr.INST.getCurrentActivity();
        }
        if (!activity.isFinishing()) {
            return activity;
        }
        StringBuilder sbM1765j2 = CompilerOutline.m1765j("activity isFinishing is ");
        sbM1765j2.append(activity.isFinishing());
        HMSLog.m3463i("UIUtil", sbM1765j2.toString());
        return ActivityMgr.INST.getCurrentActivity();
    }

    public static String getProcessName(Context context, int i) {
        ActivityManager activityManager;
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        if (context != null && (activityManager = (ActivityManager) context.getSystemService("activity")) != null && (runningAppProcesses = activityManager.getRunningAppProcesses()) != null) {
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (runningAppProcessInfo.pid == i) {
                    return runningAppProcessInfo.processName;
                }
            }
        }
        return "";
    }

    public static boolean isActivityFullscreen(Activity activity) {
        return (activity.getWindow().getAttributes().flags & 1024) == 1024;
    }

    public static boolean isBackground(Context context) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        if (context == null) {
            return true;
        }
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        KeyguardManager keyguardManager = (KeyguardManager) context.getSystemService("keyguard");
        if (activityManager == null || keyguardManager == null || (runningAppProcesses = activityManager.getRunningAppProcesses()) == null) {
            return true;
        }
        String processName = getProcessName(context, Process.myPid());
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
            if (TextUtils.equals(runningAppProcessInfo.processName, processName)) {
                StringBuilder sbM1765j = CompilerOutline.m1765j("appProcess.importance is ");
                sbM1765j.append(runningAppProcessInfo.importance);
                HMSLog.m3463i("UIUtil", sbM1765j.toString());
                boolean z = runningAppProcessInfo.importance == 100;
                boolean zIsDeviceLocked = keyguardManager.isDeviceLocked();
                HMSLog.m3463i("UIUtil", "isForground is " + z + "***  isLockedState is " + zIsDeviceLocked);
                return !z || zIsDeviceLocked;
            }
        }
        return true;
    }
}
