package com.huawei.hem;

import android.os.RemoteException;

/* compiled from: SeewoIMDM.java */
/* renamed from: com.huawei.hem.bi */
/* loaded from: classes.dex */
public class SeewoShowWifiAdvancedTask implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ SeewoDeviceManager f2303a;

    public SeewoShowWifiAdvancedTask(SeewoDeviceManager c1361vh) {
        this.f2303a = c1361vh;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f2303a.f3962b.mo2387s(true);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
