package com.android.launcher3.activity;

// RE note 本类字节码直接引用的读写或显示接口包括偏好设置、JSON。

import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.support.v4.app.ActivityCompat;
import android.support.v4.content.ContextCompat;
import android.support.v4.content.FileProvider;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.asm.Label;
import com.android.launcher3.R;
import com.android.launcher3.activity.base.BaseActivity;
import com.android.launcher3.network.RequestUrl;
import com.android.launcher3.network.SynchronizeTimeUtil;
import com.android.launcher3.network.params.CheckUpdateParams;
import com.android.launcher3.network.params.V2Params;
import com.android.launcher3.p027db.model.ItemApp;
import com.android.launcher3.view.DialogUtil;
import com.google.zxing.integration.android.IntentIntegrator;
import com.gyf.immersionbar.ImmersionBar;
import com.huawei.hem.C0850bc;
import com.huawei.hem.C0876cc;
import com.huawei.hem.C0902dc;
import com.huawei.hem.C0948f6;
import com.huawei.hem.C1148n4;
import com.huawei.hem.C1198p4;
import com.huawei.hem.C1255rb;
import com.huawei.hem.C1355vb;
import com.huawei.hem.C1424y5;
import com.huawei.hem.InterfaceC0945f3;
import com.huawei.hem.license.HemLicenseManager;
import com.huawei.hem.license.HemLicenseStatusListener;
import java.io.File;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class AdminLoginActivity extends BaseActivity implements View.OnClickListener, InterfaceC0945f3 {

    /* renamed from: c */
    public Button f1653c;

    /* renamed from: d */
    public LinearLayout f1654d;

    /* renamed from: e */
    public TextView f1655e;

    /* renamed from: f */
    public TextView f1656f;

    /* renamed from: g */
    public C1424y5 f1657g;

    /* renamed from: b */
    public String f1652b = "";

    /* renamed from: h */
    public int f1658h = 1;

    /* renamed from: i */
    public String[] f1659i = {"android.permission.CAMERA"};

    @Override // com.android.launcher3.activity.base.BaseActivity
    /* renamed from: b */
    public int mo1170b() {
        return R.layout.activity_admin_login;
    }

    @Override // com.android.launcher3.activity.base.BaseActivity
    /* renamed from: c */
    public void mo1171c() {
        String string = getString(R.string.build_version);
        StringBuilder sbM1765j = C0948f6.m1765j("");
        sbM1765j.append(C0850bc.m1397g("com.android.launcher3", this));
        String str = String.format(string, sbM1765j.toString());
        this.f1655e.setText(C0850bc.m1398h("com.android.launcher3", this) + str);
    }

    @Override // com.android.launcher3.activity.base.BaseActivity
    /* renamed from: d */
    public void mo1174d() {
        ImmersionBar.with(this).statusBarColor(R.color.general_theme_bg_color).navigationBarColor(R.color.color_343F50).init();
    }

    @Override // com.android.launcher3.activity.base.BaseActivity
    /* renamed from: e */
    public void mo1172e() {
        this.f1657g = C1424y5.b.f4202a;
        this.f1653c = (Button) findViewById(R.id.scan_code_button);
        this.f1654d = (LinearLayout) findViewById(R.id.sync_time_layout);
        this.f1655e = (TextView) findViewById(R.id.version_text);
        this.f1656f = (TextView) findViewById(R.id.check_update);
        this.f1653c.setOnClickListener(this);
        this.f1654d.setOnClickListener(this);
        this.f1656f.setOnClickListener(this);
        if (C1198p4.f3428d == null) {
            C1198p4.f3428d = new C1198p4();
        }
        C1198p4.f3428d.f3429a = this;
    }

    /* renamed from: f */
    public final void m1175f() {
        int iM3040e = this.f1657g.m3040e();
        C0850bc.m1403m("AdminLoginActivity --camera:" + iM3040e);
        if (iM3040e != 1) {
            C0850bc.f2294f.enableCamera();
        }
        IntentIntegrator intentIntegrator = new IntentIntegrator(this);
        intentIntegrator.setOrientationLocked(false);
        intentIntegrator.setCaptureActivity(CustomCaptureActivity.class);
        intentIntegrator.initiateScan();
    }

    /* renamed from: g */
    public final void m1176g(String str) {
        boolean zCanRequestPackageInstalls;
        C0850bc.m1403m("AdminLoginActivity  -- installing apk path = " + str);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f1652b = str;
        if (getApplicationInfo().targetSdkVersion > 25 && Build.VERSION.SDK_INT >= 26) {
            zCanRequestPackageInstalls = getPackageManager().canRequestPackageInstalls();
            if (!zCanRequestPackageInstalls) {
                startActivityForResult(new Intent("android.settings.MANAGE_UNKNOWN_APP_SOURCES", Uri.parse("package:com.android.launcher3")), 100);
            }
        } else {
            zCanRequestPackageInstalls = true;
        }
        if (zCanRequestPackageInstalls) {
            Intent intent = new Intent("android.intent.action.VIEW");
            File file = new File(str);
            if (Build.VERSION.SDK_INT >= 24) {
                Uri uriForFile = FileProvider.getUriForFile(this, "com.android.launcher3.lspfileprovider", file);
                intent.addFlags(1);
                intent.setDataAndType(uriForFile, "application/vnd.android.package-archive");
            } else {
                intent.setFlags(Label.FORWARD_REFERENCE_TYPE_SHORT);
                intent.setDataAndType(Uri.fromFile(file), "application/vnd.android.package-archive");
            }
            startActivity(intent);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 5, insn: 0x01de: MOVE (r2 I:??[OBJECT, ARRAY]) = (r5 I:??[OBJECT, ARRAY]), block:B:114:0x01de */
    /* JADX WARN: Removed duplicated region for block: B:131:0x00f5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:135:0x0111 A[EXC_TOP_SPLITTER, PHI: r0
      0x0111: PHI (r0v12 ??) = (r0v11 ??), (r0v14 ??) binds: [B:73:0x00e4, B:89:0x010f] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:139:0x00ca A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:141:0x012d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:145:0x0103 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:156:0x00d8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0126  */
    /* JADX WARN: Type inference failed for: r0v10, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v12, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v27, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v30 */
    /* JADX WARN: Type inference failed for: r0v31 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9 */
    @Override // android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onActivityResult(int r12, int r13, android.content.Intent r14) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 522
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.activity.AdminLoginActivity.onActivityResult(int, int, android.content.Intent):void"); // DEX body: android/领创平板管理-2025.9.1/smali/com/android/launcher3/activity/AdminLoginActivity.smali:492
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (C0902dc.m1583a(view)) {
            return;
        }
        int id = view.getId();
        if (id != R.id.check_update) {
            if (id != R.id.scan_code_button) {
                if (id != R.id.sync_time_layout) {
                    return;
                }
                C0850bc.m1403m("AdminLoginActivity sycn_timing");
                if (!C0850bc.f2294f.mo2066k()) {
                    HemLicenseManager hemLicenseManager = HemLicenseManager.getInstance(this);
                    hemLicenseManager.setStatusListener(new HemLicenseStatusListener() { // from class: com.huawei.hem.y1
                        @Override // com.huawei.hem.license.HemLicenseStatusListener
                        public final void onStatus(int i, String str) {
                            C0850bc.m1403m("AdminLoginActivity  -- hem msg = " + str + " -- msgCode = " + i);
                        }
                    });
                    hemLicenseManager.activeLicense();
                }
                SynchronizeTimeUtil.pullSynchronizeTime(this, true);
                return;
            }
            C1424y5 c1424y5 = this.f1657g;
            if (c1424y5.f4133G == -1) {
                c1424y5.f4133G = c1424y5.f4130D.f2199a.getInt("enable_client_admin_status", 1);
            }
            if (c1424y5.f4133G != 1) {
                C0850bc.m1413w(this, getResources().getString(R.string.login_qr_code), 0);
                return;
            } else if (ContextCompat.checkSelfPermission(this, this.f1659i[0]) != 0) {
                ActivityCompat.requestPermissions(this, this.f1659i, this.f1658h);
                return;
            } else {
                m1175f();
                return;
            }
        }
        if (C1198p4.f3428d == null) {
            C1198p4.f3428d = new C1198p4();
        }
        C1198p4 c1198p4 = C1198p4.f3428d;
        if (c1198p4 == null) {
            throw null;
        }
        C1198p4.f3427c = this;
        if (c1198p4.userInfoUtil.m3023R()) {
            return;
        }
        if (!new C0876cc(c1198p4.mContext).m1505a()) {
            C0850bc.m1415y(c1198p4.mContext, R.string.network_unable_note);
            return;
        }
        try {
            DialogUtil.showDialog(c1198p4.mContext, c1198p4.mContext.getString(R.string.checking_upgrade));
            CheckUpdateParams checkUpdateParams = new CheckUpdateParams(c1198p4.mContext);
            ArrayList arrayList = new ArrayList();
            arrayList.add("com.android.launcher3");
            arrayList.add("com.ndwill.swd.appstore");
            checkUpdateParams.setPackages(arrayList);
            V2Params v2Params = new V2Params();
            v2Params.setParams(JSON.toJSONString(checkUpdateParams));
            v2Params.setMethod(RequestUrl.CHECK_UPDATE_METHOD);
            C1255rb c1255rb = c1198p4.mHttpCore;
            if (c1255rb == null) {
                throw null;
            }
            C1355vb c1355vb = new C1355vb(c1255rb);
            c1355vb.f3777a = RequestUrl.URL;
            c1355vb.f3947e = JSON.toJSONString(v2Params);
            c1355vb.m2869b(new C1148n4(c1198p4, ItemApp.class));
        } catch (Exception e) {
            e.printStackTrace();
            DialogUtil.hideDialog();
            C0850bc.m1414x(c1198p4.mContext, R.string.network_error_note);
        }
    }

    @Override // com.android.launcher3.activity.base.BaseActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        int iM3040e = this.f1657g.m3040e();
        C0850bc.m1403m("AdminLoginActivity --onDestroy camera:" + iM3040e);
        if (iM3040e != 1) {
            C0850bc.f2294f.disableCamera();
        }
    }

    @Override // com.android.launcher3.activity.base.BaseActivity, android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        if (i == this.f1658h) {
            if (iArr.length <= 0 || iArr[0] != 0) {
                C0850bc.m1413w(this, getResources().getString(R.string.qr_out_of_commission), 0);
            } else {
                m1175f();
            }
        }
    }
}
