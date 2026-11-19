package com.android.launcher3.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.android.launcher3.activity.EyeDialogActivity;
import com.huawei.hem.LTKDateUtil;
import com.huawei.hem.EyeProtectedHelper;
import com.huawei.hem.LauncherMenuHelper;

/* loaded from: classes.dex */
public class EyeProtectReceiver extends BroadcastReceiver {
    /* renamed from: a */
    public final void m1279a(Context context, boolean z, int i) {
        LTKDateUtil.m1403m("EyeProtectReceiver eye action:" + i);
        if (z) {
            Bundle bundle = new Bundle();
            bundle.putInt("action", i);
            LauncherMenuHelper.m2977X(context, EyeDialogActivity.class, bundle);
        } else {
            Context context2 = EyeProtectedHelper.m2677a().f3660d;
            LTKDateUtil.m1403m("send broadcast to close eye page");
            LauncherMenuHelper.m2962I(context2, "com.android.launcher3.eyeprotected.close");
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (LauncherMenuHelper.m2954A(intent)) {
            return;
        }
        String action = intent.getAction();
        char c = 65535;
        int iHashCode = action.hashCode();
        if (iHashCode != -2104780786) {
            if (iHashCode != 249734345) {
                if (iHashCode == 1255285578 && action.equals("com.huawei.eyesprotect.proximity.changed")) {
                    c = 0;
                }
            } else if (action.equals("com.huawei.eyesprotect.ligth.changed")) {
                c = 2;
            }
        } else if (action.equals("com.huawei.eyesprotect.flip.changed")) {
            c = 1;
        }
        if (c == 0) {
            m1279a(context, intent.getBooleanExtra("isShorter", false), 1);
            return;
        }
        if (c == 1) {
            m1279a(context, intent.getBooleanExtra("fliped", false), 2);
            return;
        }
        if (c != 2) {
            return;
        }
        float floatExtra = intent.getFloatExtra("intensity", 0.0f);
        boolean booleanExtra = intent.getBooleanExtra("inHealthyRange", false);
        if (floatExtra >= 0.0f && floatExtra <= 10.0f) {
            m1279a(context, !booleanExtra, 3);
        } else {
            if (floatExtra < 8000.0f || floatExtra > 40000.0f) {
                return;
            }
            m1279a(context, !booleanExtra, 4);
        }
    }
}
