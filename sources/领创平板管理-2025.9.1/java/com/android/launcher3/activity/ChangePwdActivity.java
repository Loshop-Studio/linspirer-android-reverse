package com.android.launcher3.activity;

// RE note 本类字节码直接引用的读写或显示接口包括JSON。

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.alibaba.fastjson.JSON;
import com.android.launcher3.R;
import com.android.launcher3.activity.base.BaseActivity;
import com.android.launcher3.network.RequestUrl;
import com.android.launcher3.network.params.ChangePwdParams;
import com.android.launcher3.network.params.V2Params;
import com.android.launcher3.view.DialogUtil;
import com.gyf.immersionbar.ImmersionBar;
import com.huawei.hem.C0850bc;
import com.huawei.hem.C0876cc;
import com.huawei.hem.C0902dc;
import com.huawei.hem.C0948f6;
import com.huawei.hem.C1020i2;
import com.huawei.hem.C1255rb;
import com.huawei.hem.C1355vb;
import com.huawei.hem.C1423y4;
import com.huawei.hem.C1424y5;

/* loaded from: classes.dex */
public class ChangePwdActivity extends BaseActivity implements View.OnClickListener {

    /* renamed from: b */
    public EditText f1660b;

    /* renamed from: c */
    public Button f1661c;

    /* renamed from: d */
    public Context f1662d;

    /* renamed from: e */
    public C1424y5 f1663e;

    /* renamed from: f */
    public EditText f1664f;

    /* renamed from: g */
    public EditText f1665g;

    /* renamed from: h */
    public RelativeLayout f1666h;

    /* renamed from: i */
    public C1255rb f1667i;

    /* renamed from: com.android.launcher3.activity.ChangePwdActivity$a */
    public class ViewOnTouchListenerC0628a implements View.OnTouchListener {

        /* renamed from: a */
        public final /* synthetic */ EditText f1668a;

        public ViewOnTouchListenerC0628a(EditText editText) {
            this.f1668a = editText;
        }

        @Override // android.view.View.OnTouchListener
        @SuppressLint({"ClickableViewAccessibility"})
        public boolean onTouch(View view, MotionEvent motionEvent) throws Resources.NotFoundException {
            if (this.f1668a.getCompoundDrawables()[2] != null && motionEvent.getAction() == 1 && motionEvent.getX() > (this.f1668a.getWidth() - this.f1668a.getPaddingRight()) - r5.getIntrinsicWidth()) {
                Drawable drawable = ChangePwdActivity.this.getResources().getDrawable(R.drawable.pwd);
                drawable.setBounds(drawable.getMinimumWidth(), drawable.getMinimumHeight(), 0, 0);
                if (129 == this.f1668a.getInputType()) {
                    this.f1668a.setInputType(145);
                    Drawable drawable2 = ChangePwdActivity.this.getResources().getDrawable(R.drawable.pwd_visible);
                    drawable2.setBounds(0, 0, drawable2.getMinimumWidth(), drawable2.getMinimumHeight());
                    this.f1668a.setCompoundDrawablesWithIntrinsicBounds(drawable, (Drawable) null, drawable2, (Drawable) null);
                } else {
                    this.f1668a.setInputType(129);
                    Drawable drawable3 = ChangePwdActivity.this.getResources().getDrawable(R.drawable.pwd_invisible);
                    drawable3.setBounds(0, 0, drawable3.getMinimumWidth(), drawable3.getMinimumHeight());
                    this.f1668a.setCompoundDrawablesWithIntrinsicBounds(drawable, (Drawable) null, drawable3, (Drawable) null);
                }
            }
            return false;
        }
    }

    @Override // com.android.launcher3.activity.base.BaseActivity
    /* renamed from: b */
    public int mo1170b() {
        getWindow().setSoftInputMode(16);
        return R.layout.activity_change_pwd;
    }

    @Override // com.android.launcher3.activity.base.BaseActivity
    /* renamed from: d */
    public void mo1174d() {
        ImmersionBar.with(this).statusBarColor(R.color.general_theme_bg_color).navigationBarColor(R.color.color_343F50).init();
    }

    @Override // com.android.launcher3.activity.base.BaseActivity
    /* renamed from: e */
    public void mo1172e() {
        this.f1662d = this;
        this.f1660b = (EditText) findViewById(R.id.old_pwd);
        this.f1664f = (EditText) findViewById(R.id.new_pwd);
        this.f1665g = (EditText) findViewById(R.id.confirm_pwd);
        this.f1661c = (Button) findViewById(R.id.bt_confirm_pwd);
        this.f1666h = (RelativeLayout) findViewById(R.id.rv_back);
        this.f1663e = C1424y5.b.f4202a;
        this.f1661c.setOnClickListener(this);
        this.f1666h.setOnClickListener(this);
        m1177f(this.f1660b);
        m1177f(this.f1664f);
        m1177f(this.f1665g);
        this.f1667i = new C1255rb();
    }

    @SuppressLint({"ClickableViewAccessibility"})
    /* renamed from: f */
    public final void m1177f(EditText editText) {
        editText.setOnTouchListener(new ViewOnTouchListenerC0628a(editText));
    }

    /* renamed from: g */
    public final void m1178g(String str) {
        View viewInflate = getLayoutInflater().inflate(R.layout.toast_tips, (ViewGroup) null);
        ((TextView) viewInflate.findViewById(R.id.remind_msg)).setText(str);
        Toast toast = new Toast(getApplicationContext());
        toast.setGravity(17, (int) getResources().getDimension(R.dimen.dp_2), -((int) getResources().getDimension(R.dimen.dp_44)));
        toast.setDuration(1);
        toast.setView(viewInflate);
        toast.show();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (C0902dc.m1583a(view)) {
            return;
        }
        int id = view.getId();
        if (id != R.id.bt_confirm_pwd) {
            if (id != R.id.rv_back) {
                return;
            }
            finish();
            return;
        }
        String strTrim = this.f1660b.getText().toString().trim();
        String strTrim2 = this.f1664f.getText().toString().trim();
        String strTrim3 = this.f1665g.getText().toString().trim();
        if (TextUtils.isEmpty(strTrim)) {
            m1178g(getString(R.string.input_old_pwd));
            return;
        }
        if (!C0850bc.m1401k(strTrim).equals(this.f1663e.m3013H())) {
            m1178g(getString(R.string.old_pwd_error));
            return;
        }
        if (strTrim2.length() < 6) {
            m1178g(getString(R.string.new_pwd_length_error));
            return;
        }
        if (strTrim.equals(strTrim2)) {
            m1178g(getString(R.string.old_pwd__cannot_be_same));
            return;
        }
        if (!strTrim3.equals(strTrim2)) {
            m1178g(getString(R.string.pwd_not_same));
            return;
        }
        if (!new C0876cc(this).m1505a()) {
            m1178g(getString(R.string.network_unable_note));
            return;
        }
        if (C1423y4.m3004y()) {
            DialogUtil.showDialog(this.f1662d, getString(R.string.update_pwd_now));
            try {
                V2Params v2Params = new V2Params();
                ChangePwdParams changePwdParams = new ChangePwdParams(this.f1662d);
                changePwdParams.setEmail(this.f1663e.m3052k());
                changePwdParams.setOldpassword(strTrim);
                changePwdParams.setPassword(strTrim2);
                v2Params.setMethod(RequestUrl.UPDATE_PWD_METHOD);
                v2Params.setParams(JSON.toJSONString(changePwdParams));
                C1255rb c1255rb = this.f1667i;
                if (c1255rb == null) {
                    throw null;
                }
                C1355vb c1355vb = new C1355vb(c1255rb);
                c1355vb.f3777a = RequestUrl.URL;
                c1355vb.f3947e = JSON.toJSONString(v2Params);
                c1355vb.m2869b(new C1020i2(this, Boolean.class));
            } catch (Throwable th) {
                DialogUtil.hideDialog();
                Toast.makeText(this.f1662d, getString(R.string.pwd_modify_fail), 0).show();
                StringBuilder sb = new StringBuilder();
                sb.append("ChangePwdActivity ---request url change_pwd error:");
                C0948f6.m1745C(th, sb);
            }
        }
    }
}
