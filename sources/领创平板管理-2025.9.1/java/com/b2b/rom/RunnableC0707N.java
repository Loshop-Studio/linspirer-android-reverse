package com.b2b.rom;

import android.os.RemoteException;
import android.util.Log;

/* renamed from: com.b2b.rom.N */
/* loaded from: classes.dex */
public final class RunnableC0707N implements Runnable {

    /* renamed from: a */
    public /* synthetic */ ISamsungDevice f2067a;

    public RunnableC0707N(ISamsungDevice iSamsungDevice) {
        this.f2067a = iSamsungDevice;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f2067a.checkCustomService();
        Log.w(this.f2067a.f2054a, "disableSettingSectionMenu calling...");
        try {
            this.f2067a.f2059f.mo1628f();
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
