package com.huawei.hem;

import android.content.Context;
import com.android.launcher3.GuardSecureApplication;
import com.android.launcher3.network.AppTimeLimitHelper;
import com.android.launcher3.network.ControlAppHelper;
import com.android.launcher3.network.GreenBrowWebHelper;
import com.android.launcher3.network.LicenseHelper;
import com.android.launcher3.network.TacticsHelper;
import com.android.launcher3.network.UploadAppHelper;
import com.android.launcher3.network.UrlWhiteHelper;
import com.android.launcher3.network.WallpaperHelper;

/* compiled from: CounterUtil.java */
/* renamed from: com.huawei.hem.s5 */
/* loaded from: classes.dex */
public class C1274s5 {

    /* renamed from: c */
    public static long f3663c;

    /* renamed from: a */
    public C0824ac f3664a;

    /* renamed from: b */
    public Context f3665b;

    /* compiled from: CounterUtil.java */
    /* renamed from: com.huawei.hem.s5$b */
    public static class b {

        /* renamed from: a */
        public static final C1274s5 f3666a = new C1274s5(null);
    }

    public C1274s5(a aVar) {
        GuardSecureApplication guardSecureApplication = GuardSecureApplication.f1640b;
        this.f3665b = guardSecureApplication;
        this.f3664a = new C0824ac(guardSecureApplication, "Counter");
    }

    /* renamed from: a */
    public void m2678a() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        boolean z = jCurrentTimeMillis - f3663c >= 1000;
        if (z) {
            f3663c = jCurrentTimeMillis;
        }
        if (!z) {
            C0850bc.m1403m("CounterUtil click too fast no need count.");
            return;
        }
        int i = this.f3664a.f2199a.getInt("other_times", 0) + 1;
        int i2 = this.f3664a.f2199a.getInt("wallpaper_times", 0) + 1;
        int i3 = this.f3664a.f2199a.getInt("mdm_times", 0) + 1;
        int i4 = this.f3664a.f2199a.getInt("control_app_times", 0) + 1;
        C0850bc.m1403m("CounterUtil time counter:" + i + " wallpaper times:" + i2 + " mdm times:" + i3);
        if (i != 60) {
            C0824ac c0824ac = this.f3664a;
            c0824ac.f2200b.putInt("other_times", i);
            c0824ac.f2200b.commit();
        } else {
            C0824ac c0824ac2 = this.f3664a;
            c0824ac2.f2200b.putInt("other_times", 0);
            c0824ac2.f2200b.commit();
        }
        if (i3 != 10) {
            C0824ac c0824ac3 = this.f3664a;
            c0824ac3.f2200b.putInt("mdm_times", i3);
            c0824ac3.f2200b.commit();
        } else {
            C0824ac c0824ac4 = this.f3664a;
            c0824ac4.f2200b.putInt("mdm_times", 0);
            c0824ac4.f2200b.commit();
        }
        if (i2 != 100) {
            C0824ac c0824ac5 = this.f3664a;
            c0824ac5.f2200b.putInt("wallpaper_times", i2);
            c0824ac5.f2200b.commit();
        } else {
            C0824ac c0824ac6 = this.f3664a;
            c0824ac6.f2200b.putInt("wallpaper_times", 0);
            c0824ac6.f2200b.commit();
        }
        if (i4 != 80) {
            C0824ac c0824ac7 = this.f3664a;
            c0824ac7.f2200b.putInt("control_app_times", i4);
            c0824ac7.f2200b.commit();
        } else {
            C0824ac c0824ac8 = this.f3664a;
            c0824ac8.f2200b.putInt("control_app_times", 0);
            c0824ac8.f2200b.commit();
        }
        if (i3 % 10 == 0) {
            C0850bc.m1403m("CounterUtil  action reach need pull tactics");
            TacticsHelper.getInstance().request();
            AppTimeLimitHelper.getInstance().request();
        }
        if (i3 % 3 == 0) {
            C0850bc.m1403m("CounterUtil  action reach need pull url white list");
            UrlWhiteHelper.getInstance().request();
        }
        if (i % 60 == 0) {
            C0850bc.m1403m("CounterUtil  action reach need check license");
            LicenseHelper.getInstance().startCheck(this.f3665b, false, true);
        }
        if (i % 15 == 0) {
            C0850bc.m1403m("CounterUtil  action reach need upload installed apps");
            UploadAppHelper.getInstance().checkAndUpload();
        }
        if (i2 % 100 == 0) {
            C0850bc.m1403m("CounterUtil  action reach need check wallpaper");
            WallpaperHelper.getInstance().startCheck();
        }
        if (i % 21 == 1) {
            C0850bc.m1403m("CounterUtil  action reach need check component");
            C1249r5.m2652a().m2653b();
        }
        if (i % 16 == 12) {
            C0850bc.m1403m("CounterUtil  action reach need check component");
            GreenBrowWebHelper.getInstances().handle();
        }
        if (i % 17 == 0) {
            C0850bc.m1403m("CounterUtil  action reach need check sougou input setting");
            C1323u4.m2784c(this.f3665b).m2785d();
        }
        if (i4 % 80 == 0) {
            C0850bc.m1403m("CounterUtil  action reach need  request control app ");
            ControlAppHelper.getInstance(this.f3665b).request();
        }
    }
}
