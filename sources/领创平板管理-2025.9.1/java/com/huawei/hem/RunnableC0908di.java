package com.huawei.hem;

import android.os.RemoteException;

/* compiled from: SeewoIMDM.java */
/* renamed from: com.huawei.hem.di */
/* loaded from: classes.dex */
public class RunnableC0908di implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C1361vh f2411a;

    public RunnableC0908di(C1361vh c1361vh) {
        this.f2411a = c1361vh;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f2411a.f3962b.mo2377O0(false);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
