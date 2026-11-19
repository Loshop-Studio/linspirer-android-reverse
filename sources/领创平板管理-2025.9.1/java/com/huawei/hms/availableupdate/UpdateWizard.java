package com.huawei.hms.availableupdate;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.KeyEvent;
import com.huawei.hem.CompilerOutline;
import com.huawei.hms.activity.IBridgeActivityDelegate;
import com.huawei.hms.adapter.sysobs.SystemManager;
import com.huawei.hms.android.SystemUtils;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.update.provider.UpdateProvider;
import com.huawei.hms.utils.FileUtil;
import com.huawei.hms.utils.HMSPackageManager;
import com.huawei.hms.utils.PackageManagerHelper;
import com.huawei.hms.utils.ResourceLoaderUtil;
import com.huawei.updatesdk.UpdateSdkAPI;
import com.huawei.updatesdk.service.appmgr.bean.ApkUpgradeInfo;
import com.huawei.updatesdk.service.otaupdate.CheckUpdateCallBack;
import com.huawei.updatesdk.service.otaupdate.UpdateKey;
import java.io.File;
import java.io.Serializable;

/* compiled from: UpdateWizard.java */
/* renamed from: com.huawei.hms.availableupdate.f0 */
/* loaded from: classes.dex */
public class UpdateWizard extends AbsUpdateWizard implements IUpdateCallback {

    /* renamed from: j */
    public IOtaUpdate f4470j;

    /* renamed from: k */
    public UpdateInfo f4471k;

    /* renamed from: l */
    public int f4472l = 0;

    /* compiled from: UpdateWizard.java */
    /* renamed from: com.huawei.hms.availableupdate.f0$a */
    public static class a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ IUpdateCallback f4473a;

        /* renamed from: b */
        public final /* synthetic */ int f4474b;

        /* renamed from: c */
        public final /* synthetic */ UpdateInfo f4475c;

        public a(IUpdateCallback interfaceC1500f, int i, UpdateInfo c1502g) {
            this.f4473a = interfaceC1500f;
            this.f4474b = i;
            this.f4475c = c1502g;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f4473a.mo3279a(this.f4474b, this.f4475c);
        }
    }

    /* compiled from: UpdateWizard.java */
    /* renamed from: com.huawei.hms.availableupdate.f0$b */
    public class b implements CheckUpdateCallBack {

        /* renamed from: a */
        public final /* synthetic */ IUpdateCallback f4476a;

        public b(IUpdateCallback interfaceC1500f) {
            this.f4476a = interfaceC1500f;
        }

        @Override // com.huawei.updatesdk.service.otaupdate.CheckUpdateCallBack
        public void onMarketInstallInfo(Intent intent) {
        }

        @Override // com.huawei.updatesdk.service.otaupdate.CheckUpdateCallBack
        public void onMarketStoreError(int i) {
            HMSLog.m3461e("UpdateWizard", "onMarketStoreError responseCode: " + i);
        }

        @Override // com.huawei.updatesdk.service.otaupdate.CheckUpdateCallBack
        public void onUpdateInfo(Intent intent) {
            if (intent != null) {
                UpdateWizard.this.m3305a(intent, this.f4476a);
            }
        }

        @Override // com.huawei.updatesdk.service.otaupdate.CheckUpdateCallBack
        public void onUpdateStoreError(int i) {
            HMSLog.m3461e("UpdateWizard", "onUpdateStoreError responseCode: " + i);
        }
    }

    @Override // com.huawei.hms.availableupdate.AbstractC1509n
    /* renamed from: b */
    public void mo3310b(AbstractC1510o abstractC1510o) throws IllegalAccessException, InstantiationException {
        HMSLog.m3463i("UpdateWizard", "Enter onDoWork.");
        if (abstractC1510o instanceof InstallConfirm) {
            abstractC1510o.m3344b();
            mo3293a(CheckProgress.class);
            m3306a(this);
            return;
        }
        if (abstractC1510o instanceof C1517v) {
            abstractC1510o.m3344b();
            m3315g();
            return;
        }
        if (abstractC1510o instanceof C1516u) {
            mo3293a(DownloadProgress.class);
            m3314f();
            return;
        }
        if (abstractC1510o instanceof C1515t) {
            mo3293a(DownloadProgress.class);
            m3314f();
        } else if (abstractC1510o instanceof C1493b0) {
            m3313e();
        } else if (abstractC1510o instanceof C1495c0) {
            m3313e();
        } else if (abstractC1510o instanceof C1497d0) {
            m3313e();
        }
    }

    /* renamed from: c */
    public final void m3311c() {
        IOtaUpdate interfaceC1498e = this.f4470j;
        if (interfaceC1498e != null) {
            interfaceC1498e.mo3276a();
            this.f4470j = null;
        }
    }

    /* renamed from: d */
    public final void m3312d() throws IllegalAccessException, InstantiationException {
        Activity activityM3338b = m3338b();
        String netType = activityM3338b != null ? SystemUtils.getNetType(activityM3338b.getBaseContext()) : "";
        HMSLog.m3463i("UpdateWizard", "current network is " + netType);
        if (!"WIFI".equals(netType)) {
            mo3293a(C1515t.class);
            HMSLog.m3463i("UpdateWizard", "current network is not wifi");
        } else {
            mo3293a(DownloadProgress.class);
            m3314f();
            HMSLog.m3463i("UpdateWizard", "current network is wifi");
        }
    }

    /* renamed from: e */
    public final void m3313e() {
        if (m3337a(false)) {
            m3333a(8, this.f4493f);
        } else {
            m3340c(8, this.f4493f);
        }
    }

    /* renamed from: f */
    public final void m3314f() throws IllegalAccessException, InstantiationException {
        Activity activityM3338b = m3338b();
        if (activityM3338b == null || activityM3338b.isFinishing()) {
            mo3293a(C1495c0.class);
        } else if (m3309a(activityM3338b)) {
            m3311c();
            ThreadWrapper c1494c = new ThreadWrapper(new UpdateDownload(activityM3338b));
            this.f4470j = c1494c;
            c1494c.mo3277a(this, this.f4471k);
        }
    }

    /* renamed from: g */
    public void m3315g() {
        m3340c(13, this.f4493f);
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public int getRequestCode() {
        return 2006;
    }

    @Override // com.huawei.hms.availableupdate.AbstractC1509n, com.huawei.hms.activity.IBridgeActivityDelegate
    public void onBridgeActivityCreate(Activity activity) throws IllegalAccessException, InstantiationException {
        super.onBridgeActivityCreate(activity);
        if (this.f4490c == null) {
            return;
        }
        this.f4493f = 6;
        if (m3309a(activity)) {
            if (this.f4490c.isNeedConfirm() && !TextUtils.isEmpty(this.f4495h)) {
                mo3293a(InstallConfirm.class);
            } else {
                mo3293a(CheckProgress.class);
                m3306a(this);
            }
        }
    }

    @Override // com.huawei.hms.availableupdate.AbstractC1509n, com.huawei.hms.activity.IBridgeActivityDelegate
    public void onBridgeActivityDestroy() {
        m3311c();
        super.onBridgeActivityDestroy();
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public boolean onBridgeActivityResult(int i, int i2, Intent intent) {
        IBridgeActivityDelegate iBridgeActivityDelegate;
        if (this.f4492e && (iBridgeActivityDelegate = this.f4489b) != null) {
            return iBridgeActivityDelegate.onBridgeActivityResult(i, i2, intent);
        }
        if (this.f4493f != 6 || i != getRequestCode()) {
            return false;
        }
        if (m3336a(this.f4494g, this.f4496i)) {
            m3340c(0, this.f4493f);
            return true;
        }
        m3313e();
        return true;
    }

    @Override // com.huawei.hms.availableupdate.AbstractC1509n, com.huawei.hms.activity.IBridgeActivityDelegate
    public void onKeyUp(int i, KeyEvent keyEvent) {
        IBridgeActivityDelegate iBridgeActivityDelegate;
        if (this.f4492e && (iBridgeActivityDelegate = this.f4489b) != null) {
            iBridgeActivityDelegate.onKeyUp(i, keyEvent);
            return;
        }
        if (4 == i) {
            HMSLog.m3463i("UpdateWizard", "In onKeyUp, Call finish.");
            Activity activityM3338b = m3338b();
            if (activityM3338b == null || activityM3338b.isFinishing()) {
                return;
            }
            activityM3338b.setResult(0, null);
            activityM3338b.finish();
        }
    }

    /* renamed from: a */
    public static Uri m3302a(Context context, File file) {
        PackageManagerHelper packageManagerHelper = new PackageManagerHelper(context);
        String packageName = context.getPackageName();
        String strM1760e = CompilerOutline.m1760e(packageName, UpdateProvider.AUTHORITIES_SUFFIX);
        return Build.VERSION.SDK_INT > 23 && (context.getApplicationInfo().targetSdkVersion > 23 || packageManagerHelper.hasProvider(packageName, strM1760e)) ? UpdateProvider.getUriForFile(context, strM1760e, file) : Uri.fromFile(file);
    }

    /* renamed from: a */
    public static void m3304a(IUpdateCallback interfaceC1500f, int i, UpdateInfo c1502g) {
        if (interfaceC1500f != null) {
            new Handler(Looper.getMainLooper()).post(new a(interfaceC1500f, i, c1502g));
        }
    }

    /* renamed from: a */
    public final boolean m3309a(Activity activity) {
        if (HMSPackageManager.getInstance(activity).isApkUpdateNecessary(this.f4490c.m3482c())) {
            return true;
        }
        m3332a();
        SystemManager.getInstance().notifyUpdateResult(0);
        return false;
    }

    @Override // com.huawei.hms.availableupdate.InterfaceC1500f
    /* renamed from: a */
    public void mo3279a(int i, UpdateInfo c1502g) throws IllegalAccessException, InstantiationException {
        StringBuilder sbM1765j = CompilerOutline.m1765j("Enter onCheckUpdate, status: ");
        sbM1765j.append(UpdateStatus.m3317a(i));
        HMSLog.m3463i("UpdateWizard", sbM1765j.toString());
        if (i != 1000) {
            switch (i) {
                case 1201:
                case 1202:
                case 1203:
                    mo3293a(C1493b0.class);
                    break;
                default:
                    mo3293a(C1493b0.class);
                    break;
            }
        }
        this.f4471k = c1502g;
        m3312d();
    }

    @Override // com.huawei.hms.availableupdate.InterfaceC1500f
    /* renamed from: a */
    public void mo3278a(int i, int i2, int i3, File file) throws IllegalAccessException, InstantiationException {
        StringBuilder sbM1765j = CompilerOutline.m1765j("Enter onDownloadPackage, status: ");
        sbM1765j.append(UpdateStatus.m3317a(i));
        sbM1765j.append(", reveived: ");
        sbM1765j.append(i2);
        sbM1765j.append(", total: ");
        sbM1765j.append(i3);
        HMSLog.m3463i("UpdateWizard", sbM1765j.toString());
        if (i == 2000) {
            m3332a();
            if (file == null) {
                m3313e();
                return;
            } else if (FileUtil.verifyHash(this.f4471k.f4482e, file)) {
                m3308a(file);
                return;
            } else {
                HMSLog.m3463i("UpdateWizard", "Hash value mismatch for download file");
                return;
            }
        }
        if (i != 2100) {
            if (i != 2101) {
                switch (i) {
                    case 2201:
                        mo3293a(C1495c0.class);
                        break;
                    case 2202:
                        mo3293a(C1516u.class);
                        break;
                    case 2203:
                    case 2204:
                        mo3293a(C1497d0.class);
                        break;
                }
                return;
            }
            return;
        }
        AbstractC1510o abstractC1510o = this.f4491d;
        if (abstractC1510o == null || !(abstractC1510o instanceof DownloadProgress)) {
            return;
        }
        int i4 = 0;
        if (i2 >= 0 && i3 > 0) {
            i4 = (int) ((i2 * 100) / i3);
        }
        this.f4472l = i4;
        ((DownloadProgress) this.f4491d).m3356b(i4);
    }

    /* renamed from: a */
    public final void m3308a(File file) {
        Activity activityM3338b = m3338b();
        if (activityM3338b == null || activityM3338b.isFinishing()) {
            return;
        }
        Uri uriM3302a = m3302a(activityM3338b, file);
        if (uriM3302a == null) {
            HMSLog.m3461e("UpdateWizard", "In startInstaller, Failed to creates a Uri from a file.");
            m3313e();
            return;
        }
        if (m3309a(activityM3338b)) {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setDataAndType(uriM3302a, "application/vnd.android.package-archive");
            intent.setFlags(3);
            intent.putExtra("android.intent.extra.NOT_UNKNOWN_SOURCE", true);
            try {
                activityM3338b.startActivityForResult(intent, getRequestCode());
            } catch (ActivityNotFoundException e) {
                StringBuilder sbM1765j = CompilerOutline.m1765j("In startInstaller, Failed to start package installer.");
                sbM1765j.append(e.getMessage());
                HMSLog.m3461e("UpdateWizard", sbM1765j.toString());
                m3313e();
            }
        }
    }

    @Override // com.huawei.hms.availableupdate.AbstractC1509n
    /* renamed from: a */
    public void mo3307a(AbstractC1510o abstractC1510o) throws IllegalAccessException, InstantiationException {
        HMSLog.m3463i("UpdateWizard", "Enter onCancel.");
        if (abstractC1510o instanceof InstallConfirm) {
            m3315g();
            return;
        }
        if (abstractC1510o instanceof CheckProgress) {
            m3311c();
            m3315g();
            return;
        }
        if (abstractC1510o instanceof DownloadProgress) {
            m3311c();
            mo3293a(C1517v.class);
            return;
        }
        if (abstractC1510o instanceof C1517v) {
            mo3293a(DownloadProgress.class);
            m3314f();
        } else if (abstractC1510o instanceof C1516u) {
            m3315g();
        } else if (abstractC1510o instanceof C1515t) {
            m3315g();
        } else {
            m3313e();
        }
    }

    @Override // com.huawei.hms.availableupdate.AbstractC1509n
    /* renamed from: a */
    public void mo3293a(Class<? extends AbstractC1510o> cls) throws IllegalAccessException, InstantiationException {
        if (m3309a(m3338b())) {
            m3332a();
            try {
                AbstractC1510o abstractC1510oNewInstance = cls.newInstance();
                if (!TextUtils.isEmpty(this.f4495h) && (abstractC1510oNewInstance instanceof InstallConfirm)) {
                    String string = ResourceLoaderUtil.getString("hms_update_title");
                    this.f4495h = string;
                    ((InstallConfirm) abstractC1510oNewInstance).m3360a(string);
                }
                if (this.f4472l > 0 && (abstractC1510oNewInstance instanceof DownloadProgress)) {
                    ((DownloadProgress) abstractC1510oNewInstance).m3355a(this.f4472l);
                }
                abstractC1510oNewInstance.m3343a(this);
                this.f4491d = abstractC1510oNewInstance;
            } catch (IllegalAccessException | IllegalStateException | InstantiationException e) {
                StringBuilder sbM1765j = CompilerOutline.m1765j("In showDialog, Failed to show the dialog.");
                sbM1765j.append(e.getMessage());
                HMSLog.m3461e("UpdateWizard", sbM1765j.toString());
            }
        }
    }

    /* renamed from: a */
    public final void m3306a(IUpdateCallback interfaceC1500f) {
        if (interfaceC1500f == null) {
            return;
        }
        Activity activityM3338b = m3338b();
        if (activityM3338b != null && !activityM3338b.isFinishing()) {
            if (m3309a(activityM3338b)) {
                UpdateSdkAPI.checkTargetAppUpdate(activityM3338b, this.f4490c.m3481b(), new b(interfaceC1500f));
                return;
            }
            return;
        }
        m3304a(interfaceC1500f, 1201, (UpdateInfo) null);
    }

    /* renamed from: a */
    public final void m3305a(Intent intent, IUpdateCallback interfaceC1500f) {
        try {
            int intExtra = intent.getIntExtra("status", -99);
            HMSLog.m3463i("UpdateWizard", "CheckUpdateCallBack status is " + intExtra);
            String stringExtra = intent.getStringExtra(UpdateKey.FAIL_REASON);
            if (!TextUtils.isEmpty(stringExtra)) {
                HMSLog.m3461e("UpdateWizard", "checkTargetAppUpdate reason is " + stringExtra);
            }
            if (intExtra != 7) {
                if (intExtra == 3) {
                    m3304a(interfaceC1500f, 1202, (UpdateInfo) null);
                    return;
                } else {
                    m3304a(interfaceC1500f, 1201, (UpdateInfo) null);
                    return;
                }
            }
            Serializable serializableExtra = intent.getSerializableExtra(UpdateKey.INFO);
            if (serializableExtra instanceof ApkUpgradeInfo) {
                ApkUpgradeInfo apkUpgradeInfo = (ApkUpgradeInfo) serializableExtra;
                String package_ = apkUpgradeInfo.getPackage_();
                int versionCode_ = apkUpgradeInfo.getVersionCode_();
                String downurl_ = apkUpgradeInfo.getDownurl_();
                int size_ = apkUpgradeInfo.getSize_();
                String sha256_ = apkUpgradeInfo.getSha256_();
                if (!TextUtils.isEmpty(package_) && package_.equals(this.f4490c.m3481b())) {
                    if (versionCode_ < this.f4490c.m3482c()) {
                        StringBuilder sbM1766k = CompilerOutline.m1766k("CheckUpdateCallBack versionCode is ", versionCode_, "bean.getClientVersionCode() is ");
                        sbM1766k.append(this.f4490c.m3482c());
                        HMSLog.m3461e("UpdateWizard", sbM1766k.toString());
                        m3304a(interfaceC1500f, 1203, (UpdateInfo) null);
                        return;
                    }
                    if (!TextUtils.isEmpty(downurl_) && !TextUtils.isEmpty(sha256_)) {
                        m3304a(interfaceC1500f, 1000, new UpdateInfo(package_, versionCode_, downurl_, size_, sha256_));
                        return;
                    } else {
                        m3304a(interfaceC1500f, 1201, (UpdateInfo) null);
                        return;
                    }
                }
                m3304a(interfaceC1500f, 1201, (UpdateInfo) null);
            }
        } catch (Exception e) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("intent has some error");
            sbM1765j.append(e.getMessage());
            HMSLog.m3461e("UpdateWizard", sbM1765j.toString());
            m3304a(interfaceC1500f, 1201, (UpdateInfo) null);
        }
    }
}
