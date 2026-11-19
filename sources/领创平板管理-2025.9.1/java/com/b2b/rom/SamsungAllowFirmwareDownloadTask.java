package com.b2b.rom;

import android.util.Log;

/* renamed from: com.b2b.rom.E */
/* loaded from: classes.dex */
public final class SamsungAllowFirmwareDownloadTask implements Runnable {

    /* renamed from: a */
    public /* synthetic */ ISamsungDevice f2048a;

    public SamsungAllowFirmwareDownloadTask(ISamsungDevice iSamsungDevice) {
        this.f2048a = iSamsungDevice;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f2048a.checkRemoteService();
        Log.w(this.f2048a.f2054a, "allowFirmwareDownload calling...");
    }
}
