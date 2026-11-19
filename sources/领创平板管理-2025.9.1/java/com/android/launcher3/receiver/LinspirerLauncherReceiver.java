package com.android.launcher3.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.android.launcher3.network.DeviceLogHelper;
import com.android.launcher3.network.TacticsHelper;
import com.huawei.hem.C0824ac;
import com.huawei.hem.C0850bc;
import com.huawei.hem.C1249r5;
import com.huawei.hem.C1274s5;
import com.huawei.hem.C1423y4;
import com.huawei.hem.C1424y5;

/* loaded from: classes.dex */
public class LinspirerLauncherReceiver extends BroadcastReceiver {
    /* renamed from: a */
    public final void m1280a(Context context) {
        C0850bc.m1403m("LinspirerLauncherReceiver, ====>logout===start");
        C1424y5 c1424y5 = C1424y5.b.f4202a;
        c1424y5.m3037c0(0);
        c1424y5.m3065q0(0);
        if (c1424y5.f4197w != 0) {
            c1424y5.f4197w = 0;
            C0824ac c0824ac = c1424y5.f4130D;
            c0824ac.f2200b.putInt("launcher_start_mode", 0);
            c0824ac.f2200b.commit();
        }
        if (c1424y5.f4199x != "") {
            c1424y5.f4199x = "";
            C0824ac c0824ac2 = c1424y5.f4130D;
            c0824ac2.f2200b.putString("launcher_start_package", "");
            c0824ac2.f2200b.commit();
        }
        c1424y5.m3033a0(-1);
        c1424y5.m3031Z(-1);
        c1424y5.m3067r0(-1);
        c1424y5.m3053k0(-1);
        C0850bc.m1403m("send logout to appstore broadcast");
        C1423y4.m2971R(context, "com.drupe.swd.launcher.action.self.logout");
    }

    /* renamed from: b */
    public void m1281b(Context context) {
        C0850bc.m1403m("send logout broadcast to isv");
        Intent intent = new Intent("com.android.launcher3.mdm.LOGOUT");
        if (!TextUtils.isEmpty("com.zykj.manage")) {
            intent.setPackage("com.zykj.manage");
        }
        context.sendBroadcast(intent);
        m1280a(context);
        DeviceLogHelper.getInstance().recordAccountOut("%s user logout by linspirer mdm");
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent == null || intent.getAction() == null) {
            return;
        }
        String action = intent.getAction();
        char c = 65535;
        int iHashCode = action.hashCode();
        if (iHashCode != 969595588) {
            if (iHashCode != 1387902089) {
                if (iHashCode == 1572646905 && action.equals("com.linspirer.edu.logout")) {
                    c = 1;
                }
            } else if (action.equals("com.drupe.swd.launcher.action.pull.tactics")) {
                c = 0;
            }
        } else if (action.equals("com.linspirer.edu.homeaction")) {
            c = 2;
        }
        if (c == 0) {
            C0850bc.m1403m("LinspirerLauncherReceiver refresh tactics ");
            TacticsHelper.getInstance().request();
            C1249r5.m2652a().m2653b();
        } else if (c != 1) {
            if (c != 2) {
                return;
            }
            C1274s5.b.f3666a.m2678a();
        } else {
            C0850bc.m1403m("LinspirerLauncherReceiver，收到ISV注销广播");
            C1423y4.m2955B(context, false);
            m1280a(context);
            DeviceLogHelper.getInstance().recordAccountOut("%s user logout by isv app");
        }
    }
}
