package com.b2b.rom;

import android.os.RemoteException;
import android.util.Log;

/* renamed from: com.b2b.rom.w */
/* loaded from: classes.dex */
public final class SamsungEnableBluetoothTask implements Runnable {

    /* renamed from: a */
    public /* synthetic */ ISamsungDevice f2106a;

    public SamsungEnableBluetoothTask(ISamsungDevice iSamsungDevice) {
        this.f2106a = iSamsungDevice;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f2106a.checkRemoteService();
        Log.w(this.f2106a.f2054a, "enableBluetooth calling...");
        try {
            this.f2106a.f2057d.mo1905c();
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
