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
import com.huawei.hem.LTKDateUtil;
import com.huawei.hem.DeviceTypeUtil;
import com.huawei.hem.LauncherDeviceUtils;
import com.huawei.hem.TimeReceiverViolationCallback;
import com.huawei.hem.EyeProtectedHelper;
import com.huawei.hem.WorkspaceTacticsHelper;
import com.huawei.hem.LauncherConstants;
import com.huawei.hem.LauncherMenuHelper;
import com.huawei.hem.UserInfoUtil;

/* loaded from: classes.dex */
public class TimeReceiver extends BroadcastReceiver {

    /* renamed from: a */
    public int f2041a;

    /* renamed from: a */
    public final boolean m1282a() {
        return "1".equals(UserInfoUtil.b.f4202a.m3062p().substring(3));
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        long blockSizeLong;
        if (LauncherMenuHelper.m2954A(intent)) {
            LTKDateUtil.m1403m("TimeReceiver device is release no need check action or intent null");
            return;
        }
        if (intent.getAction().equals("android.intent.action.TIME_TICK")) {
            if (DeviceTypeUtil.m1526s()) {
                String[] strArr = {"android.permission.READ_PHONE_STATE", "android.permission.READ_PRIVILEGED_PHONE_STATE"};
                int i = 0;
                while (true) {
                    if (i >= 2) {
                        SynchronizeTimeUtil.pullSynchronizeTimeBoolean(context);
                        break;
                    } else {
                        if (ContextCompat.checkSelfPermission(context, strArr[i]) != 0) {
                            LTKDateUtil.m1403m("has no permission no need sync time");
                            break;
                        }
                        i++;
                    }
                }
            } else {
                SynchronizeTimeUtil.pullSynchronizeTimeBoolean(context);
            }
            LTKDateUtil.m1403m("TimeReceiver  every min need check");
            WorkspaceTacticsHelper.b.f3925a.m2854a();
            AppTimeLimitHelper.getInstance().checkTimeLimit();
            int i2 = this.f2041a + 1;
            this.f2041a = i2;
            if (i2 == 5) {
                DeviceLogHelper.getInstance().uploadEvent();
                this.f2041a = 0;
            }
            EyeProtectedHelper c1273s4M2677a = EyeProtectedHelper.m2677a();
            int i3 = c1273s4M2677a.f3657a;
            if (i3 == 0 || c1273s4M2677a.f3661e) {
                LTKDateUtil.m1403m("EyeProtectedHelper not set eye protected duration or is showing");
            } else {
                int i4 = c1273s4M2677a.f3659c + 1;
                c1273s4M2677a.f3659c = i4;
                if (i4 >= i3) {
                    Bundle bundle = new Bundle();
                    bundle.putInt("action", 0);
                    LauncherMenuHelper.m2977X(c1273s4M2677a.f3660d, EyeDialogActivity.class, bundle);
                    c1273s4M2677a.f3659c = 0;
                }
            }
            if (LTKDateUtil.f2292d && LTKDateUtil.f2291c + 3600000 <= System.currentTimeMillis()) {
                LTKDateUtil.m1412v(false);
                RunningLogHelper.UploadRunningLog(context, LauncherConstants.f4038a + "log/");
            }
            if (LauncherDeviceUtils.m1589f().equals("BVE-W10")) {
                long jM1596m = LauncherDeviceUtils.m1596m();
                try {
                    StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
                    blockSizeLong = statFs.getBlockSizeLong() * statFs.getAvailableBlocksLong();
                } catch (Exception e) {
                    e.printStackTrace();
                    blockSizeLong = 0;
                }
                int i5 = (int) ((blockSizeLong * 100) / jM1596m);
                if (i5 > 6) {
                    if (LauncherConstants.f4040c == 1 || i5 > 10) {
                        if (i5 > 10) {
                            LauncherConstants.f4040c = 0;
                            return;
                        }
                        return;
                    } else {
                        LauncherConstants.f4040c = 1;
                        LTKDateUtil.m1403m("TimeReceiver min 10");
                        Bundle bundle2 = new Bundle();
                        bundle2.putInt("action", 6);
                        LauncherMenuHelper.m2975V(context, PromptDiaLogActivity.class, bundle2);
                        IllegalHelper.getInstance().recordInternalStorageOverFlow(String.format(context.getString(R.string.internal_storage_size), "12G"));
                        return;
                    }
                }
                LTKDateUtil.m1403m("TimeReceiver min  6" + LauncherConstants.f4040c + " " + m1282a());
                if (m1282a() || LauncherConstants.f4040c == -1) {
                    return;
                }
                LauncherConstants.f4040c = 2;
                UserInfoUtil.b.f4202a.m3039d0(9, true);
                IllegalHelper.getInstance().setIllegalCallBack(new TimeReceiverViolationCallback(this, context));
                IllegalHelper.getInstance().recordInternalStorageOverFlow(String.format(context.getString(R.string.internal_storage_size), "7G"));
            }
        }
    }
}
