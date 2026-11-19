package com.b2b.rom;

import android.os.RemoteException;
import android.util.Log;

/* renamed from: com.b2b.rom.B */
/* loaded from: classes.dex */
public final class RunnableC0695B implements Runnable {

    /* renamed from: a */
    public /* synthetic */ ISamsungDevice f2043a;

    public RunnableC0695B(ISamsungDevice iSamsungDevice) {
        this.f2043a = iSamsungDevice;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f2043a.checkRemoteService();
        Log.w(this.f2043a.f2054a, "enableOtgStorage calling...");
        try {
            Log.e(this.f2043a.f2054a, "enableOtgStorage:".concat(String.valueOf(this.f2043a.f2057d.mo1928x0(true))));
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
