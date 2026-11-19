package com.android.launcher3.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.huawei.hem.C0850bc;
import com.huawei.hem.C1423y4;

/* loaded from: classes.dex */
public class PowerReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (!C1423y4.m2954A(intent) && "alarm_power_off".equals(intent.getAction())) {
            C0850bc.m1403m("receiver power off alarm ");
            C0850bc.f2294f.mo1324h0();
        }
    }
}
