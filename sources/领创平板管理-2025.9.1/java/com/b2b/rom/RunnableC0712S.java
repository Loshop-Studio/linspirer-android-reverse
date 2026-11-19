package com.b2b.rom;

import android.os.RemoteException;
import android.util.Log;

/* renamed from: com.b2b.rom.S */
/* loaded from: classes.dex */
public final class RunnableC0712S implements Runnable {

    /* renamed from: a */
    public /* synthetic */ ISamsungDevice f2072a;

    public RunnableC0712S(ISamsungDevice iSamsungDevice) {
        this.f2072a = iSamsungDevice;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f2072a.checkRemoteService();
        Log.w(this.f2072a.f2054a, "disableCamera calling...");
        try {
            this.f2072a.f2057d.mo1889B0();
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
