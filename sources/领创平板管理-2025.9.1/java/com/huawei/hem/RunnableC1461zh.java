package com.huawei.hem;

import android.os.RemoteException;

/* compiled from: SeewoIMDM.java */
/* renamed from: com.huawei.hem.zh */
/* loaded from: classes.dex */
public class RunnableC1461zh implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C1361vh f4309a;

    public RunnableC1461zh(C1361vh c1361vh) {
        this.f4309a = c1361vh;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f4309a.f3962b.mo2380e3(false);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
