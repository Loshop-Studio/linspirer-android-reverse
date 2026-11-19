package com.huawei.hem;

import android.os.RemoteException;

/* compiled from: SeewoIMDM.java */
/* renamed from: com.huawei.hem.sh */
/* loaded from: classes.dex */
public class RunnableC1286sh implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C1361vh f3713a;

    public RunnableC1286sh(C1361vh c1361vh) {
        this.f3713a = c1361vh;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f3713a.f3962b.mo2388s0(false);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
