package anet.channel.p006e;

import anet.channel.status.NetworkStatusHelper;

/* compiled from: Taobao */
/* renamed from: anet.channel.e.d */
/* loaded from: classes.dex */
public final class ProtocolDetectionNetworkListener implements NetworkStatusHelper.INetworkStatusChangeListener {
    @Override // anet.channel.status.NetworkStatusHelper.INetworkStatusChangeListener
    public void onNetworkStatusChanged(NetworkStatusHelper.NetworkStatus networkStatus) {
        ConnectionProtocolDetector.m118a(networkStatus);
    }
}
