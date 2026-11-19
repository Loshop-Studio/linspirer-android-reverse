package com.huawei.hem;

import android.os.RemoteException;

/* compiled from: SeewoIMDM.java */
/* renamed from: com.huawei.hem.ph */
/* loaded from: classes.dex */
public class SeewoEnableHomeTask implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ SeewoDeviceManager f3464a;

    public SeewoEnableHomeTask(SeewoDeviceManager c1361vh) {
        this.f3464a = c1361vh;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f3464a.f3962b.mo2375H2(true);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
