package com.huawei.hms.adapter.p030ui;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.KeyEvent;
import com.huawei.hms.activity.IBridgeActivityDelegate;
import com.huawei.hms.adapter.internal.CommonCode;
import com.huawei.hms.adapter.sysobs.SystemManager;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.update.kpms.KpmsConstant;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public class BaseResolutionAdapter implements IBridgeActivityDelegate {

    /* renamed from: a */
    public WeakReference<Activity> f4349a;

    /* renamed from: b */
    public String f4350b = "";

    /* renamed from: a */
    public final void m3191a() {
        Activity activityM3192b = m3192b();
        if (activityM3192b == null || activityM3192b.isFinishing()) {
            return;
        }
        activityM3192b.finish();
    }

    /* renamed from: b */
    public final Activity m3192b() {
        WeakReference<Activity> weakReference = this.f4349a;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    /* renamed from: c */
    public final void m3193c() {
        SystemManager.getInstance().notifyResolutionResult(null, this.f4350b);
        m3191a();
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public int getRequestCode() {
        return 1001;
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public void onBridgeActivityCreate(Activity activity) throws IntentSender.SendIntentException {
        this.f4349a = new WeakReference<>(activity);
        Intent intent = activity.getIntent();
        if (intent == null) {
            m3193c();
            return;
        }
        Bundle extras = intent.getExtras();
        this.f4350b = intent.getStringExtra(CommonCode.MapKey.TRANSACTION_ID);
        if (extras == null) {
            m3193c();
            return;
        }
        Parcelable parcelable = extras.getParcelable(CommonCode.MapKey.HAS_RESOLUTION);
        if (parcelable == null) {
            m3193c();
            return;
        }
        if (parcelable instanceof Intent) {
            try {
                activity.startActivityForResult((Intent) parcelable, 1001);
                return;
            } catch (ActivityNotFoundException unused) {
                m3193c();
                HMSLog.m3461e("BaseResolutionAdapter", "ActivityNotFoundException:exception");
                return;
            }
        }
        if (parcelable instanceof PendingIntent) {
            try {
                activity.startIntentSenderForResult(((PendingIntent) parcelable).getIntentSender(), 1001, null, 0, 0, 0);
            } catch (IntentSender.SendIntentException unused2) {
                m3193c();
                HMSLog.m3461e("BaseResolutionAdapter", "SendIntentException:exception");
            }
        }
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public void onBridgeActivityDestroy() {
        HMSLog.m3463i("BaseResolutionAdapter", "onBridgeActivityDestroy");
        this.f4349a = null;
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public boolean onBridgeActivityResult(int i, int i2, Intent intent) {
        if (i != getRequestCode()) {
            return false;
        }
        HMSLog.m3463i("BaseResolutionAdapter", "onBridgeActivityResult");
        if (i2 == -1 || intent.hasExtra(KpmsConstant.KIT_UPDATE_RESULT)) {
            SystemManager.getInstance().notifyResolutionResult(intent, this.f4350b);
        } else {
            SystemManager.getInstance().notifyResolutionResult(null, this.f4350b);
        }
        m3191a();
        return true;
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public void onBridgeConfigurationChanged() {
        HMSLog.m3463i("BaseResolutionAdapter", "onBridgeConfigurationChanged");
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public void onKeyUp(int i, KeyEvent keyEvent) {
        HMSLog.m3463i("BaseResolutionAdapter", "On key up when resolve conn error");
    }
}
