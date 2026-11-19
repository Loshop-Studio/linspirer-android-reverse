package com.huawei.hem;

import android.os.RemoteException;

/* compiled from: SeewoIMDM.java */
/* renamed from: com.huawei.hem.ci */
/* loaded from: classes.dex */
public class RunnableC0882ci implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C1361vh f2340a;

    public RunnableC0882ci(C1361vh c1361vh) {
        this.f2340a = c1361vh;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f2340a.f3962b.mo2377O0(true);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
