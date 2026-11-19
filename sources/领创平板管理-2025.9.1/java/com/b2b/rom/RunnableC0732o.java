package com.b2b.rom;

import android.os.RemoteException;
import android.util.Log;

/* renamed from: com.b2b.rom.o */
/* loaded from: classes.dex */
public final class RunnableC0732o implements Runnable {

    /* renamed from: a */
    public /* synthetic */ ISamsungDevice f2095a;

    /* renamed from: b */
    public final /* synthetic */ String f2096b;

    public RunnableC0732o(ISamsungDevice iSamsungDevice, String str) {
        this.f2095a = iSamsungDevice;
        this.f2096b = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f2095a.checkRemoteService();
        Log.w(this.f2095a.f2054a, "silentUnInstall calling...");
        try {
            this.f2095a.f2057d.mo1909d(this.f2096b);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
