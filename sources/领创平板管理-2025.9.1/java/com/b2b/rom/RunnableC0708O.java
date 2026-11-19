package com.b2b.rom;

import android.os.RemoteException;
import android.util.Log;

/* renamed from: com.b2b.rom.O */
/* loaded from: classes.dex */
public final class RunnableC0708O implements Runnable {

    /* renamed from: a */
    public /* synthetic */ ISamsungDevice f2068a;

    public RunnableC0708O(ISamsungDevice iSamsungDevice) {
        this.f2068a = iSamsungDevice;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f2068a.checkCustomService();
        Log.w(this.f2068a.f2054a, "enableAppDetail calling...");
        try {
            this.f2068a.f2059f.mo1631j();
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
