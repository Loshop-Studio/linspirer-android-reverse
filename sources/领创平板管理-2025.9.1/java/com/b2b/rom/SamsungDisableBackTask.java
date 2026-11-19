package com.b2b.rom;

import android.os.RemoteException;
import android.util.Log;

/* renamed from: com.b2b.rom.d */
/* loaded from: classes.dex */
public final class SamsungDisableBackTask implements Runnable {

    /* renamed from: a */
    public /* synthetic */ ISamsungDevice f2083a;

    public SamsungDisableBackTask(ISamsungDevice iSamsungDevice) {
        this.f2083a = iSamsungDevice;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f2083a.checkRemoteService();
        Log.w(this.f2083a.f2054a, "disableBack calling...");
        try {
            this.f2083a.f2057d.mo1912e2();
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
