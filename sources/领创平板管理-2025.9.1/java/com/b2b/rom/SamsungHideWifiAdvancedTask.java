package com.b2b.rom;

import android.os.RemoteException;
import android.util.Log;

/* renamed from: com.b2b.rom.x */
/* loaded from: classes.dex */
public final class SamsungHideWifiAdvancedTask implements Runnable {

    /* renamed from: a */
    public /* synthetic */ ISamsungDevice f2107a;

    public SamsungHideWifiAdvancedTask(ISamsungDevice iSamsungDevice) {
        this.f2107a = iSamsungDevice;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f2107a.checkRemoteService();
        Log.w(this.f2107a.f2054a, "hideWifiAdvanced calling...");
        try {
            this.f2107a.f2057d.mo1914h();
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
