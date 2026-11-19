package anet.channel.status;

import android.net.ConnectivityManager;
import android.net.LinkProperties;
import android.net.Network;
import anet.channel.util.ALog;
import java.util.ArrayList;

/* compiled from: Taobao */
/* renamed from: anet.channel.status.c */
/* loaded from: classes.dex */
public final class C0387c extends ConnectivityManager.NetworkCallback {
    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onAvailable(Network network) {
        super.onAvailable(network);
        ALog.m340i("awcn.NetworkStatusMonitor", "network onAvailable", null, new Object[0]);
        C0386b.f424b = true;
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onLinkPropertiesChanged(Network network, LinkProperties linkProperties) {
        super.onLinkPropertiesChanged(network, linkProperties);
        C0386b.f434l = new ArrayList(linkProperties.getDnsServers());
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onLost(Network network) {
        super.onLost(network);
        ALog.m340i("awcn.NetworkStatusMonitor", "network onLost", null, new Object[0]);
        C0386b.f424b = false;
    }
}
