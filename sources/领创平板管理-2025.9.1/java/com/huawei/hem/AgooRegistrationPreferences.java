package com.huawei.hem;

import android.content.Context;
import android.preference.PreferenceManager;
import android.support.v4.app.FrameMetricsAggregator;
import com.alibaba.sdk.android.ams.common.logger.AmsLogger;
import com.alibaba.sdk.android.logger.ILog;
import com.taobao.accs.utl.AccsLogger;
import java.util.Random;

/* compiled from: Taobao */
/* renamed from: com.huawei.hem.v0 */
/* loaded from: classes.dex */
public class AgooRegistrationPreferences {

    /* renamed from: a */
    public static final ILog f3910a = AccsLogger.getLogger(AmsLogger.IMPORTANT_LOG_TAG);

    /* renamed from: b */
    public static String f3911b = "com.alibaba.sdk.android.push.NOTIFY_ACTION";

    /* renamed from: c */
    public static Class f3912c = null;

    /* renamed from: d */
    public static AgooPushRuntimeSettings f3913d = null;

    /* renamed from: e */
    public static AgooArrivalReporter f3914e = null;

    /* renamed from: f */
    public static int f3915f = 0;

    /* renamed from: g */
    public static int f3916g = 0;

    /* renamed from: h */
    public static Random f3917h = null;

    /* renamed from: a */
    public static void m2852a(Context context) {
        f3913d = new AgooPushRuntimeSettings(context.getApplicationContext());
        PreferenceManager.getDefaultSharedPreferences(context.getApplicationContext());
    }

    /* renamed from: b */
    public static int m2853b() {
        if (f3915f == 0) {
            if (f3917h == null) {
                f3917h = new Random(System.currentTimeMillis());
            }
            int iNextInt = f3917h.nextInt(FrameMetricsAggregator.FrameMetricsApi24Impl.NANOS_PER_MS);
            f3915f = iNextInt;
            if (iNextInt < 0) {
                f3915f = iNextInt * (-1);
            }
        }
        int i = f3915f;
        f3915f = i + 1;
        return i;
    }
}
