package com.huawei.hem;

import android.os.RemoteException;

/* compiled from: SeewoIMDM.java */
/* renamed from: com.huawei.hem.ji */
/* loaded from: classes.dex */
public class SeewoUpdateDeviceTimeTask implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ long f2955a;

    /* renamed from: b */
    public final /* synthetic */ SeewoDeviceManager f2956b;

    public SeewoUpdateDeviceTimeTask(SeewoDeviceManager c1361vh, long j) {
        this.f2956b = c1361vh;
        this.f2955a = j;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f2956b.f3962b.modifySystemTime(this.f2955a);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
