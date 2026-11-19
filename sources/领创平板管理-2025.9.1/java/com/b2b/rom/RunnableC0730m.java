package com.b2b.rom;

import android.os.RemoteException;
import android.util.Log;

/* renamed from: com.b2b.rom.m */
/* loaded from: classes.dex */
public final class RunnableC0730m implements Runnable {

    /* renamed from: a */
    public /* synthetic */ ISamsungDevice f2092a;

    public RunnableC0730m(ISamsungDevice iSamsungDevice) {
        this.f2092a = iSamsungDevice;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f2092a.checkRemoteService();
        Log.w(this.f2092a.f2054a, "disableLongPressPower calling...");
        try {
            this.f2092a.f2057d.mo1894M1();
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
