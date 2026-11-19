package anet.channel.strategy.dispatch;

import android.content.Context;
import anet.channel.util.ALog;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public class AmdcRuntimeInfo {
    public static final String TAG = "awcn.AmdcRuntimeInfo";
    public static volatile int amdcLimitLevel = 0;
    public static volatile long amdcLimitTime = 0;
    public static volatile String appChannel = null;
    public static volatile String appName = null;
    public static volatile String appVersion = null;
    public static volatile Context context = null;
    public static volatile boolean forceHttps = false;
    public static IAmdcSign iSign;
    public static volatile double latitude;
    public static volatile double longitude;
    public static Map<String, String> params;

    public static int getAmdcLimitLevel() {
        if (amdcLimitLevel > 0 && System.currentTimeMillis() - amdcLimitTime > 0) {
            amdcLimitTime = 0L;
            amdcLimitLevel = 0;
        }
        return amdcLimitLevel;
    }

    public static Context getContext() {
        return context;
    }

    public static synchronized Map<String, String> getParams() {
        if (params == null) {
            return Collections.EMPTY_MAP;
        }
        return new HashMap(params);
    }

    public static IAmdcSign getSign() {
        return iSign;
    }

    public static boolean isForceHttps() {
        return forceHttps;
    }

    public static void setAppInfo(String str, String str2, String str3) {
        appName = str;
        appVersion = str2;
        appChannel = str3;
    }

    public static void setContext(Context context2) {
        context = context2;
    }

    public static void setForceHttps(boolean z) {
        forceHttps = z;
    }

    public static synchronized void setParam(String str, String str2) {
        if (params == null) {
            params = new HashMap();
        }
        params.put(str, str2);
    }

    public static void setSign(IAmdcSign iAmdcSign) {
        iSign = iAmdcSign;
    }

    public static void updateAmdcLimit(int i, int i2) {
        ALog.m340i(TAG, "set amdc limit", null, "level", Integer.valueOf(i), "time", Integer.valueOf(i2));
        if (i < 0 || i > 3) {
            return;
        }
        amdcLimitLevel = i;
        amdcLimitTime = (i2 * 1000) + System.currentTimeMillis();
    }

    public static void updateLocation(double d, double d2) {
        latitude = d;
        longitude = d2;
    }
}
