package com.huawei.hem;

import android.bluetooth.BluetoothAdapter;

/* compiled from: RocoIMDM.java */
/* renamed from: com.huawei.hem.kh */
/* loaded from: classes.dex */
public class RunnableC1085kh implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C1110lh f3089a;

    public RunnableC1085kh(C1110lh c1110lh) {
        this.f3089a = c1110lh;
    }

    @Override // java.lang.Runnable
    public void run() throws InterruptedException {
        try {
            Thread.sleep(500L);
            if (this.f3089a == null) {
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
