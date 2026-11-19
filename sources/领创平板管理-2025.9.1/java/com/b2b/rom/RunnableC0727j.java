package com.b2b.rom;

import android.os.RemoteException;
import android.util.Log;

/* renamed from: com.b2b.rom.j */
/* loaded from: classes.dex */
public final class RunnableC0727j implements Runnable {

    /* renamed from: a */
    public /* synthetic */ ISamsungDevice f2089a;

    public RunnableC0727j(ISamsungDevice iSamsungDevice) {
        this.f2089a = iSamsungDevice;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f2089a.checkRemoteService();
        Log.w(this.f2089a.f2054a, "disableShortPressPower calling...");
        try {
            this.f2089a.f2057d.mo1892K();
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
