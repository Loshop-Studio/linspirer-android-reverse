package com.android.launcher3.receiver;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.util.Log;
import com.alibaba.fastjson.asm.Label;
import com.android.launcher3.LauncherNew;
import com.android.launcher3.network.AppTimeLimitHelper;
import com.huawei.hem.C0850bc;
import com.huawei.hem.C0878ce;
import com.huawei.hem.C0948f6;
import com.huawei.hem.C1395x1;
import com.huawei.hem.C1423y4;
import com.huawei.hem.C1424y5;

/* loaded from: classes.dex */
public class BootCheckReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent == null || intent.getAction() == null) {
            return;
        }
        String action = intent.getAction();
        String str = "=====BootCheckReceiver===" + action;
        Log.i("BootCheckReceiver", str);
        C0850bc.m1411u("BootCheckReceiver", str);
        if ("android.intent.action.BOOT_COMPLETED".equals(action)) {
            if (C0878ce.m1521n() || C0878ce.m1519l() || C0878ce.m1510c()) {
                C0850bc.m1403m("=====BootCheckReceiver=== empty");
            } else if (TextUtils.isEmpty(C1395x1.f4039b)) {
                C1423y4.m2978Y(context, LauncherNew.class);
            }
            C1424y5 c1424y5 = C1424y5.b.f4202a;
            if (c1424y5.m3019N() != 0) {
                if (c1424y5.m3050j() == 1) {
                    C0850bc.f2294f.disableRecent();
                } else {
                    C0850bc.f2294f.enableRecent();
                }
                if (c1424y5.m3048i() == 1) {
                    C0850bc.f2294f.disableHome();
                } else {
                    C0850bc.f2294f.enableHome();
                }
                C0850bc.f2294f.enableBack();
                AppTimeLimitHelper.getInstance().checkTimeLimitByScreenOn();
                try {
                    Log.i("BootCheckReceiver", "=====to keepAliveStore===");
                    C0850bc.m1411u("BootCheckReceiver", "=====to keepAliveStore===");
                    Intent intent2 = new Intent();
                    intent2.setComponent(new ComponentName("com.ndwill.swd.appstore", "com.ndwill.swd.appstore.activity.EmptyActivity"));
                    intent2.putExtra("keepalive", true);
                    intent2.setFlags(Label.FORWARD_REFERENCE_TYPE_SHORT);
                    Log.i("BootCheckReceiver", "=====keepalive===");
                    C0850bc.m1411u("BootCheckReceiver", "=====keepalive===");
                    context.startActivity(intent2);
                } catch (Throwable th) {
                    C0948f6.m1746D(th, C0948f6.m1765j("start appstore failed"));
                }
            }
            C0850bc.m1403m("BootCheckReceivercheck firewall status on boot check");
            if (C0850bc.f2294f == null) {
                return;
            }
            if (c1424y5.m3056m() == 0) {
                C0850bc.f2294f.enableFireWall();
            } else if (c1424y5.m3023R()) {
                C0850bc.f2294f.disableFireWall();
            }
        }
    }
}
