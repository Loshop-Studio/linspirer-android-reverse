package com.gyf.immersionbar;

import android.app.Application;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class EMUI3NavigationBarObserver extends ContentObserver {
    public Application mApplication;
    public ArrayList<ImmersionCallback> mCallbacks;
    public Boolean mIsRegister;

    public static class NavigationBarObserverInstance {
        public static final EMUI3NavigationBarObserver INSTANCE = new EMUI3NavigationBarObserver();
    }

    public static EMUI3NavigationBarObserver getInstance() {
        return NavigationBarObserverInstance.INSTANCE;
    }

    public void addOnNavigationBarListener(ImmersionCallback immersionCallback) {
        if (immersionCallback == null) {
            return;
        }
        if (this.mCallbacks == null) {
            this.mCallbacks = new ArrayList<>();
        }
        if (this.mCallbacks.contains(immersionCallback)) {
            return;
        }
        this.mCallbacks.add(immersionCallback);
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z) {
        ArrayList<ImmersionCallback> arrayList;
        super.onChange(z);
        Application application = this.mApplication;
        if (application == null || application.getContentResolver() == null || (arrayList = this.mCallbacks) == null || arrayList.isEmpty()) {
            return;
        }
        int i = Settings.System.getInt(this.mApplication.getContentResolver(), Constants.IMMERSION_EMUI_NAVIGATION_BAR_HIDE_SHOW, 0);
        Iterator<ImmersionCallback> it = this.mCallbacks.iterator();
        while (it.hasNext()) {
            ImmersionCallback next = it.next();
            boolean z2 = true;
            if (i == 1) {
                z2 = false;
            }
            next.onNavigationBarChange(z2);
        }
    }

    public void register(Application application) {
        Uri uriFor;
        this.mApplication = application;
        if (application == null || application.getContentResolver() == null || this.mIsRegister.booleanValue() || (uriFor = Settings.System.getUriFor(Constants.IMMERSION_EMUI_NAVIGATION_BAR_HIDE_SHOW)) == null) {
            return;
        }
        this.mApplication.getContentResolver().registerContentObserver(uriFor, true, this);
        this.mIsRegister = Boolean.TRUE;
    }

    public void removeOnNavigationBarListener(ImmersionCallback immersionCallback) {
        ArrayList<ImmersionCallback> arrayList;
        if (immersionCallback == null || (arrayList = this.mCallbacks) == null) {
            return;
        }
        arrayList.remove(immersionCallback);
    }

    public EMUI3NavigationBarObserver() {
        super(new Handler(Looper.getMainLooper()));
        this.mIsRegister = Boolean.FALSE;
    }
}
