package com.b2b.rom;

import android.os.RemoteException;
import android.util.Log;

/* renamed from: com.b2b.rom.e */
/* loaded from: classes.dex */
public final class RunnableC0722e implements Runnable {

    /* renamed from: a */
    public /* synthetic */ ISamsungDevice f2084a;

    public RunnableC0722e(ISamsungDevice iSamsungDevice) {
        this.f2084a = iSamsungDevice;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f2084a.checkRemoteService();
        Log.w(this.f2084a.f2054a, "enableRecent calling...");
        try {
            this.f2084a.f2057d.mo1907c3();
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
