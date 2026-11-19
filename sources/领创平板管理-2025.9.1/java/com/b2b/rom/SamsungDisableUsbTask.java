package com.b2b.rom;

import android.os.RemoteException;
import android.util.Log;

/* renamed from: com.b2b.rom.l */
/* loaded from: classes.dex */
public final class SamsungDisableUsbTask implements Runnable {

    /* renamed from: a */
    public /* synthetic */ ISamsungDevice f2091a;

    public SamsungDisableUsbTask(ISamsungDevice iSamsungDevice) {
        this.f2091a = iSamsungDevice;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f2091a.checkRemoteService();
        Log.w(this.f2091a.f2054a, "disableUsb calling...");
        try {
            this.f2091a.f2057d.mo1903b();
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
