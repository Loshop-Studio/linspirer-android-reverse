package com.b2b.rom;

import android.os.RemoteException;
import android.util.Log;

/* renamed from: com.b2b.rom.Q */
/* loaded from: classes.dex */
public final class SamsungDisableAppDetailTask implements Runnable {

    /* renamed from: a */
    public /* synthetic */ ISamsungDevice f2070a;

    public SamsungDisableAppDetailTask(ISamsungDevice iSamsungDevice) {
        this.f2070a = iSamsungDevice;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f2070a.checkCustomService();
        Log.w(this.f2070a.f2054a, "disableAppDetail calling...");
        try {
            this.f2070a.f2059f.mo1630h();
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
