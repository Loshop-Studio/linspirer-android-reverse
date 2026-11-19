package com.huawei.hem;

import android.os.RemoteException;

/* compiled from: SeewoIMDM.java */
/* renamed from: com.huawei.hem.wh */
/* loaded from: classes.dex */
public class RunnableC1386wh implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C1361vh f4022a;

    public RunnableC1386wh(C1361vh c1361vh) {
        this.f4022a = c1361vh;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f4022a.f3962b.mo2374F2(true);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
