package com.huawei.hem;

import android.os.RemoteException;

/* compiled from: SeewoIMDM.java */
/* renamed from: com.huawei.hem.qh */
/* loaded from: classes.dex */
public class RunnableC1236qh implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C1361vh f3560a;

    public RunnableC1236qh(C1361vh c1361vh) {
        this.f3560a = c1361vh;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f3560a.f3962b.mo2375H2(false);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
