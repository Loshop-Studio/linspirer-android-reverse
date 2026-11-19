package com.huawei.hem;

import android.os.RemoteException;

/* compiled from: SeewoIMDM.java */
/* renamed from: com.huawei.hem.oi */
/* loaded from: classes.dex */
public class RunnableC1187oi implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C1361vh f3409a;

    public RunnableC1187oi(C1361vh c1361vh) {
        this.f3409a = c1361vh;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f3409a.f3962b.mo2382k(false);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
