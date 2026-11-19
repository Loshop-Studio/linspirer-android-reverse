package com.huawei.hem;

import android.bluetooth.BluetoothAdapter;

/* compiled from: RocoIMDM.java */
/* renamed from: com.huawei.hem.jh */
/* loaded from: classes.dex */
public class RunnableC1060jh implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C1110lh f2954a;

    public RunnableC1060jh(C1110lh c1110lh) {
        this.f2954a = c1110lh;
    }

    @Override // java.lang.Runnable
    public void run() throws InterruptedException {
        try {
            Thread.sleep(500L);
            if (this.f2954a == null) {
                throw null;
            }
            if (BluetoothAdapter.getDefaultAdapter().getState() == 10) {
                BluetoothAdapter.getDefaultAdapter().enable();
            }
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }
}
