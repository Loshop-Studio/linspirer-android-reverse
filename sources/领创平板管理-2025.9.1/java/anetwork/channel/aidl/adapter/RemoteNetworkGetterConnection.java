package anetwork.channel.aidl.adapter;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import anet.channel.util.ALog;
import anetwork.channel.aidl.IRemoteNetworkGetter;

/* compiled from: Taobao */
/* renamed from: anetwork.channel.aidl.adapter.e */
/* loaded from: classes.dex */
public final class RemoteNetworkGetterConnection implements ServiceConnection {
    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        if (ALog.isPrintLog(2)) {
            ALog.m340i("anet.RemoteGetter", "[onServiceConnected]ANet_Service start success. ANet run with service mode", null, new Object[0]);
        }
        synchronized (RemoteNetworkServiceBinding.class) {
            RemoteNetworkServiceBinding.f636a = IRemoteNetworkGetter.Stub.asInterface(iBinder);
            if (RemoteNetworkServiceBinding.f639d != null) {
                RemoteNetworkServiceBinding.f639d.countDown();
            }
        }
        RemoteNetworkServiceBinding.f637b = false;
        RemoteNetworkServiceBinding.f638c = false;
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        if (ALog.isPrintLog(2)) {
            ALog.m340i("anet.RemoteGetter", "ANet_Service Disconnected", null, new Object[0]);
        }
        RemoteNetworkServiceBinding.f636a = null;
        RemoteNetworkServiceBinding.f638c = false;
        if (RemoteNetworkServiceBinding.f639d != null) {
            RemoteNetworkServiceBinding.f639d.countDown();
        }
    }
}
