package com.huawei.hem;

import android.os.RemoteException;

/* compiled from: SeewoIMDM.java */
/* renamed from: com.huawei.hem.qi */
/* loaded from: classes.dex */
public class RunnableC1237qi implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C1361vh f3561a;

    public RunnableC1237qi(C1361vh c1361vh) {
        this.f3561a = c1361vh;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f3561a.f3962b.mo2381i(true);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
