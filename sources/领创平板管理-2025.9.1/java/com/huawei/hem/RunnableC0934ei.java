package com.huawei.hem;

import android.os.RemoteException;

/* compiled from: SeewoIMDM.java */
/* renamed from: com.huawei.hem.ei */
/* loaded from: classes.dex */
public class RunnableC0934ei implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ String f2547a;

    /* renamed from: b */
    public final /* synthetic */ C1361vh f2548b;

    public RunnableC0934ei(C1361vh c1361vh, String str) {
        this.f2548b = c1361vh;
        this.f2547a = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f2548b.f3962b.silentInstall(this.f2547a);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
