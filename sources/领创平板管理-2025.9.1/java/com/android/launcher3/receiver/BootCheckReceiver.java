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
import com.huawei.hem.LTKDateUtil;
import com.huawei.hem.DeviceTypeUtil;
import com.huawei.hem.CompilerOutline;
import com.huawei.hem.C1395x1;
import com.huawei.hem.LauncherMenuHelper;
import com.huawei.hem.UserInfoUtil;

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
        LTKDateUtil.m1411u("BootCheckReceiver", str);
        if ("android.intent.action.BOOT_COMPLETED".equals(action)) {
            if (DeviceTypeUtil.m1521n() || DeviceTypeUtil.m1519l() || DeviceTypeUtil.m1510c()) {
                LTKDateUtil.m1403m("=====BootCheckReceiver=== empty");
            } else if (TextUtils.isEmpty(C1395x1.f4039b)) {
                LauncherMenuHelper.m2978Y(context, LauncherNew.class);
            }
            UserInfoUtil c1424y5 = UserInfoUtil.b.f4202a;
            if (c1424y5.m3019N() != 0) {
                if (c1424y5.m3050j() == 1) {
                    LTKDateUtil.f2294f.disableRecent();
                } else {
                    LTKDateUtil.f2294f.enableRecent();
                }
                if (c1424y5.m3048i() == 1) {
                    LTKDateUtil.f2294f.disableHome();
                } else {
                    LTKDateUtil.f2294f.enableHome();
                }
                LTKDateUtil.f2294f.enableBack();
                AppTimeLimitHelper.getInstance().checkTimeLimitByScreenOn();
                try {
                    Log.i("BootCheckReceiver", "=====to keepAliveStore===");
                    LTKDateUtil.m1411u("BootCheckReceiver", "=====to keepAliveStore===");
                    Intent intent2 = new Intent();
                    intent2.setComponent(new ComponentName("com.ndwill.swd.appstore", "com.ndwill.swd.appstore.activity.EmptyActivity"));
                    intent2.putExtra("keepalive", true);
                    intent2.setFlags(Label.FORWARD_REFERENCE_TYPE_SHORT);
                    Log.i("BootCheckReceiver", "=====keepalive===");
                    LTKDateUtil.m1411u("BootCheckReceiver", "=====keepalive===");
                    context.startActivity(intent2);
                } catch (Throwable th) {
                    CompilerOutline.m1746D(th, CompilerOutline.m1765j("start appstore failed"));
                }
            }
            LTKDateUtil.m1403m("BootCheckReceivercheck firewall status on boot check");
            if (LTKDateUtil.f2294f == null) {
                return;
            }
            if (c1424y5.m3056m() == 0) {
                LTKDateUtil.f2294f.enableFireWall();
            } else if (c1424y5.m3023R()) {
                LTKDateUtil.f2294f.disableFireWall();
            }
        }
    }
}
