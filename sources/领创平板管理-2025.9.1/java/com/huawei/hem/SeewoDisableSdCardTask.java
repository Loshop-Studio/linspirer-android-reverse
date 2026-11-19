package com.huawei.hem;

import android.os.RemoteException;

/* compiled from: SeewoIMDM.java */
/* renamed from: com.huawei.hem.ni */
/* loaded from: classes.dex */
public class SeewoDisableSdCardTask implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ SeewoDeviceManager f3333a;

    public SeewoDisableSdCardTask(SeewoDeviceManager c1361vh) {
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
