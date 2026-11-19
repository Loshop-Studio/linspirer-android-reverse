package com.android.launcher3.activity.gestrue;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.android.launcher3.R;
import com.android.launcher3.view.GestureLockLayout;
import com.gyf.immersionbar.ImmersionBar;
import com.huawei.hem.C0850bc;
import com.huawei.hem.C0902dc;
import com.huawei.hem.C1149n5;
import com.huawei.hem.C1346v2;
import com.huawei.hem.C1423y4;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public class SettingPwdGestureActivity extends BaseGesturePwdActivity {

    /* renamed from: g */
    public GestureLockLayout f1834g;

    /* renamed from: h */
    public TextView f1835h;

    /* renamed from: i */
    public TextView f1836i;

    /* renamed from: j */
    public GestureLockLayout f1837j;

    /* renamed from: k */
    public EditText f1838k;

    /* renamed from: l */
    public LinearLayout f1839l;

    /* renamed from: m */
    public LinearLayout f1840m;

    /* renamed from: n */
    public TextView f1841n;

    @Override // com.android.launcher3.activity.base.BaseActivity
    /* renamed from: b */
    public int mo1170b() {
        return R.layout.activity_setting_gesture_pwd;
    }

    @Override // com.android.launcher3.activity.base.BaseActivity
    /* renamed from: c */
    public void mo1171c() {
        Bundle extras = getIntent().getExtras();
        if (extras == null || !extras.containsKey("settings_type")) {
            this.f1841n.setText(R.string.text_settings_gestrue_pwd);
            this.f1839l.setVisibility(4);
            this.f1840m.setVisibility(0);
            return;
        }
        int i = extras.getInt("settings_type", 0);
        if (i == 0) {
            this.f1841n.setText(R.string.text_settings_gestrue_pwd);
            this.f1839l.setVisibility(4);
            this.f1840m.setVisibility(0);
            return;
        }
        if (i == 1) {
            this.f1841n.setText(R.string.text_gesture_reset_password);
            this.f1839l.setVisibility(0);
            this.f1840m.setVisibility(4);
            if (this.f1815d.m3032a() == 2) {
                this.f1838k.setHint(R.string.input_admin_pwd);
                return;
            }
            return;
        }
        if (i == 2) {
            this.f1841n.setText(R.string.text_gesture_cancel_itself);
            this.f1835h.setText(getString(R.string.text_gesture_before_cancel_password_confirm));
            this.f1836i.setVisibility(8);
            this.f1840m.setVisibility(0);
            this.f1839l.setVisibility(8);
            this.f1837j.switchToCheckMode(m1225h(m1224g()), 10000);
        }
    }

    @Override // com.android.launcher3.activity.base.BaseActivity
    /* renamed from: d */
    public void mo1174d() {
        ImmersionBar.with(this).statusBarColor(R.color.general_theme_bg_color).navigationBarColor(R.color.color_343F50).init();
    }

    @Override // com.android.launcher3.activity.gestrue.BaseGesturePwdActivity, com.android.launcher3.activity.base.BaseActivity
    /* renamed from: e */
    public void mo1172e() {
        super.mo1172e();
        if (C1149n5.m2405a() == null) {
            throw null;
        }
        C1149n5.f3287a.add(new WeakReference<>(this));
        this.f1841n = (TextView) findViewById(R.id.gesture_activity_title);
        this.f1835h = (TextView) findViewById(R.id.text_settings_gesture_tips);
        this.f1837j = (GestureLockLayout) findViewById(R.id.layout_parent);
        this.f1834g = (GestureLockLayout) findViewById(R.id.layout_small);
        this.f1839l = (LinearLayout) findViewById(R.id.pwd_login_layout);
        this.f1838k = (EditText) findViewById(R.id.input_login_pwd);
        this.f1836i = (TextView) findViewById(R.id.text_redraw);
        this.f1840m = (LinearLayout) findViewById(R.id.gesture_layout);
        this.f1837j.setGestureFinishedCallback(new C1346v2(this));
        this.f1837j.switchToResetMode();
    }

    public void onClick(View view) {
        if (C0902dc.m1583a(view)) {
            return;
        }
        int id = view.getId();
        if (id == R.id.back_key) {
            onBackPressed();
            return;
        }
        if (id != R.id.check_login_pwd) {
            if (id != R.id.text_redraw) {
                return;
            }
            this.f1837j.initCurrentTimes();
            this.f1836i.setVisibility(4);
            this.f1834g.refreshPwdKeyboard(null);
            this.f1835h.setText(getString(R.string.text_gesture_draw_again));
            return;
        }
        String string = this.f1838k.getText().toString();
        if (TextUtils.isEmpty(string)) {
            C0850bc.m1413w(this, getResources().getString(R.string.text_gesture_input_password_for_null), 0);
        } else if (!C0850bc.m1401k(string).equals(this.f1815d.m3013H()) && !string.equals(C1423y4.m2957D())) {
            C0850bc.m1413w(this, getResources().getString(R.string.text_gesture_wrong_password_input_again), 0);
        } else {
            this.f1840m.setVisibility(0);
            this.f1839l.setVisibility(8);
        }
    }

    @Override // com.android.launcher3.activity.base.BaseActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        if (C1149n5.m2405a() == null) {
            throw null;
        }
        C1149n5.f3287a.remove(new WeakReference(this));
    }
}
