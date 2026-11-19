package com.huawei.hem;

import android.os.RemoteException;

/* compiled from: SeewoIMDM.java */
/* renamed from: com.huawei.hem.ni */
/* loaded from: classes.dex */
public class RunnableC1162ni implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C1361vh f3333a;

    public RunnableC1162ni(C1361vh c1361vh) {
        this.f3333a = c1361vh;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f3333a.f3962b.mo2378c(false);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
