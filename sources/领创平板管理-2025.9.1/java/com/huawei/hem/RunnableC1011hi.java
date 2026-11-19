package com.huawei.hem;

import android.os.RemoteException;

/* compiled from: SeewoIMDM.java */
/* renamed from: com.huawei.hem.hi */
/* loaded from: classes.dex */
public class RunnableC1011hi implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C1361vh f2872a;

    public RunnableC1011hi(C1361vh c1361vh) {
        this.f2872a = c1361vh;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f2872a.f3962b.resetFactory();
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
