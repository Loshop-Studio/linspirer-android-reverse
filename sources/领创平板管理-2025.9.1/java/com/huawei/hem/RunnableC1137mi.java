package com.huawei.hem;

import android.os.RemoteException;

/* compiled from: SeewoIMDM.java */
/* renamed from: com.huawei.hem.mi */
/* loaded from: classes.dex */
public class RunnableC1137mi implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C1361vh f3268a;

    public RunnableC1137mi(C1361vh c1361vh) {
        this.f3268a = c1361vh;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f3268a.f3962b.mo2378c(true);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
