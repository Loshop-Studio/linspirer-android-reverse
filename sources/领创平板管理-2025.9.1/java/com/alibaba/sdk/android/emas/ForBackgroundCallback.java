package com.alibaba.sdk.android.emas;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: ForBackgroundCallback.java */
/* renamed from: com.alibaba.sdk.android.emas.i */
/* loaded from: classes.dex */
public class ForBackgroundCallback implements Application.ActivityLifecycleCallbacks {

    /* renamed from: c */
    public List<a> f947c;

    /* renamed from: e */
    public int f949e = 0;

    /* renamed from: c */
    public boolean f948c = false;

    /* compiled from: ForBackgroundCallback.java */
    /* renamed from: com.alibaba.sdk.android.emas.i$a */
    public interface a {
        /* renamed from: c */
        void mo608c();

        /* renamed from: d */
        void mo609d();
    }

    /* renamed from: a */
    public void m641a(a aVar) {
        if (this.f947c == null) {
            this.f947c = new ArrayList();
        }
        this.f947c.add(aVar);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        this.f949e++;
        if (this.f948c) {
            return;
        }
        this.f948c = true;
        List<a> list = this.f947c;
        if (list != null) {
            Iterator<a> it = list.iterator();
            while (it.hasNext()) {
                it.next().mo608c();
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        int i = this.f949e - 1;
        this.f949e = i;
        if (i == 0) {
            this.f948c = false;
            List<a> list = this.f947c;
            if (list != null) {
                Iterator<a> it = list.iterator();
                while (it.hasNext()) {
                    it.next().mo609d();
                }
            }
        }
    }
}
