package com.huawei.hem;

import android.os.RemoteException;

/* compiled from: SeewoIMDM.java */
/* renamed from: com.huawei.hem.li */
/* loaded from: classes.dex */
public class SeewoDisableOtgTask implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ SeewoDeviceManager f3189a;

    public SeewoDisableOtgTask(SeewoDeviceManager c1361vh) {
        this.f3189a = c1361vh;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f3189a.f3962b.mo2384l2(false);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
