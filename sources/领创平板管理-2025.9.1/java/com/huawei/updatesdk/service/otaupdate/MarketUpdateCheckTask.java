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
import com.huawei.hem.CompilerOutline;
import com.huawei.updatesdk.p034a.p035a.UpdateSdkLog;
import com.huawei.updatesdk.p034a.p035a.p037c.p038a.p039a.UpdateLogWriter;
import com.huawei.updatesdk.p034a.p035a.p040d.p041h.UpdateDeviceInfoUtil;
import com.huawei.updatesdk.p034a.p043b.p046c.UpdateStoreRequestTask;
import com.huawei.updatesdk.p034a.p043b.p046c.p047c.UpdateRequestBean;
import com.huawei.updatesdk.p034a.p043b.p046c.p047c.UpdateResponseBean;
import com.huawei.updatesdk.p048b.p052b.UpdateDeviceSession;
import com.huawei.updatesdk.p048b.p055e.UpdateRegionTaskInitializer;
import com.huawei.updatesdk.p048b.p055e.UpdateInitializerRegistry;
import com.huawei.updatesdk.p048b.p057g.StoreTaskAgent;
import com.huawei.updatesdk.p048b.p058h.UpdatePackageInfo;
import com.huawei.updatesdk.p048b.p058h.UpdateResourceLookup;
import com.huawei.updatesdk.p048b.p058h.UpdateProgressFormatter;
import com.huawei.updatesdk.service.appmgr.bean.ApkUpgradeInfo;
import com.huawei.updatesdk.service.appmgr.bean.InstalledAppsUpdateRequest;
import com.huawei.updatesdk.service.appmgr.bean.InstalledAppsUpdateResponse;
import com.taobao.accs.AccsClientConfig;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeoutException;

/* renamed from: com.huawei.updatesdk.service.otaupdate.e */
/* loaded from: classes.dex */
public class MarketUpdateCheckTask extends AsyncTask<Void, Void, UpdateResponseBean> {

    /* renamed from: a */
    public Context f4791a;

    /* renamed from: b */
    public CheckUpdateCallBack f4792b;

    /* renamed from: c */
    public UpdateParams f4793c;

    /* renamed from: d */
    public Toast f4794d;

    /* renamed from: g */
    public UpdateStoreRequestTask f4797g;

    /* renamed from: e */
    public boolean f4795e = false;

    /* renamed from: f */
    public List<String> f4796f = new ArrayList();

    /* renamed from: h */
    public boolean f4798h = false;

    public MarketUpdateCheckTask(Context context, UpdateParams updateParams, CheckUpdateCallBack checkUpdateCallBack) {
        this.f4793c = updateParams;
        this.f4791a = context;
        this.f4792b = checkUpdateCallBack;
        MarketStoreOptions.m3889f().m3893b(updateParams.getServiceZone());
    }

    /* renamed from: a */
    private PackageInfo m3878a(Context context, String str) {
        PackageInfo packageInfoM3760a = UpdatePackageInfo.m3760a(str, context);
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
    private UpdateResponseBean m3879a(Context context, List<String> list) {
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(m3878a(context, it.next()));
        }
        InstalledAppsUpdateRequest c1651d = !UpdateProgressFormatter.m3779a(this.f4793c.getParamList()) ? new InstalledAppsUpdateRequest(this.f4793c.getParamList()) : InstalledAppsUpdateRequest.m3808a(arrayList);
        c1651d.m3813d(this.f4798h ? 34 : 0);
        c1651d.m3811b(0);
        c1651d.m3814d(UpdateDeviceInfoUtil.m3564b(context, UpdateInitializerRegistry.m3738a(this.f4798h ? "apptouch" : AccsClientConfig.DEFAULT_CONFIGTAG).mo3731b()));
        if (isCancelled()) {
            UpdateSdkLog.m3502c("UpdateSDKCheckTask", "UpdateSDK task is canceled and return empty upgradeInfo");
            return null;
        }
        UpdateStoreRequestTask asyncTaskC1602b = new UpdateStoreRequestTask(c1651d, null);
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
            StringBuilder sbM1765j = CompilerOutline.m1765j("go AppUpdateActivity error: ");
            sbM1765j.append(e.toString());
            UpdateLogWriter.m3516b("UpdateSDKCheckTask", sbM1765j.toString());
        }
    }

    /* renamed from: a */
    private void m3882a(List<ApkUpgradeInfo> list) {
        if (UpdateProgressFormatter.m3779a(list)) {
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
    private void m3883b(UpdateResponseBean c1606d) {
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
        return !this.f4795e && TextUtils.isEmpty(this.f4793c.getTargetPkgName()) && UpdateProgressFormatter.m3779a(this.f4793c.getPackageList()) && UpdateProgressFormatter.m3779a(this.f4793c.getParamList());
    }

    @Override // android.os.AsyncTask
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public UpdateResponseBean doInBackground(Void... voidArr) throws ExecutionException, InterruptedException, TimeoutException {
        UpdateLogWriter.m3514a("UpdateSDKCheckTask", "CheckOtaAndUpdataTask doInBackground");
        UpdateDeviceSession.m3665d().m3675c();
        StoreTaskAgent.m3751a(this);
        UpdateRegionTaskInitializer abstractC1628aM3738a = UpdateInitializerRegistry.m3738a(this.f4798h ? "apptouch" : AccsClientConfig.DEFAULT_CONFIGTAG);
        abstractC1628aM3738a.mo3734d();
        abstractC1628aM3738a.m3733c();
        UpdateRequestBean.m3624c(abstractC1628aM3738a.m3732b(this.f4791a));
        String targetPkgName = this.f4793c.getTargetPkgName();
        if (TextUtils.isEmpty(targetPkgName)) {
            targetPkgName = this.f4791a.getPackageName();
        }
        if (!UpdateProgressFormatter.m3779a(this.f4793c.getPackageList())) {
            this.f4796f.addAll(this.f4793c.getPackageList());
        } else if (!TextUtils.isEmpty(targetPkgName)) {
            this.f4796f.add(targetPkgName);
        }
        UpdateDeviceSession.m3665d().m3677e(MarketStoreOptions.m3889f().m3890a());
        return m3879a(this.f4791a, this.f4796f);
    }

    @Override // android.os.AsyncTask
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onPostExecute(UpdateResponseBean c1606d) {
        StoreTaskAgent.m3750a().remove(this);
        m3880a();
        if (this.f4792b == null) {
            UpdateSdkLog.m3502c("UpdateSDKCheckTask", "UpdateSDK callback is null");
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
            InstalledAppsUpdateResponse c1652e = (InstalledAppsUpdateResponse) c1606d;
            arrayList = c1652e.list;
            if (!UpdateProgressFormatter.m3779a(c1652e.notRcmList)) {
                ApkUpgradeInfo apkUpgradeInfo = c1652e.notRcmList.get(0);
                StringBuilder sbM1765j = CompilerOutline.m1765j("UpdateSDK get update info is not recommend,reason: ");
                sbM1765j.append(apkUpgradeInfo.getNotRcmReason_());
                sbM1765j.append(",is same signature: ");
                sbM1765j.append(apkUpgradeInfo.getSameS_());
                UpdateSdkLog.m3502c("UpdateSDKCheckTask", sbM1765j.toString());
            }
            m3882a(arrayList);
            if (UpdateProgressFormatter.m3779a(arrayList) && this.f4792b != null) {
                UpdateSdkLog.m3501b("UpdateSDKCheckTask", "no upgrade info");
                Intent intent2 = new Intent();
                intent2.putExtra("status", 3);
                intent2.putExtra(UpdateKey.RESPONSE_CODE, iM3636b);
                this.f4792b.onUpdateInfo(intent2);
            }
        } else {
            m3883b(c1606d);
            StringBuilder sbM1765j2 = CompilerOutline.m1765j("get app update msg failed,responseCode is ");
            sbM1765j2.append(c1606d.m3639d());
            sbM1765j2.append(",failreason: ");
            sbM1765j2.append(c1606d.m3638c());
            UpdateSdkLog.m3500a("UpdateSDKCheckTask", sbM1765j2.toString());
        }
        if (UpdateProgressFormatter.m3779a(arrayList)) {
            if (m3884b()) {
                UpdateSdkLog.m3501b("UpdateSDKCheckTask", "show no upgrade info toast.");
                Context context = this.f4791a;
                Toast.makeText(context, UpdateResourceLookup.m3774c(context, "upsdk_update_check_no_new_version"), 0).show();
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
            StringBuilder sbM1765j3 = CompilerOutline.m1765j("ApkUpgradeInfo,version = ");
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
            UpdateSdkLog.m3501b("UpdateSDKCheckTask", sbM1765j3.toString());
        } else {
            UpdateSdkLog.m3500a("UpdateSDKCheckTask", "info == null");
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
        UpdateStoreRequestTask asyncTaskC1602b = this.f4797g;
        if (asyncTaskC1602b != null) {
            asyncTaskC1602b.m3619b();
        }
    }

    @Override // android.os.AsyncTask
    public void onPreExecute() throws Resources.NotFoundException {
        super.onPreExecute();
        MarketUpdateCallbackDispatcher.m3873a().m3876a(this.f4792b);
        if (m3884b()) {
            Context context = this.f4791a;
            Toast toastMakeText = Toast.makeText(context, UpdateResourceLookup.m3774c(context, "upsdk_checking_update_prompt"), 1);
            this.f4794d = toastMakeText;
            toastMakeText.show();
        }
    }
}
