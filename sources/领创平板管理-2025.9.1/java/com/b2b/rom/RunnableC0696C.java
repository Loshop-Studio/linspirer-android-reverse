package com.b2b.rom;

import android.os.RemoteException;
import android.util.Log;

/* renamed from: com.b2b.rom.C */
/* loaded from: classes.dex */
public final class RunnableC0696C implements Runnable {

    /* renamed from: a */
    public /* synthetic */ ISamsungDevice f2044a;

    /* renamed from: b */
    public final /* synthetic */ boolean f2045b;

    public RunnableC0696C(ISamsungDevice iSamsungDevice, boolean z) {
        this.f2044a = iSamsungDevice;
        this.f2045b = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f2044a.checkRemoteService();
        Log.w(this.f2044a.f2054a, "setSdCardState calling...");
        try {
            Log.e(this.f2044a.f2054a, "setSdCardState:".concat(String.valueOf(this.f2044a.f2057d.mo1925u1(this.f2045b))));
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
