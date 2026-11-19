package com.huawei.hem;

import android.os.RemoteException;

/* compiled from: SeewoIMDM.java */
/* renamed from: com.huawei.hem.yh */
/* loaded from: classes.dex */
public class RunnableC1436yh implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C1361vh f4221a;

    public RunnableC1436yh(C1361vh c1361vh) {
        this.f4221a = c1361vh;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f4221a.f3962b.mo2380e3(true);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
