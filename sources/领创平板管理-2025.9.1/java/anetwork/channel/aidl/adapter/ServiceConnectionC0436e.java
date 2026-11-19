package anetwork.channel.aidl.adapter;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import anet.channel.util.ALog;
import anetwork.channel.aidl.IRemoteNetworkGetter;

/* compiled from: Taobao */
/* renamed from: anetwork.channel.aidl.adapter.e */
/* loaded from: classes.dex */
public final class ServiceConnectionC0436e implements ServiceConnection {
    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        if (ALog.isPrintLog(2)) {
            ALog.m340i("anet.RemoteGetter", "[onServiceConnected]ANet_Service start success. ANet run with service mode", null, new Object[0]);
        }
        synchronized (C0435d.class) {
            C0435d.f636a = IRemoteNetworkGetter.Stub.asInterface(iBinder);
            if (C0435d.f639d != null) {
                C0435d.f639d.countDown();
            }
        }
        C0435d.f637b = false;
        C0435d.f638c = false;
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        if (ALog.isPrintLog(2)) {
            ALog.m340i("anet.RemoteGetter", "ANet_Service Disconnected", null, new Object[0]);
        }
        C0435d.f636a = null;
        C0435d.f638c = false;
        if (C0435d.f639d != null) {
            C0435d.f639d.countDown();
        }
    }
}
