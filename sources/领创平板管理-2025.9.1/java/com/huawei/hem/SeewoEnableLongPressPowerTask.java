package com.huawei.hem;

import android.os.RemoteException;

/* compiled from: SeewoIMDM.java */
/* renamed from: com.huawei.hem.ci */
/* loaded from: classes.dex */
public class SeewoEnableLongPressPowerTask implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ SeewoDeviceManager f2340a;

    public SeewoEnableLongPressPowerTask(SeewoDeviceManager c1361vh) {
        this.f2340a = c1361vh;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f2340a.f3962b.mo2377O0(true);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
