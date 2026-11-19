package com.b2b.rom;

import android.os.RemoteException;
import android.util.Log;

/* renamed from: com.b2b.rom.U */
/* loaded from: classes.dex */
public final class SamsungDisableAppTask implements Runnable {

    /* renamed from: a */
    public /* synthetic */ ISamsungDevice f2075a;

    /* renamed from: b */
    public final /* synthetic */ String f2076b;

    public SamsungDisableAppTask(ISamsungDevice iSamsungDevice, String str) {
        this.f2075a = iSamsungDevice;
        this.f2076b = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f2075a.checkRemoteService();
        Log.w(this.f2075a.f2054a, "disableApp calling...");
        try {
            this.f2075a.f2057d.mo1904b(this.f2076b);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
