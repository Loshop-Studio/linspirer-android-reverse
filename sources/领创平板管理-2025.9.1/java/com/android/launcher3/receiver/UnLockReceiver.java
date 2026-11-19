package com.android.launcher3.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.android.launcher3.GuardSecureApplication;
import com.huawei.hem.LTKDateUtil;
import com.huawei.hem.LauncherMenuHelper;
import com.huawei.hem.UserInfoUtil;

/* loaded from: classes.dex */
public class UnLockReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent == null) {
            return;
        }
        if (UserInfoUtil.b.f4202a.m3023R()) {
            LTKDateUtil.m1403m("UnLockReceiver device is release control no need receiver ScreenState");
            return;
        }
        String action = intent.getAction();
        LTKDateUtil.m1403m("UnLockReceiver action " + action);
        if ("android.intent.action.USER_UNLOCKED".equals(action)) {
            GuardSecureApplication.f1640b.m1160b();
            UserInfoUtil.b.f4202a.m3047h0(true);
            LTKDateUtil.m1403m("UnLockReceiver isv launcher send broadcast ");
            LTKDateUtil.m1403m("send  refresh desktop broadcast");
            LauncherMenuHelper.m2962I(context, "com.linspirer.launcher3.refresh_launcher");
            LTKDateUtil.f2294f.mo2051K();
        }
    }
}
