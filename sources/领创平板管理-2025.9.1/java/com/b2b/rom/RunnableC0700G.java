package com.b2b.rom;

import android.os.RemoteException;
import android.util.Log;
import java.util.List;

/* renamed from: com.b2b.rom.G */
/* loaded from: classes.dex */
public final class RunnableC0700G implements Runnable {

    /* renamed from: a */
    public /* synthetic */ ISamsungDevice f2050a;

    /* renamed from: b */
    public final /* synthetic */ List f2051b;

    public RunnableC0700G(ISamsungDevice iSamsungDevice, List list) {
        this.f2050a = iSamsungDevice;
        this.f2051b = list;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f2050a.checkRemoteService();
        Log.w(this.f2050a.f2054a, "urlWhiteListWrite_2 calling...");
        try {
            Log.e(this.f2050a.f2054a, "urlWhiteListWrite_2:".concat(String.valueOf(this.f2050a.f2057d.mo1891D1(this.f2051b))));
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
