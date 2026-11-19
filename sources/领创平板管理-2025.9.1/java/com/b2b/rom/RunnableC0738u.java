package com.b2b.rom;

import android.os.RemoteException;
import android.util.Log;

/* renamed from: com.b2b.rom.u */
/* loaded from: classes.dex */
public final class RunnableC0738u implements Runnable {

    /* renamed from: a */
    public /* synthetic */ ISamsungDevice f2103a;

    /* renamed from: b */
    public final /* synthetic */ long f2104b;

    public RunnableC0738u(ISamsungDevice iSamsungDevice, long j) {
        this.f2103a = iSamsungDevice;
        this.f2104b = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f2103a.checkRemoteService();
        Log.w(this.f2103a.f2054a, "modifySystemTime calling...");
        try {
            this.f2103a.f2057d.mo1900Y2(this.f2104b);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
