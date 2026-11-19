package com.android.launcher3.fragment.login;

import android.net.NetworkInfo;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.android.launcher3.LauncherNew;
import com.android.launcher3.R;
import com.android.launcher3.network.CommonLoginRequestHelper;
import com.android.launcher3.network.DeviceLogHelper;
import com.huawei.hem.DeskSPF;
import com.huawei.hem.LTKDateUtil;
import com.huawei.hem.LauncherNetworkUtil;
import com.huawei.hem.LauncherDeviceUtils;
import com.huawei.hem.LauncherMenuHelper;
import com.huawei.hem.UserInfoUtil;

/* loaded from: classes.dex */
public class CommonLoginFragment extends BaseLoginFragment {

    /* renamed from: A */
    public RelativeLayout f2012A;

    /* renamed from: B */
    public Button f2013B;

    /* renamed from: C */
    public boolean f2014C;

    /* renamed from: D */
    public RadioGroup.OnCheckedChangeListener f2015D = new RadioGroup.OnCheckedChangeListener() { // from class: com.huawei.hem.h4
        @Override // android.widget.RadioGroup.OnCheckedChangeListener
        public final void onCheckedChanged(RadioGroup radioGroup, int i) {
            this.f2811a.m1267p(radioGroup, i);
        }
    };

    /* renamed from: q */
    public EditText f2016q;

    /* renamed from: r */
    public TextView f2017r;

    /* renamed from: s */
    public EditText f2018s;

    /* renamed from: t */
    public CheckBox f2019t;

    /* renamed from: u */
    public RadioGroup f2020u;

    /* renamed from: v */
    public RadioButton f2021v;

    /* renamed from: w */
    public RadioButton f2022w;

    /* renamed from: x */
    public TextView f2023x;

    /* renamed from: y */
    public TextView f2024y;

    /* renamed from: z */
    public RelativeLayout f2025z;

    @Override // com.android.launcher3.activity.base.BaseFragment
    /* renamed from: e */
    public int mo1219e() {
        return R.layout.fragment_common_login;
    }

    @Override // com.android.launcher3.fragment.login.BaseLoginFragment, com.android.launcher3.activity.base.BaseFragment
    /* renamed from: f */
    public void mo1220f() {
        super.mo1220f();
        m1266o(this.f1802c.m3032a() == 2);
    }

    @Override // com.android.launcher3.fragment.login.BaseLoginFragment, com.android.launcher3.activity.base.BaseFragment
    /* renamed from: g */
    public void mo1221g(View view) {
        super.mo1221g(view);
        this.f2016q = (EditText) view.findViewById(R.id.user_name);
        this.f2018s = (EditText) view.findViewById(R.id.password);
        CheckBox checkBox = (CheckBox) view.findViewById(R.id.is_save_account);
        this.f2019t = checkBox;
        checkBox.setChecked(this.f1802c.m3024S());
        this.f2020u = (RadioGroup) view.findViewById(R.id.radiogroup);
        this.f2023x = (TextView) view.findViewById(R.id.account_indicator);
        this.f2024y = (TextView) view.findViewById(R.id.sn_indicator);
        this.f2021v = (RadioButton) view.findViewById(R.id.account_select);
        this.f2022w = (RadioButton) view.findViewById(R.id.sn_select);
        this.f2025z = (RelativeLayout) view.findViewById(R.id.account_include);
        this.f2012A = (RelativeLayout) view.findViewById(R.id.sn_include);
        this.f2017r = (TextView) view.findViewById(R.id.sn_text);
        Button button = (Button) view.findViewById(R.id.sn_btn_login);
        this.f2013B = button;
        button.setOnClickListener(this);
        m1264m(this.f2007m);
        this.f2020u.setOnCheckedChangeListener(this.f2015D);
    }

    @Override // com.android.launcher3.fragment.login.BaseLoginFragment
    /* renamed from: n */
    public void mo1265n() {
        String strTrim;
        String strTrim2;
        if (this.f2014C) {
            strTrim = this.f2017r.getText().toString().trim();
            strTrim2 = strTrim;
        } else {
            strTrim = this.f2016q.getText().toString().trim();
            strTrim2 = this.f2018s.getText().toString().trim();
            if (TextUtils.isEmpty(strTrim)) {
                LTKDateUtil.m1415y(this.f1800a, R.string.text_account_is_null);
                return;
            } else if (TextUtils.isEmpty(strTrim2)) {
                LTKDateUtil.m1415y(this.f1800a, R.string.text_password_is_null);
                return;
            }
        }
        if (!this.f2008n.isChecked()) {
            LTKDateUtil.m1415y(this.f1800a, R.string.text_privacytips_before_login);
            return;
        }
        UserInfoUtil c1424y5 = this.f1802c;
        int i = this.f2014C ? 2 : 1;
        if (c1424y5.f4198w0 != i) {
            c1424y5.f4198w0 = i;
            DeskSPF c0824ac = c1424y5.f4130D;
            c0824ac.f2200b.putInt("login_account_type", i);
            c0824ac.f2200b.commit();
        }
        this.f1802c.m3041e0(false);
        NetworkInfo networkInfo = new LauncherNetworkUtil(this.f1800a).f2337a;
        if (networkInfo != null ? networkInfo.isAvailable() : false) {
            LTKDateUtil.m1403m("CommonLoginFragmentparepare to on line login");
            CommonLoginRequestHelper.getInstance().onlineLogin(this.f1800a, strTrim, strTrim2, this.f2019t.isChecked());
            return;
        }
        LTKDateUtil.m1403m("CommonLoginFragmentparepare to on offline login");
        String strM3052k = this.f1802c.m3052k();
        String strM3013H = this.f1802c.m3013H();
        if (!strM3052k.equals(strTrim) || !strM3013H.equals(LTKDateUtil.m1401k(strTrim2))) {
            LTKDateUtil.m1414x(this.f1800a, R.string.text_offline_fail);
            return;
        }
        this.f1802c.m3037c0(1);
        UserInfoUtil c1424y52 = this.f1802c;
        boolean zIsChecked = this.f2008n.isChecked();
        if (c1424y52.f4140N != zIsChecked) {
            DeskSPF c0824ac2 = c1424y52.f4130D;
            c0824ac2.f2200b.putBoolean("agreed_privacy", zIsChecked);
            c0824ac2.f2200b.commit();
            c1424y52.f4140N = zIsChecked;
        }
        UserInfoUtil c1424y53 = this.f1802c;
        boolean zIsChecked2 = this.f2019t.isChecked();
        if (c1424y53.f4181o != zIsChecked2) {
            c1424y53.f4181o = zIsChecked2;
            DeskSPF c0824ac3 = c1424y53.f4130D;
            c0824ac3.f2200b.putBoolean("stu_is_save_account", zIsChecked2);
            c0824ac3.f2200b.commit();
        }
        LauncherMenuHelper.m2974U(this.f1800a, LauncherNew.class);
        ((FragmentActivity) this.f1800a).finish();
        LTKDateUtil.f2294f.enableNavigation();
        DeviceLogHelper.getInstance().recordAccountOfflineLogin();
    }

    /* renamed from: o */
    public final void m1266o(boolean z) {
        if (z) {
            this.f2022w.setChecked(true);
            this.f2024y.setVisibility(0);
            this.f2023x.setVisibility(8);
            this.f2012A.setVisibility(0);
            this.f2025z.setVisibility(8);
            this.f2017r.setText(LauncherDeviceUtils.m1592i());
            return;
        }
        this.f2021v.setChecked(true);
        this.f2024y.setVisibility(8);
        this.f2023x.setVisibility(0);
        this.f2012A.setVisibility(8);
        this.f2025z.setVisibility(0);
        if (!this.f1802c.m3024S() || this.f1802c.m3032a() == 2) {
            return;
        }
        this.f2016q.setText(this.f1802c.m3052k());
    }

    /* renamed from: p */
    public /* synthetic */ void m1267p(RadioGroup radioGroup, int i) {
        boolean z = i == R.id.sn_select;
        this.f2014C = z;
        m1266o(z);
    }
}
