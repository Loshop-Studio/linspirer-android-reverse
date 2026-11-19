package com.android.launcher3.activity;

// RE note 本类字节码直接引用的读写或显示接口包括JSON。

import android.content.Intent;
import android.support.v4.app.ActivityCompat;
import android.support.v4.content.ContextCompat;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.alibaba.fastjson.JSON;
import com.android.launcher3.R;
import com.android.launcher3.activity.base.BaseActivity;
import com.android.launcher3.network.ControlHelper;
import com.android.launcher3.network.RequestUrl;
import com.android.launcher3.network.params.Params;
import com.android.launcher3.network.params.V2Params;
import com.google.zxing.integration.android.IntentIntegrator;
import com.google.zxing.integration.android.IntentResult;
import com.huawei.hem.C0850bc;
import com.huawei.hem.C0902dc;
import com.huawei.hem.C0948f6;
import com.huawei.hem.C1146n2;
import com.huawei.hem.C1255rb;
import com.huawei.hem.C1355vb;
import com.huawei.hem.C1424y5;
import com.huawei.hem.license.HemLicenseManager;
import com.huawei.hem.license.HemLicenseStatusListener;
import java.text.SimpleDateFormat;
import java.util.Date;

/* loaded from: classes.dex */
public class PromptDiaLogActivity extends BaseActivity implements View.OnClickListener {

    /* renamed from: b */
    public String[] f1771b = {"android.permission.CAMERA"};

    /* renamed from: c */
    public int f1772c = 1;

    /* renamed from: d */
    public TextView f1773d;

    /* renamed from: e */
    public Button f1774e;

    /* renamed from: f */
    public Button f1775f;

    /* renamed from: g */
    public int f1776g;

    /* renamed from: h */
    public C1424y5 f1777h;

    /* renamed from: f */
    public static void m1206f(final PromptDiaLogActivity promptDiaLogActivity) {
        if (promptDiaLogActivity == null) {
            throw null;
        }
        ControlHelper.getInstance().handleHemRelease();
        C0850bc.f2294f.mo2056R(2);
        HemLicenseManager hemLicenseManager = HemLicenseManager.getInstance(promptDiaLogActivity);
        hemLicenseManager.setStatusListener(new HemLicenseStatusListener() { // from class: com.huawei.hem.d2
            @Override // com.huawei.hem.license.HemLicenseStatusListener
            public final void onStatus(int i, String str) {
                this.f2376a.m1208h(i, str);
            }
        });
        hemLicenseManager.deActiveLicense();
    }

    @Override // com.android.launcher3.activity.base.BaseActivity
    /* renamed from: b */
    public int mo1170b() {
        return R.layout.activity_prompt_dia_log;
    }

    @Override // com.android.launcher3.activity.base.BaseActivity
    /* renamed from: c */
    public void mo1171c() {
        int intExtra = getIntent().getIntExtra("action", -1);
        this.f1776g = intExtra;
        if (intExtra == 1) {
            this.f1773d.setText(getString(R.string.dialog_reset_factory));
            return;
        }
        if (intExtra == 2) {
            this.f1773d.setText(getString(R.string.dialog_lift_restrion));
            return;
        }
        if (intExtra == 3) {
            this.f1774e.setVisibility(8);
            this.f1773d.setText(getString(R.string.factory_reset_now));
            this.f1775f.setText(getString(R.string.i_known));
            return;
        }
        if (intExtra == 4) {
            this.f1777h = C1424y5.b.f4202a;
            setFinishOnTouchOutside(false);
            this.f1773d.setText(R.string.release_control_tip);
            return;
        }
        if (intExtra == 5) {
            setFinishOnTouchOutside(true);
            this.f1774e.setVisibility(8);
            this.f1775f.setVisibility(8);
            this.f1773d.setText(R.string.release_control_sucess_tip);
            return;
        }
        if (intExtra == 6) {
            setFinishOnTouchOutside(true);
            this.f1774e.setVisibility(8);
            this.f1775f.setVisibility(8);
            this.f1773d.setText(R.string.internal_storage_overflow_tip);
            return;
        }
        if (intExtra == 7) {
            this.f1774e.setVisibility(8);
            this.f1773d.setText(getString(R.string.will_reset));
            this.f1775f.setText(getString(R.string.i_known));
        }
    }

    @Override // com.android.launcher3.activity.base.BaseActivity
    /* renamed from: e */
    public void mo1172e() {
        this.f1773d = (TextView) findViewById(R.id.msg_content);
        this.f1774e = (Button) findViewById(R.id.cancel);
        this.f1775f = (Button) findViewById(R.id.defini);
        this.f1774e.setOnClickListener(this);
        this.f1775f.setOnClickListener(this);
    }

    /* renamed from: g */
    public final void m1207g() {
        int iM3040e = this.f1777h.m3040e();
        C0850bc.m1403m("PromptDiaLogActivity --camera:" + iM3040e);
        if (iM3040e != 1) {
            C0850bc.f2294f.enableCamera();
        }
        IntentIntegrator intentIntegrator = new IntentIntegrator(this);
        intentIntegrator.setOrientationLocked(false);
        intentIntegrator.setCaptureActivity(CustomCaptureActivity.class);
        intentIntegrator.initiateScan();
    }

    /* renamed from: h */
    public void m1208h(int i, String str) {
        C0850bc.m1403m("PromptDiaLogActivity  -- hem msg = " + str + " -- msgCode = " + i);
        if (i == 3000) {
            C0850bc.m1413w(this, getResources().getString(R.string.release_control_sucessed), 0);
        } else {
            C0850bc.m1413w(this, "msg:" + str + "  errorcode:" + i, 1);
        }
        setResult(-1);
        finish();
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        C0850bc.m1403m("PromptDiaLogActivity scaning start");
        IntentResult activityResult = IntentIntegrator.parseActivityResult(i, i2, intent);
        if (activityResult == null) {
            C0850bc.m1403m("PromptDiaLogActivity scaning result is empty");
            return;
        }
        String contents = activityResult.getContents();
        if (TextUtils.isEmpty(contents)) {
            C0850bc.m1403m("PromptDiaLogActivity scaning signature is empty");
            return;
        }
        String strM1407q = C0850bc.m1407q(contents);
        String str = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
        C0850bc.m1403m("PromptDiaLogActivity parse  result:" + strM1407q + " current:" + str);
        if (!str.equals(strM1407q)) {
            C0850bc.m1413w(this, getResources().getString(R.string.cancel_distribute_failed), 0);
            finish();
            return;
        }
        try {
            V2Params v2Params = new V2Params();
            Params params = new Params(this);
            params.setEmail(this.f1777h.m3052k());
            v2Params.setMethod(RequestUrl.CANCEL_DISTRIBUTE);
            v2Params.setParams(JSON.toJSONString(params));
            C1355vb c1355vb = new C1355vb(new C1255rb());
            c1355vb.f3777a = RequestUrl.URL;
            c1355vb.f3947e = JSON.toJSONString(v2Params);
            c1355vb.m2869b(new C1146n2(this, Boolean.class));
        } catch (Exception e) {
            StringBuilder sbM1765j = C0948f6.m1765j("PromptDiaLogActivity --JSONException:");
            sbM1765j.append(e.getMessage());
            C0850bc.m1393c(sbM1765j.toString());
            finish();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (C0902dc.m1583a(view)) {
            return;
        }
        int id = view.getId();
        if (id == R.id.cancel) {
            finish();
            return;
        }
        if (id != R.id.defini) {
            return;
        }
        int i = this.f1776g;
        if (i == 1 || i == 7) {
            C0850bc.f2294f.mo1329t(false);
        } else if (i == 4) {
            this.f1773d.setText(R.string.release_control_now);
            this.f1775f.setVisibility(8);
            this.f1774e.setVisibility(8);
            if (ContextCompat.checkSelfPermission(this, this.f1771b[0]) != 0) {
                ActivityCompat.requestPermissions(this, this.f1771b, this.f1772c);
                return;
            } else {
                m1207g();
                return;
            }
        }
        finish();
    }

    @Override // com.android.launcher3.activity.base.BaseActivity, android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        if (i == this.f1772c) {
            if (iArr.length <= 0 || iArr[0] != 0) {
                C0850bc.m1413w(this, getResources().getString(R.string.qr_out_of_commission), 0);
            } else {
                m1207g();
            }
        }
    }
}
