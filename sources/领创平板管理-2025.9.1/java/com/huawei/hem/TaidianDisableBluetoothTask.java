package com.huawei.hem;

import android.bluetooth.BluetoothAdapter;

/* compiled from: TecCustomApi.java */
/* renamed from: com.huawei.hem.wi */
/* loaded from: classes.dex */
public class TaidianDisableBluetoothTask implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ TaidianCustomApi f4023a;

    public TaidianDisableBluetoothTask(TaidianCustomApi c1412xi) {
        this.f4023a = c1412xi;
    }

    @Override // java.lang.Runnable
    public void run() throws InterruptedException {
        try {
            Thread.sleep(700L);
            if (this.f4023a == null) {
                throw null;
            }
            if (BluetoothAdapter.getDefaultAdapter().getState() == 12) {
                BluetoothAdapter.getDefaultAdapter().disable();
            }
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }
}
