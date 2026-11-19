package com.b2b.rom;

import android.os.RemoteException;
import android.util.Log;

/* renamed from: com.b2b.rom.g */
/* loaded from: classes.dex */
public final class RunnableC0724g implements Runnable {

    /* renamed from: a */
    public /* synthetic */ ISamsungDevice f2086a;

    public RunnableC0724g(ISamsungDevice iSamsungDevice) {
        this.f2086a = iSamsungDevice;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f2086a.checkRemoteService();
        Log.w(this.f2086a.f2054a, "enableVolume calling...");
        try {
            this.f2086a.f2057d.mo1910d1();
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
