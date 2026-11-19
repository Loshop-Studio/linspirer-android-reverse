package com.android.launcher3.activity.gestrue;

// RE note 本类字节码直接引用的读写或显示接口包括JSON。

import android.os.Build;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.alibaba.fastjson.JSON;
import com.android.launcher3.R;
import com.android.launcher3.model.UserInfo;
import com.android.launcher3.network.RequestUrl;
import com.android.launcher3.network.params.LoginParams;
import com.android.launcher3.network.params.V2Params;
import com.android.launcher3.view.DialogUtil;
import com.android.launcher3.view.GestureLockLayout;
import com.gyf.immersionbar.ImmersionBar;
import com.huawei.hem.LTKDateUtil;
import com.huawei.hem.LauncherNetworkUtil;
import com.huawei.hem.LauncherDeviceUtils;
import com.huawei.hem.CheckPwdGestureActivityGestureCallback;
import com.huawei.hem.HttpCore;
import com.huawei.hem.CheckPwdGestureActivityResponseListener;
import com.huawei.hem.PostBuilder;
import com.huawei.hem.LauncherMenuHelper;
import com.huawei.hem.UserInfoUtil;
import com.huawei.hem.GestureSubmitClickListener;
import com.huawei.hem.GestureLoginModeClickListener;
import com.huawei.hem.GestureAdminModeClickListener;

/* loaded from: classes.dex */
public class CheckPwdGestureActivity extends BaseGesturePwdActivity {

    /* renamed from: g */
    public TextView f1818g;

    /* renamed from: h */
    public TextView f1819h;

    /* renamed from: i */
    public GestureLockLayout f1820i;

    /* renamed from: j */
    public EditText f1821j;

    /* renamed from: k */
    public LinearLayout f1822k;

    /* renamed from: l */
    public LinearLayout f1823l;

    /* renamed from: m */
    public Button f1824m;

    /* renamed from: n */
    public View f1825n;

    /* renamed from: o */
    public UserInfoUtil f1826o;

    /* renamed from: p */
    public boolean f1827p = true;

    /* renamed from: q */
    public boolean f1828q = false;

    /* renamed from: r */
    public TextView f1829r;

    /* renamed from: s */
    public TextView f1830s;

    /* renamed from: t */
    public String f1831t;

    /* renamed from: u */
    public String f1832u;

    /* renamed from: v */
    public HttpCore f1833v;

    @Override // com.android.launcher3.activity.base.BaseActivity
    /* renamed from: b */
    public int mo1170b() {
        return R.layout.layout_check_gesture_pwd;
    }

    @Override // com.android.launcher3.activity.base.BaseActivity
    /* renamed from: c */
    public void mo1171c() {
        this.f1821j.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.huawei.hem.p2
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                return this.f3422a.m1228k(textView, i, keyEvent);
            }
        });
    }

    @Override // com.android.launcher3.activity.base.BaseActivity
    /* renamed from: d */
    public void mo1174d() {
        ImmersionBar.with(this).transparentStatusBar().statusBarDarkFont(true).navigationBarColor(R.color.color_343F50).init();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (4 != keyEvent.getKeyCode()) {
            return super.dispatchKeyEvent(keyEvent);
        }
        if (this.f1827p) {
            LTKDateUtil.m1413w(this, getResources().getString(R.string.text_gesture_draw_password), 0);
            return true;
        }
        LTKDateUtil.m1413w(this, getResources().getString(R.string.please_enter_dynamic_password), 0);
        return true;
    }

    @Override // com.android.launcher3.activity.gestrue.BaseGesturePwdActivity, com.android.launcher3.activity.base.BaseActivity
    /* renamed from: e */
    public void mo1172e() {
        super.mo1172e();
        this.f1833v = new HttpCore();
        UserInfoUtil c1424y5 = UserInfoUtil.b.f4202a;
        this.f1826o = c1424y5;
        this.f1831t = c1424y5.m3074v();
        this.f1832u = this.f1826o.m3052k();
        this.f1826o.m3026U(true);
        this.f1818g = (TextView) findViewById(R.id.tv_go);
        this.f1819h = (TextView) findViewById(R.id.login_pwd);
        this.f1829r = (TextView) findViewById(R.id.user_name);
        this.f1830s = (TextView) findViewById(R.id.admin_login);
        this.f1823l = (LinearLayout) findViewById(R.id.admin_login_layout);
        this.f1820i = (GestureLockLayout) findViewById(R.id.layout_parent);
        this.f1822k = (LinearLayout) findViewById(R.id.pwd_login_layout);
        this.f1821j = (EditText) findViewById(R.id.input_login_pwd);
        this.f1824m = (Button) findViewById(R.id.check_login_pwd);
        this.f1825n = findViewById(R.id.divider);
        this.f1829r.setText(this.f1831t);
        CheckPwdGestureActivityGestureCallback c1221q2 = new CheckPwdGestureActivityGestureCallback(this);
        this.f1824m.setOnClickListener(new GestureSubmitClickListener(this));
        this.f1819h.setOnClickListener(new GestureLoginModeClickListener(this));
        this.f1830s.setOnClickListener(new GestureAdminModeClickListener(this));
        this.f1820i.setGestureFinishedCallback(c1221q2);
        this.f1820i.switchToCheckMode(m1225h(m1224g()), 1000);
    }

    /* renamed from: k */
    public /* synthetic */ boolean m1228k(TextView textView, int i, KeyEvent keyEvent) {
        if (i != 6) {
            return false;
        }
        m1229l();
        return false;
    }

    /* renamed from: l */
    public final void m1229l() {
        String string = this.f1821j.getText().toString();
        if (TextUtils.isEmpty(string)) {
            LTKDateUtil.m1413w(this, getString(R.string.text_gesture_input_password_for_null), 0);
            return;
        }
        if (this.f1828q) {
            if (!LauncherMenuHelper.m2957D().equals(string)) {
                LTKDateUtil.m1413w(this, getResources().getString(R.string.text_gesture_wrong_password_input_again), 0);
                return;
            }
            this.f1826o.m3026U(false);
            LTKDateUtil.f2294f.enableRecent();
            LTKDateUtil.f2294f.enableHome();
            finish();
            return;
        }
        if (!TextUtils.isEmpty("com.zykj.manage")) {
            if (!LauncherMenuHelper.m2957D().equals(string)) {
                LTKDateUtil.m1413w(this, getResources().getString(R.string.text_gesture_wrong_password_input_again), 0);
                return;
            }
            this.f1826o.m3026U(false);
            LTKDateUtil.f2294f.enableRecent();
            LTKDateUtil.f2294f.enableHome();
            finish();
            return;
        }
        if (!new LauncherNetworkUtil(this).m1505a()) {
            LTKDateUtil.m1403m("CheckPwdGestureActivity -- check local StuLoginPassword .");
            if (!LTKDateUtil.m1401k(string).equals(this.f1826o.m3013H())) {
                LTKDateUtil.m1413w(this, getResources().getString(R.string.text_gesture_wrong_password_input_again), 0);
                return;
            }
            this.f1826o.m3026U(false);
            LTKDateUtil.f2294f.enableRecent();
            LTKDateUtil.f2294f.enableHome();
            finish();
            return;
        }
        String str = this.f1832u;
        if (UserInfoUtil.b.f4202a.m3023R()) {
            return;
        }
        DialogUtil.showDialog(this, getString(R.string.waiting_for_checking));
        try {
            V2Params v2Params = new V2Params();
            LoginParams loginParams = new LoginParams(this);
            loginParams.setEmail(str);
            loginParams.setPassword(string);
            loginParams.setAppstore_version(LTKDateUtil.m1398h("com.ndwill.swd.appstore", this));
            loginParams.setLauncher_version(LTKDateUtil.m1398h("com.android.launcher3", this));
            loginParams.setRom_version(Build.DISPLAY);
            loginParams.setSn(LauncherDeviceUtils.m1592i());
            loginParams.setAndroid_id(LauncherDeviceUtils.m1586c(this));
            loginParams.setRom_version(Build.DISPLAY);
            v2Params.setMethod(RequestUrl.LOGIN_METHOD);
            v2Params.setParams(JSON.toJSONString(loginParams));
            HttpCore c1255rb = this.f1833v;
            if (c1255rb == null) {
                throw null;
            }
            PostBuilder c1355vb = new PostBuilder(c1255rb);
            c1355vb.f3777a = RequestUrl.URL;
            c1355vb.f3947e = JSON.toJSONString(v2Params);
            c1355vb.m2869b(new CheckPwdGestureActivityResponseListener(this, UserInfo.class));
        } catch (Exception e) {
            DialogUtil.hideDialog();
            e.printStackTrace();
            LTKDateUtil.m1413w(this, getString(R.string.check_password_failed), 0);
        }
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        LTKDateUtil.f2294f.disableHome();
        LTKDateUtil.f2294f.disableRecent();
        this.f1820i.requestLayout();
        this.f1827p = true;
        this.f1828q = false;
        this.f1819h.setVisibility(8);
        this.f1825n.setVisibility(8);
    }
}
