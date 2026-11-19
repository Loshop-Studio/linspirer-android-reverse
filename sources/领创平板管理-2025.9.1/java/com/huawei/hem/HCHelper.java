package com.huawei.hem;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import com.huawei.hem.IHCAPI;

/* compiled from: HCHelper.java */
/* renamed from: com.huawei.hem.t1 */
/* loaded from: classes.dex */
public class HCHelper {

    /* renamed from: c */
    public static HCHelper f3742c;

    /* renamed from: d */
    public static Context f3743d;

    /* renamed from: a */
    public IHCAPI f3744a;

    /* renamed from: b */
    public ServiceConnection f3745b = new a();

    /* compiled from: HCHelper.java */
    /* renamed from: com.huawei.hem.t1$a */
    public class a implements ServiceConnection {
        public a() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            HCHelper.this.f3744a = IHCAPI.a.m2778J(iBinder);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            HCHelper.this.f3744a = null;
            HCHelper.f3742c = null;
        }
    }

    public HCHelper() {
        Intent intent = new Intent("lingc.intent.action.HCService");
        intent.setPackage("com.android.hccontrol");
        f3743d.bindService(intent, this.f3745b, 1);
    }

    /* renamed from: a */
    public static HCHelper m2712a() {
        if (f3743d == null) {
            return null;
        }
        if (f3742c == null) {
            synchronized (HCHelper.class) {
                if (f3742c == null) {
                    f3742c = new HCHelper();
                }
            }
        }
        return f3742c;
    }

    /* renamed from: b */
    public void m2713b(boolean z) {
        IHCAPI interfaceC1320u1 = this.f3744a;
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
        IHCAPI interfaceC1320u1;
        IHCAPI interfaceC1320u12 = this.f3744a;
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
