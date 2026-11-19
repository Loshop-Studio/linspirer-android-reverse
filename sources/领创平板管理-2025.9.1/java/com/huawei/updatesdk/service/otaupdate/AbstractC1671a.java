package com.huawei.updatesdk.service.otaupdate;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import com.huawei.hem.CompilerOutline;
import com.huawei.hms.framework.common.ActivityUtil;
import com.huawei.updatesdk.p034a.p035a.p037c.p038a.p039a.C1584a;

/* renamed from: com.huawei.updatesdk.service.otaupdate.a */
/* loaded from: classes.dex */
public abstract class AbstractC1671a {
    /* renamed from: a */
    public static void m3866a(Context context, BroadcastReceiver broadcastReceiver) {
        if (broadcastReceiver == null || context == null) {
            return;
        }
        try {
            context.unregisterReceiver(broadcastReceiver);
        } catch (IllegalArgumentException e) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("unregisterReceiver error:");
            sbM1765j.append(e.toString());
            C1584a.m3516b(ActivityUtil.TAG, sbM1765j.toString());
        }
    }

    /* renamed from: a */
    public static void m3867a(Context context, IntentFilter intentFilter, BroadcastReceiver broadcastReceiver) {
        if (intentFilter == null || broadcastReceiver == null || m3868a(context)) {
            return;
        }
        try {
            context.registerReceiver(broadcastReceiver, intentFilter);
        } catch (IllegalArgumentException e) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("registerReceiver error:");
            sbM1765j.append(e.toString());
            C1584a.m3516b(ActivityUtil.TAG, sbM1765j.toString());
        }
    }

    /* renamed from: a */
    public static boolean m3868a(Context context) {
        if (context == null) {
            return true;
        }
        if (!(context instanceof Activity)) {
            return false;
        }
        Activity activity = (Activity) context;
        if (!activity.isFinishing() && !activity.isDestroyed()) {
            return false;
        }
        C1584a.m3516b(ActivityUtil.TAG, "activity has bean finished, cannot instance:" + activity);
        return true;
    }
}
