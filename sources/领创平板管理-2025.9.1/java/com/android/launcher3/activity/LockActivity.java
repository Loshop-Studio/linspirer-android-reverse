package com.android.launcher3.activity;

// RE note 本类字节码直接引用的读写或显示接口包括偏好设置。

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.widget.EditText;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.android.launcher3.R;
import com.android.launcher3.activity.base.BaseActivity;
import com.huawei.hem.C0850bc;
import com.huawei.hem.C0878ce;
import com.huawei.hem.C0902dc;
import com.huawei.hem.C0904de;
import com.huawei.hem.C1395x1;
import com.huawei.hem.C1423y4;
import com.huawei.hem.C1424y5;
import com.huawei.hem.InterfaceC1030ic;

/* loaded from: classes.dex */
public class LockActivity extends BaseActivity {

    /* renamed from: i */
    public static boolean f1751i = false;

    /* renamed from: b */
    public EditText f1752b;

    /* renamed from: c */
    public TextView f1753c;

    /* renamed from: d */
    public TextView f1754d;

    /* renamed from: e */
    public C1424y5 f1755e;

    /* renamed from: f */
    public long f1756f = 0;

    /* renamed from: g */
    public int f1757g = 1;

    /* renamed from: h */
    public BroadcastReceiver f1758h = new C0638a();

    /* renamed from: com.android.launcher3.activity.LockActivity$a */
    public class C0638a extends BroadcastReceiver {
        public C0638a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent == null || intent.getAction() == null) {
                return;
            }
            String action = intent.getAction();
            C0850bc.m1403m("LockActivity receive close lock activity");
            if (action.equals("com.linspirer.close.violation")) {
                if (!"0000".equals(LockActivity.this.f1755e.m3062p())) {
                    LockActivity.this.m1202h();
                    C0850bc.m1403m("LockActivity has  locked status no clear ");
                } else {
                    C0850bc.m1403m("LockActivity has no locked status need hide activity");
                    LockActivity.this.m1200f();
                    LockActivity.f1751i = false;
                    LockActivity.this.finish();
                }
            }
        }
    }

    @Override // com.android.launcher3.activity.base.BaseActivity
    /* renamed from: b */
    public int mo1170b() {
        requestWindowFeature(1);
        getWindow().setFlags(1024, 1024);
        getWindow().addFlags(67108864);
        getWindow().addFlags(134217728);
        return R.layout.activity_lock;
    }

    @Override // com.android.launcher3.activity.base.BaseActivity
    @SuppressLint({"StringFormatMatches"})
    /* renamed from: c */
    public void mo1171c() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.linspirer.close.violation");
        registerReceiver(this.f1758h, intentFilter);
        this.f1755e = C1424y5.b.f4202a;
        this.f1754d.setText(String.format(getResources().getString(R.string.info), C0904de.m1592i(), C0904de.m1588e(this)));
    }

    @Override // com.android.launcher3.activity.base.BaseActivity
    /* renamed from: e */
    public void mo1172e() {
        this.f1799a = (RelativeLayout) findViewById(R.id.net_set);
        this.f1752b = (EditText) findViewById(R.id.pwd);
        this.f1753c = (TextView) findViewById(R.id.lock_tip);
        this.f1754d = (TextView) findViewById(R.id.info);
        this.f1752b.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.huawei.hem.c2
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                return this.f2317a.m1201g(textView, i, keyEvent);
            }
        });
    }

    /* renamed from: f */
    public final void m1200f() {
        if (C0850bc.f2294f == null || !f1751i) {
            return;
        }
        C1424y5 c1424y5 = this.f1755e;
        if (c1424y5.f4191t == 0) {
            c1424y5.f4191t = c1424y5.f4130D.f2199a.getInt("disable_back", 0);
        }
        if (c1424y5.f4191t != 1) {
            C0850bc.m1403m("LockActivity enable back by lock activity");
            C0850bc.f2294f.enableBack();
        }
        if (this.f1755e.m3019N() == 1) {
            if (this.f1755e.m3048i() != 1) {
                C0850bc.m1403m("LockActivity enable home by lock activity");
                C0850bc.f2294f.enableHome();
            }
            if (this.f1755e.m3050j() != 1) {
                C0850bc.m1403m("LockActivity enable recent by lock activity");
                C0850bc.f2294f.enableRecent();
            }
        }
    }

    /* renamed from: g */
    public /* synthetic */ boolean m1201g(TextView textView, int i, KeyEvent keyEvent) {
        if (i != 6) {
            return false;
        }
        m1203i();
        return false;
    }

    /* renamed from: h */
    public final void m1202h() {
        String strM3062p = this.f1755e.m3062p();
        if (strM3062p.equals("0001")) {
            this.f1753c.setText(getResources().getString(R.string.internal_storage_overflow_warm));
            return;
        }
        if (strM3062p.equals("1000")) {
            this.f1753c.setText(getResources().getString(R.string.tactics_time_lock_tip));
            return;
        }
        if (strM3062p.equals("0100")) {
            this.f1753c.setText(getResources().getString(R.string.illegal_lock_tip));
        } else if (strM3062p.equals("0010")) {
            this.f1753c.setText(getResources().getString(R.string.admin_lock_tip));
        } else {
            this.f1753c.setText(getResources().getString(R.string.lock_tip));
        }
    }

    /* renamed from: i */
    public final void m1203i() {
        String strTrim = this.f1752b.getText().toString().trim();
        if (TextUtils.isEmpty(strTrim)) {
            C0850bc.m1413w(this, getResources().getString(R.string.input_admin_pwd), 0);
            return;
        }
        if (!strTrim.equals(C1423y4.m2957D())) {
            C0850bc.m1413w(this, getResources().getString(R.string.input_admin_pwd_error), 0);
            return;
        }
        C1395x1.f4040c = -1;
        this.f1755e.m3039d0(10000, false);
        m1200f();
        finish();
    }

    public void onClick(View view) {
        if (view.getId() != R.id.admin_click) {
            if (C0902dc.m1583a(view)) {
                return;
            }
            if (view.getId() != R.id.net_icon && view.getId() != R.id.net_text) {
                if (view.getId() == R.id.btn_login) {
                    m1203i();
                    return;
                }
                return;
            } else {
                if (C0878ce.m1524q()) {
                    C0850bc.f2294f.enableNavigation();
                    C0850bc.f2294f.disableRecent();
                    C0850bc.f2294f.disableHome();
                } else {
                    C0850bc.f2294f.enableBack();
                }
                C1423y4.m2979Z(this);
                return;
            }
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j = jCurrentTimeMillis - this.f1756f;
        this.f1756f = jCurrentTimeMillis;
        if (j <= 500) {
            this.f1757g++;
        } else {
            this.f1757g = 1;
        }
        if (this.f1757g == 7) {
            if (C0904de.m1589f().equals("Lenovo TB-8X04F")) {
                C0850bc.f2294f.enableHome();
                C0850bc.f2294f.enableBack();
                C0850bc.f2294f.enableVolume();
                C0850bc.f2294f.enableShortPressPower();
            } else {
                C0850bc.f2294f.enableNavigation();
                C0850bc.f2294f.disableRecent();
            }
            C1423y4.m2974U(this, AdminLoginActivity.class);
        }
    }

    @Override // com.android.launcher3.activity.base.BaseActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        C0850bc.m1403m("LockActivity onDestroy");
        f1751i = false;
        unregisterReceiver(this.f1758h);
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        f1751i = true;
        InterfaceC1030ic interfaceC1030ic = C0850bc.f2294f;
        if (interfaceC1030ic != null) {
            interfaceC1030ic.disableBack();
            C0850bc.f2294f.disableHome();
            C0850bc.f2294f.disableRecent();
        }
        m1202h();
        C0850bc.m1403m("LockActivity onResume");
    }
}
