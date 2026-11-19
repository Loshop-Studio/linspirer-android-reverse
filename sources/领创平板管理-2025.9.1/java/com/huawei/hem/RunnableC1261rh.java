package com.huawei.hem;

import android.os.RemoteException;

/* compiled from: SeewoIMDM.java */
/* renamed from: com.huawei.hem.rh */
/* loaded from: classes.dex */
public class RunnableC1261rh implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C1361vh f3642a;

    public RunnableC1261rh(C1361vh c1361vh) {
        this.f3642a = c1361vh;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f3642a.f3962b.mo2388s0(true);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
