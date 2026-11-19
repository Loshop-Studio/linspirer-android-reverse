package com.huawei.hem;

import android.os.RemoteException;

/* compiled from: SeewoIMDM.java */
/* renamed from: com.huawei.hem.ri */
/* loaded from: classes.dex */
public class SeewoDisableBluetoothTask implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ SeewoDeviceManager f3643a;

    public SeewoDisableBluetoothTask(SeewoDeviceManager c1361vh) {
        this.f3643a = c1361vh;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f3643a.f3962b.mo2381i(false);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
