package com.huawei.hem;

import android.os.RemoteException;

/* compiled from: SeewoIMDM.java */
/* renamed from: com.huawei.hem.ti */
/* loaded from: classes.dex */
public class RunnableC1312ti implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C1361vh f3814a;

    public RunnableC1312ti(C1361vh c1361vh) {
        this.f3814a = c1361vh;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f3814a.f3962b.mo2379e(false);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
