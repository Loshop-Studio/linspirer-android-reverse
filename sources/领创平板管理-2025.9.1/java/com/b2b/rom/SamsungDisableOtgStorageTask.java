package com.b2b.rom;

import android.os.RemoteException;
import android.util.Log;

/* renamed from: com.b2b.rom.A */
/* loaded from: classes.dex */
public final class SamsungDisableOtgStorageTask implements Runnable {

    /* renamed from: a */
    public /* synthetic */ ISamsungDevice f2042a;

    public SamsungDisableOtgStorageTask(ISamsungDevice iSamsungDevice) {
        this.f2042a = iSamsungDevice;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f2042a.checkRemoteService();
        Log.w(this.f2042a.f2054a, "disableOtgStorage calling...");
        try {
            Log.e(this.f2042a.f2054a, "disableOtgStorage:".concat(String.valueOf(this.f2042a.f2057d.mo1928x0(false))));
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
