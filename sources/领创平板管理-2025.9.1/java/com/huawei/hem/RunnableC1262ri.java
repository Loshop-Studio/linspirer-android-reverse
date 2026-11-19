package com.huawei.hem;

import android.os.RemoteException;

/* compiled from: SeewoIMDM.java */
/* renamed from: com.huawei.hem.ri */
/* loaded from: classes.dex */
public class RunnableC1262ri implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C1361vh f3643a;

    public RunnableC1262ri(C1361vh c1361vh) {
        this.f3643a = c1361vh;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f3643a.f3962b.mo2381i(false);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
