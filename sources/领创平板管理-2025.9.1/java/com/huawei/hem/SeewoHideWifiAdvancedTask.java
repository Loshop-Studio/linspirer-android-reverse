package com.huawei.hem;

import android.os.RemoteException;

/* compiled from: SeewoIMDM.java */
/* renamed from: com.huawei.hem.ai */
/* loaded from: classes.dex */
public class SeewoHideWifiAdvancedTask implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ SeewoDeviceManager f2211a;

    public SeewoHideWifiAdvancedTask(SeewoDeviceManager c1361vh) {
        this.f2211a = c1361vh;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f2211a.f3962b.mo2387s(false);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
