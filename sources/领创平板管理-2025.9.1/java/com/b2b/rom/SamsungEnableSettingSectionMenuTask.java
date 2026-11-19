package com.b2b.rom;

import android.os.RemoteException;
import android.util.Log;

/* renamed from: com.b2b.rom.M */
/* loaded from: classes.dex */
public final class SamsungEnableSettingSectionMenuTask implements Runnable {

    /* renamed from: a */
    public /* synthetic */ ISamsungDevice f2066a;

    public SamsungEnableSettingSectionMenuTask(ISamsungDevice iSamsungDevice) {
        this.f2066a = iSamsungDevice;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f2066a.checkCustomService();
        Log.w(this.f2066a.f2054a, "enableSettingSectionMenu calling...");
        try {
            this.f2066a.f2059f.mo1634q();
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
