package com.huawei.hem;

import android.os.RemoteException;

/* compiled from: SeewoIMDM.java */
/* renamed from: com.huawei.hem.ph */
/* loaded from: classes.dex */
public class RunnableC1211ph implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C1361vh f3464a;

    public RunnableC1211ph(C1361vh c1361vh) {
        this.f3464a = c1361vh;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f3464a.f3962b.mo2375H2(true);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
