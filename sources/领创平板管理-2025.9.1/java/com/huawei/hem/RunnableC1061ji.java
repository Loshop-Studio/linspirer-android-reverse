package com.huawei.hem;

import android.os.RemoteException;

/* compiled from: SeewoIMDM.java */
/* renamed from: com.huawei.hem.ji */
/* loaded from: classes.dex */
public class RunnableC1061ji implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ long f2955a;

    /* renamed from: b */
    public final /* synthetic */ C1361vh f2956b;

    public RunnableC1061ji(C1361vh c1361vh, long j) {
        this.f2956b = c1361vh;
        this.f2955a = j;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f2956b.f3962b.modifySystemTime(this.f2955a);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
