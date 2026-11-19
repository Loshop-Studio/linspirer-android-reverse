package anet.channel.status;

import android.content.Context;
import android.net.NetworkInfo;
import android.os.Build;
import android.text.TextUtils;
import android.util.Pair;
import anet.channel.thread.ThreadPoolExecutorFactory;
import anet.channel.util.ALog;
import anet.channel.util.HttpBasicCredentialEncoder;
import anet.channel.util.StringUtils;
import com.alibaba.sdk.android.tbrest.utils.DeviceUtils;
import com.taobao.accs.utl.BaseMonitor;
import java.util.concurrent.CopyOnWriteArraySet;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public class NetworkStatusHelper {
    public static final String TAG = "awcn.NetworkStatusHelper";
    public static CopyOnWriteArraySet<INetworkStatusChangeListener> listeners = new CopyOnWriteArraySet<>();

    /* compiled from: Taobao */
    public interface INetworkStatusChangeListener {
        void onNetworkStatusChanged(NetworkStatus networkStatus);
    }

    /* compiled from: Taobao */
    public enum NetworkStatus {
        NONE,
        NO,
        G2,
        G3,
        G4,
        WIFI,
        G5;

        public String getType() {
            return this == G2 ? DeviceUtils.NETWORK_CLASS_2_G : this == G3 ? DeviceUtils.NETWORK_CLASS_3_G : this == G4 ? DeviceUtils.NETWORK_CLASS_4_G : this == G5 ? DeviceUtils.NETWORK_CLASS_5_G : toString();
        }

        public boolean isMobile() {
            return this == G2 || this == G3 || this == G4 || this == G5;
        }

        public boolean isWifi() {
            return this == WIFI;
        }
    }

    public static void addStatusChangeListener(INetworkStatusChangeListener iNetworkStatusChangeListener) {
        listeners.add(iNetworkStatusChangeListener);
    }

    public static String getApn() {
        return AwcnNetworkStatusMonitor.f427e;
    }

    public static String getCarrier() {
        return AwcnNetworkStatusMonitor.f430h;
    }

    public static String getDnsServerAddress() {
        return !AwcnNetworkStatusMonitor.f434l.isEmpty() ? AwcnNetworkStatusMonitor.f434l.get(0).getHostAddress() : AwcnNetworkStatusMonitor.m245f();
    }

    public static String getNetworkSubType() {
        return AwcnNetworkStatusMonitor.f426d;
    }

    public static String getProxyType() {
        NetworkStatus networkStatus = AwcnNetworkStatusMonitor.f425c;
        return (networkStatus != NetworkStatus.WIFI || getWifiProxy() == null) ? (networkStatus.isMobile() && AwcnNetworkStatusMonitor.f427e.contains("wap")) ? "wap" : (!networkStatus.isMobile() || HttpBasicCredentialEncoder.m360a() == null) ? "" : BaseMonitor.ALARM_POINT_AUTH : "proxy";
    }

    public static int getRestrictBackgroundStatus() {
        return AwcnNetworkStatusMonitor.m246g();
    }

    public static String getSimOp() {
        return AwcnNetworkStatusMonitor.f431i;
    }

    public static NetworkStatus getStatus() {
        return AwcnNetworkStatusMonitor.f425c;
    }

    public static String getUniqueId(NetworkStatus networkStatus) {
        if (networkStatus.isWifi()) {
            String strMd5ToHex = StringUtils.md5ToHex(getWifiBSSID());
            return "WIFI$" + (TextUtils.isEmpty(strMd5ToHex) ? "" : strMd5ToHex);
        }
        if (!networkStatus.isMobile()) {
            return "";
        }
        return networkStatus.getType() + "$" + getApn();
    }

    public static String getWifiBSSID() {
        return AwcnNetworkStatusMonitor.f429g;
    }

    public static Pair<String, Integer> getWifiProxy() {
        if (AwcnNetworkStatusMonitor.f425c != NetworkStatus.WIFI) {
            return null;
        }
        return AwcnNetworkStatusMonitor.f432j;
    }

    public static String getWifiSSID() {
        return AwcnNetworkStatusMonitor.f428f;
    }

    public static boolean isConnected() {
        if (Build.VERSION.SDK_INT >= 24) {
            if (AwcnNetworkStatusMonitor.f424b) {
                return true;
            }
        } else if (AwcnNetworkStatusMonitor.f425c != NetworkStatus.NO) {
            return true;
        }
        try {
            NetworkInfo networkInfoM244e = AwcnNetworkStatusMonitor.m244e();
            if (networkInfoM244e != null) {
                if (networkInfoM244e.isConnected()) {
                    return true;
                }
            }
            return false;
        } catch (Exception unused) {
            return true;
        }
    }

    public static boolean isProxy() {
        NetworkStatus networkStatus = AwcnNetworkStatusMonitor.f425c;
        String str = AwcnNetworkStatusMonitor.f427e;
        if (networkStatus == NetworkStatus.WIFI && getWifiProxy() != null) {
            return true;
        }
        if (networkStatus.isMobile()) {
            return str.contains("wap") || HttpBasicCredentialEncoder.m360a() != null;
        }
        return false;
    }

    public static boolean isRoaming() {
        return AwcnNetworkStatusMonitor.f433k;
    }

    public static void notifyStatusChanged(NetworkStatus networkStatus) {
        ThreadPoolExecutorFactory.submitScheduledTask(new PublishNetworkStatusTask(networkStatus));
    }

    public static void printNetworkDetail() {
        try {
            NetworkStatus status = getStatus();
            StringBuilder sb = new StringBuilder(128);
            sb.append("\nNetwork detail*******************************\n");
            sb.append("Status: ");
            sb.append(status.getType());
            sb.append('\n');
            sb.append("Subtype: ");
            sb.append(getNetworkSubType());
            sb.append('\n');
            if (status != NetworkStatus.NO) {
                if (status.isMobile()) {
                    sb.append("Apn: ");
                    sb.append(getApn());
                    sb.append('\n');
                    sb.append("Carrier: ");
                    sb.append(getCarrier());
                    sb.append('\n');
                } else {
                    sb.append("BSSID: ");
                    sb.append(getWifiBSSID());
                    sb.append('\n');
                    sb.append("SSID: ");
                    sb.append(getWifiSSID());
                    sb.append('\n');
                }
            }
            if (isProxy()) {
                sb.append("Proxy: ");
                sb.append(getProxyType());
                sb.append('\n');
                Pair<String, Integer> wifiProxy = getWifiProxy();
                if (wifiProxy != null) {
                    sb.append("ProxyHost: ");
                    sb.append((String) wifiProxy.first);
                    sb.append('\n');
                    sb.append("ProxyPort: ");
                    sb.append(wifiProxy.second);
                    sb.append('\n');
                }
            }
            sb.append("*********************************************");
            ALog.m340i(TAG, sb.toString(), null, new Object[0]);
        } catch (Exception unused) {
        }
    }

    public static void removeStatusChangeListener(INetworkStatusChangeListener iNetworkStatusChangeListener) {
        listeners.remove(iNetworkStatusChangeListener);
    }

    public static synchronized void startListener(Context context) {
        if (context == null) {
            throw new NullPointerException("context is null");
        }
        AwcnNetworkStatusMonitor.f423a = context;
        AwcnNetworkStatusMonitor.m238a();
        AwcnNetworkStatusMonitor.m242c();
    }

    public void stopListener(Context context) {
        AwcnNetworkStatusMonitor.m240b();
    }
}
