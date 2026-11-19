package com.b2b.rom;

import android.os.RemoteException;
import android.util.Log;

/* renamed from: com.b2b.rom.f */
/* loaded from: classes.dex */
public final class RunnableC0723f implements Runnable {

    /* renamed from: a */
    public /* synthetic */ ISamsungDevice f2085a;

    public RunnableC0723f(ISamsungDevice iSamsungDevice) {
        this.f2085a = iSamsungDevice;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f2085a.checkRemoteService();
        Log.w(this.f2085a.f2054a, "disableRecent calling...");
        try {
            this.f2085a.f2057d.mo1898U();
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
