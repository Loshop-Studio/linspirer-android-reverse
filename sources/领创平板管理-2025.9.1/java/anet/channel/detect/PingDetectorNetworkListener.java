package anet.channel.detect;

import anet.channel.status.NetworkStatusHelper;
import anet.channel.thread.ThreadPoolExecutorFactory;

/* compiled from: Taobao */
/* renamed from: anet.channel.detect.l */
/* loaded from: classes.dex */
public class PingDetectorNetworkListener implements NetworkStatusHelper.INetworkStatusChangeListener {

    /* renamed from: a */
    public final /* synthetic */ NetworkPingDetector f218a;

    public PingDetectorNetworkListener(NetworkPingDetector c0334k) {
        this.f218a = c0334k;
    }

    @Override // anet.channel.status.NetworkStatusHelper.INetworkStatusChangeListener
    public void onNetworkStatusChanged(NetworkStatusHelper.NetworkStatus networkStatus) {
        ThreadPoolExecutorFactory.submitDetectTask(new NetworkPingStatusTask(this, networkStatus));
    }
}
