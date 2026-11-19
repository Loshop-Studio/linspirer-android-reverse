package com.android.launcher3.fragment.login;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.view.View;
import android.widget.RelativeLayout;
import com.android.launcher3.R;
import com.android.launcher3.network.InitLoginHelper;
import com.huawei.hem.LTKDateUtil;
import com.huawei.hem.ViewControlUtil;
import com.huawei.hem.ISVCustomer;
import com.huawei.hem.LauncherMenuHelper;

/* loaded from: classes.dex */
public class InitUserLoginFragment extends BaseLoginFragment {

    /* renamed from: q */
    public RelativeLayout f2026q;

    /* renamed from: r */
    public ISVCustomer f2027r;

    /* renamed from: s */
    public BroadcastReceiver f2028s = new C0665a();

    /* renamed from: com.android.launcher3.fragment.login.InitUserLoginFragment$a */
    public class C0665a extends BroadcastReceiver {
        public C0665a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent == null || intent.getAction() == null) {
                return;
            }
            String action = intent.getAction();
            if ("com.android.laucher3.mdm.LOGIN_APK_FINISH".equals(action) || "com.linspirer.edu.loginapkfinish".equals(action)) {
                LTKDateUtil.m1403m("InitUserLoginFragment receiver ISV login ok .");
                InitLoginHelper.getInstance().startInitLogin(InitUserLoginFragment.this.f1800a, intent);
            }
        }
    }

    @Override // com.android.launcher3.activity.base.BaseFragment
    /* renamed from: e */
    public int mo1219e() {
        return R.layout.fragment_inituser_login;
    }

    @Override // com.android.launcher3.fragment.login.BaseLoginFragment, com.android.launcher3.activity.base.BaseFragment
    /* renamed from: f */
    public void mo1220f() {
        super.mo1220f();
        if (LTKDateUtil.f2294f.mo2071p(false) == 2) {
            LTKDateUtil.m1414x(this.f1800a, R.string.disallowed_logined_by_release_control);
            return;
        }
        ISVCustomer c1172o3 = ISVCustomer.b.f3370a;
        this.f2027r = c1172o3;
        if (c1172o3 == null) {
            throw null;
        }
        m1268o();
        if (this.f2027r == null) {
            throw null;
        }
    }

    @Override // com.android.launcher3.fragment.login.BaseLoginFragment, com.android.launcher3.activity.base.BaseFragment
    /* renamed from: g */
    public void mo1221g(View view) {
        super.mo1221g(view);
        this.f2026q = (RelativeLayout) view.findViewById(R.id.login_shade);
        m1264m(this.f2007m);
        IntentFilter intentFilter = new IntentFilter("com.android.laucher3.mdm.LOGIN_APK_FINISH");
        intentFilter.addAction("com.linspirer.edu.loginapkfinish");
        this.f1800a.registerReceiver(this.f2028s, intentFilter);
    }

    @Override // com.android.launcher3.fragment.login.BaseLoginFragment
    /* renamed from: n */
    public void mo1265n() {
        if (LTKDateUtil.f2294f.mo2071p(false) == 2) {
            LTKDateUtil.m1414x(this.f1800a, R.string.disallowed_logined_by_release_control);
        } else {
            this.f1802c.m3041e0(false);
            m1268o();
        }
    }

    /* renamed from: o */
    public final void m1268o() {
        if (this.f2027r == null) {
            throw null;
        }
        LTKDateUtil.m1403m("login package:com.zykj.manage activity:com.zykj.launcher.login");
        if (this.f2027r == null) {
            throw null;
        }
        LTKDateUtil.m1409s(this.f1800a, "com.zykj.launcher.login", true);
    }

    @Override // com.android.launcher3.fragment.login.BaseLoginFragment, android.view.View.OnClickListener
    public void onClick(View view) throws Resources.NotFoundException {
        super.onClick(view);
        if (view.getId() == R.id.wifi_setting && !ViewControlUtil.m1583a(view)) {
            LauncherMenuHelper.m2979Z(this.f1800a);
        }
    }

    @Override // com.android.launcher3.fragment.login.BaseLoginFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.f1800a.unregisterReceiver(this.f2028s);
    }

    @Override // android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        if (this.f2027r == null) {
            throw null;
        }
        m1268o();
    }
}
