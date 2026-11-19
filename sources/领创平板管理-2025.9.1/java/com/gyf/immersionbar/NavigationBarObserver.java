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
public final class NavigationBarObserver extends ContentObserver {
    public Application mApplication;
    public Boolean mIsRegister;
    public ArrayList<OnNavigationBarListener> mListeners;

    public static class NavigationBarObserverInstance {
        public static final NavigationBarObserver INSTANCE = new NavigationBarObserver();
    }

    public static NavigationBarObserver getInstance() {
        return NavigationBarObserverInstance.INSTANCE;
    }

    public void addOnNavigationBarListener(OnNavigationBarListener onNavigationBarListener) {
        if (onNavigationBarListener == null) {
            return;
        }
        if (this.mListeners == null) {
            this.mListeners = new ArrayList<>();
        }
        if (this.mListeners.contains(onNavigationBarListener)) {
            return;
        }
        this.mListeners.add(onNavigationBarListener);
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z) {
        ArrayList<OnNavigationBarListener> arrayList;
        super.onChange(z);
        Application application = this.mApplication;
        if (application == null || application.getContentResolver() == null || (arrayList = this.mListeners) == null || arrayList.isEmpty()) {
            return;
        }
        int i = OSUtils.isMIUI() ? Settings.Global.getInt(this.mApplication.getContentResolver(), Constants.IMMERSION_MIUI_NAVIGATION_BAR_HIDE_SHOW, 0) : OSUtils.isEMUI() ? !OSUtils.isEMUI3_x() ? Settings.Global.getInt(this.mApplication.getContentResolver(), Constants.IMMERSION_EMUI_NAVIGATION_BAR_HIDE_SHOW, 0) : Settings.System.getInt(this.mApplication.getContentResolver(), Constants.IMMERSION_EMUI_NAVIGATION_BAR_HIDE_SHOW, 0) : 0;
        Iterator<OnNavigationBarListener> it = this.mListeners.iterator();
        while (it.hasNext()) {
            OnNavigationBarListener next = it.next();
            boolean z2 = true;
            if (i == 1) {
                z2 = false;
            }
            next.onNavigationBarChange(z2);
        }
    }

    public void register(Application application) {
        this.mApplication = application;
        if (application == null || application.getContentResolver() == null || this.mIsRegister.booleanValue()) {
            return;
        }
        Uri uriFor = null;
        if (OSUtils.isMIUI()) {
            uriFor = Settings.Global.getUriFor(Constants.IMMERSION_MIUI_NAVIGATION_BAR_HIDE_SHOW);
        } else if (OSUtils.isEMUI()) {
            uriFor = !OSUtils.isEMUI3_x() ? Settings.Global.getUriFor(Constants.IMMERSION_EMUI_NAVIGATION_BAR_HIDE_SHOW) : Settings.System.getUriFor(Constants.IMMERSION_EMUI_NAVIGATION_BAR_HIDE_SHOW);
        }
        if (uriFor != null) {
            this.mApplication.getContentResolver().registerContentObserver(uriFor, true, this);
            this.mIsRegister = Boolean.TRUE;
        }
    }

    public void removeOnNavigationBarListener(OnNavigationBarListener onNavigationBarListener) {
        ArrayList<OnNavigationBarListener> arrayList;
        if (onNavigationBarListener == null || (arrayList = this.mListeners) == null) {
            return;
        }
        arrayList.remove(onNavigationBarListener);
    }

    public NavigationBarObserver() {
        super(new Handler(Looper.getMainLooper()));
        this.mIsRegister = Boolean.FALSE;
    }
}
