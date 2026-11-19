package com.huawei.hem;

import android.os.RemoteException;

/* compiled from: SeewoIMDM.java */
/* renamed from: com.huawei.hem.ki */
/* loaded from: classes.dex */
public class RunnableC1086ki implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C1361vh f3090a;

    public RunnableC1086ki(C1361vh c1361vh) {
        this.f3090a = c1361vh;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f3090a.f3962b.mo2384l2(true);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
