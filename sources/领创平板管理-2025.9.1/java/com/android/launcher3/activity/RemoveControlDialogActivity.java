package com.android.launcher3.activity;

import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.android.launcher3.R;
import com.android.launcher3.activity.base.BaseActivity;
import com.android.launcher3.network.ControlHelper;
import com.android.launcher3.view.DialogUtil;
import com.huawei.hem.LTKDateUtil;
import com.huawei.hem.LauncherMenuHelper;
import com.huawei.hem.DownLoadBrowserListener;
import java.io.File;
import java.util.Timer;

/* loaded from: classes.dex */
public class RemoveControlDialogActivity extends BaseActivity implements View.OnClickListener {

    /* renamed from: b */
    public String f1786b;

    /* renamed from: c */
    public int f1787c;

    /* renamed from: d */
    public int f1788d;

    /* renamed from: e */
    public TextView f1789e;

    /* renamed from: f */
    public Button f1790f;

    /* renamed from: g */
    public Button f1791g;

    /* renamed from: h */
    public DownLoadBrowserListener f1792h = new ControlRemovalDownloadCallback();

    /* renamed from: com.android.launcher3.activity.RemoveControlDialogActivity$a */
    public class ControlRemovalDownloadCallback implements DownLoadBrowserListener {
        public ControlRemovalDownloadCallback() {
        }

        /* renamed from: a */
        public /* synthetic */ void m1211a() {
            LTKDateUtil.m1403m("RemoveControlDialogActivity  downLoadFail");
            RemoveControlDialogActivity.this.m1210g(3);
        }

        /* renamed from: b */
        public /* synthetic */ void m1212b() {
            RemoveControlDialogActivity.this.m1210g(7);
        }
    }

    @Override // com.android.launcher3.activity.base.BaseActivity
    /* renamed from: b */
    public int mo1170b() {
        return R.layout.activity_prompt_dia_log;
    }

    @Override // com.android.launcher3.activity.base.BaseActivity
    /* renamed from: c */
    public void mo1171c() {
        boolean z = false;
        setFinishOnTouchOutside(false);
        m1210g(1);
        this.f1786b = "http://download1.linspirer.com/download?filename=/uploads/firefoxlite_releasecontrol.apk";
        try {
            getPackageManager().getPackageInfo("com.android.browser", 1);
            z = true;
        } catch (Throwable unused) {
        }
        if (z) {
            LTKDateUtil.f2294f.mo1331y0("com.android.browser");
            ControlHelper.getInstance().handleOtherRelease();
            this.f1791g.setTag(R.id.defini, 5);
        } else {
            m1210g(2);
            this.f1787c++;
            LauncherMenuHelper.m2958E(this, "cn.mozilla.rocket", this.f1786b, this.f1792h);
            this.f1791g.setTag(R.id.defini, 2);
        }
    }

    @Override // com.android.launcher3.activity.base.BaseActivity
    /* renamed from: e */
    public void mo1172e() {
        this.f1789e = (TextView) findViewById(R.id.msg_content);
        this.f1790f = (Button) findViewById(R.id.cancel);
        this.f1791g = (Button) findViewById(R.id.defini);
        this.f1790f.setOnClickListener(this);
        this.f1790f.setVisibility(8);
        this.f1791g.setOnClickListener(this);
    }

    /* renamed from: g */
    public final void m1210g(int i) {
        LTKDateUtil.m1403m("RemoveControlDialogActivity  viewSwitch code " + i);
        switch (i) {
            case 1:
                this.f1789e.setText(getResources().getString(R.string.remove_control));
                break;
            case 2:
                this.f1789e.setText(getResources().getString(R.string.browser_downding));
                DialogUtil.showDialog(this, getResources().getString(R.string.text_downloading));
                break;
            case 3:
                DialogUtil.hideDialog();
                this.f1789e.setText(getResources().getString(R.string.browser_downding_fail));
                this.f1791g.setTag(R.id.defini, 3);
                break;
            case 4:
                DialogUtil.hideDialog();
                this.f1789e.setText(getResources().getString(R.string.remove_control_fail));
                this.f1791g.setTag(R.id.defini, 4);
                break;
            case 6:
                DialogUtil.hideDialog();
                this.f1789e.setText(getResources().getString(R.string.remove_control_success));
                this.f1791g.setTag(R.id.defini, 6);
                break;
            case 7:
                DialogUtil.hideDialog();
                this.f1789e.setText(getResources().getString(R.string.browser_install_fail));
                this.f1791g.setTag(R.id.defini, 7);
                break;
            case 8:
                DialogUtil.hideDialog();
                this.f1789e.setText(getResources().getString(R.string.remove_control_fail));
                this.f1791g.setTag(R.id.defini, 8);
                break;
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() != R.id.defini) {
            return;
        }
        int iIntValue = ((Integer) view.getTag(R.id.defini)).intValue();
        LTKDateUtil.m1403m("RemoveControlDialogActivity  onClick" + iIntValue);
        switch (iIntValue) {
            case 2:
            case 4:
            case 5:
            case 6:
            case 8:
                DialogUtil.hideDialog();
                finish();
                break;
            case 3:
                int i = this.f1787c;
                if (i >= 3) {
                    m1210g(4);
                    break;
                } else {
                    this.f1787c = i + 1;
                    LauncherMenuHelper.m2958E(this, "cn.mozilla.rocket", this.f1786b, this.f1792h);
                    break;
                }
            case 7:
                int i2 = this.f1788d;
                if (i2 > 3) {
                    m1210g(4);
                    Timer timer = LauncherMenuHelper.f4123a;
                    if (timer != null) {
                        timer.cancel();
                    }
                    File file = LauncherMenuHelper.f4124b;
                    if (file != null) {
                        file.delete();
                        break;
                    }
                } else {
                    this.f1788d = i2 + 1;
                    this.f1789e.setText(getResources().getString(R.string.browser_installing));
                    LauncherMenuHelper.m2958E(this, "cn.mozilla.rocket", this.f1786b, this.f1792h);
                    break;
                }
                break;
        }
    }
}
