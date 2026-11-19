package com.b2b.rom;

import android.os.RemoteException;
import android.util.Log;

/* renamed from: com.b2b.rom.J */
/* loaded from: classes.dex */
public final class SamsungDisableScreenshotsTask implements Runnable {

    /* renamed from: a */
    public /* synthetic */ ISamsungDevice f2063a;

    public SamsungDisableScreenshotsTask(ISamsungDevice iSamsungDevice) {
        this.f2063a = iSamsungDevice;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f2063a.checkCustomService();
        Log.w(this.f2063a.f2054a, "disableScreensHots calling...");
        try {
            this.f2063a.f2059f.mo1627Z();
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
