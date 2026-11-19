package com.android.launcher3.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Environment;
import android.os.StatFs;
import android.support.v4.content.ContextCompat;
import com.android.launcher3.R;
import com.android.launcher3.activity.EyeDialogActivity;
import com.android.launcher3.activity.PromptDiaLogActivity;
import com.android.launcher3.network.AppTimeLimitHelper;
import com.android.launcher3.network.DeviceLogHelper;
import com.android.launcher3.network.IllegalHelper;
import com.android.launcher3.network.RunningLogHelper;
import com.android.launcher3.network.SynchronizeTimeUtil;
import com.huawei.hem.C0850bc;
import com.huawei.hem.C0878ce;
import com.huawei.hem.C0904de;
import com.huawei.hem.C1023i5;
import com.huawei.hem.C1273s4;
import com.huawei.hem.C1348v4;
import com.huawei.hem.C1395x1;
import com.huawei.hem.C1423y4;
import com.huawei.hem.C1424y5;

/* loaded from: classes.dex */
public class TimeReceiver extends BroadcastReceiver {

    /* renamed from: a */
    public int f2041a;

    /* renamed from: a */
    public final boolean m1282a() {
        return "1".equals(C1424y5.b.f4202a.m3062p().substring(3));
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        long blockSizeLong;
        if (C1423y4.m2954A(intent)) {
            C0850bc.m1403m("TimeReceiver device is release no need check action or intent null");
            return;
        }
        if (intent.getAction().equals("android.intent.action.TIME_TICK")) {
            if (C0878ce.m1526s()) {
                String[] strArr = {"android.permission.READ_PHONE_STATE", "android.permission.READ_PRIVILEGED_PHONE_STATE"};
                int i = 0;
                while (true) {
                    if (i >= 2) {
                        SynchronizeTimeUtil.pullSynchronizeTimeBoolean(context);
                        break;
                    } else {
                        if (ContextCompat.checkSelfPermission(context, strArr[i]) != 0) {
                            C0850bc.m1403m("has no permission no need sync time");
                            break;
                        }
                        i++;
                    }
                }
            } else {
                SynchronizeTimeUtil.pullSynchronizeTimeBoolean(context);
            }
            C0850bc.m1403m("TimeReceiver  every min need check");
            C1348v4.b.f3925a.m2854a();
            AppTimeLimitHelper.getInstance().checkTimeLimit();
            int i2 = this.f2041a + 1;
            this.f2041a = i2;
            if (i2 == 5) {
                DeviceLogHelper.getInstance().uploadEvent();
                this.f2041a = 0;
            }
            C1273s4 c1273s4M2677a = C1273s4.m2677a();
            int i3 = c1273s4M2677a.f3657a;
            if (i3 == 0 || c1273s4M2677a.f3661e) {
                C0850bc.m1403m("EyeProtectedHelper not set eye protected duration or is showing");
            } else {
                int i4 = c1273s4M2677a.f3659c + 1;
                c1273s4M2677a.f3659c = i4;
                if (i4 >= i3) {
                    Bundle bundle = new Bundle();
                    bundle.putInt("action", 0);
                    C1423y4.m2977X(c1273s4M2677a.f3660d, EyeDialogActivity.class, bundle);
                    c1273s4M2677a.f3659c = 0;
                }
            }
            if (C0850bc.f2292d && C0850bc.f2291c + 3600000 <= System.currentTimeMillis()) {
                C0850bc.m1412v(false);
                RunningLogHelper.UploadRunningLog(context, C1395x1.f4038a + "log/");
            }
            if (C0904de.m1589f().equals("BVE-W10")) {
                long jM1596m = C0904de.m1596m();
                try {
                    StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
                    blockSizeLong = statFs.getBlockSizeLong() * statFs.getAvailableBlocksLong();
                } catch (Exception e) {
                    e.printStackTrace();
                    blockSizeLong = 0;
                }
                int i5 = (int) ((blockSizeLong * 100) / jM1596m);
                if (i5 > 6) {
                    if (C1395x1.f4040c == 1 || i5 > 10) {
                        if (i5 > 10) {
                            C1395x1.f4040c = 0;
                            return;
                        }
                        return;
                    } else {
                        C1395x1.f4040c = 1;
                        C0850bc.m1403m("TimeReceiver min 10");
                        Bundle bundle2 = new Bundle();
                        bundle2.putInt("action", 6);
                        C1423y4.m2975V(context, PromptDiaLogActivity.class, bundle2);
                        IllegalHelper.getInstance().recordInternalStorageOverFlow(String.format(context.getString(R.string.internal_storage_size), "12G"));
                        return;
                    }
                }
                C0850bc.m1403m("TimeReceiver min  6" + C1395x1.f4040c + " " + m1282a());
                if (m1282a() || C1395x1.f4040c == -1) {
                    return;
                }
                C1395x1.f4040c = 2;
                C1424y5.b.f4202a.m3039d0(9, true);
                IllegalHelper.getInstance().setIllegalCallBack(new C1023i5(this, context));
                IllegalHelper.getInstance().recordInternalStorageOverFlow(String.format(context.getString(R.string.internal_storage_size), "7G"));
            }
        }
    }
}
