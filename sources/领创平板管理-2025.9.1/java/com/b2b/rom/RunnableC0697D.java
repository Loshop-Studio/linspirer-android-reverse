package com.b2b.rom;

import android.os.RemoteException;
import android.util.Log;
import java.util.List;

/* renamed from: com.b2b.rom.D */
/* loaded from: classes.dex */
public final class RunnableC0697D implements Runnable {

    /* renamed from: a */
    public /* synthetic */ ISamsungDevice f2046a;

    /* renamed from: b */
    public final /* synthetic */ List f2047b;

    public RunnableC0697D(ISamsungDevice iSamsungDevice, List list) {
        this.f2046a = iSamsungDevice;
        this.f2047b = list;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f2046a.checkRemoteService();
        Log.w(this.f2046a.f2054a, "addNetworkAccessAppWhiteList calling...");
        try {
            this.f2046a.f2057d.mo1923r2(this.f2047b);
            Log.e(this.f2046a.f2054a, "addNetworkAccessAppWhiteList finished");
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
