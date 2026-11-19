package com.b2b.rom;

import android.os.RemoteException;
import android.util.Log;

/* renamed from: com.b2b.rom.T */
/* loaded from: classes.dex */
public final class SamsungEnableAppTask implements Runnable {

    /* renamed from: a */
    public /* synthetic */ ISamsungDevice f2073a;

    /* renamed from: b */
    public final /* synthetic */ String f2074b;

    public SamsungEnableAppTask(ISamsungDevice iSamsungDevice, String str) {
        this.f2073a = iSamsungDevice;
        this.f2074b = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f2073a.checkRemoteService();
        Log.w(this.f2073a.f2054a, "enableApp calling...");
        try {
            this.f2073a.f2057d.mo1902a(this.f2074b);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
