package com.huawei.hem;

import android.os.RemoteException;

/* compiled from: SeewoIMDM.java */
/* renamed from: com.huawei.hem.yh */
/* loaded from: classes.dex */
public class SeewoEnableShortPressPowerTask implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ SeewoDeviceManager f4221a;

    public SeewoEnableShortPressPowerTask(SeewoDeviceManager c1361vh) {
        this.f4221a = c1361vh;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f4221a.f3962b.mo2380e3(true);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
