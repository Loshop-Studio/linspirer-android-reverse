package com.b2b.rom;

import android.os.RemoteException;
import android.util.Log;

/* renamed from: com.b2b.rom.R */
/* loaded from: classes.dex */
public final class RunnableC0711R implements Runnable {

    /* renamed from: a */
    public /* synthetic */ ISamsungDevice f2071a;

    public RunnableC0711R(ISamsungDevice iSamsungDevice) {
        this.f2071a = iSamsungDevice;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f2071a.checkRemoteService();
        Log.w(this.f2071a.f2054a, "enableCamera calling...");
        try {
            this.f2071a.f2057d.mo1911e();
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
