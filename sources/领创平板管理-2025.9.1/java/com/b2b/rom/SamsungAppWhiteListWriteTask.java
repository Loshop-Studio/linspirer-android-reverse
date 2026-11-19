package com.b2b.rom;

import android.os.RemoteException;
import android.util.Log;
import java.util.List;

/* renamed from: com.b2b.rom.r */
/* loaded from: classes.dex */
public final class SamsungAppWhiteListWriteTask implements Runnable {

    /* renamed from: a */
    public /* synthetic */ ISamsungDevice f2099a;

    /* renamed from: b */
    public final /* synthetic */ List f2100b;

    public SamsungAppWhiteListWriteTask(ISamsungDevice iSamsungDevice, List list) {
        this.f2099a = iSamsungDevice;
        this.f2100b = list;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f2099a.checkRemoteService();
        Log.w(this.f2099a.f2054a, "appWhiteListWrite calling...");
        try {
            Log.e(this.f2099a.f2054a, "appWhiteListWrite:".concat(String.valueOf(this.f2099a.f2057d.mo1916i0(this.f2100b))));
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
