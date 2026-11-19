package com.huawei.hms.adapter.p030ui;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.view.KeyEvent;
import com.huawei.hem.CompilerOutline;
import com.huawei.hms.activity.BridgeActivity;
import com.huawei.hms.activity.IBridgeActivityDelegate;
import com.huawei.hms.adapter.internal.CommonCode;
import com.huawei.hms.adapter.sysobs.SystemManager;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.update.kpms.KpmsConstant;
import com.huawei.hms.update.manager.UpdateManager;
import com.huawei.hms.update.p033ui.UpdateBean;
import com.huawei.hms.utils.HMSPackageManager;
import com.huawei.hms.utils.PackageManagerHelper;
import com.huawei.hms.utils.ResourceLoaderUtil;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public class UpdateAdapter implements IBridgeActivityDelegate {

    /* renamed from: a */
    public WeakReference<Activity> f4351a;

    /* renamed from: b */
    public int f4352b;

    /* renamed from: c */
    public UpdateBean f4353c;

    /* renamed from: d */
    public String f4354d;

    /* renamed from: a */
    public final void m3194a() {
        Activity activityM3196b = m3196b();
        if (activityM3196b == null || activityM3196b.isFinishing()) {
            return;
        }
        activityM3196b.finish();
    }

    /* renamed from: b */
    public final Activity m3196b() {
        WeakReference<Activity> weakReference = this.f4351a;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    /* renamed from: c */
    public final void m3197c() {
        SystemManager.getInstance().notifyUpdateResult(8);
        m3194a();
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public int getRequestCode() {
        return 1001;
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public void onBridgeActivityCreate(Activity activity) {
        this.f4351a = new WeakReference<>(activity);
        Intent intent = activity.getIntent();
        if (intent == null) {
            m3197c();
            return;
        }
        int intExtra = intent.getIntExtra(CommonCode.MapKey.UPDATE_VERSION, 0);
        this.f4352b = intExtra;
        if (intExtra == 0) {
            m3197c();
            return;
        }
        if (intent.getBooleanExtra(CommonCode.MapKey.NEW_UPDATE, false)) {
            HMSLog.m3463i("UpdateAdapter", "4.0 framework HMSCore upgrade process");
            String hMSPackageName = HMSPackageManager.getInstance(activity.getApplicationContext()).getHMSPackageName();
            ComponentName componentName = new ComponentName(hMSPackageName, "com.huawei.hms.fwksdk.stub.UpdateStubActivity");
            Intent intent2 = new Intent();
            intent2.putExtra(KpmsConstant.CALLER_PACKAGE_NAME, activity.getApplicationContext().getPackageName());
            intent2.putExtra(KpmsConstant.UPDATE_PACKAGE_NAME, hMSPackageName);
            intent2.setComponent(componentName);
            activity.startActivityForResult(intent2, 1001);
            return;
        }
        this.f4354d = HMSPackageManager.getInstance(activity.getApplicationContext()).getHMSPackageName();
        UpdateBean updateBean = new UpdateBean();
        updateBean.setHmsOrApkUpgrade(true);
        StringBuilder sbM1765j = CompilerOutline.m1765j("target HMS Core packageName is ");
        sbM1765j.append(this.f4354d);
        HMSLog.m3463i("UpdateAdapter", sbM1765j.toString());
        updateBean.setClientPackageName(this.f4354d);
        updateBean.setClientVersionCode(this.f4352b);
        updateBean.setClientAppId("C10132067");
        if (ResourceLoaderUtil.getmContext() == null) {
            ResourceLoaderUtil.setmContext(activity.getApplicationContext());
        }
        updateBean.setClientAppName(ResourceLoaderUtil.getString("hms_update_title"));
        this.f4353c = updateBean;
        HMSLog.m3463i("UpdateAdapter", "old framework HMSCore upgrade process");
        UpdateManager.startUpdate(activity, 1001, updateBean);
        this.f4353c = null;
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public void onBridgeActivityDestroy() {
        HMSLog.m3463i("UpdateAdapter", "onBridgeActivityDestroy");
        this.f4351a = null;
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public boolean onBridgeActivityResult(int i, int i2, Intent intent) {
        if (i != getRequestCode()) {
            this.f4353c = null;
            return false;
        }
        HMSLog.m3463i("UpdateAdapter", "onBridgeActivityResult");
        if (i2 == 1214) {
            HMSLog.m3463i("UpdateAdapter", "Enter update escape route");
            Activity activityM3196b = m3196b();
            if (activityM3196b == null) {
                HMSLog.m3461e("UpdateAdapter", "bridgeActivity is null, update escape failed ");
                this.f4353c = null;
                return true;
            }
            UpdateManager.startUpdate(activityM3196b, 1001, this.f4353c);
            this.f4353c = null;
        }
        if (i2 == -1) {
            if (intent != null) {
                if (intent.getIntExtra(KpmsConstant.KIT_UPDATE_RESULT, 0) == 1) {
                    HMSLog.m3463i("UpdateAdapter", "new framework update process,Error resolved successfully!");
                    SystemManager.getInstance().notifyUpdateResult(0);
                    this.f4353c = null;
                    m3194a();
                    return true;
                }
                int intExtra = intent.getIntExtra(BridgeActivity.EXTRA_RESULT, -1);
                if (intExtra == 0) {
                    HMSLog.m3463i("UpdateAdapter", "Error resolved successfully!");
                    SystemManager.getInstance().notifyUpdateResult(0);
                } else if (intExtra == 13) {
                    HMSLog.m3463i("UpdateAdapter", "Resolve error process canceled by user!");
                    SystemManager.getInstance().notifyUpdateResult(13);
                } else if (intExtra == 8) {
                    HMSLog.m3463i("UpdateAdapter", "Internal error occurred, recommended retry.");
                    SystemManager.getInstance().notifyUpdateResult(8);
                } else {
                    HMSLog.m3463i("UpdateAdapter", "Other error codes.");
                    SystemManager.getInstance().notifyUpdateResult(intExtra);
                }
            }
        } else if (i2 == 0) {
            HMSLog.m3463i("UpdateAdapter", "Activity.RESULT_CANCELED");
            this.f4353c = null;
            Activity activityM3196b2 = m3196b();
            if (activityM3196b2 == null) {
                return true;
            }
            if (m3195a(activityM3196b2, HMSPackageManager.getInstance(activityM3196b2.getApplicationContext()).getHMSPackageName(), this.f4352b)) {
                HMSLog.m3463i("UpdateAdapter", "Resolve error, process canceled by user clicking back button!");
                SystemManager.getInstance().notifyUpdateResult(13);
            } else {
                SystemManager.getInstance().notifyUpdateResult(0);
            }
        } else if (i2 == 1) {
            SystemManager.getInstance().notifyUpdateResult(28);
        }
        m3194a();
        return true;
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public void onBridgeConfigurationChanged() {
        HMSLog.m3463i("UpdateAdapter", "onBridgeConfigurationChanged");
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public void onKeyUp(int i, KeyEvent keyEvent) {
        HMSLog.m3463i("UpdateAdapter", "On key up when resolve conn error");
    }

    /* renamed from: a */
    public final boolean m3195a(Context context, String str, int i) {
        if (context == null || TextUtils.isEmpty(str) || i == 0) {
            return false;
        }
        PackageManagerHelper packageManagerHelper = new PackageManagerHelper(context);
        return PackageManagerHelper.PackageStates.NOT_INSTALLED.equals(packageManagerHelper.getPackageStates(str)) || packageManagerHelper.getPackageVersionCode(str) < i;
    }
}
