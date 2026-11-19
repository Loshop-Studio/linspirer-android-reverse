package com.b2b.rom;

import android.os.RemoteException;
import android.util.Log;

/* renamed from: com.b2b.rom.H */
/* loaded from: classes.dex */
public final class RunnableC0701H implements Runnable {

    /* renamed from: a */
    public /* synthetic */ ISamsungDevice f2052a;

    public RunnableC0701H(ISamsungDevice iSamsungDevice) {
        this.f2052a = iSamsungDevice;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f2052a.checkRemoteService();
        Log.w(this.f2052a.f2054a, "disableBluetooth calling...");
        try {
            this.f2052a.f2057d.mo1908d();
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
