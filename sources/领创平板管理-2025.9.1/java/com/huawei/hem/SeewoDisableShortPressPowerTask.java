package com.huawei.hem;

import android.os.RemoteException;

/* compiled from: SeewoIMDM.java */
/* renamed from: com.huawei.hem.zh */
/* loaded from: classes.dex */
public class SeewoDisableShortPressPowerTask implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ SeewoDeviceManager f4309a;

    public SeewoDisableShortPressPowerTask(SeewoDeviceManager c1361vh) {
        this.f4309a = c1361vh;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f4309a.f3962b.mo2380e3(false);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
