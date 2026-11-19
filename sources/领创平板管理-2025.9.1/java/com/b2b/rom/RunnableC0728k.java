package com.b2b.rom;

import android.os.RemoteException;
import android.util.Log;

/* renamed from: com.b2b.rom.k */
/* loaded from: classes.dex */
public final class RunnableC0728k implements Runnable {

    /* renamed from: a */
    public /* synthetic */ ISamsungDevice f2090a;

    public RunnableC0728k(ISamsungDevice iSamsungDevice) {
        this.f2090a = iSamsungDevice;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f2090a.checkRemoteService();
        Log.w(this.f2090a.f2054a, "enableLongPressPower calling...");
        try {
            this.f2090a.f2057d.mo1895R0();
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
