package com.b2b.rom;

import android.os.RemoteException;
import android.util.Log;

/* renamed from: com.b2b.rom.z */
/* loaded from: classes.dex */
public final class RunnableC0743z implements Runnable {

    /* renamed from: a */
    public /* synthetic */ ISamsungDevice f2109a;

    public RunnableC0743z(ISamsungDevice iSamsungDevice) {
        this.f2109a = iSamsungDevice;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f2109a.checkRemoteService();
        Log.w(this.f2109a.f2054a, "disableStatusBar calling...");
        try {
            this.f2109a.f2057d.mo1922q();
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
