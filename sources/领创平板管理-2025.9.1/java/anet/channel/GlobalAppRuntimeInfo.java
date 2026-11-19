package anet.channel;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Process;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import anet.channel.entity.ENV;
import anet.channel.fulltrace.FullTraceAnalysisRegistry;
import anet.channel.fulltrace.FullTraceSceneInfo;
import anet.channel.strategy.StrategyCenter;
import anet.channel.strategy.dispatch.AmdcRuntimeInfo;
import anet.channel.strategy.dispatch.DispatchConstants;
import anet.channel.util.ALog;
import anet.channel.util.Utils;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public class GlobalAppRuntimeInfo {

    /* renamed from: a */
    public static Context f82a;

    /* renamed from: e */
    public static String f86e;

    /* renamed from: f */
    public static String f87f;

    /* renamed from: g */
    public static String f88g;

    /* renamed from: k */
    public static volatile long f92k;

    /* renamed from: l */
    public static String f93l;

    /* renamed from: b */
    public static ENV f83b = ENV.ONLINE;

    /* renamed from: c */
    public static String f84c = "";

    /* renamed from: d */
    public static String f85d = "";

    /* renamed from: h */
    public static volatile boolean f89h = true;

    /* renamed from: i */
    public static SharedPreferences f90i = null;

    /* renamed from: j */
    public static volatile CopyOnWriteArrayList<String> f91j = null;

    public static void addBucketInfo(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || str.length() > 32 || str2.length() > 32) {
            return;
        }
        synchronized (GlobalAppRuntimeInfo.class) {
            if (f91j == null) {
                f91j = new CopyOnWriteArrayList<>();
            }
            f91j.add(str);
            f91j.add(str2);
        }
    }

    public static CopyOnWriteArrayList<String> getBucketInfo() {
        return f91j;
    }

    public static Context getContext() {
        return f82a;
    }

    public static String getCurrentProcess() {
        return f85d;
    }

    public static ENV getEnv() {
        return f83b;
    }

    @Deprecated
    public static long getInitTime() {
        return f92k;
    }

    @Deprecated
    public static int getStartType() {
        FullTraceSceneInfo sceneInfo = FullTraceAnalysisRegistry.m140a().getSceneInfo();
        if (sceneInfo != null) {
            return sceneInfo.f264a;
        }
        return -1;
    }

    public static String getTtid() {
        return f86e;
    }

    public static String getUserId() {
        return f87f;
    }

    public static String getUtdid() {
        Context context;
        if (f88g == null && (context = f82a) != null) {
            f88g = Utils.getDeviceId(context);
        }
        return f88g;
    }

    public static boolean isAppBackground() {
        if (f82a == null) {
            return true;
        }
        return f89h;
    }

    public static boolean isTargetProcess() {
        if (TextUtils.isEmpty(f84c) || TextUtils.isEmpty(f85d)) {
            return true;
        }
        return f84c.equalsIgnoreCase(f85d);
    }

    public static void setBackground(boolean z) {
        f89h = z;
    }

    public static void setContext(Context context) {
        f82a = context;
        if (context != null) {
            if (TextUtils.isEmpty(f85d)) {
                f85d = Utils.getProcessName(context, Process.myPid());
            }
            if (TextUtils.isEmpty(f84c)) {
                f84c = Utils.getMainProcessName(context);
            }
            if (f90i == null) {
                SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
                f90i = defaultSharedPreferences;
                f87f = defaultSharedPreferences.getString("UserId", null);
            }
            ALog.m339e("awcn.GlobalAppRuntimeInfo", "", null, "CurrentProcess", f85d, "TargetProcess", f84c);
        }
    }

    public static void setCurrentProcess(String str) {
        f85d = str;
    }

    public static void setEnv(ENV env) {
        f83b = env;
    }

    @Deprecated
    public static void setInitTime(long j) {
        f92k = j;
    }

    public static void setTargetProcess(String str) {
        f84c = str;
    }

    public static void setTtid(String str) {
        f86e = str;
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            int iIndexOf = str.indexOf("@");
            String strSubstring = null;
            String strSubstring2 = iIndexOf != -1 ? str.substring(0, iIndexOf) : null;
            String strSubstring3 = str.substring(iIndexOf + 1);
            int iLastIndexOf = strSubstring3.lastIndexOf("_");
            if (iLastIndexOf != -1) {
                String strSubstring4 = strSubstring3.substring(0, iLastIndexOf);
                strSubstring = strSubstring3.substring(iLastIndexOf + 1);
                strSubstring3 = strSubstring4;
            }
            f93l = strSubstring;
            AmdcRuntimeInfo.setAppInfo(strSubstring3, strSubstring, strSubstring2);
        } catch (Exception unused) {
        }
    }

    public static void setUserId(String str) {
        String str2 = f87f;
        if (str2 == null || !str2.equals(str)) {
            f87f = str;
            StrategyCenter.getInstance().forceRefreshStrategy(DispatchConstants.getAmdcServerDomain());
            SharedPreferences sharedPreferences = f90i;
            if (sharedPreferences != null) {
                sharedPreferences.edit().putString("UserId", str).apply();
            }
        }
    }

    public static void setUtdid(String str) {
        String str2 = f88g;
        if (str2 == null || !str2.equals(str)) {
            f88g = str;
        }
    }

    public static boolean isTargetProcess(String str) {
        if (TextUtils.isEmpty(f84c) || TextUtils.isEmpty(str)) {
            return true;
        }
        return f84c.equalsIgnoreCase(str);
    }
}
