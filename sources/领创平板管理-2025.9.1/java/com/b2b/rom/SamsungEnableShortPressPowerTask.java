package com.b2b.rom;

import android.os.RemoteException;
import android.util.Log;

/* renamed from: com.b2b.rom.i */
/* loaded from: classes.dex */
public final class SamsungEnableShortPressPowerTask implements Runnable {

    /* renamed from: a */
    public /* synthetic */ ISamsungDevice f2088a;

    public SamsungEnableShortPressPowerTask(ISamsungDevice iSamsungDevice) {
        this.f2088a = iSamsungDevice;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f2088a.checkRemoteService();
        Log.w(this.f2088a.f2054a, "enableShortPressPower calling...");
        try {
            this.f2088a.f2057d.mo1897R2();
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
