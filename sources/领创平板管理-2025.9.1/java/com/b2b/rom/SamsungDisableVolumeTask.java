package com.b2b.rom;

import android.os.RemoteException;
import android.util.Log;

/* renamed from: com.b2b.rom.h */
/* loaded from: classes.dex */
public final class SamsungDisableVolumeTask implements Runnable {

    /* renamed from: a */
    public /* synthetic */ ISamsungDevice f2087a;

    public SamsungDisableVolumeTask(ISamsungDevice iSamsungDevice) {
        this.f2087a = iSamsungDevice;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f2087a.checkRemoteService();
        Log.w(this.f2087a.f2054a, "disableVolume calling...");
        try {
            this.f2087a.f2057d.mo1899V1();
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
