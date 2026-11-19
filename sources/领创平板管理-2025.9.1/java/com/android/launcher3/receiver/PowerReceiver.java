package com.android.launcher3.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.huawei.hem.LTKDateUtil;
import com.huawei.hem.LauncherMenuHelper;

/* loaded from: classes.dex */
public class PowerReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (!LauncherMenuHelper.m2954A(intent) && "alarm_power_off".equals(intent.getAction())) {
            LTKDateUtil.m1403m("receiver power off alarm ");
            LTKDateUtil.f2294f.mo1324h0();
        }
    }
}
