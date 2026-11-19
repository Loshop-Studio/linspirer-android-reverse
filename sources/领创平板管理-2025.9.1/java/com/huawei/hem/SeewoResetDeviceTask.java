package com.huawei.hem;

import android.os.RemoteException;

/* compiled from: SeewoIMDM.java */
/* renamed from: com.huawei.hem.hi */
/* loaded from: classes.dex */
public class SeewoResetDeviceTask implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ SeewoDeviceManager f2872a;

    public SeewoResetDeviceTask(SeewoDeviceManager c1361vh) {
        this.f2872a = c1361vh;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f2872a.f3962b.resetFactory();
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
