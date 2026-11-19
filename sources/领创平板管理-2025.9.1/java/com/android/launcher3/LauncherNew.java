package com.android.launcher3;

// RE note 本类字节码直接引用的读写或显示接口包括偏好设置。

import android.app.WallpaperManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.os.Build;
import android.os.Bundle;
import android.os.UserManager;
import android.support.v4.app.FragmentTransaction;
import android.text.TextUtils;
import android.view.KeyEvent;
import com.android.launcher3.activity.LockActivity;
import com.android.launcher3.activity.LoginActivity;
import com.android.launcher3.activity.base.BaseFragmentActivity;
import com.android.launcher3.activity.gestrue.CheckPwdGestureActivity;
import com.android.launcher3.fragment.home.BaseHomeFragment;
import com.android.launcher3.fragment.home.MainFragment;
import com.android.launcher3.network.InitLoginHelper;
import com.android.launcher3.network.LicenseHelper;
import com.android.launcher3.network.LocationHelper;
import com.android.launcher3.p027db.model.GesturePassword;
import com.android.launcher3.p027db.model.GesturePasswordDao;
import com.huawei.hem.C0850bc;
import com.huawei.hem.C0948f6;
import com.huawei.hem.C1172o3;
import com.huawei.hem.C1274s5;
import com.huawei.hem.C1297t3;
import com.huawei.hem.C1348v4;
import com.huawei.hem.C1374w5;
import com.huawei.hem.C1395x1;
import com.huawei.hem.C1399x5;
import com.huawei.hem.C1423y4;
import com.huawei.hem.C1424y5;
import com.huawei.hms.framework.network.grs.GrsManager;
import java.io.IOException;
import org.greenrobot.greendao.query.WhereCondition;

/* loaded from: classes.dex */
public class LauncherNew extends BaseFragmentActivity {

    /* renamed from: b */
    public BaseHomeFragment f1642b;

    /* renamed from: c */
    public C1172o3 f1643c;

    /* renamed from: d */
    public BroadcastReceiver f1644d = new C0627a();

    /* renamed from: com.android.launcher3.LauncherNew$a */
    public class C0627a extends BroadcastReceiver {
        public C0627a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) throws IOException {
            if (intent == null || intent.getAction() == null) {
                return;
            }
            String action = intent.getAction();
            if ("com.android.laucher3.mdm.LOGIN_APK_FINISH".equals(action) || "com.linspirer.edu.loginapkfinish".equals(action)) {
                C0850bc.m1403m("LauncherNew  -- onReceive ISV login ok .");
                InitLoginHelper.getInstance().startInitLogin(LauncherNew.this, intent);
                return;
            }
            if ("com.linspirer.launcher3.user_logout".equals(action)) {
                if (LauncherNew.this.f1642b != null) {
                    C0850bc.m1403m("LauncherNew  -- onReceive user logout .");
                    LauncherNew.this.f1642b.m1239m(intent.getBooleanExtra("fromOwner", false));
                    return;
                }
                return;
            }
            if (!"com.linspirer.launcher3.refresh_launcher".equals(action)) {
                if ("android.intent.action.SCREEN_OFF".equals(action)) {
                    LauncherNew.m1163e(LauncherNew.this);
                }
            } else {
                C0948f6.m1779x("LauncherNew receiver ", action);
                LauncherNew launcherNew = LauncherNew.this;
                launcherNew.f1642b.f1912n = true;
                launcherNew.m1168g();
                LauncherNew.this.f1642b.mo1241o();
            }
        }
    }

    /* renamed from: e */
    public static void m1163e(LauncherNew launcherNew) throws IOException {
        if (launcherNew == null) {
            throw null;
        }
        WallpaperManager wallpaperManager = WallpaperManager.getInstance(launcherNew);
        if (Build.VERSION.SDK_INT >= 24) {
            Point point = new Point();
            launcherNew.getWindowManager().getDefaultDisplay().getRealSize(point);
            int i = point.x;
            int i2 = point.y;
            C0850bc.m1403m("LauncherNew --x = " + i + ",y = " + i2);
            C1424y5 c1424y5 = launcherNew.f1812a;
            if (c1424y5.f4182o0 == "-1") {
                c1424y5.f4182o0 = c1424y5.f4130D.f2199a.getString("lockscreen_wallpaper", "-1");
            }
            String str = c1424y5.f4182o0;
            C1424y5 c1424y52 = launcherNew.f1812a;
            if (c1424y52.f4184p0 == "-1") {
                c1424y52.f4184p0 = c1424y52.f4130D.f2199a.getString("lockscreen_wallpaper_landscape", "-1");
            }
            String str2 = c1424y52.f4184p0;
            C1424y5 c1424y53 = launcherNew.f1812a;
            if (c1424y53.f4186q0 == "-1") {
                c1424y53.f4186q0 = c1424y53.f4130D.f2199a.getString("lockscreen_wallpaper_portrait", "-1");
            }
            String str3 = c1424y53.f4186q0;
            if (!TextUtils.isEmpty(str) && !"-1".equals(str)) {
                Bitmap bitmapM2900b = C1374w5.m2899a(launcherNew).m2900b(str, i, i2);
                if (bitmapM2900b == null) {
                    C0850bc.m1390A("LauncherNew  -- not found isv lockwallpaper for one......");
                    return;
                }
                try {
                    C0850bc.f2294f.mo2058Z();
                    if (C1399x5.m2929a()) {
                        C0850bc.m1403m("LauncherNew  -- isv will change and reset lockwallpaper--one......portrait");
                        wallpaperManager.setBitmap(bitmapM2900b, null, true, 2);
                    } else {
                        C0850bc.m1403m("LauncherNew  -- isv will change and reset lockwallpaper--one......landscape");
                        wallpaperManager.setBitmap(bitmapM2900b, null, true, 2);
                    }
                    return;
                } catch (IOException e) {
                    e.printStackTrace();
                    return;
                }
            }
            if (TextUtils.isEmpty(str2) || "-1".equals(str2) || TextUtils.isEmpty(str3) || "-1".equals(str3)) {
                return;
            }
            Bitmap bitmapM2900b2 = C1374w5.m2899a(launcherNew).m2900b(str2, i, i2);
            Bitmap bitmapM2900b3 = C1374w5.m2899a(launcherNew).m2900b(str3, i, i2);
            if (bitmapM2900b2 == null || bitmapM2900b3 == null) {
                C0850bc.m1390A("LauncherNew  -- not found isv lockwallpaper for two......");
                return;
            }
            try {
                C0850bc.f2294f.mo2058Z();
                if (C1399x5.m2929a()) {
                    C0850bc.m1403m("LauncherNew  -- isv will change and reset lockwallpaper......portrait");
                    wallpaperManager.setBitmap(bitmapM2900b3, null, true, 2);
                } else {
                    C0850bc.m1403m("LauncherNew  -- isv will change and reset lockwallpaper......landscape");
                    wallpaperManager.setBitmap(bitmapM2900b2, null, true, 2);
                }
                C0850bc.m1403m("LauncherNew  -- isv will change and reset lockwallpaper......landscapeFilePath = " + str2 + "--lportraitFilePath:" + str3);
            } catch (IOException e2) {
                e2.printStackTrace();
            }
        }
    }

    @Override // com.android.launcher3.activity.base.BaseFragmentActivity
    /* renamed from: a */
    public int mo1164a() {
        return R.layout.activity_launcher_new;
    }

    @Override // com.android.launcher3.activity.base.BaseFragmentActivity
    /* renamed from: b */
    public void mo1165b() {
        C1395x1.f4039b = "yes";
        this.f1643c = C1172o3.b.f3370a;
        if (this.f1812a.m3019N() == 1) {
            C0850bc.m1403m("LauncherNew init data logined");
            LocationHelper.getInstance().startLocation();
            C1348v4.b.f3925a.m2854a();
            m1167f();
        }
    }

    @Override // com.android.launcher3.activity.base.BaseFragmentActivity
    /* renamed from: d */
    public void mo1166d(Bundle bundle) {
        this.f1642b = new MainFragment();
        FragmentTransaction fragmentTransactionBeginTransaction = getSupportFragmentManager().beginTransaction();
        fragmentTransactionBeginTransaction.add(R.id.main_content, this.f1642b);
        fragmentTransactionBeginTransaction.commit();
        IntentFilter intentFilter = new IntentFilter("com.android.laucher3.mdm.LOGIN_APK_FINISH");
        intentFilter.addAction("com.linspirer.launcher3.user_logout");
        intentFilter.addAction("com.linspirer.edu.loginapkfinish");
        intentFilter.addAction("com.linspirer.launcher3.refresh_launcher");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        registerReceiver(this.f1644d, intentFilter);
    }

    /* renamed from: f */
    public final void m1167f() {
        GesturePassword gesturePasswordUnique;
        if (!"0000".endsWith(this.f1812a.m3062p())) {
            C1423y4.m2976W(this, LockActivity.class);
            return;
        }
        if (this.f1812a.m3060o() != 1 || (gesturePasswordUnique = C1297t3.m2715a().m2716b().queryBuilder().where(GesturePasswordDao.Properties.User_name.m5870eq(this.f1812a.m3052k()), new WhereCondition[0]).unique()) == null || TextUtils.isEmpty(gesturePasswordUnique.getGesture_password()) || !this.f1812a.f4130D.f2199a.getBoolean("lock_status", false)) {
            return;
        }
        C0850bc.m1403m("LauncherNew  -- start check lock gesture ...");
        C1423y4.m2976W(this, CheckPwdGestureActivity.class);
    }

    /* renamed from: g */
    public final void m1168g() {
        if (this.f1812a.m3019N() != 1) {
            C1423y4.m2974U(this, LoginActivity.class);
            finish();
            return;
        }
        if (!LicenseHelper.getInstance().startCheck(this, false, false)) {
            C0850bc.m1403m("LauncherNew license not register succeed");
            return;
        }
        C1274s5.b.f3666a.m2678a();
        C1424y5 c1424y5 = this.f1812a;
        if (c1424y5.f4175l == 0) {
            c1424y5.f4175l = c1424y5.f4130D.f2199a.getInt("show_launcher", 0);
        }
        if (c1424y5.f4175l == 1) {
            C0850bc.m1403m("LauncherNew openISVLauncher use guard desk");
        } else {
            String strSubstring = null;
            if (this.f1643c == null) {
                throw null;
            }
            C0850bc.m1403m("LauncherNew  openISVLauncher launcherPackage= com.zykj.manage launcher=com.zykj.launcher.home");
            if (TextUtils.isEmpty("com.zykj.manage")) {
                C1424y5 c1424y52 = this.f1812a;
                if (TextUtils.isEmpty(c1424y52.f4199x)) {
                    c1424y52.f4199x = c1424y52.f4130D.f2199a.getString("launcher_start_package", "");
                }
                String strSubstring2 = c1424y52.f4199x;
                C0850bc.m1403m("LauncherNew  openISVLauncher launcher remote packageName" + strSubstring2);
                if (!TextUtils.isEmpty(strSubstring2)) {
                    if (strSubstring2.contains(GrsManager.SEPARATOR)) {
                        strSubstring2 = strSubstring2.substring(0, strSubstring2.indexOf(GrsManager.SEPARATOR));
                        strSubstring = strSubstring2.substring(strSubstring2.indexOf(GrsManager.SEPARATOR) + 1);
                    }
                    StringBuilder sbM1765j = C0948f6.m1765j("LauncherNew  openISVLauncher launcher remote model:");
                    sbM1765j.append(this.f1812a.m3070t());
                    sbM1765j.append(" is need open:");
                    sbM1765j.append(this.f1812a.m3021P());
                    C0850bc.m1403m(sbM1765j.toString());
                    if (this.f1812a.m3070t() == 1 && this.f1812a.m3021P()) {
                        C0850bc.m1403m("LauncherNew  openISVLauncher launcher remote ");
                        m1169h(strSubstring2, strSubstring, false);
                        this.f1812a.m3047h0(false);
                    } else if (this.f1812a.m3070t() == 2) {
                        m1169h(strSubstring2, strSubstring, false);
                    }
                }
            } else {
                C0850bc.m1403m("LauncherNew  openISVLauncher launcher local");
                if (this.f1643c == null) {
                    throw null;
                }
                m1169h("com.zykj.manage", "com.zykj.launcher.home", true);
            }
        }
        m1167f();
        sendBroadcast(new Intent("com.android.launcher3.mdm.homeaction"));
    }

    /* renamed from: h */
    public final void m1169h(String str, String str2, boolean z) {
        C0850bc.m1403m("LauncherNew start isv launcher package:" + str + " activity:" + str2);
        if (this.f1643c == null) {
            throw null;
        }
        C0850bc.m1409s(this, str2, true);
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        BroadcastReceiver broadcastReceiver = this.f1644d;
        if (broadcastReceiver != null) {
            unregisterReceiver(broadcastReceiver);
        }
        C0850bc.m1403m("LauncherNew ====onDestroy====");
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        C0850bc.m1403m("LauncherNew ===============onResume");
        UserManager userManager = (UserManager) getSystemService(UserManager.class);
        if (Build.VERSION.SDK_INT >= 24) {
            if (!userManager.isUserUnlocked()) {
                C0850bc.m1403m("====onresume unluck and return");
                return;
            }
            C0850bc.m1403m("====onresume luck");
        }
        m1168g();
    }
}
