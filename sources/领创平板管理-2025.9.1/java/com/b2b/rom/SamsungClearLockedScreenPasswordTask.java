package com.b2b.rom;

import android.os.RemoteException;
import android.util.Log;

/* renamed from: com.b2b.rom.p */
/* loaded from: classes.dex */
public final class SamsungClearLockedScreenPasswordTask implements Runnable {

    /* renamed from: a */
    public /* synthetic */ ISamsungDevice f2097a;

    public SamsungClearLockedScreenPasswordTask(ISamsungDevice iSamsungDevice) {
        this.f2097a = iSamsungDevice;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f2097a.checkRemoteService();
        Log.w(this.f2097a.f2054a, "clearLockedScreenPassword calling...");
        try {
            this.f2097a.f2057d.mo1890C2();
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
