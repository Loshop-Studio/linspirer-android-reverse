package com.huawei.hem;

import android.os.RemoteException;

/* compiled from: SeewoIMDM.java */
/* renamed from: com.huawei.hem.gi */
/* loaded from: classes.dex */
public class SeewoEnableUsbTask implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ SeewoDeviceManager f2784a;

    public SeewoEnableUsbTask(SeewoDeviceManager c1361vh) {
        this.f2784a = c1361vh;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f2784a.f3962b.mo2382k(true);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
