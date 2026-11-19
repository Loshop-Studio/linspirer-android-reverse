package com.b2b.rom;

import android.os.RemoteException;
import android.util.Log;

/* renamed from: com.b2b.rom.K */
/* loaded from: classes.dex */
public final class RunnableC0704K implements Runnable {

    /* renamed from: a */
    public /* synthetic */ ISamsungDevice f2064a;

    public RunnableC0704K(ISamsungDevice iSamsungDevice) {
        this.f2064a = iSamsungDevice;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f2064a.checkCustomService();
        Log.w(this.f2064a.f2054a, "enableLockScreenIcon calling...");
        try {
            this.f2064a.f2059f.mo1632m();
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
