package anet.channel.strategy.dispatch;

import android.os.Build;
import android.text.TextUtils;
import anet.channel.GlobalAppRuntimeInfo;
import anet.channel.status.NetworkStatusHelper;
import anet.channel.strategy.utils.AmdcStringEncoding;
import anet.channel.util.ALog;
import anet.channel.util.NetworkAddressRegistry;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* compiled from: Taobao */
/* renamed from: anet.channel.strategy.dispatch.d */
/* loaded from: classes.dex */
public class AmdcDispatchParameters {
    public static final String TAG = "amdc.DispatchParamBuilder";

    /* renamed from: a */
    public static Map m308a(Map<String, Object> map) {
        IAmdcSign sign = AmdcRuntimeInfo.getSign();
        if (sign == null || TextUtils.isEmpty(sign.getAppkey())) {
            ALog.m339e(TAG, "amdc sign is null or appkey is empty", null, new Object[0]);
            return null;
        }
        NetworkStatusHelper.NetworkStatus status = NetworkStatusHelper.getStatus();
        if (!NetworkStatusHelper.isConnected()) {
            ALog.m339e(TAG, "no network, don't send amdc request", null, new Object[0]);
            return null;
        }
        map.put("appkey", sign.getAppkey());
        map.put("v", DispatchConstants.VER_CODE);
        map.put("platform", DispatchConstants.ANDROID);
        map.put(DispatchConstants.PLATFORM_VERSION, Build.VERSION.RELEASE);
        if (!TextUtils.isEmpty(GlobalAppRuntimeInfo.getUserId())) {
            map.put("sid", GlobalAppRuntimeInfo.getUserId());
        }
        map.put(DispatchConstants.NET_TYPE, status.toString());
        map.put(DispatchConstants.CARRIER, NetworkStatusHelper.getCarrier());
        map.put(DispatchConstants.MNC, NetworkStatusHelper.getSimOp());
        if (AmdcRuntimeInfo.latitude != 0.0d) {
            map.put(DispatchConstants.LATITUDE, String.valueOf(AmdcRuntimeInfo.latitude));
        }
        if (AmdcRuntimeInfo.longitude != 0.0d) {
            map.put(DispatchConstants.LONGTITUDE, String.valueOf(AmdcRuntimeInfo.longitude));
        }
        map.putAll(AmdcRuntimeInfo.getParams());
        map.put("channel", AmdcRuntimeInfo.appChannel);
        map.put(DispatchConstants.APP_NAME, AmdcRuntimeInfo.appName);
        map.put("appVersion", AmdcRuntimeInfo.appVersion);
        map.put(DispatchConstants.STACK_TYPE, Integer.toString(m306a()));
        map.put(DispatchConstants.DOMAIN, m309b(map));
        map.put(DispatchConstants.SIGNTYPE, sign.useSecurityGuard() ? "sec" : "noSec");
        map.put("t", String.valueOf(System.currentTimeMillis()));
        String strM307a = m307a(sign, map);
        if (TextUtils.isEmpty(strM307a)) {
            return null;
        }
        map.put("sign", strM307a);
        return map;
    }

    /* renamed from: b */
    public static String m309b(Map map) {
        Set set = (Set) map.remove(DispatchConstants.HOSTS);
        StringBuilder sb = new StringBuilder();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            sb.append((String) it.next());
            sb.append(' ');
        }
        if (sb.length() > 0) {
            sb.deleteCharAt(sb.length() - 1);
        }
        return sb.toString();
    }

    /* renamed from: a */
    public static int m306a() {
        int iM351c = NetworkAddressRegistry.m351c();
        if (iM351c != 2) {
            return iM351c != 3 ? 4 : 1;
        }
        return 2;
    }

    /* renamed from: a */
    public static String m307a(IAmdcSign iAmdcSign, Map<String, String> map) {
        StringBuilder sb = new StringBuilder(128);
        sb.append(AmdcStringEncoding.m334d(map.get("appkey")));
        sb.append("&");
        sb.append(AmdcStringEncoding.m334d(map.get(DispatchConstants.DOMAIN)));
        sb.append("&");
        sb.append(AmdcStringEncoding.m334d(map.get(DispatchConstants.APP_NAME)));
        sb.append("&");
        sb.append(AmdcStringEncoding.m334d(map.get("appVersion")));
        sb.append("&");
        sb.append(AmdcStringEncoding.m334d(map.get(DispatchConstants.BSSID)));
        sb.append("&");
        sb.append(AmdcStringEncoding.m334d(map.get("channel")));
        sb.append("&");
        sb.append(AmdcStringEncoding.m334d(map.get("deviceId")));
        sb.append("&");
        sb.append(AmdcStringEncoding.m334d(map.get(DispatchConstants.LATITUDE)));
        sb.append("&");
        sb.append(AmdcStringEncoding.m334d(map.get(DispatchConstants.LONGTITUDE)));
        sb.append("&");
        sb.append(AmdcStringEncoding.m334d(map.get(DispatchConstants.MACHINE)));
        sb.append("&");
        sb.append(AmdcStringEncoding.m334d(map.get(DispatchConstants.NET_TYPE)));
        sb.append("&");
        sb.append(AmdcStringEncoding.m334d(map.get(DispatchConstants.OTHER)));
        sb.append("&");
        sb.append(AmdcStringEncoding.m334d(map.get("platform")));
        sb.append("&");
        sb.append(AmdcStringEncoding.m334d(map.get(DispatchConstants.PLATFORM_VERSION)));
        sb.append("&");
        sb.append(AmdcStringEncoding.m334d(map.get(DispatchConstants.PRE_IP)));
        sb.append("&");
        sb.append(AmdcStringEncoding.m334d(map.get("sid")));
        sb.append("&");
        sb.append(AmdcStringEncoding.m334d(map.get("t")));
        sb.append("&");
        sb.append(AmdcStringEncoding.m334d(map.get("v")));
        sb.append("&");
        sb.append(AmdcStringEncoding.m334d(map.get(DispatchConstants.SIGNTYPE)));
        try {
            return iAmdcSign.sign(sb.toString());
        } catch (Exception e) {
            ALog.m338e(TAG, "get sign failed", null, e, new Object[0]);
            return null;
        }
    }
}
