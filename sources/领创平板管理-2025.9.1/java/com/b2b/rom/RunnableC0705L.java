package com.b2b.rom;

import android.os.RemoteException;
import android.util.Log;

/* renamed from: com.b2b.rom.L */
/* loaded from: classes.dex */
public final class RunnableC0705L implements Runnable {

    /* renamed from: a */
    public /* synthetic */ ISamsungDevice f2065a;

    public RunnableC0705L(ISamsungDevice iSamsungDevice) {
        this.f2065a = iSamsungDevice;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f2065a.checkCustomService();
        Log.w(this.f2065a.f2054a, "disableLockScreenIcon calling...");
        try {
            this.f2065a.f2059f.mo1633p();
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
