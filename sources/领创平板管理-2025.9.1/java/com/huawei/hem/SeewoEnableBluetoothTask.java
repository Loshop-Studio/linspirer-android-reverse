package com.huawei.hem;

import android.os.RemoteException;

/* compiled from: SeewoIMDM.java */
/* renamed from: com.huawei.hem.qi */
/* loaded from: classes.dex */
public class SeewoEnableBluetoothTask implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ SeewoDeviceManager f3561a;

    public SeewoEnableBluetoothTask(SeewoDeviceManager c1361vh) {
        this.f3561a = c1361vh;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f3561a.f3962b.mo2381i(true);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
