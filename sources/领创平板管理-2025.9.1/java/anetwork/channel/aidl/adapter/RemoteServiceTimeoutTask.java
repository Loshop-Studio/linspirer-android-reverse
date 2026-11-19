package anetwork.channel.aidl.adapter;

import anet.channel.util.ALog;

/* compiled from: Taobao */
/* renamed from: anetwork.channel.aidl.adapter.f */
/* loaded from: classes.dex */
public final class RemoteServiceTimeoutTask implements Runnable {
    @Override // java.lang.Runnable
    public void run() {
        if (RemoteNetworkServiceBinding.f638c) {
            RemoteNetworkServiceBinding.f638c = false;
            ALog.m339e("anet.RemoteGetter", "binding service timeout. reset status!", null, new Object[0]);
        }
    }
}
