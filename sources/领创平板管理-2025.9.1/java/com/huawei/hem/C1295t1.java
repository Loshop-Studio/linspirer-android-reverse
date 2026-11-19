package com.huawei.hem;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import com.huawei.hem.InterfaceC1320u1;

/* compiled from: HCHelper.java */
/* renamed from: com.huawei.hem.t1 */
/* loaded from: classes.dex */
public class C1295t1 {

    /* renamed from: c */
    public static C1295t1 f3742c;

    /* renamed from: d */
    public static Context f3743d;

    /* renamed from: a */
    public InterfaceC1320u1 f3744a;

    /* renamed from: b */
    public ServiceConnection f3745b = new a();

    /* compiled from: HCHelper.java */
    /* renamed from: com.huawei.hem.t1$a */
    public class a implements ServiceConnection {
        public a() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            C1295t1.this.f3744a = InterfaceC1320u1.a.m2778J(iBinder);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            C1295t1.this.f3744a = null;
            C1295t1.f3742c = null;
        }
    }

    public C1295t1() {
        Intent intent = new Intent("lingc.intent.action.HCService");
        intent.setPackage("com.android.hccontrol");
        f3743d.bindService(intent, this.f3745b, 1);
    }

    /* renamed from: a */
    public static C1295t1 m2712a() {
        if (f3743d == null) {
            return null;
        }
        if (f3742c == null) {
            synchronized (C1295t1.class) {
                if (f3742c == null) {
                    f3742c = new C1295t1();
                }
            }
        }
        return f3742c;
    }

    /* renamed from: b */
    public void m2713b(boolean z) {
        InterfaceC1320u1 interfaceC1320u1 = this.f3744a;
        if (interfaceC1320u1 != null) {
            try {
                interfaceC1320u1.mo1118S(z);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: c */
    public void m2714c(boolean z) {
        InterfaceC1320u1 interfaceC1320u1;
        InterfaceC1320u1 interfaceC1320u12 = this.f3744a;
        if (interfaceC1320u12 != null) {
            try {
                interfaceC1320u12.mo1118S(z);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        if (!z || (interfaceC1320u1 = this.f3744a) == null) {
            return;
        }
        try {
            interfaceC1320u1.mo1107F0(z);
        } catch (RemoteException e2) {
            e2.printStackTrace();
        }
    }
}
