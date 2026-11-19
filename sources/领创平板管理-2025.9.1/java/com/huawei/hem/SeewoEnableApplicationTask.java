package com.huawei.hem;

import android.os.RemoteException;

/* compiled from: SeewoIMDM.java */
/* renamed from: com.huawei.hem.nh */
/* loaded from: classes.dex */
public class SeewoEnableApplicationTask implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ String f3331a;

    /* renamed from: b */
    public final /* synthetic */ SeewoDeviceManager f3332b;

    public SeewoEnableApplicationTask(SeewoDeviceManager c1361vh, String str) {
        this.f3332b = c1361vh;
        this.f3331a = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f3332b.f3962b.mo2386r(this.f3331a, true);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
