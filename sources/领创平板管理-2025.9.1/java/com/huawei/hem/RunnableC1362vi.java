package com.huawei.hem;

import android.bluetooth.BluetoothAdapter;

/* compiled from: TecCustomApi.java */
/* renamed from: com.huawei.hem.vi */
/* loaded from: classes.dex */
public class RunnableC1362vi implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C1412xi f3968a;

    public RunnableC1362vi(C1412xi c1412xi) {
        this.f3968a = c1412xi;
    }

    @Override // java.lang.Runnable
    public void run() throws InterruptedException {
        try {
            Thread.sleep(700L);
            if (this.f3968a == null) {
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
