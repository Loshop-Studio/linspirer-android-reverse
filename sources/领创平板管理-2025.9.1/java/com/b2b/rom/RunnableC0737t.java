package com.b2b.rom;

import android.os.RemoteException;
import android.util.Log;

/* renamed from: com.b2b.rom.t */
/* loaded from: classes.dex */
public final class RunnableC0737t implements Runnable {

    /* renamed from: a */
    public /* synthetic */ ISamsungDevice f2102a;

    public RunnableC0737t(ISamsungDevice iSamsungDevice) {
        this.f2102a = iSamsungDevice;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f2102a.checkRemoteService();
        Log.w(this.f2102a.f2054a, "disableGPS calling...");
        try {
            this.f2102a.f2057d.mo1893L2();
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
