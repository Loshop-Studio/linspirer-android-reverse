package com.b2b.rom;

import android.os.RemoteException;

/* renamed from: com.b2b.rom.q */
/* loaded from: classes.dex */
public final class SamsungResetFactoryTask implements Runnable {

    /* renamed from: a */
    public /* synthetic */ ISamsungDevice f2098a;

    public SamsungResetFactoryTask(ISamsungDevice iSamsungDevice) {
        this.f2098a = iSamsungDevice;
    }

    @Override // java.lang.Runnable
    public final void run() {
        while (this.f2098a.f2057d == null) {
        }
        try {
            this.f2098a.f2057d.mo1927x();
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
