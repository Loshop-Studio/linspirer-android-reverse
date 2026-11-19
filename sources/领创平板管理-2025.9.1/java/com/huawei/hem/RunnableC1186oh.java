package com.huawei.hem;

import android.os.RemoteException;

/* compiled from: SeewoIMDM.java */
/* renamed from: com.huawei.hem.oh */
/* loaded from: classes.dex */
public class RunnableC1186oh implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ String f3407a;

    /* renamed from: b */
    public final /* synthetic */ C1361vh f3408b;

    public RunnableC1186oh(C1361vh c1361vh, String str) {
        this.f3408b = c1361vh;
        this.f3407a = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f3408b.f3962b.mo2386r(this.f3407a, false);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
