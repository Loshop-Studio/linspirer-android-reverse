package com.huawei.hms.availableupdate;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.BroadcastReceiver;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.view.KeyEvent;
import com.alibaba.sdk.android.tbrest.request.UrlWrapper;
import com.huawei.hem.CompilerOutline;
import com.huawei.hms.activity.IBridgeActivityDelegate;
import com.huawei.hms.common.PackageConstants;
import com.huawei.hms.p032ui.SafeBundle;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.utils.ResourceLoaderUtil;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: SilentUpdateWizard.java */
/* renamed from: com.huawei.hms.availableupdate.e0 */
/* loaded from: classes.dex */
public class SilentUpdateWizard extends AbsUpdateWizard {

    /* renamed from: j */
    public BroadcastReceiver f4464j;

    /* renamed from: k */
    public Handler f4465k = new Handler();

    /* renamed from: l */
    public int f4466l = 0;

    /* renamed from: m */
    public Handler f4467m = new a();

    /* compiled from: SilentUpdateWizard.java */
    /* renamed from: com.huawei.hms.availableupdate.e0$a */
    public class a extends Handler {
        public a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) throws IllegalAccessException, InstantiationException {
            SafeBundle safeBundle = new SafeBundle((Bundle) message.obj);
            switch (message.what) {
                case 101:
                    SilentUpdateWizard.this.m3292a(safeBundle);
                    break;
                case 102:
                    SilentUpdateWizard.this.m3296b(safeBundle);
                    break;
                case 103:
                    SilentUpdateWizard.this.m3299c(safeBundle);
                    break;
            }
        }
    }

    /* compiled from: SilentUpdateWizard.java */
    /* renamed from: com.huawei.hms.availableupdate.e0$b */
    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SilentUpdateWizard.this.m3298c(14);
        }

        public /* synthetic */ b(SilentUpdateWizard c1499e0, a aVar) {
            this();
        }
    }

    /* renamed from: d */
    public final void m3300d() {
        BroadcastReceiver broadcastReceiver;
        Activity activityM3338b = m3338b();
        if (activityM3338b == null || (broadcastReceiver = this.f4464j) == null) {
            return;
        }
        activityM3338b.unregisterReceiver(broadcastReceiver);
        this.f4464j = null;
    }

    /* renamed from: e */
    public void m3301e() {
        m3340c(13, this.f4493f);
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public int getRequestCode() {
        return RecyclerView.MAX_SCROLL_DURATION;
    }

    @Override // com.huawei.hms.availableupdate.AbstractC1509n, com.huawei.hms.activity.IBridgeActivityDelegate
    public void onBridgeActivityCreate(Activity activity) {
        super.onBridgeActivityCreate(activity);
        if (this.f4490c == null) {
            return;
        }
        this.f4493f = 0;
        if (m3294a(activity)) {
            return;
        }
        if (m3337a(true)) {
            m3333a(8, this.f4493f);
        } else {
            m3340c(8, this.f4493f);
        }
    }

    @Override // com.huawei.hms.availableupdate.AbstractC1509n, com.huawei.hms.activity.IBridgeActivityDelegate
    public void onBridgeActivityDestroy() {
        this.f4465k.removeCallbacksAndMessages(null);
        m3300d();
        super.onBridgeActivityDestroy();
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public boolean onBridgeActivityResult(int i, int i2, Intent intent) {
        IBridgeActivityDelegate iBridgeActivityDelegate;
        if (this.f4492e && (iBridgeActivityDelegate = this.f4489b) != null) {
            return iBridgeActivityDelegate.onBridgeActivityResult(i, i2, intent);
        }
        HMSLog.m3463i("SilentUpdateWizard", "onBridgeActivityResult requestCode is " + i + "resultCode is " + i2);
        if (i != getRequestCode()) {
            return false;
        }
        if (i2 == 0) {
            m3297c();
            m3295b(20000);
            return true;
        }
        if (i2 == 4) {
            m3301e();
            return true;
        }
        if (m3337a(true)) {
            m3333a(i2, this.f4493f);
        } else {
            m3340c(i2, this.f4493f);
        }
        return true;
    }

    @Override // com.huawei.hms.availableupdate.AbstractC1509n, com.huawei.hms.activity.IBridgeActivityDelegate
    public void onBridgeConfigurationChanged() {
        super.onBridgeConfigurationChanged();
    }

    @Override // com.huawei.hms.availableupdate.AbstractC1509n, com.huawei.hms.activity.IBridgeActivityDelegate
    public void onKeyUp(int i, KeyEvent keyEvent) {
        super.onKeyUp(i, keyEvent);
    }

    /* renamed from: b */
    public final void m3295b(int i) {
        this.f4465k.removeCallbacksAndMessages(null);
        this.f4465k.postDelayed(new b(this, null), i);
    }

    /* renamed from: c */
    public final void m3297c() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.huawei.appmarket.service.downloadservice.Receiver");
        intentFilter.addAction("com.huawei.appmarket.service.downloadservice.progress.Receiver");
        intentFilter.addAction("com.huawei.appmarket.service.installerservice.Receiver");
        this.f4464j = new SilentInstallReceive(this.f4467m);
        Activity activityM3338b = m3338b();
        if (activityM3338b != null) {
            activityM3338b.registerReceiver(this.f4464j, intentFilter);
        }
    }

    /* renamed from: a */
    public final boolean m3294a(Activity activity) throws JSONException {
        if (TextUtils.isEmpty(this.f4494g)) {
            return false;
        }
        Intent intent = new Intent("com.huawei.appmarket.intent.action.ThirdUpdateAction");
        intent.setPackage(PackageConstants.SERVICES_PACKAGE_APPMARKET);
        JSONArray jSONArray = new JSONArray();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("pkgName", this.f4494g);
            jSONObject.put("versioncode", this.f4496i);
            jSONArray.put(jSONObject);
            intent.putExtra("params", jSONArray.toString());
            intent.putExtra("isHmsOrApkUpgrade", this.f4490c.m3483d());
            intent.putExtra("buttonDlgY", ResourceLoaderUtil.getString("hms_install"));
            intent.putExtra("buttonDlgN", ResourceLoaderUtil.getString("hms_cancel"));
            intent.putExtra("upgradeDlgContent", ResourceLoaderUtil.getString("hms_update_message_new", "%P"));
            try {
                HMSLog.m3463i("SilentUpdateWizard", "start silent activity of AppMarket");
                activity.startActivityForResult(intent, getRequestCode());
                HMSLog.m3463i("SilentUpdateWizard", "start silent activity finished");
                return true;
            } catch (ActivityNotFoundException unused) {
                HMSLog.m3461e("SilentUpdateWizard", "ActivityNotFoundException");
                return false;
            }
        } catch (JSONException e) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("create hmsJsonObject fail");
            sbM1765j.append(e.getMessage());
            HMSLog.m3461e("SilentUpdateWizard", sbM1765j.toString());
            return false;
        }
    }

    /* renamed from: b */
    public final void m3296b(SafeBundle safeBundle) throws IllegalAccessException, InstantiationException {
        String string = safeBundle.containsKey("UpgradePkgName") ? safeBundle.getString("UpgradePkgName") : null;
        if (string != null && string.equals(this.f4494g) && safeBundle.containsKey("UpgradeDownloadProgress") && safeBundle.containsKey("UpgradeAppName")) {
            int i = safeBundle.getInt("UpgradeDownloadProgress");
            HMSLog.m3463i("SilentUpdateWizard", "handlerDownloadProgress-progress is " + i);
            m3295b(20000);
            if (i >= 99) {
                i = 99;
            }
            this.f4466l = i;
            if (this.f4491d == null) {
                mo3293a(DownloadProgress.class);
            }
            UpdateAlertDialog abstractC1510o = this.f4491d;
            if (abstractC1510o != null) {
                ((DownloadProgress) abstractC1510o).m3356b(i);
            }
        }
    }

    /* renamed from: c */
    public final void m3298c(int i) {
        this.f4465k.removeCallbacksAndMessages(null);
        m3300d();
        m3332a();
        if (!m3337a(false)) {
            m3340c(i, this.f4493f);
        } else {
            m3333a(i, this.f4493f);
        }
    }

    /* renamed from: c */
    public final void m3299c(SafeBundle safeBundle) {
        if (safeBundle.containsKey("packagename") && safeBundle.containsKey("status")) {
            String string = safeBundle.getString("packagename");
            int i = safeBundle.getInt("status");
            CompilerOutline.m1777v("handlerInstallStatus-status is ", i, "SilentUpdateWizard");
            if (string == null || !string.equals(this.f4494g)) {
                return;
            }
            if (i == 2) {
                this.f4465k.removeCallbacksAndMessages(null);
                UpdateAlertDialog abstractC1510o = this.f4491d;
                if (abstractC1510o != null) {
                    ((DownloadProgress) abstractC1510o).m3356b(100);
                }
                m3340c(0, this.f4493f);
                return;
            }
            if (i != -1 && i != -2) {
                m3295b(UrlWrapper.MAX_READ_CONNECTION_STREAM_TIME_OUT);
            } else {
                m3298c(i);
            }
        }
    }

    /* renamed from: a */
    public final void m3292a(SafeBundle safeBundle) {
        String string = safeBundle.containsKey("UpgradePkgName") ? safeBundle.getString("UpgradePkgName") : null;
        if (string != null && string.equals(this.f4494g) && safeBundle.containsKey("downloadtask.status")) {
            int i = safeBundle.getInt("downloadtask.status");
            CompilerOutline.m1777v("handleDownloadStatus-status is ", i, "SilentUpdateWizard");
            if (i == 3 || i == 5 || i == 6 || i == 8) {
                m3298c(i);
            } else if (i == 4) {
                m3295b(UrlWrapper.MAX_READ_CONNECTION_STREAM_TIME_OUT);
            } else {
                m3295b(20000);
            }
        }
    }

    @Override // com.huawei.hms.availableupdate.AbstractC1509n
    /* renamed from: a */
    public void mo3293a(Class<? extends UpdateAlertDialog> cls) throws IllegalAccessException, InstantiationException {
        try {
            UpdateAlertDialog abstractC1510oNewInstance = cls.newInstance();
            if (this.f4466l > 0 && (abstractC1510oNewInstance instanceof DownloadProgress)) {
                ((DownloadProgress) abstractC1510oNewInstance).m3355a(this.f4466l);
            }
            abstractC1510oNewInstance.m3343a(this);
            this.f4491d = abstractC1510oNewInstance;
        } catch (IllegalAccessException | IllegalStateException | InstantiationException e) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("In showDialog, Failed to show the dialog.");
            sbM1765j.append(e.getMessage());
            HMSLog.m3461e("SilentUpdateWizard", sbM1765j.toString());
        }
    }
}
