package com.b2b.rom;

import android.os.RemoteException;
import android.util.Log;

/* renamed from: com.b2b.rom.V */
/* loaded from: classes.dex */
public final class RunnableC0715V implements Runnable {

    /* renamed from: a */
    public /* synthetic */ ISamsungDevice f2077a;

    public RunnableC0715V(ISamsungDevice iSamsungDevice) {
        this.f2077a = iSamsungDevice;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f2077a.checkRemoteService();
        Log.w(this.f2077a.f2054a, "enableHome calling...");
        try {
            this.f2077a.f2057d.mo1920n3();
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
