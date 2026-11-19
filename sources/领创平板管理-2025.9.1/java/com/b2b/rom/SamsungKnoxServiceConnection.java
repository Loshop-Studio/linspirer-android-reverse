package com.b2b.rom;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.util.Log;
import com.huawei.hem.SamsungKnoxInterfaceBinder;

/* renamed from: com.b2b.rom.X */
/* loaded from: classes.dex */
public final class SamsungKnoxServiceConnection implements ServiceConnection {

    /* renamed from: a */
    public /* synthetic */ ISamsungDevice f2079a;

    public SamsungKnoxServiceConnection(ISamsungDevice iSamsungDevice) {
        this.f2079a = iSamsungDevice;
    }

    public /* synthetic */ SamsungKnoxServiceConnection(ISamsungDevice iSamsungDevice, byte b) {
        this(iSamsungDevice);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        synchronized (this.f2079a.f2061h) {
            this.f2079a.f2057d = SamsungKnoxInterfaceBinder.m2019J(iBinder);
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
