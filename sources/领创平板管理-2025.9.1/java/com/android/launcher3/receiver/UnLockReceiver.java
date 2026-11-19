package com.android.launcher3.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.android.launcher3.GuardSecureApplication;
import com.huawei.hem.C0850bc;
import com.huawei.hem.C1423y4;
import com.huawei.hem.C1424y5;

/* loaded from: classes.dex */
public class UnLockReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent == null) {
            return;
        }
        if (C1424y5.b.f4202a.m3023R()) {
            C0850bc.m1403m("UnLockReceiver device is release control no need receiver ScreenState");
            return;
        }
        String action = intent.getAction();
        C0850bc.m1403m("UnLockReceiver action " + action);
        if ("android.intent.action.USER_UNLOCKED".equals(action)) {
            GuardSecureApplication.f1640b.m1160b();
            C1424y5.b.f4202a.m3047h0(true);
            C0850bc.m1403m("UnLockReceiver isv launcher send broadcast ");
            C0850bc.m1403m("send  refresh desktop broadcast");
            C1423y4.m2962I(context, "com.linspirer.launcher3.refresh_launcher");
            C0850bc.f2294f.mo2051K();
        }
    }
}
