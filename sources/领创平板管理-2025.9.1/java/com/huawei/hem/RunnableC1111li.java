package com.huawei.hem;

import android.os.RemoteException;

/* compiled from: SeewoIMDM.java */
/* renamed from: com.huawei.hem.li */
/* loaded from: classes.dex */
public class RunnableC1111li implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C1361vh f3189a;

    public RunnableC1111li(C1361vh c1361vh) {
        this.f3189a = c1361vh;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f3189a.f3962b.mo2384l2(false);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
