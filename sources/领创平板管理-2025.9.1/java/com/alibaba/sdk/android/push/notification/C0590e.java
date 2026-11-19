package com.alibaba.sdk.android.push.notification;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import java.util.Random;
import org.android.agoo.common.AgooConstants;

/* renamed from: com.alibaba.sdk.android.push.notification.e */
/* loaded from: classes.dex */
public class C0590e {

    /* renamed from: a */
    public static Random f1339a;

    /* renamed from: a */
    public static int m952a() {
        if (f1339a == null) {
            f1339a = new Random(System.currentTimeMillis());
        }
        return f1339a.nextInt();
    }

    /* renamed from: a */
    public static String m953a(String str) {
        try {
            Class<?>[] clsArr = {String.class};
            Object[] objArr = {str};
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getDeclaredMethod("get", clsArr).invoke(cls, objArr);
        } catch (Throwable unused) {
            return "";
        }
    }

    /* renamed from: a */
    public static boolean m954a(Context context) {
        ActivityManager.RunningAppProcessInfo runningAppProcessInfo;
        try {
            runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
            ActivityManager.getMyMemoryState(runningAppProcessInfo);
        } catch (Exception unused) {
        }
        return runningAppProcessInfo.importance == 100;
    }

    /* renamed from: b */
    public static boolean m955b() {
        try {
            String strM953a = m953a("ro.vivo.os.build.display.id");
            if (!Build.MANUFACTURER.equalsIgnoreCase(AgooConstants.MESSAGE_SYSTEM_SOURCE_VIVO) && !strM953a.startsWith("Funtouch")) {
                String strM953a2 = m953a("ro.iqoo.os.build.display.id");
                if (strM953a2 == null) {
                    return false;
                }
                if (TextUtils.isEmpty(strM953a2.trim())) {
                    return false;
                }
            }
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }
}
