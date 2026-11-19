package com.huawei.hem;

import android.net.ConnectivityManager;
import android.net.Network;
import com.amap.apis.utils.core.DeviceInfo;

/* compiled from: DeviceInfo.java */
/* renamed from: com.huawei.hem.c1 */
/* loaded from: classes.dex */
public final class DeviceInfoNetworkCallback extends ConnectivityManager.NetworkCallback {
    public DeviceInfoNetworkCallback(DeviceInfo.DeviceConnectivityRegistration c0624d) {
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onAvailable(Network network) {
        super.onAvailable(network);
        DeviceInfo.m1082p();
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onLost(Network network) {
        super.onLost(network);
        DeviceInfo.m1082p();
    }
}
