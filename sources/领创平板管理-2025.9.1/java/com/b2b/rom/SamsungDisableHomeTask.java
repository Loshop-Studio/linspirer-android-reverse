package com.b2b.rom;

import android.os.RemoteException;
import android.util.Log;

/* renamed from: com.b2b.rom.b */
/* loaded from: classes.dex */
public final class SamsungDisableHomeTask implements Runnable {

    /* renamed from: a */
    public /* synthetic */ ISamsungDevice f2081a;

    public SamsungDisableHomeTask(ISamsungDevice iSamsungDevice) {
        this.f2081a = iSamsungDevice;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f2081a.checkRemoteService();
        Log.w(this.f2081a.f2054a, "disableHome calling...");
        try {
            this.f2081a.f2057d.mo1915h0();
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
