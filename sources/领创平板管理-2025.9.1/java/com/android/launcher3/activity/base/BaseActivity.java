package com.android.launcher3.activity.base;

import android.app.Activity;
import android.app.Dialog;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.support.annotation.NonNull;
import android.widget.RelativeLayout;
import com.gyf.immersionbar.ImmersionBar;
import com.huawei.hem.C0850bc;
import com.huawei.hem.C0948f6;

/* loaded from: classes.dex */
public abstract class BaseActivity extends Activity {

    /* renamed from: a */
    public RelativeLayout f1799a;

    /* renamed from: a */
    public void m1214a() {
        if (Build.VERSION.SDK_INT < 30 || Environment.isExternalStorageManager()) {
            return;
        }
        startActivity(new Intent("android.settings.MANAGE_ALL_FILES_ACCESS_PERMISSION"));
    }

    /* renamed from: b */
    public abstract int mo1170b();

    /* renamed from: c */
    public void mo1171c() {
    }

    /* renamed from: d */
    public void mo1174d() {
        ImmersionBar.with(this).transparentBar().init();
    }

    /* renamed from: e */
    public abstract void mo1172e();

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(mo1170b());
        mo1172e();
        mo1174d();
        if (this.f1799a != null && ImmersionBar.hasNavigationBar(this) && ImmersionBar.isNavigationAtBottom(this)) {
            int navigationBarHeight = ImmersionBar.getNavigationBarHeight(this);
            C0850bc.m1403m("navigation bar height:" + navigationBarHeight);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
            layoutParams.addRule(12);
            layoutParams.bottomMargin = navigationBarHeight;
            this.f1799a.setLayoutParams(layoutParams);
        }
        mo1171c();
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        if (isFinishing() || isDestroyed()) {
            return;
        }
        ImmersionBar.with(this);
        ImmersionBar.destroy(this, (Dialog) null);
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i, @NonNull String[] strArr, @NonNull int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        if (i == 1) {
            for (int i2 = 0; i2 < iArr.length; i2++) {
                StringBuilder sbM1766k = C0948f6.m1766k("user set permission item:", i2, " status :");
                sbM1766k.append(iArr[i2]);
                C0850bc.m1403m(sbM1766k.toString());
            }
        }
    }
}
