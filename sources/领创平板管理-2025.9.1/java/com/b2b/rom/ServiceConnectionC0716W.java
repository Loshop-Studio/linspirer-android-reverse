package com.b2b.rom;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.util.Log;
import com.huawei.hem.AbstractBinderC0942f0;

/* renamed from: com.b2b.rom.W */
/* loaded from: classes.dex */
public final class ServiceConnectionC0716W implements ServiceConnection {

    /* renamed from: a */
    public /* synthetic */ ISamsungDevice f2078a;

    public ServiceConnectionC0716W(ISamsungDevice iSamsungDevice) {
        this.f2078a = iSamsungDevice;
    }

    public /* synthetic */ ServiceConnectionC0716W(ISamsungDevice iSamsungDevice, byte b) {
        this(iSamsungDevice);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        synchronized (this.f2078a.f2061h) {
            this.f2078a.f2059f = AbstractBinderC0942f0.m1697J(iBinder);
        }
        Log.e(this.f2078a.f2054a, "CustomServiceConnection:onServiceConnected");
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        Log.e(this.f2078a.f2054a, "CustomServiceConnection:onServiceDisconnected");
        synchronized (this.f2078a.f2061h) {
            this.f2078a.f2059f = null;
        }
    }
}
