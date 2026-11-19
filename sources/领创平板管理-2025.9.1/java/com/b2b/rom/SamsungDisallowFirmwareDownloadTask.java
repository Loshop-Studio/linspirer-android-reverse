package com.b2b.rom;

import android.util.Log;

/* renamed from: com.b2b.rom.F */
/* loaded from: classes.dex */
public final class SamsungDisallowFirmwareDownloadTask implements Runnable {

    /* renamed from: a */
    public /* synthetic */ ISamsungDevice f2049a;

    public SamsungDisallowFirmwareDownloadTask(ISamsungDevice iSamsungDevice) {
        this.f2049a = iSamsungDevice;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f2049a.checkRemoteService();
        Log.w(this.f2049a.f2054a, "disallowFirmwareDownload calling...");
    }
}
