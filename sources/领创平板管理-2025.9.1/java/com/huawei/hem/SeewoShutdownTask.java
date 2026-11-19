package com.huawei.hem;

import android.os.RemoteException;

/* compiled from: SeewoIMDM.java */
/* renamed from: com.huawei.hem.pi */
/* loaded from: classes.dex */
public class SeewoShutdownTask implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ SeewoDeviceManager f3465a;

    public SeewoShutdownTask(SeewoDeviceManager c1361vh) {
        this.f3465a = c1361vh;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f3465a.f3962b.mo2376M0();
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
