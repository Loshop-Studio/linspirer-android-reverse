package com.huawei.updatesdk.service.otaupdate;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.res.Resources;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.Toast;
import com.alibaba.fastjson.asm.Label;
import com.huawei.hem.C0948f6;
import com.huawei.updatesdk.p034a.p035a.C1581a;
import com.huawei.updatesdk.p034a.p035a.p037c.p038a.p039a.C1584a;
import com.huawei.updatesdk.p034a.p035a.p040d.p041h.C1594c;
import com.huawei.updatesdk.p034a.p043b.p046c.AsyncTaskC1602b;
import com.huawei.updatesdk.p034a.p043b.p046c.p047c.C1605c;
import com.huawei.updatesdk.p034a.p043b.p046c.p047c.C1606d;
import com.huawei.updatesdk.p048b.p052b.C1612a;
import com.huawei.updatesdk.p048b.p055e.AbstractC1628a;
import com.huawei.updatesdk.p048b.p055e.C1632e;
import com.huawei.updatesdk.p048b.p057g.C1637b;
import com.huawei.updatesdk.p048b.p058h.C1640b;
import com.huawei.updatesdk.p048b.p058h.C1641c;
import com.huawei.updatesdk.p048b.p058h.C1642d;
import com.huawei.updatesdk.service.appmgr.bean.ApkUpgradeInfo;
import com.huawei.updatesdk.service.appmgr.bean.C1651d;
import com.huawei.updatesdk.service.appmgr.bean.C1652e;
import com.taobao.accs.AccsClientConfig;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeoutException;

/* renamed from: com.huawei.updatesdk.service.otaupdate.e */
/* loaded from: classes.dex */
public class AsyncTaskC1675e extends AsyncTask<Void, Void, C1606d> {

    /* renamed from: a */
    public Context f4791a;

    /* renamed from: b */
    public CheckUpdateCallBack f4792b;

    /* renamed from: c */
    public UpdateParams f4793c;

    /* renamed from: d */
    public Toast f4794d;

    /* renamed from: g */
    public AsyncTaskC1602b f4797g;

    /* renamed from: e */
    public boolean f4795e = false;

    /* renamed from: f */
    public List<String> f4796f = new ArrayList();

    /* renamed from: h */
    public boolean f4798h = false;

    public AsyncTaskC1675e(Context context, UpdateParams updateParams, CheckUpdateCallBack checkUpdateCallBack) {
        this.f4793c = updateParams;
        this.f4791a = context;
        this.f4792b = checkUpdateCallBack;
        C1676f.m3889f().m3893b(updateParams.getServiceZone());
    }

    /* renamed from: a */
    private PackageInfo m3878a(Context context, String str) {
        PackageInfo packageInfoM3760a = C1640b.m3760a(str, context);
        if (packageInfoM3760a != null) {
            return packageInfoM3760a;
        }
        PackageInfo packageInfo = new PackageInfo();
        packageInfo.packageName = str;
        packageInfo.versionName = "1.0";
        packageInfo.versionCode = 1;
        ApplicationInfo applicationInfo = new ApplicationInfo();
        applicationInfo.targetSdkVersion = 19;
        packageInfo.applicationInfo = applicationInfo;
        return packageInfo;
    }

    /* renamed from: a */
    private C1606d m3879a(Context context, List<String> list) {
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(m3878a(context, it.next()));
        }
        C1651d c1651d = !C1642d.m3779a(this.f4793c.getParamList()) ? new C1651d(this.f4793c.getParamList()) : C1651d.m3808a(arrayList);
        c1651d.m3813d(this.f4798h ? 34 : 0);
        c1651d.m3811b(0);
        c1651d.m3814d(C1594c.m3564b(context, C1632e.m3738a(this.f4798h ? "apptouch" : AccsClientConfig.DEFAULT_CONFIGTAG).mo3731b()));
        if (isCancelled()) {
            C1581a.m3502c("UpdateSDKCheckTask", "UpdateSDK task is canceled and return empty upgradeInfo");
            return null;
        }
        AsyncTaskC1602b asyncTaskC1602b = new AsyncTaskC1602b(c1651d, null);
        this.f4797g = asyncTaskC1602b;
        return asyncTaskC1602b.m3620c();
    }

    /* renamed from: a */
    private void m3880a() {
        Toast toast = this.f4794d;
        if (toast != null) {
            toast.cancel();
        }
    }

    /* renamed from: a */
    private void m3881a(Context context, ApkUpgradeInfo apkUpgradeInfo) {
        if (context == null) {
            return;
        }
        Intent intent = new Intent(context, (Class<?>) AppUpdateActivity.class);
        Bundle bundle = new Bundle();
        bundle.putSerializable("app_update_parm", apkUpgradeInfo);
        bundle.putBoolean("app_must_btn", this.f4793c.isMustBtnOne());
        bundle.putBoolean("is_apptouch", this.f4798h);
        intent.putExtras(bundle);
        if (!(context instanceof Activity)) {
            intent.setFlags(Label.FORWARD_REFERENCE_TYPE_SHORT);
        }
        try {
            context.startActivity(intent);
        } catch (ActivityNotFoundException e) {
            StringBuilder sbM1765j = C0948f6.m1765j("go AppUpdateActivity error: ");
            sbM1765j.append(e.toString());
            C1584a.m3516b("UpdateSDKCheckTask", sbM1765j.toString());
        }
    }

    /* renamed from: a */
    private void m3882a(List<ApkUpgradeInfo> list) {
        if (C1642d.m3779a(list)) {
            return;
        }
        for (ApkUpgradeInfo apkUpgradeInfo : list) {
            if (apkUpgradeInfo != null && !TextUtils.isEmpty(apkUpgradeInfo.getFullDownUrl_())) {
                if (apkUpgradeInfo.getDiffSize_() > 0) {
                    apkUpgradeInfo.setDiffDownUrl_(apkUpgradeInfo.getDownurl_());
                }
                apkUpgradeInfo.setDownurl_(apkUpgradeInfo.getFullDownUrl_());
            }
        }
    }

    /* renamed from: b */
    private void m3883b(C1606d c1606d) {
        if (this.f4792b != null) {
            Intent intent = new Intent();
            intent.putExtra("status", 6);
            if (c1606d.m3632a() != null) {
                intent.putExtra(UpdateKey.FAIL_CODE, c1606d.m3632a().ordinal());
            }
            intent.putExtra(UpdateKey.FAIL_REASON, c1606d.m3638c());
            intent.putExtra(UpdateKey.RESPONSE_CODE, c1606d.m3636b());
            this.f4792b.onUpdateInfo(intent);
            this.f4792b.onUpdateStoreError(c1606d.m3639d());
        }
    }

    /* renamed from: b */
    private boolean m3884b() {
        return !this.f4795e && TextUtils.isEmpty(this.f4793c.getTargetPkgName()) && C1642d.m3779a(this.f4793c.getPackageList()) && C1642d.m3779a(this.f4793c.getParamList());
    }

    @Override // android.os.AsyncTask
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public C1606d doInBackground(Void... voidArr) throws ExecutionException, InterruptedException, TimeoutException {
        C1584a.m3514a("UpdateSDKCheckTask", "CheckOtaAndUpdataTask doInBackground");
        C1612a.m3665d().m3675c();
        C1637b.m3751a(this);
        AbstractC1628a abstractC1628aM3738a = C1632e.m3738a(this.f4798h ? "apptouch" : AccsClientConfig.DEFAULT_CONFIGTAG);
        abstractC1628aM3738a.mo3734d();
        abstractC1628aM3738a.m3733c();
        C1605c.m3624c(abstractC1628aM3738a.m3732b(this.f4791a));
        String targetPkgName = this.f4793c.getTargetPkgName();
        if (TextUtils.isEmpty(targetPkgName)) {
            targetPkgName = this.f4791a.getPackageName();
        }
        if (!C1642d.m3779a(this.f4793c.getPackageList())) {
            this.f4796f.addAll(this.f4793c.getPackageList());
        } else if (!TextUtils.isEmpty(targetPkgName)) {
            this.f4796f.add(targetPkgName);
        }
        C1612a.m3665d().m3677e(C1676f.m3889f().m3890a());
        return m3879a(this.f4791a, this.f4796f);
    }

    @Override // android.os.AsyncTask
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onPostExecute(C1606d c1606d) {
        C1637b.m3750a().remove(this);
        m3880a();
        if (this.f4792b == null) {
            C1581a.m3502c("UpdateSDKCheckTask", "UpdateSDK callback is null");
        }
        if (c1606d == null) {
            if (this.f4792b != null) {
                Intent intent = new Intent();
                intent.putExtra("status", 3);
                this.f4792b.onUpdateInfo(intent);
                return;
            }
            return;
        }
        int iM3636b = c1606d.m3636b();
        ArrayList<ApkUpgradeInfo> arrayList = null;
        if (c1606d.m3641f()) {
            C1652e c1652e = (C1652e) c1606d;
            arrayList = c1652e.list;
            if (!C1642d.m3779a(c1652e.notRcmList)) {
                ApkUpgradeInfo apkUpgradeInfo = c1652e.notRcmList.get(0);
                StringBuilder sbM1765j = C0948f6.m1765j("UpdateSDK get update info is not recommend,reason: ");
                sbM1765j.append(apkUpgradeInfo.getNotRcmReason_());
                sbM1765j.append(",is same signature: ");
                sbM1765j.append(apkUpgradeInfo.getSameS_());
                C1581a.m3502c("UpdateSDKCheckTask", sbM1765j.toString());
            }
            m3882a(arrayList);
            if (C1642d.m3779a(arrayList) && this.f4792b != null) {
                C1581a.m3501b("UpdateSDKCheckTask", "no upgrade info");
                Intent intent2 = new Intent();
                intent2.putExtra("status", 3);
                intent2.putExtra(UpdateKey.RESPONSE_CODE, iM3636b);
                this.f4792b.onUpdateInfo(intent2);
            }
        } else {
            m3883b(c1606d);
            StringBuilder sbM1765j2 = C0948f6.m1765j("get app update msg failed,responseCode is ");
            sbM1765j2.append(c1606d.m3639d());
            sbM1765j2.append(",failreason: ");
            sbM1765j2.append(c1606d.m3638c());
            C1581a.m3500a("UpdateSDKCheckTask", sbM1765j2.toString());
        }
        if (C1642d.m3779a(arrayList)) {
            if (m3884b()) {
                C1581a.m3501b("UpdateSDKCheckTask", "show no upgrade info toast.");
                Context context = this.f4791a;
                Toast.makeText(context, C1641c.m3774c(context, "upsdk_update_check_no_new_version"), 0).show();
                return;
            }
            return;
        }
        ApkUpgradeInfo apkUpgradeInfo2 = arrayList.get(0);
        if (this.f4792b != null) {
            Intent intent3 = new Intent();
            intent3.putExtra(UpdateKey.INFO, (Serializable) apkUpgradeInfo2);
            intent3.putParcelableArrayListExtra(UpdateKey.INFO_LIST, arrayList);
            intent3.putExtra("status", 7);
            intent3.putExtra(UpdateKey.RESPONSE_CODE, iM3636b);
            this.f4792b.onUpdateInfo(intent3);
        }
        if (apkUpgradeInfo2 != null) {
            StringBuilder sbM1765j3 = C0948f6.m1765j("ApkUpgradeInfo,version = ");
            sbM1765j3.append(apkUpgradeInfo2.getVersion_());
            sbM1765j3.append(",versionCode = ");
            sbM1765j3.append(apkUpgradeInfo2.getVersionCode_());
            sbM1765j3.append(",detailId = ");
            sbM1765j3.append(apkUpgradeInfo2.getDetailId_());
            sbM1765j3.append(",devType = ");
            sbM1765j3.append(apkUpgradeInfo2.getDevType_());
            sbM1765j3.append(",packageName = ");
            sbM1765j3.append(apkUpgradeInfo2.getPackage_());
            sbM1765j3.append(",oldVersionCode = ");
            sbM1765j3.append(apkUpgradeInfo2.getOldVersionCode_());
            C1581a.m3501b("UpdateSDKCheckTask", sbM1765j3.toString());
        } else {
            C1581a.m3500a("UpdateSDKCheckTask", "info == null");
        }
        if (this.f4793c.isShowImmediate()) {
            m3881a(this.f4791a, apkUpgradeInfo2);
        }
    }

    /* renamed from: a */
    public void m3887a(boolean z) {
        this.f4798h = z;
    }

    /* renamed from: b */
    public void m3888b(boolean z) {
        this.f4795e = z;
    }

    @Override // android.os.AsyncTask
    public void onCancelled() {
        super.onCancelled();
        AsyncTaskC1602b asyncTaskC1602b = this.f4797g;
        if (asyncTaskC1602b != null) {
            asyncTaskC1602b.m3619b();
        }
    }

    @Override // android.os.AsyncTask
    public void onPreExecute() throws Resources.NotFoundException {
        super.onPreExecute();
        C1674d.m3873a().m3876a(this.f4792b);
        if (m3884b()) {
            Context context = this.f4791a;
            Toast toastMakeText = Toast.makeText(context, C1641c.m3774c(context, "upsdk_checking_update_prompt"), 1);
            this.f4794d = toastMakeText;
            toastMakeText.show();
        }
    }
}
