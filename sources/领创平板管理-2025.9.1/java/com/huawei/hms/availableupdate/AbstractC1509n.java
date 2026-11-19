package com.huawei.hms.availableupdate;

import android.app.Activity;
import android.content.Intent;
import android.text.TextUtils;
import android.view.KeyEvent;
import com.huawei.hem.C0948f6;
import com.huawei.hms.activity.BridgeActivity;
import com.huawei.hms.activity.IBridgeActivityDelegate;
import com.huawei.hms.android.SystemUtils;
import com.huawei.hms.common.util.AGCUtils;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.huawei.hms.support.hianalytics.HiAnalyticsUtils;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.update.p033ui.UpdateBean;
import com.huawei.hms.utils.NetWorkUtil;
import com.huawei.hms.utils.PackageManagerHelper;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;

/* compiled from: AbsUpdateWizard.java */
/* renamed from: com.huawei.hms.availableupdate.n */
/* loaded from: classes.dex */
public abstract class AbstractC1509n implements IBridgeActivityDelegate {

    /* renamed from: a */
    public WeakReference<Activity> f4488a;

    /* renamed from: b */
    public IBridgeActivityDelegate f4489b;

    /* renamed from: c */
    public UpdateBean f4490c = null;

    /* renamed from: d */
    public AbstractC1510o f4491d = null;

    /* renamed from: e */
    public boolean f4492e = false;

    /* renamed from: f */
    public int f4493f = -1;

    /* renamed from: g */
    public String f4494g = null;

    /* renamed from: h */
    public String f4495h = null;

    /* renamed from: i */
    public int f4496i = 0;

    /* renamed from: a */
    public static String m3331a(int i) {
        return i != 0 ? i != 5 ? i != 6 ? i != 7 ? "" : C1511p.class.getName() : C1501f0.class.getName() : C1519x.class.getName() : C1499e0.class.getName();
    }

    /* renamed from: a */
    public void mo3307a(AbstractC1510o abstractC1510o) {
    }

    /* renamed from: a */
    public abstract void mo3293a(Class<? extends AbstractC1510o> cls);

    /* renamed from: b */
    public Activity m3338b() {
        WeakReference<Activity> weakReference = this.f4488a;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    /* renamed from: b */
    public void mo3310b(AbstractC1510o abstractC1510o) {
    }

    /* renamed from: c */
    public void m3340c(int i, int i2) {
        Activity activityM3338b = m3338b();
        if (activityM3338b == null || activityM3338b.isFinishing()) {
            return;
        }
        m3333a(i, i2);
        Intent intent = new Intent();
        intent.putExtra(BridgeActivity.EXTRA_DELEGATE_CLASS_NAME, getClass().getName());
        intent.putExtra(BridgeActivity.EXTRA_RESULT, i);
        activityM3338b.setResult(-1, intent);
        activityM3338b.finish();
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public void onBridgeActivityCreate(Activity activity) {
        this.f4488a = new WeakReference<>(activity);
        if (this.f4490c == null) {
            Intent intent = activity.getIntent();
            if (intent == null) {
                return;
            }
            UpdateBean updateBean = (UpdateBean) intent.getSerializableExtra(BridgeActivity.EXTRA_DELEGATE_UPDATE_INFO);
            this.f4490c = updateBean;
            if (updateBean == null) {
                return;
            }
        }
        this.f4494g = this.f4490c.m3481b();
        this.f4495h = this.f4490c.getClientAppName();
        this.f4496i = this.f4490c.m3482c();
        this.f4490c.m3480a();
        this.f4489b = null;
        this.f4492e = false;
        this.f4493f = -1;
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public void onBridgeActivityDestroy() {
        IBridgeActivityDelegate iBridgeActivityDelegate;
        this.f4488a = null;
        m3332a();
        if (!this.f4492e || (iBridgeActivityDelegate = this.f4489b) == null) {
            return;
        }
        iBridgeActivityDelegate.onBridgeActivityDestroy();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public void onBridgeConfigurationChanged() {
        IBridgeActivityDelegate iBridgeActivityDelegate;
        if (this.f4492e && (iBridgeActivityDelegate = this.f4489b) != null) {
            iBridgeActivityDelegate.onBridgeConfigurationChanged();
            return;
        }
        AbstractC1510o abstractC1510o = this.f4491d;
        if (abstractC1510o == null) {
            return;
        }
        Class<?> cls = abstractC1510o.getClass();
        this.f4491d.m3344b();
        this.f4491d = null;
        mo3293a((Class<? extends AbstractC1510o>) cls);
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public void onKeyUp(int i, KeyEvent keyEvent) {
        IBridgeActivityDelegate iBridgeActivityDelegate;
        if (!this.f4492e || (iBridgeActivityDelegate = this.f4489b) == null) {
            return;
        }
        iBridgeActivityDelegate.onKeyUp(i, keyEvent);
    }

    /* renamed from: b */
    public final String m3339b(int i, int i2) {
        String strValueOf = String.valueOf(i);
        if (i2 == 0) {
            return C0948f6.m1760e("0000", strValueOf);
        }
        if (i2 != 5) {
            return i2 != 6 ? strValueOf : C0948f6.m1760e("4000", strValueOf);
        }
        return C0948f6.m1760e("5000", strValueOf);
    }

    /* renamed from: a */
    public void m3332a() {
        AbstractC1510o abstractC1510o = this.f4491d;
        if (abstractC1510o == null) {
            return;
        }
        try {
            abstractC1510o.m3344b();
            this.f4491d = null;
        } catch (IllegalStateException e) {
            StringBuilder sbM1765j = C0948f6.m1765j("In dismissDialog, Failed to dismiss the dialog.");
            sbM1765j.append(e.getMessage());
            HMSLog.m3461e("AbsUpdateWizard", sbM1765j.toString());
        }
    }

    /* renamed from: a */
    public void m3333a(int i, int i2) {
        if (!SystemUtils.isChinaROM()) {
            HMSLog.m3463i("AbsUpdateWizard", "not ChinaROM ");
            return;
        }
        Activity activityM3338b = m3338b();
        if (activityM3338b == null || activityM3338b.isFinishing()) {
            return;
        }
        int packageVersionCode = new PackageManagerHelper(activityM3338b).getPackageVersionCode(this.f4494g);
        HashMap map = new HashMap();
        map.put("package", activityM3338b.getPackageName());
        map.put(HiAnalyticsConstant.BI_KEY_TARGET_PACKAGE, this.f4494g);
        map.put(HiAnalyticsConstant.BI_KEY_TARGET_VER, String.valueOf(packageVersionCode));
        map.put(HiAnalyticsConstant.BI_KEY_SDK_VER, String.valueOf(50200300));
        map.put(HiAnalyticsConstant.BI_KEY_APP_ID, AGCUtils.getAppId(activityM3338b));
        map.put(HiAnalyticsConstant.BI_KEY_TRIGGER_API, "core.connnect");
        map.put(HiAnalyticsConstant.BI_KEY_UPDATE_TYPE, String.valueOf(i2));
        map.put(HiAnalyticsConstant.BI_KEY_NET_TYPE, String.valueOf(NetWorkUtil.getNetworkType(activityM3338b)));
        map.put("result", m3339b(i, i2));
        HiAnalyticsUtils.getInstance().onEvent(activityM3338b, HiAnalyticsConstant.BI_TYPE_UPDATE, map);
    }

    /* renamed from: a */
    public boolean m3337a(boolean z) {
        Activity activityM3338b = m3338b();
        boolean z2 = false;
        if (activityM3338b == null) {
            return false;
        }
        ArrayList typeList = this.f4490c.getTypeList();
        if (typeList.size() > 0) {
            typeList.remove(0);
        }
        if (this.f4489b == null) {
            m3335a(typeList);
        }
        if (this.f4489b != null) {
            z2 = true;
            this.f4492e = true;
            this.f4490c.setTypeList(typeList);
            this.f4490c.setNeedConfirm(z);
            IBridgeActivityDelegate iBridgeActivityDelegate = this.f4489b;
            if (iBridgeActivityDelegate instanceof AbstractC1509n) {
                ((AbstractC1509n) iBridgeActivityDelegate).m3334a(this.f4490c);
            }
            this.f4489b.onBridgeActivityCreate(activityM3338b);
        }
        return z2;
    }

    /* renamed from: a */
    public final void m3335a(ArrayList arrayList) {
        String strM3331a = (arrayList == null || arrayList.size() <= 0) ? null : m3331a(((Integer) arrayList.get(0)).intValue());
        if (strM3331a == null) {
            return;
        }
        try {
            this.f4489b = (IBridgeActivityDelegate) Class.forName(strM3331a).asSubclass(IBridgeActivityDelegate.class).newInstance();
        } catch (ClassCastException | ClassNotFoundException | IllegalAccessException | InstantiationException e) {
            StringBuilder sbM1765j = C0948f6.m1765j("getBridgeActivityDelegate error");
            sbM1765j.append(e.getMessage());
            HMSLog.m3461e("AbsUpdateWizard", sbM1765j.toString());
        }
    }

    /* renamed from: a */
    public final void m3334a(UpdateBean updateBean) {
        this.f4490c = updateBean;
    }

    /* renamed from: a */
    public boolean m3336a(String str, int i) {
        Activity activityM3338b;
        return (TextUtils.isEmpty(str) || (activityM3338b = m3338b()) == null || activityM3338b.isFinishing() || new PackageManagerHelper(activityM3338b).getPackageVersionCode(str) < i) ? false : true;
    }
}
