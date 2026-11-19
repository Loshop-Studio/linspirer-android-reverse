package com.b2b.rom;

import android.os.RemoteException;
import android.util.Log;

/* renamed from: com.b2b.rom.a */
/* loaded from: classes.dex */
public final class RunnableC0718a implements Runnable {

    /* renamed from: a */
    public /* synthetic */ ISamsungDevice f2080a;

    public RunnableC0718a(ISamsungDevice iSamsungDevice) {
        this.f2080a = iSamsungDevice;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f2080a.checkRemoteService();
        Log.w(this.f2080a.f2054a, "enableUsb calling...");
        try {
            this.f2080a.f2057d.mo1901a();
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
