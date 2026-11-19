package com.huawei.hms.support.common;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import com.huawei.hem.CompilerOutline;
import com.huawei.hms.support.log.HMSLog;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public final class ActivityMgr implements Application.ActivityLifecycleCallbacks {
    public static final ActivityMgr INST = new ActivityMgr();

    /* renamed from: a */
    public WeakReference<Activity> f4560a;

    /* renamed from: a */
    public static String m3453a(Object obj) {
        if (obj == null) {
            return "null";
        }
        return obj.getClass().getName() + '@' + Integer.toHexString(obj.hashCode());
    }

    public Activity getCurrentActivity() {
        if (this.f4560a == null) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("mCurrentActivity is ");
            sbM1765j.append(this.f4560a);
            HMSLog.m3463i("ActivityMgr", sbM1765j.toString());
            return null;
        }
        StringBuilder sbM1765j2 = CompilerOutline.m1765j("mCurrentActivity.get() is ");
        sbM1765j2.append(this.f4560a.get());
        HMSLog.m3463i("ActivityMgr", sbM1765j2.toString());
        return this.f4560a.get();
    }

    public void init(Application application) {
        HMSLog.m3458d("ActivityMgr", "init");
        if (application == null) {
            HMSLog.m3464w("ActivityMgr", "init failed for app is null");
        } else {
            application.unregisterActivityLifecycleCallbacks(INST);
            application.registerActivityLifecycleCallbacks(INST);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        StringBuilder sbM1765j = CompilerOutline.m1765j("onCreated:");
        sbM1765j.append(m3453a(activity));
        HMSLog.m3458d("ActivityMgr", sbM1765j.toString());
        this.f4560a = new WeakReference<>(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        StringBuilder sbM1765j = CompilerOutline.m1765j("onResumed:");
        sbM1765j.append(m3453a(activity));
        HMSLog.m3458d("ActivityMgr", sbM1765j.toString());
        this.f4560a = new WeakReference<>(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        StringBuilder sbM1765j = CompilerOutline.m1765j("onStarted:");
        sbM1765j.append(m3453a(activity));
        HMSLog.m3458d("ActivityMgr", sbM1765j.toString());
        this.f4560a = new WeakReference<>(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
    }
}
