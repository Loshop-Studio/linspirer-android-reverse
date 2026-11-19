package com.b2b.rom;

import android.util.Log;

/* renamed from: com.b2b.rom.F */
/* loaded from: classes.dex */
public final class RunnableC0699F implements Runnable {

    /* renamed from: a */
    public /* synthetic */ ISamsungDevice f2049a;

    public RunnableC0699F(ISamsungDevice iSamsungDevice) {
        this.f2049a = iSamsungDevice;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f2049a.checkRemoteService();
        Log.w(this.f2049a.f2054a, "disallowFirmwareDownload calling...");
    }
}
