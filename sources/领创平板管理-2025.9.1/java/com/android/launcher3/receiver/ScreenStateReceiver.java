package com.android.launcher3.receiver;

// RE note 本类字节码直接引用的读写或显示接口包括偏好设置。

import android.app.usage.UsageStats;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Process;
import android.text.TextUtils;
import com.android.launcher3.activity.gestrue.CheckPwdGestureActivity;
import com.android.launcher3.network.AppTimeLimitHelper;
import com.android.launcher3.p027db.model.GesturePasswordDao;
import com.huawei.hem.AbstractC1102l9;
import com.huawei.hem.C0824ac;
import com.huawei.hem.C0850bc;
import com.huawei.hem.C0948f6;
import com.huawei.hem.C1073k5;
import com.huawei.hem.C1073k5.a;
import com.huawei.hem.C1273s4;
import com.huawei.hem.C1297t3;
import com.huawei.hem.C1348v4;
import com.huawei.hem.C1423y4;
import com.huawei.hem.C1424y5;
import java.util.List;
import org.greenrobot.greendao.query.WhereCondition;

/* loaded from: classes.dex */
public class ScreenStateReceiver extends BroadcastReceiver {

    /* renamed from: a */
    public Context f2040a;

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        boolean z;
        if (C1423y4.m2954A(intent)) {
            C0850bc.m1403m("ScreenStateReceiverdevice is release control no need receiver ScreenState or intent null");
            return;
        }
        this.f2040a = context;
        String action = intent.getAction();
        C0948f6.m1779x("ScreenStateReceiver -- onReceive action = ", action);
        C1424y5 c1424y5 = C1424y5.b.f4202a;
        if (!"android.intent.action.USER_PRESENT".equals(action)) {
            if (!"android.intent.action.SCREEN_ON".equals(action) && "android.intent.action.SCREEN_OFF".equals(action)) {
                if (c1424y5.m3060o() == 1 && C1297t3.m2715a().m2716b().queryBuilder().where(GesturePasswordDao.Properties.User_name.m5870eq(c1424y5.m3052k()), new WhereCondition[0]).unique() != null && c1424y5.m3019N() == 1) {
                    C0850bc.m1403m("ScreenStateReceiver --  SCREEN_OFF, start check lock gesture ...");
                    C1423y4.m2976W(this.f2040a, CheckPwdGestureActivity.class);
                }
                C1273s4 c1273s4M2677a = C1273s4.m2677a();
                if (c1273s4M2677a.f3657a != 0) {
                    Context context2 = c1273s4M2677a.f3660d;
                    C0850bc.m1403m("send broadcast to close eye page");
                    C1423y4.m2962I(context2, "com.android.launcher3.eyeprotected.close");
                }
                c1273s4M2677a.f3657a = 0;
                c1273s4M2677a.f3659c = 0;
                AppTimeLimitHelper.getInstance().startTimerWhenScreenOff();
                return;
            }
            return;
        }
        if (c1424y5.f4139M == 0) {
            c1424y5.f4139M = c1424y5.f4130D.f2199a.getInt("unlock_screen_number", 0);
        }
        int i = c1424y5.f4139M;
        int i2 = i + 1;
        if (i != i2) {
            c1424y5.f4139M = i2;
            C0824ac c0824ac = c1424y5.f4130D;
            c0824ac.f2200b.putInt("unlock_screen_number", i2);
            c0824ac.f2200b.commit();
        }
        if (i2 >= 18) {
            if (c1424y5.f4139M != 0) {
                c1424y5.f4139M = 0;
                C0824ac c0824ac2 = c1424y5.f4130D;
                c0824ac2.f2200b.putInt("unlock_screen_number", 0);
                c0824ac2.f2200b.commit();
            }
            if (C1073k5.f3023j == null) {
                C1073k5.f3023j = new C1073k5();
            }
            C1073k5 c1073k5 = C1073k5.f3023j;
            if (c1073k5 == null) {
                throw null;
            }
            List<UsageStats> listQueryUsageStats = c1073k5.f3028e.queryUsageStats(2, 0L, System.currentTimeMillis());
            if (c1073k5.f3029f.checkOpNoThrow("android:get_usage_stats", Process.myUid(), "com.android.launcher3") == 0 || !AbstractC1102l9.m2273N(listQueryUsageStats)) {
                String strM3052k = c1073k5.f3026c.m3052k();
                C0850bc.m1403m("AppUsageHelper -- has app usage permission .");
                if (!TextUtils.isEmpty(strM3052k)) {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    if (jCurrentTimeMillis - c1073k5.f3024a >= 3500) {
                        c1073k5.f3024a = jCurrentTimeMillis;
                        z = true;
                    } else {
                        z = false;
                    }
                    if (z) {
                        c1073k5.new a().execute(new String[0]);
                        C0850bc.m1403m("AppUsageHelper -- start to query app usage data and upload it .");
                    }
                }
            } else {
                C0850bc.m1390A("AppUsageHelper -- no appusage permission .");
            }
        }
        if (c1424y5.m3060o() == 1 && C1297t3.m2715a().m2716b().queryBuilder().where(GesturePasswordDao.Properties.User_name.m5870eq(c1424y5.m3052k()), new WhereCondition[0]).unique() != null && c1424y5.m3019N() == 1) {
            C0850bc.m1403m("ScreenStateReceiver --  USER_PRESENT, start check lock gesture ...");
            C1423y4.m2976W(this.f2040a, CheckPwdGestureActivity.class);
        }
        C1348v4 c1348v4 = C1348v4.b.f3925a;
        c1348v4.m2855b();
        c1348v4.m2854a();
        AppTimeLimitHelper.getInstance().cancelTimer();
        AppTimeLimitHelper.getInstance().checkTimeLimitByScreenOn();
        C1273s4 c1273s4M2677a2 = C1273s4.m2677a();
        c1273s4M2677a2.f3657a = c1273s4M2677a2.f3658b.m3006A();
    }
}
