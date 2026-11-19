package com.b2b.rom;

import android.os.RemoteException;
import android.util.Log;

/* renamed from: com.b2b.rom.P */
/* loaded from: classes.dex */
public final class SamsungDisableHomeLongFuncTask implements Runnable {

    /* renamed from: a */
    public /* synthetic */ ISamsungDevice f2069a;

    public SamsungDisableHomeLongFuncTask(ISamsungDevice iSamsungDevice) {
        this.f2069a = iSamsungDevice;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f2069a.checkCustomService();
        Log.w(this.f2069a.f2054a, "disableHomeLongFunc calling...");
        try {
            this.f2069a.f2059f.mo1626Q1();
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
