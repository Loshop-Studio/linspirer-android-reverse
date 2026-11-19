package com.b2b.rom;

import android.os.RemoteException;
import android.util.Log;

/* renamed from: com.b2b.rom.I */
/* loaded from: classes.dex */
public final class SamsungEnableScreenshotsTask implements Runnable {

    /* renamed from: a */
    public /* synthetic */ ISamsungDevice f2053a;

    public SamsungEnableScreenshotsTask(ISamsungDevice iSamsungDevice) {
        this.f2053a = iSamsungDevice;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f2053a.checkCustomService();
        Log.w(this.f2053a.f2054a, "enableScreensHots calling...");
        try {
            this.f2053a.f2059f.mo1629g3();
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
