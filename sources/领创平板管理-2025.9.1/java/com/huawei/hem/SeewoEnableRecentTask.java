package com.huawei.hem;

import android.os.RemoteException;

/* compiled from: SeewoIMDM.java */
/* renamed from: com.huawei.hem.th */
/* loaded from: classes.dex */
public class SeewoEnableRecentTask implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ SeewoDeviceManager f3813a;

    public SeewoEnableRecentTask(SeewoDeviceManager c1361vh) {
        this.f3813a = c1361vh;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f3813a.f3962b.mo2385n2(true);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
