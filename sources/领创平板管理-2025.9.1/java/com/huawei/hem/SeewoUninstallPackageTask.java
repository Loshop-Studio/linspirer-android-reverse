package com.huawei.hem;

import android.os.RemoteException;

/* compiled from: SeewoIMDM.java */
/* renamed from: com.huawei.hem.fi */
/* loaded from: classes.dex */
public class SeewoUninstallPackageTask implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ String f2660a;

    /* renamed from: b */
    public final /* synthetic */ SeewoDeviceManager f2661b;

    public SeewoUninstallPackageTask(SeewoDeviceManager c1361vh, String str) {
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
