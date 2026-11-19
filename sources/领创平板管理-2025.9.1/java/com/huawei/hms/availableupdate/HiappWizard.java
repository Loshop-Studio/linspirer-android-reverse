package com.huawei.hms.availableupdate;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.text.TextUtils;
import android.view.KeyEvent;
import com.alibaba.fastjson.asm.Label;
import com.huawei.hem.CompilerOutline;
import com.huawei.hms.activity.IBridgeActivityDelegate;
import com.huawei.hms.android.SystemUtils;
import com.huawei.hms.common.PackageConstants;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.update.p033ui.UpdateBean;
import com.huawei.hms.utils.PackageManagerHelper;
import com.huawei.hms.utils.ResourceLoaderUtil;
import java.util.ArrayList;
import java.util.List;

/* compiled from: HiappWizard.java */
/* renamed from: com.huawei.hms.availableupdate.x */
/* loaded from: classes.dex */
public class HiappWizard extends AbsUpdateWizard {
    @Override // com.huawei.hms.availableupdate.AbstractC1509n
    /* renamed from: a */
    public void mo3307a(AbstractC1510o abstractC1510o) {
        HMSLog.m3463i("HiappWizard", "Enter onCancel.");
        if (abstractC1510o instanceof InstallConfirm) {
            m3359d();
        }
    }

    @Override // com.huawei.hms.availableupdate.AbstractC1509n
    /* renamed from: b */
    public void mo3310b(AbstractC1510o abstractC1510o) {
        HMSLog.m3463i("HiappWizard", "Enter onDoWork.");
        if (abstractC1510o instanceof InstallConfirm) {
            abstractC1510o.m3344b();
            if (m3358c()) {
                return;
            }
            if (m3337a(false)) {
                m3333a(8, this.f4493f);
            } else {
                m3340c(8, this.f4493f);
            }
        }
    }

    /* renamed from: c */
    public final boolean m3358c() {
        Activity activityM3338b = m3338b();
        if (activityM3338b == null || activityM3338b.isFinishing() || TextUtils.isEmpty(this.f4494g)) {
            return false;
        }
        try {
            Intent intent = new Intent();
            intent.setAction("com.huawei.appmarket.intent.action.AppDetail");
            intent.putExtra("APP_PACKAGENAME", this.f4494g);
            if (SystemUtils.isTVDevice()) {
                int packageVersionCode = new PackageManagerHelper(activityM3338b).getPackageVersionCode("com.hisilicon.android.hiRMService");
                HMSLog.m3463i("HiappWizard", "version " + packageVersionCode);
                if (packageVersionCode == 1) {
                    HMSLog.m3463i("HiappWizard", "startActivity");
                    intent.addFlags(Label.FORWARD_REFERENCE_TYPE_SHORT);
                    m3357a(intent);
                    activityM3338b.startActivity(intent);
                    return true;
                }
            }
            HMSLog.m3463i("HiappWizard", "startActivityForResult");
            m3357a(intent);
            activityM3338b.startActivityForResult(intent, getRequestCode());
            return true;
        } catch (ActivityNotFoundException unused) {
            HMSLog.m3461e("HiappWizard", "can not open hiapp");
            return false;
        }
    }

    /* renamed from: d */
    public void m3359d() {
        m3340c(13, this.f4493f);
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public int getRequestCode() {
        return 2005;
    }

    @Override // com.huawei.hms.availableupdate.AbstractC1509n, com.huawei.hms.activity.IBridgeActivityDelegate
    public void onBridgeActivityCreate(Activity activity) throws IllegalAccessException, InstantiationException {
        super.onBridgeActivityCreate(activity);
        UpdateBean updateBean = this.f4490c;
        if (updateBean == null) {
            return;
        }
        this.f4493f = 5;
        if (updateBean.isNeedConfirm() && !TextUtils.isEmpty(this.f4495h)) {
            mo3293a(InstallConfirm.class);
        } else {
            if (m3358c()) {
                return;
            }
            if (m3337a(false)) {
                m3333a(8, this.f4493f);
            } else {
                m3340c(8, this.f4493f);
            }
        }
    }

    @Override // com.huawei.hms.availableupdate.AbstractC1509n, com.huawei.hms.activity.IBridgeActivityDelegate
    public void onBridgeActivityDestroy() {
        super.onBridgeActivityDestroy();
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public boolean onBridgeActivityResult(int i, int i2, Intent intent) {
        IBridgeActivityDelegate iBridgeActivityDelegate;
        if (this.f4492e && (iBridgeActivityDelegate = this.f4489b) != null) {
            return iBridgeActivityDelegate.onBridgeActivityResult(i, i2, intent);
        }
        if (this.f4493f != 5 || i != getRequestCode()) {
            return false;
        }
        if (m3336a(this.f4494g, this.f4496i)) {
            m3340c(0, this.f4493f);
            return true;
        }
        m3340c(8, this.f4493f);
        return true;
    }

    @Override // com.huawei.hms.availableupdate.AbstractC1509n, com.huawei.hms.activity.IBridgeActivityDelegate
    public void onBridgeConfigurationChanged() {
        super.onBridgeConfigurationChanged();
    }

    @Override // com.huawei.hms.availableupdate.AbstractC1509n, com.huawei.hms.activity.IBridgeActivityDelegate
    public void onKeyUp(int i, KeyEvent keyEvent) {
        IBridgeActivityDelegate iBridgeActivityDelegate;
        if (this.f4492e && (iBridgeActivityDelegate = this.f4489b) != null) {
            iBridgeActivityDelegate.onKeyUp(i, keyEvent);
            return;
        }
        if (4 == i) {
            HMSLog.m3463i("HiappWizard", "In onKeyUp, Call finish.");
            Activity activityM3338b = m3338b();
            if (activityM3338b == null || activityM3338b.isFinishing()) {
                return;
            }
            activityM3338b.setResult(0, null);
            activityM3338b.finish();
        }
    }

    /* renamed from: a */
    public final void m3357a(Intent intent) {
        List<ResolveInfo> listQueryIntentActivities = m3338b().getPackageManager().queryIntentActivities(intent, 65536);
        if (listQueryIntentActivities == null || listQueryIntentActivities.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(PackageConstants.SERVICES_PACKAGE_APPMARKET_TV);
        arrayList.add(PackageConstants.SERVICES_PACKAGE_APPMARKET_CAR);
        arrayList.add(PackageConstants.SERVICES_PACKAGE_APPMARKET);
        if (listQueryIntentActivities.size() == 1) {
            return;
        }
        for (ResolveInfo resolveInfo : listQueryIntentActivities) {
            if (arrayList.contains(resolveInfo.activityInfo.packageName)) {
                intent.setPackage(resolveInfo.activityInfo.packageName);
                return;
            }
        }
    }

    @Override // com.huawei.hms.availableupdate.AbstractC1509n
    /* renamed from: a */
    public void mo3293a(Class<? extends AbstractC1510o> cls) throws IllegalAccessException, InstantiationException {
        m3332a();
        try {
            AbstractC1510o abstractC1510oNewInstance = cls.newInstance();
            if (!TextUtils.isEmpty(this.f4495h) && (abstractC1510oNewInstance instanceof InstallConfirm)) {
                String string = ResourceLoaderUtil.getString("hms_update_title");
                this.f4495h = string;
                ((InstallConfirm) abstractC1510oNewInstance).m3360a(string);
            }
            abstractC1510oNewInstance.m3343a(this);
            this.f4491d = abstractC1510oNewInstance;
        } catch (IllegalAccessException | IllegalStateException | InstantiationException e) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("In showDialog, Failed to show the dialog.");
            sbM1765j.append(e.getMessage());
            HMSLog.m3461e("HiappWizard", sbM1765j.toString());
        }
    }
}
