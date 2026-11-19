package com.android.launcher3.activity;

import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import android.support.v7.widget.TooltipCompatHandler;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.android.launcher3.R;
import com.android.launcher3.activity.base.BaseActivity;
import com.android.launcher3.network.LicenseHelper;
import com.android.launcher3.view.DialogUtil;
import com.huawei.hem.LTKDateUtil;
import com.huawei.hem.DeviceTypeUtil;
import com.huawei.hem.ViewControlUtil;
import com.huawei.hem.LauncherDeviceUtils;
import com.huawei.hem.C1095l2;
import com.huawei.hem.LauncherMenuHelper;
import com.huawei.hem.UserInfoUtil;
import com.huawei.hem.CountDownTimerC1121m2;

/* loaded from: classes.dex */
public class LicenseActivity extends BaseActivity {

    /* renamed from: b */
    public TextView f1740b;

    /* renamed from: c */
    public TextView f1741c;

    /* renamed from: d */
    public TextView f1742d;

    /* renamed from: e */
    public TextView f1743e;

    /* renamed from: f */
    public Button f1744f;

    /* renamed from: g */
    public String f1745g;

    /* renamed from: h */
    public String f1746h;

    /* renamed from: i */
    public LicenseHelper f1747i;

    /* renamed from: j */
    public int f1748j = 3;

    /* renamed from: k */
    public Handler f1749k = new HandlerC0637a();

    /* renamed from: com.android.launcher3.activity.LicenseActivity$a */
    public class HandlerC0637a extends Handler {
        public HandlerC0637a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            LicenseActivity.this.m1199h();
        }
    }

    /* renamed from: g */
    public static void m1198g(LicenseActivity licenseActivity) {
        if (licenseActivity == null) {
            throw null;
        }
        DialogUtil.hideDialog();
        LTKDateUtil.m1413w(licenseActivity, licenseActivity.getResources().getString(R.string.license_check_error_note), 0);
        LTKDateUtil.m1403m(" checking license is failling , confirm it please ." + licenseActivity.f1748j);
        int i = licenseActivity.f1748j;
        if (i > 0) {
            licenseActivity.f1748j = i - 1;
            licenseActivity.f1749k.sendEmptyMessageDelayed(0, 2000L);
        } else {
            licenseActivity.f1744f.setText(R.string.submit);
            licenseActivity.f1744f.setEnabled(true);
        }
    }

    @Override // com.android.launcher3.activity.base.BaseActivity
    /* renamed from: b */
    public int mo1170b() {
        return R.layout.license_activity;
    }

    @Override // com.android.launcher3.activity.base.BaseActivity
    /* renamed from: c */
    public void mo1171c() {
        this.f1741c.setText(LauncherDeviceUtils.m1589f());
        this.f1743e.setText(LauncherDeviceUtils.m1593j(this));
        this.f1742d.setText(LauncherDeviceUtils.m1592i());
        LicenseHelper licenseHelper = LicenseHelper.getInstance();
        this.f1747i = licenseHelper;
        licenseHelper.setCallBack(new C1095l2(this));
        String strM3072u = UserInfoUtil.b.f4202a.m3072u();
        this.f1746h = strM3072u;
        if (TextUtils.isEmpty(strM3072u)) {
            this.f1746h = DeviceTypeUtil.m1521n() || DeviceTypeUtil.m1519l() || DeviceTypeUtil.m1510c() || DeviceTypeUtil.m1514g(LauncherDeviceUtils.m1589f()) ? "CC78E3BB-51E1-F252-BA5F-AC049BF4D862" : "7CF82AF3-2B31-775B-6A46-2C889C732300";
        }
        this.f1740b.setText(this.f1746h);
        Intent intent = getIntent();
        if (intent != null && intent.hasExtra("from")) {
            this.f1745g = intent.getExtras().getString("from");
        }
        if ("admin".equals(this.f1745g)) {
            return;
        }
        this.f1744f.setText("3 秒");
        this.f1744f.setEnabled(false);
        new CountDownTimerC1121m2(this, TooltipCompatHandler.HOVER_HIDE_TIMEOUT_SHORT_MS, 1000L).start();
    }

    @Override // com.android.launcher3.activity.base.BaseActivity
    /* renamed from: e */
    public void mo1172e() {
        this.f1799a = (RelativeLayout) findViewById(R.id.netset);
        this.f1740b = (TextView) findViewById(R.id.license);
        this.f1741c = (TextView) findViewById(R.id.model);
        this.f1742d = (TextView) findViewById(R.id.f1646sn);
        this.f1743e = (TextView) findViewById(R.id.mac);
        this.f1744f = (Button) findViewById(R.id.submit);
    }

    /* renamed from: h */
    public final void m1199h() {
        if (TextUtils.isEmpty(this.f1746h)) {
            LTKDateUtil.m1413w(this, getString(R.string.input_license), 0);
            this.f1744f.setText(getString(R.string.input_license));
            this.f1744f.setEnabled(true);
        } else {
            this.f1744f.setText(getString(R.string.checking_license));
            DialogUtil.showDialog(this, getString(R.string.checking_license));
            this.f1747i.startRegisterLicense(this.f1746h);
        }
    }

    public void onClick(View view) {
        if (ViewControlUtil.m1583a(view)) {
        }
        switch (view.getId()) {
            case R.id.back_image /* 2131165237 */:
            case R.id.back_text /* 2131165239 */:
                finish();
                break;
            case R.id.netset /* 2131165431 */:
                if (!"admin".equals(this.f1745g)) {
                    LTKDateUtil.f2294f.enableBack();
                }
                LauncherMenuHelper.m2979Z(this);
                break;
            case R.id.submit /* 2131165518 */:
                m1199h();
                break;
        }
    }

    @Override // com.android.launcher3.activity.base.BaseActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        if ("admin".equals(this.f1745g)) {
            return;
        }
        LTKDateUtil.f2294f.enableHome();
        LTKDateUtil.f2294f.enableBack();
        LTKDateUtil.f2294f.enableRecent();
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        if ("admin".equals(this.f1745g)) {
            return;
        }
        LTKDateUtil.f2294f.disableRecent();
        LTKDateUtil.f2294f.disableHome();
        LTKDateUtil.f2294f.disableBack();
    }
}
