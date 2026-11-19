package com.android.launcher3.activity;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.Switch;
import com.android.launcher3.R;
import com.android.launcher3.activity.base.BaseActivity;
import com.android.launcher3.network.RunningLogHelper;
import com.huawei.hem.LTKDateUtil;
import com.huawei.hem.ViewControlUtil;
import com.huawei.hem.CompilerOutline;
import com.huawei.hem.FileConfig;
import com.huawei.hem.C1395x1;
import com.huawei.hem.LauncherMenuHelper;
import com.huawei.hem.UserInfoUtil;
import java.io.File;

/* loaded from: classes.dex */
public class AdminActivity extends BaseActivity implements View.OnClickListener, CompoundButton.OnCheckedChangeListener {

    /* renamed from: b */
    public Switch f1649b;

    /* renamed from: c */
    public Switch f1650c;

    /* renamed from: d */
    public Button f1651d;

    @Override // com.android.launcher3.activity.base.BaseActivity
    /* renamed from: b */
    public int mo1170b() {
        return R.layout.activity_admin;
    }

    @Override // com.android.launcher3.activity.base.BaseActivity
    /* renamed from: c */
    public void mo1171c() {
        if (LTKDateUtil.f2292d) {
            this.f1649b.setChecked(true);
        } else {
            this.f1649b.setChecked(false);
        }
        this.f1650c.setChecked(UserInfoUtil.b.f4202a.m3016K() == 1);
    }

    @Override // com.android.launcher3.activity.base.BaseActivity
    /* renamed from: e */
    public void mo1172e() {
        this.f1649b = (Switch) findViewById(R.id.desk_log);
        this.f1650c = (Switch) findViewById(R.id.usb_switch);
        this.f1651d = (Button) findViewById(R.id.uploadlog);
        this.f1649b.setOnCheckedChangeListener(this);
        this.f1650c.setOnCheckedChangeListener(this);
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        if (compoundButton != this.f1649b) {
            if (compoundButton == this.f1650c) {
                if (z) {
                    LTKDateUtil.f2294f.enableUsb();
                } else {
                    LTKDateUtil.f2294f.disableUsb();
                }
                UserInfoUtil.b.f4202a.m3071t0(z ? 1 : 0);
                return;
            }
            return;
        }
        if (UserInfoUtil.b.f4202a.m3023R()) {
            LTKDateUtil.m1403m("device is release no need handle");
            return;
        }
        if (!z) {
            LTKDateUtil.m1403m("send  broadcast to appstore for open log");
            LauncherMenuHelper.m2971R(this, "com.ndwill.swd.appstore.log.close");
            LTKDateUtil.m1412v(false);
            LTKDateUtil.m1413w(this, getResources().getString(R.string.close_log_switch), 0);
            this.f1651d.setClickable(true);
            return;
        }
        FileConfig.b bVar = new FileConfig.b(this);
        bVar.f2651e = true;
        bVar.f2649c = new File(CompilerOutline.m1762g(new StringBuilder(), C1395x1.f4038a, "log/")).getAbsolutePath();
        if (TextUtils.isEmpty(bVar.f2650d)) {
            Context context = bVar.f2647a;
            ApplicationInfo applicationInfo = context.getApplicationInfo();
            int i = applicationInfo.labelRes;
            bVar.f2650d = i > 0 ? context.getString(i) : !TextUtils.isEmpty(applicationInfo.nonLocalizedLabel) ? applicationInfo.nonLocalizedLabel.toString() : "App";
        }
        if (bVar.f2651e) {
            if (bVar.f2648b == null) {
                bVar.f2648b = new FileConfig.c();
            }
            if (TextUtils.isEmpty(bVar.f2649c)) {
                File externalFilesDir = bVar.f2647a.getExternalFilesDir("log");
                if (externalFilesDir != null) {
                    bVar.f2649c = externalFilesDir.getAbsolutePath();
                } else {
                    LTKDateUtil.m1393c("failed to resolve default log file directory");
                }
            }
            if (bVar.f2652f <= 0) {
                throw new IllegalArgumentException("max total size must be > 0");
            }
        }
        LTKDateUtil.f2293e = new FileConfig(bVar, null);
        LTKDateUtil.m1403m("send  broadcast to appstore for open log");
        LauncherMenuHelper.m2971R(this, "com.ndwill.swd.appstore.log.open");
        LTKDateUtil.m1412v(true);
        LTKDateUtil.m1413w(this, getResources().getString(R.string.open_log_switch), 0);
        this.f1651d.setClickable(false);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (ViewControlUtil.m1583a(view)) {
        }
        switch (view.getId()) {
            case R.id.admin_lift_restrication /* 2131165216 */:
                Bundle bundle = new Bundle();
                bundle.putInt("action", 2);
                LauncherMenuHelper.m2975V(this, PromptDiaLogActivity.class, bundle);
                break;
            case R.id.admin_reset_factory /* 2131165219 */:
                Bundle bundle2 = new Bundle();
                bundle2.putInt("action", 1);
                LauncherMenuHelper.m2975V(this, PromptDiaLogActivity.class, bundle2);
                break;
            case R.id.license /* 2131165388 */:
                Bundle bundle3 = new Bundle();
                bundle3.putString("from", "admin");
                LauncherMenuHelper.m2975V(this, LicenseActivity.class, bundle3);
                break;
            case R.id.uploadlog /* 2131165551 */:
                RunningLogHelper.UploadRunningLog(this, C1395x1.f4038a + "log/");
                break;
            case R.id.whiteurl_read /* 2131165568 */:
                LauncherMenuHelper.m2974U(this, ReadWebSiteWhiteActivity.class);
                break;
        }
    }
}
