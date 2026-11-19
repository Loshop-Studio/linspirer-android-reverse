package com.huawei.hem;

import android.os.RemoteException;

/* compiled from: SeewoIMDM.java */
/* renamed from: com.huawei.hem.xh */
/* loaded from: classes.dex */
public class RunnableC1411xh implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C1361vh f4078a;

    public RunnableC1411xh(C1361vh c1361vh) {
        this.f4078a = c1361vh;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f4078a.f3962b.mo2374F2(false);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
