package com.huawei.hem;

import android.bluetooth.BluetoothAdapter;

/* compiled from: TecCustomApi.java */
/* renamed from: com.huawei.hem.vi */
/* loaded from: classes.dex */
public class TaidianEnableBluetoothTask implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ TaidianCustomApi f3968a;

    public TaidianEnableBluetoothTask(TaidianCustomApi c1412xi) {
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
