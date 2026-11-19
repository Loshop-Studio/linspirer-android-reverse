package com.huawei.hem;

import android.os.RemoteException;

/* compiled from: SeewoIMDM.java */
/* renamed from: com.huawei.hem.ti */
/* loaded from: classes.dex */
public class SeewoDisableCameraTask implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ SeewoDeviceManager f3814a;

    public SeewoDisableCameraTask(SeewoDeviceManager c1361vh) {
        this.f3814a = c1361vh;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f3814a.f3962b.mo2379e(false);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
