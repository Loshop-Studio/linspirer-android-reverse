package com.b2b.rom;

import android.os.RemoteException;
import android.util.Log;

/* renamed from: com.b2b.rom.c */
/* loaded from: classes.dex */
public final class SamsungEnableBackTask implements Runnable {

    /* renamed from: a */
    public /* synthetic */ ISamsungDevice f2082a;

    public SamsungEnableBackTask(ISamsungDevice iSamsungDevice) {
        this.f2082a = iSamsungDevice;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f2082a.checkRemoteService();
        Log.w(this.f2082a.f2054a, "enableBack calling...");
        try {
            this.f2082a.f2057d.mo1919m1();
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
