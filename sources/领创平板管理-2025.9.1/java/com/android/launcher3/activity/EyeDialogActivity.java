package com.android.launcher3.activity;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.view.View;
import android.widget.TextView;
import com.android.launcher3.R;
import com.android.launcher3.activity.base.BaseActivity;
import com.huawei.hem.EyeProtectedHelper;
import com.huawei.hem.LauncherMenuHelper;
import com.huawei.hem.UserInfoUtil;

/* loaded from: classes.dex */
public class EyeDialogActivity extends BaseActivity {

    /* renamed from: b */
    public TextView f1735b;

    /* renamed from: c */
    public int f1736c;

    /* renamed from: d */
    public BroadcastReceiver f1737d = new C0636a();

    /* renamed from: com.android.launcher3.activity.EyeDialogActivity$a */
    public class C0636a extends BroadcastReceiver {
        public C0636a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (!LauncherMenuHelper.m2954A(intent) && intent.getAction().equals("com.android.launcher3.eyeprotected.close")) {
                EyeDialogActivity.this.finish();
            }
        }
    }

    @Override // com.android.launcher3.activity.base.BaseActivity
    /* renamed from: b */
    public int mo1170b() {
        return R.layout.activity_eye_dialog;
    }

    @Override // com.android.launcher3.activity.base.BaseActivity
    /* renamed from: c */
    public void mo1171c() {
        String string;
        int intExtra = getIntent().getIntExtra("action", -1);
        this.f1736c = intExtra;
        if (intExtra != 0) {
            string = intExtra != 1 ? intExtra != 2 ? intExtra != 3 ? intExtra != 4 ? null : getResources().getString(R.string.eye_too_bright_tip) : getResources().getString(R.string.eye_too_dark_tip) : getResources().getString(R.string.eye_fliped_tip) : getResources().getString(R.string.eye_shorter_tip);
        } else {
            string = String.format(getResources().getString(R.string.duration_protect_eye_tip), Integer.valueOf(UserInfoUtil.b.f4202a.m3006A()));
            EyeProtectedHelper.m2677a().f3661e = true;
        }
        this.f1735b.setText(string);
    }

    @Override // com.android.launcher3.activity.base.BaseActivity
    /* renamed from: e */
    public void mo1172e() {
        this.f1735b = (TextView) findViewById(R.id.content);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.android.launcher3.eyeprotected.close");
        registerReceiver(this.f1737d, intentFilter);
    }

    public void onClick(View view) {
        finish();
    }

    @Override // com.android.launcher3.activity.base.BaseActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        unregisterReceiver(this.f1737d);
        if (this.f1736c == 0) {
            EyeProtectedHelper.m2677a().f3661e = false;
        }
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        if (this.f1736c == 0) {
            EyeProtectedHelper.m2677a().f3661e = false;
        }
    }
}
