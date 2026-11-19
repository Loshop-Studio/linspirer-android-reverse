package com.huawei.hem;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.huawei.hem.ISupiSafeCtrl;

/* compiled from: SupiImpl.java */
/* renamed from: com.huawei.hem.gd */
/* loaded from: classes.dex */
public class ServiceConnectionC0981gd implements ServiceConnection {

    /* renamed from: a */
    public final /* synthetic */ C1006hd f2767a;

    public ServiceConnectionC0981gd(C1006hd c1006hd) {
        this.f2767a = c1006hd;
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        LTKDateUtil.m1403m("SupiImpl on service connect");
        this.f2767a.f2844b = ISupiSafeCtrl.a.m2814J(iBinder);
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        LTKDateUtil.m1403m("SupiImpl on service disconnect");
        this.f2767a.f2844b = null;
    }
}
