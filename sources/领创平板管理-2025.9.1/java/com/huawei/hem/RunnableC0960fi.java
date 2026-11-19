package com.huawei.hem;

import android.os.RemoteException;

/* compiled from: SeewoIMDM.java */
/* renamed from: com.huawei.hem.fi */
/* loaded from: classes.dex */
public class RunnableC0960fi implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ String f2660a;

    /* renamed from: b */
    public final /* synthetic */ C1361vh f2661b;

    public RunnableC0960fi(C1361vh c1361vh, String str) {
        this.f2661b = c1361vh;
        this.f2660a = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f2661b.f3962b.silentUnInstall(this.f2660a);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
