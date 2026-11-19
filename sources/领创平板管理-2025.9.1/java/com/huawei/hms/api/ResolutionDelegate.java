package com.huawei.hms.api;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import com.huawei.hms.activity.IBridgeActivityDelegate;
import com.huawei.hms.activity.internal.BusResponseCallback;
import com.huawei.hms.activity.internal.ForegroundBusResponseMgr;
import com.huawei.hms.adapter.internal.CommonCode;
import com.huawei.hms.support.log.HMSLog;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public class ResolutionDelegate implements IBridgeActivityDelegate {
    public static final String CALLBACK_METHOD = "CALLBACK_METHOD";

    /* renamed from: a */
    public WeakReference<Activity> f4428a;

    /* renamed from: a */
    private void m3248a() {
        Activity activityM3249b = m3249b();
        if (activityM3249b == null || activityM3249b.isFinishing()) {
            return;
        }
        activityM3249b.finish();
    }

    /* renamed from: b */
    private Activity m3249b() {
        WeakReference<Activity> weakReference = this.f4428a;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public int getRequestCode() {
        return 1002;
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public void onBridgeActivityCreate(Activity activity) {
        this.f4428a = new WeakReference<>(activity);
        Bundle extras = activity.getIntent().getExtras();
        if (extras != null) {
            activity.startActivityForResult((Intent) extras.getParcelable(CommonCode.MapKey.HAS_RESOLUTION), 1002);
        }
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public void onBridgeActivityDestroy() {
        this.f4428a = null;
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public boolean onBridgeActivityResult(int i, int i2, Intent intent) {
        if (i != getRequestCode()) {
            return false;
        }
        BusResponseCallback busResponseCallbackM3247a = m3247a(CALLBACK_METHOD);
        int iIsHuaweiMobileServicesAvailable = HuaweiApiAvailability.getInstance().isHuaweiMobileServicesAvailable(this.f4428a.get(), 30000000);
        if (i2 == -1 && iIsHuaweiMobileServicesAvailable == 0) {
            HMSLog.m3463i("ResolutionDelegate", "Make service available success.");
        } else {
            busResponseCallbackM3247a.innerError(this.f4428a.get(), i2, "Make service available failed.");
        }
        m3248a();
        return true;
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public void onBridgeConfigurationChanged() {
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public void onKeyUp(int i, KeyEvent keyEvent) {
    }

    /* renamed from: a */
    private BusResponseCallback m3247a(String str) {
        return ForegroundBusResponseMgr.getInstance().get(str);
    }
}
