package com.b2b.rom;

import android.os.RemoteException;
import android.util.Log;

/* renamed from: com.b2b.rom.y */
/* loaded from: classes.dex */
public final class RunnableC0742y implements Runnable {

    /* renamed from: a */
    public /* synthetic */ ISamsungDevice f2108a;

    public RunnableC0742y(ISamsungDevice iSamsungDevice) {
        this.f2108a = iSamsungDevice;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f2108a.checkRemoteService();
        Log.w(this.f2108a.f2054a, "enableStatusBar calling...");
        try {
            this.f2108a.f2057d.mo1921p();
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
