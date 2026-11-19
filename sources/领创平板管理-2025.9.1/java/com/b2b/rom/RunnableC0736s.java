package com.b2b.rom;

import android.os.RemoteException;
import android.util.Log;

/* renamed from: com.b2b.rom.s */
/* loaded from: classes.dex */
public final class RunnableC0736s implements Runnable {

    /* renamed from: a */
    public /* synthetic */ ISamsungDevice f2101a;

    public RunnableC0736s(ISamsungDevice iSamsungDevice) {
        this.f2101a = iSamsungDevice;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f2101a.checkRemoteService();
        Log.w(this.f2101a.f2054a, "enableGPS calling...");
        try {
            this.f2101a.f2057d.mo1896R1();
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
