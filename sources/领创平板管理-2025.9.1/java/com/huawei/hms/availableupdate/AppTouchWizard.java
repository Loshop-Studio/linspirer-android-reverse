package com.huawei.hms.availableupdate;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.text.TextUtils;
import android.view.KeyEvent;
import com.huawei.hem.CompilerOutline;
import com.huawei.hms.activity.IBridgeActivityDelegate;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.update.p033ui.UpdateBean;
import com.huawei.hms.utils.ResourceLoaderUtil;
import java.util.Iterator;
import java.util.List;

/* compiled from: AppTouchWizard.java */
/* renamed from: com.huawei.hms.availableupdate.p */
/* loaded from: classes.dex */
public class AppTouchWizard extends AbsUpdateWizard {
    @Override // com.huawei.hms.availableupdate.AbstractC1509n
    /* renamed from: a */
    public void mo3307a(AbstractC1510o abstractC1510o) {
        HMSLog.m3463i("AppTouchWizard", "Enter onCancel.");
        if (abstractC1510o instanceof InstallConfirm) {
            m3351d();
        }
    }

    @Override // com.huawei.hms.availableupdate.AbstractC1509n
    /* renamed from: b */
    public void mo3310b(AbstractC1510o abstractC1510o) {
        HMSLog.m3463i("AppTouchWizard", "Enter onDoWork.");
        if (abstractC1510o instanceof InstallConfirm) {
            abstractC1510o.m3344b();
            if (m3350c()) {
                return;
            }
            m3333a(8, this.f4493f);
        }
    }

    /* renamed from: c */
    public final boolean m3350c() {
        Activity activityM3338b = m3338b();
        if (activityM3338b == null || activityM3338b.isFinishing() || TextUtils.isEmpty(this.f4494g)) {
            return false;
        }
        try {
            Intent intent = new Intent();
            intent.setAction("com.huawei.appmarket.intent.action.AppDetail");
            intent.putExtra("APP_PACKAGENAME", this.f4494g);
            m3349a(intent);
            activityM3338b.startActivityForResult(intent, getRequestCode());
            return true;
        } catch (ActivityNotFoundException unused) {
            HMSLog.m3461e("AppTouchWizard", "can not open AppTouch detail page");
            return false;
        }
    }

    /* renamed from: d */
    public void m3351d() {
        m3340c(13, this.f4493f);
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public int getRequestCode() {
        return 2007;
    }

    @Override // com.huawei.hms.availableupdate.AbstractC1509n, com.huawei.hms.activity.IBridgeActivityDelegate
    public void onBridgeActivityCreate(Activity activity) throws IllegalAccessException, InstantiationException {
        super.onBridgeActivityCreate(activity);
        UpdateBean updateBean = this.f4490c;
        if (updateBean == null) {
            return;
        }
        this.f4493f = 7;
        if (updateBean.isNeedConfirm() && !TextUtils.isEmpty(this.f4495h)) {
            mo3293a(InstallConfirm.class);
        } else {
            if (m3350c()) {
                return;
            }
            m3333a(8, this.f4493f);
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
        if (this.f4493f != 7 || i != getRequestCode()) {
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
            HMSLog.m3463i("AppTouchWizard", "In onKeyUp, Call finish.");
            Activity activityM3338b = m3338b();
            if (activityM3338b == null || activityM3338b.isFinishing()) {
                return;
            }
            activityM3338b.setResult(0, null);
            activityM3338b.finish();
        }
    }

    /* renamed from: a */
    public final void m3349a(Intent intent) {
        String str;
        List<ResolveInfo> listQueryIntentServices = m3338b().getPackageManager().queryIntentServices(new Intent("com.apptouch.intent.action.update_hms"), 0);
        if (listQueryIntentServices == null || listQueryIntentServices.isEmpty()) {
            str = null;
        } else {
            Iterator<ResolveInfo> it = listQueryIntentServices.iterator();
            while (it.hasNext()) {
                ServiceInfo serviceInfo = it.next().serviceInfo;
                if (serviceInfo != null) {
                    str = serviceInfo.packageName;
                    if (!TextUtils.isEmpty(str)) {
                        break;
                    }
                }
            }
            str = null;
        }
        if (TextUtils.isEmpty(str)) {
            return;
        }
        intent.setPackage(str);
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
            HMSLog.m3461e("AppTouchWizard", sbM1765j.toString());
        }
    }
}
