package com.huawei.hem;

import android.os.RemoteException;

/* compiled from: SeewoIMDM.java */
/* renamed from: com.huawei.hem.uh */
/* loaded from: classes.dex */
public class RunnableC1336uh implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C1361vh f3872a;

    public RunnableC1336uh(C1361vh c1361vh) {
        this.f3872a = c1361vh;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f3872a.f3962b.mo2385n2(false);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
