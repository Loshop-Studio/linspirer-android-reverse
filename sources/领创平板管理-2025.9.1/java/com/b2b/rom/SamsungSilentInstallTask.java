package com.b2b.rom;

import android.os.RemoteException;
import android.util.Log;

/* renamed from: com.b2b.rom.n */
/* loaded from: classes.dex */
public final class SamsungSilentInstallTask implements Runnable {

    /* renamed from: a */
    public /* synthetic */ ISamsungDevice f2093a;

    /* renamed from: b */
    public final /* synthetic */ String f2094b;

    public SamsungSilentInstallTask(ISamsungDevice iSamsungDevice, String str) {
        this.f2093a = iSamsungDevice;
        this.f2094b = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f2093a.checkRemoteService();
        Log.w(this.f2093a.f2054a, "silentInstall calling...");
        try {
            this.f2093a.f2057d.mo1906c(this.f2094b);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
