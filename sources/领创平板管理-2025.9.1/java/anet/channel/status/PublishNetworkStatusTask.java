package anet.channel.status;

import anet.channel.status.NetworkStatusHelper;
import anet.channel.util.ALog;
import java.util.Iterator;

/* compiled from: Taobao */
/* renamed from: anet.channel.status.a */
/* loaded from: classes.dex */
public final class PublishNetworkStatusTask implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ NetworkStatusHelper.NetworkStatus f422a;

    public PublishNetworkStatusTask(NetworkStatusHelper.NetworkStatus networkStatus) {
        this.f422a = networkStatus;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            Iterator<NetworkStatusHelper.INetworkStatusChangeListener> it = NetworkStatusHelper.listeners.iterator();
            while (it.hasNext()) {
                NetworkStatusHelper.INetworkStatusChangeListener next = it.next();
                long jCurrentTimeMillis = System.currentTimeMillis();
                next.onNetworkStatusChanged(this.f422a);
                if (System.currentTimeMillis() - jCurrentTimeMillis > 500) {
                    ALog.m339e(NetworkStatusHelper.TAG, "call back cost too much time", null, "listener", next);
                }
            }
        } catch (Exception unused) {
        }
    }
}
