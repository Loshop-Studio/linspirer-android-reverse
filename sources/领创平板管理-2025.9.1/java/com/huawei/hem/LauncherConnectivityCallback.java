package com.huawei.hem;

import android.net.ConnectivityManager;
import android.net.LinkProperties;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.support.v4.content.ContextCompat;
import com.alibaba.fastjson.JSON;
import com.android.launcher3.GuardSecureApplication;
import com.android.launcher3.model.UpdatedUserInfo;
import com.android.launcher3.network.ControlHelper;
import com.android.launcher3.network.DeviceInfoUploadHelper;
import com.android.launcher3.network.LocationHelper;
import com.android.launcher3.network.ReciverPushHelper;
import com.android.launcher3.network.RequestUrl;
import com.android.launcher3.network.SynchronizeTimeUtil;
import com.android.launcher3.network.TacticsHelper;
import com.android.launcher3.network.params.Params;
import com.android.launcher3.network.params.V2Params;
import com.huawei.hem.UserInfoUtil;

/* compiled from: NetworkChangeReceiver.java */
/* renamed from: com.huawei.hem.h5 */
/* loaded from: classes.dex */
public class LauncherConnectivityCallback extends ConnectivityManager.NetworkCallback {

    /* renamed from: a */
    public static long f2812a;

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onAvailable(Network network) {
        super.onAvailable(network);
        LTKDateUtil.m1403m("NetworkChangeReceiver ===onAvailable===");
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - f2812a <= 10000) {
            return;
        }
        f2812a = jCurrentTimeMillis;
        UserInfoUtil c1424y5 = UserInfoUtil.b.f4202a;
        GuardSecureApplication guardSecureApplication = GuardSecureApplication.f1640b;
        if (c1424y5.m3023R()) {
            return;
        }
        LauncherMenuHelper.m2960G(guardSecureApplication, c1424y5.m3018M());
        GuardSecureApplication guardSecureApplication2 = GuardSecureApplication.f1640b;
        boolean z = true;
        if (DeviceTypeUtil.m1526s()) {
            String[] strArr = {"android.permission.READ_PHONE_STATE", "android.permission.READ_PRIVILEGED_PHONE_STATE"};
            int i = 0;
            while (true) {
                if (i >= 2) {
                    break;
                }
                if (ContextCompat.checkSelfPermission(guardSecureApplication2, strArr[i]) != 0) {
                    LTKDateUtil.m1403m("has no permission no need sync time");
                    z = false;
                    break;
                }
                i++;
            }
        }
        if (z) {
            ControlHelper.getInstance().reportControlStatus();
            if (UserInfoUtil.b.f4202a.m3023R()) {
                return;
            }
            LauncherMenuHelper.m2960G(GuardSecureApplication.f1640b, UserInfoUtil.b.f4202a.m3018M());
            if ("XP12".equals(LauncherDeviceUtils.m1589f()) || "zhongyukejiao" == "dongfangwendao") {
                SynchronizeTimeUtil.pullSynchronizeTimeBoolean(GuardSecureApplication.f1640b);
            }
            if (LauncherMenuHelper.m3004y()) {
                ReciverPushHelper.getInstance().pullCommandFromServer();
                String strM3052k = UserInfoUtil.b.f4202a.m3052k();
                if (LauncherMenuHelper.m3004y()) {
                    HttpCore c1255rb = new HttpCore();
                    V2Params v2Params = new V2Params();
                    Params params = new Params(GuardSecureApplication.f1640b);
                    params.setEmail(strM3052k);
                    v2Params.setMethod(RequestUrl.UPDATE_USER_INFO);
                    v2Params.setParams(JSON.toJSONString(params));
                    PostBuilder c1355vb = new PostBuilder(c1255rb);
                    c1355vb.f3777a = RequestUrl.URL;
                    c1355vb.f3947e = JSON.toJSONString(v2Params);
                    c1355vb.m2869b(new NetworkChangeUserInfoCallback(this, UpdatedUserInfo.class));
                } else {
                    LTKDateUtil.m1403m("NetworkChangeReceiver  no need update userInfo");
                }
                LocationHelper.getInstance().startLocation();
                DeviceInfoUploadHelper.uploadInfo();
                TacticsHelper.getInstance().request();
                ComponentHelper.m2652a().m2653b();
            }
        }
        if (LauncherMenuHelper.m3005z()) {
            ReciverPushHelper.getInstance().pullCommandFromServer();
        }
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
        super.onCapabilitiesChanged(network, networkCapabilities);
        LTKDateUtil.m1403m("NetworkChangeReceiver ===onCapabilitiesChanged===");
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onLinkPropertiesChanged(Network network, LinkProperties linkProperties) {
        super.onLinkPropertiesChanged(network, linkProperties);
        LTKDateUtil.m1403m("NetworkChangeReceiver ===onLinkPropertiesChanged===");
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onLosing(Network network, int i) {
        super.onLosing(network, i);
        LTKDateUtil.m1403m("NetworkChangeReceiver ===onLosing===");
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onLost(Network network) {
        super.onLost(network);
        LTKDateUtil.m1403m("NetworkChangeReceiver ===onLost===");
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onUnavailable() {
        super.onUnavailable();
        LTKDateUtil.m1403m("NetworkChangeReceiver ===onUnavailable===");
    }
}
