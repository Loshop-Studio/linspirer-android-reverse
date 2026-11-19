package com.huawei.hem;

import android.os.RemoteException;

/* compiled from: SeewoIMDM.java */
/* renamed from: com.huawei.hem.si */
/* loaded from: classes.dex */
public class SeewoEnableCameraTask implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ SeewoDeviceManager f3714a;

    public SeewoEnableCameraTask(SeewoDeviceManager c1361vh) {
        this.f3714a = c1361vh;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f3714a.f3962b.mo2379e(true);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
