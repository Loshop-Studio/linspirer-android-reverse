package com.huawei.hem;

import android.os.RemoteException;

/* compiled from: SeewoIMDM.java */
/* renamed from: com.huawei.hem.ii */
/* loaded from: classes.dex */
public class RunnableC1036ii implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ String f2924a;

    /* renamed from: b */
    public final /* synthetic */ C1361vh f2925b;

    public RunnableC1036ii(C1361vh c1361vh, String str) {
        this.f2925b = c1361vh;
        this.f2924a = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f2925b.f3962b.activeDeviceAdmin(this.f2924a);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
