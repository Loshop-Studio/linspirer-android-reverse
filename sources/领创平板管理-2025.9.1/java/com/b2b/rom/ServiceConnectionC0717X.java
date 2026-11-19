package com.b2b.rom;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.util.Log;
import com.huawei.hem.AbstractBinderC1018i0;

/* renamed from: com.b2b.rom.X */
/* loaded from: classes.dex */
public final class ServiceConnectionC0717X implements ServiceConnection {

    /* renamed from: a */
    public /* synthetic */ ISamsungDevice f2079a;

    public ServiceConnectionC0717X(ISamsungDevice iSamsungDevice) {
        this.f2079a = iSamsungDevice;
    }

    public /* synthetic */ ServiceConnectionC0717X(ISamsungDevice iSamsungDevice, byte b) {
        this(iSamsungDevice);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        synchronized (this.f2079a.f2061h) {
            this.f2079a.f2057d = AbstractBinderC1018i0.m2019J(iBinder);
        }
        Log.e(this.f2079a.f2054a, "KnoxServiceConnection:onServiceConnected");
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        Log.e(this.f2079a.f2054a, "KnoxServiceConnection:onServiceDisconnected");
        synchronized (this.f2079a.f2061h) {
            this.f2079a.f2057d = null;
        }
    }
}
