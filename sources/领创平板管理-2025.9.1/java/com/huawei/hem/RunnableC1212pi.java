package com.huawei.hem;

import android.os.RemoteException;

/* compiled from: SeewoIMDM.java */
/* renamed from: com.huawei.hem.pi */
/* loaded from: classes.dex */
public class RunnableC1212pi implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C1361vh f3465a;

    public RunnableC1212pi(C1361vh c1361vh) {
        this.f3465a = c1361vh;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f3465a.f3962b.mo2376M0();
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
