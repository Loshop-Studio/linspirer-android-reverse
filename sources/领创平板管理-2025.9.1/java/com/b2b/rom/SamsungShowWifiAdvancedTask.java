package com.b2b.rom;

import android.os.RemoteException;
import android.util.Log;

/* renamed from: com.b2b.rom.v */
/* loaded from: classes.dex */
public final class SamsungShowWifiAdvancedTask implements Runnable {

    /* renamed from: a */
    public /* synthetic */ ISamsungDevice f2105a;

    public SamsungShowWifiAdvancedTask(ISamsungDevice iSamsungDevice) {
        this.f2105a = iSamsungDevice;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f2105a.checkRemoteService();
        Log.w(this.f2105a.f2054a, "showWifiAdvanced calling...");
        try {
            this.f2105a.f2057d.mo1924r3();
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
