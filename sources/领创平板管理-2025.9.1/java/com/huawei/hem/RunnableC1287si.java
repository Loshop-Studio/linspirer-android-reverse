package com.huawei.hem;

import android.os.RemoteException;

/* compiled from: SeewoIMDM.java */
/* renamed from: com.huawei.hem.si */
/* loaded from: classes.dex */
public class RunnableC1287si implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C1361vh f3714a;

    public RunnableC1287si(C1361vh c1361vh) {
        this.f3714a = c1361vh;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f3714a.f3962b.mo2379e(true);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
