package com.android.launcher3.activity.base;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import com.gyf.immersionbar.ImmersionBar;
import com.huawei.hem.C1424y5;

/* loaded from: classes.dex */
public abstract class BaseFragmentActivity extends FragmentActivity {

    /* renamed from: a */
    public C1424y5 f1812a;

    /* renamed from: a */
    public abstract int mo1164a();

    /* renamed from: b */
    public void mo1165b() {
    }

    /* renamed from: c */
    public void mo1180c() {
        ImmersionBar.with(this).transparentBar().init();
    }

    /* renamed from: d */
    public abstract void mo1166d(Bundle bundle);

    @Override // android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f1812a = C1424y5.b.f4202a;
        setContentView(mo1164a());
        mo1180c();
        mo1166d(bundle);
        mo1165b();
    }
}
