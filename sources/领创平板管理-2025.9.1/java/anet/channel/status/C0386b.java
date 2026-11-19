package anet.channel.status;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Pair;
import anet.channel.AwcnConfig;
import anet.channel.status.NetworkStatusHelper;
import anet.channel.thread.ThreadPoolExecutorFactory;
import anet.channel.util.ALog;
import anet.channel.util.C0422c;
import com.huawei.hem.CompilerOutline;
import com.taobao.accs.utl.UtilityImpl;
import java.lang.reflect.Method;
import java.net.InetAddress;
import java.util.Collections;
import java.util.List;
import java.util.Locale;

/* compiled from: Taobao */
/* renamed from: anet.channel.status.b */
/* loaded from: classes.dex */
public class C0386b {

    /* renamed from: t */
    public static Method f442t;

    /* renamed from: m */
    public static String[] f435m = {"net.dns1", "net.dns2", "net.dns3", "net.dns4"};

    /* renamed from: a */
    public static volatile Context f423a = null;

    /* renamed from: b */
    public static volatile boolean f424b = false;

    /* renamed from: c */
    public static volatile NetworkStatusHelper.NetworkStatus f425c = NetworkStatusHelper.NetworkStatus.NONE;

    /* renamed from: d */
    public static volatile String f426d = "unknown";

    /* renamed from: e */
    public static volatile String f427e = "";

    /* renamed from: f */
    public static volatile String f428f = "";

    /* renamed from: g */
    public static volatile String f429g = "";

    /* renamed from: h */
    public static volatile String f430h = "unknown";

    /* renamed from: i */
    public static volatile String f431i = "";

    /* renamed from: j */
    public static volatile Pair<String, Integer> f432j = null;

    /* renamed from: k */
    public static volatile boolean f433k = false;

    /* renamed from: l */
    public static volatile List<InetAddress> f434l = Collections.EMPTY_LIST;

    /* renamed from: n */
    public static volatile boolean f436n = false;

    /* renamed from: o */
    public static volatile boolean f437o = false;

    /* renamed from: p */
    public static ConnectivityManager f438p = null;

    /* renamed from: q */
    public static TelephonyManager f439q = null;

    /* renamed from: r */
    public static WifiManager f440r = null;

    /* renamed from: s */
    public static SubscriptionManager f441s = null;

    /* renamed from: u */
    public static BroadcastReceiver f443u = new BroadcastReceiver() { // from class: anet.channel.status.NetworkStatusMonitor$2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (ALog.isPrintLog(1)) {
                StringBuilder sbM1765j = CompilerOutline.m1765j("receiver:");
                sbM1765j.append(intent.getAction());
                ALog.m337d("awcn.NetworkStatusMonitor", sbM1765j.toString(), null, new Object[0]);
            }
            ThreadPoolExecutorFactory.submitScheduledTask(new RunnableC0388d(this));
        }
    };

    /* renamed from: a */
    public static void m238a() {
        if (f436n || f423a == null) {
            return;
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        try {
            f423a.registerReceiver(f443u, intentFilter);
        } catch (Exception unused) {
            ALog.m339e("awcn.NetworkStatusMonitor", "registerReceiver failed", null, new Object[0]);
        }
        m243d();
        f436n = true;
    }

    /* renamed from: b */
    public static void m240b() {
        if (f423a != null) {
            f423a.unregisterReceiver(f443u);
        }
    }

    /* renamed from: c */
    public static void m242c() {
        if (Build.VERSION.SDK_INT < 24 || f437o) {
            return;
        }
        NetworkInfo networkInfoM244e = m244e();
        f424b = networkInfoM244e != null && networkInfoM244e.isConnected();
        f438p.registerDefaultNetworkCallback(new C0387c());
        f437o = true;
    }

    /* renamed from: d */
    public static void m243d() {
        NetworkInfo networkInfoM244e;
        boolean z;
        WifiInfo wifiInfoM248i;
        ALog.m337d("awcn.NetworkStatusMonitor", "[checkNetworkStatus]", null, new Object[0]);
        NetworkStatusHelper.NetworkStatus networkStatus = f425c;
        String str = f427e;
        String str2 = f428f;
        try {
            try {
                networkInfoM244e = m244e();
                z = false;
            } catch (Exception e) {
                ALog.m338e("awcn.NetworkStatusMonitor", "getNetworkInfo exception", null, e, new Object[0]);
                m239a(NetworkStatusHelper.NetworkStatus.NONE, "unknown");
                networkInfoM244e = null;
                z = true;
            }
            if (!z) {
                if (networkInfoM244e == null || !networkInfoM244e.isConnected()) {
                    m239a(NetworkStatusHelper.NetworkStatus.NO, "no network");
                    ALog.m340i("awcn.NetworkStatusMonitor", "checkNetworkStatus", null, "no network");
                } else {
                    ALog.m340i("awcn.NetworkStatusMonitor", "checkNetworkStatus", null, "info.isConnected", Boolean.valueOf(networkInfoM244e.isConnected()), "info.isAvailable", Boolean.valueOf(networkInfoM244e.isAvailable()), "info.getType", Integer.valueOf(networkInfoM244e.getType()));
                    if (networkInfoM244e.getType() == 0) {
                        String subtypeName = networkInfoM244e.getSubtypeName();
                        String strReplace = TextUtils.isEmpty(subtypeName) ? "" : subtypeName.replace(" ", "");
                        m239a(m236a(networkInfoM244e.getSubtype(), strReplace), strReplace);
                        f427e = m237a(networkInfoM244e.getExtraInfo());
                        m247h();
                    } else if (networkInfoM244e.getType() == 1) {
                        m239a(NetworkStatusHelper.NetworkStatus.WIFI, UtilityImpl.NET_TYPE_WIFI);
                        if (AwcnConfig.isWifiInfoEnable() && (wifiInfoM248i = m248i()) != null && m241b("android.permission.ACCESS_FINE_LOCATION")) {
                            f429g = wifiInfoM248i.getBSSID();
                            f428f = wifiInfoM248i.getSSID();
                        }
                        f430h = UtilityImpl.NET_TYPE_WIFI;
                        f431i = UtilityImpl.NET_TYPE_WIFI;
                        f432j = m249j();
                    } else {
                        m239a(NetworkStatusHelper.NetworkStatus.NONE, "unknown");
                    }
                    f433k = networkInfoM244e.isRoaming();
                    C0422c.m353e();
                }
            }
            if (f425c == networkStatus && f427e.equalsIgnoreCase(str) && f428f.equalsIgnoreCase(str2)) {
                return;
            }
            if (ALog.isPrintLog(2)) {
                NetworkStatusHelper.printNetworkDetail();
            }
            NetworkStatusHelper.notifyStatusChanged(f425c);
        } catch (Exception e2) {
            ALog.m338e("awcn.NetworkStatusMonitor", "checkNetworkStatus", null, e2, new Object[0]);
        }
    }

    /* renamed from: e */
    public static NetworkInfo m244e() {
        if (f438p == null) {
            f438p = (ConnectivityManager) f423a.getSystemService("connectivity");
        }
        return f438p.getActiveNetworkInfo();
    }

    /* renamed from: f */
    public static String m245f() throws NoSuchMethodException, SecurityException {
        try {
            Method method = Class.forName("android.os.SystemProperties").getMethod("get", String.class);
            for (String str : f435m) {
                String str2 = (String) method.invoke(null, str);
                if (!TextUtils.isEmpty(str2)) {
                    return str2;
                }
            }
        } catch (Exception unused) {
        }
        return null;
    }

    /* renamed from: g */
    public static int m246g() {
        if (f438p == null || Build.VERSION.SDK_INT < 24) {
            return -1;
        }
        return f438p.getRestrictBackgroundStatus();
    }

    /* renamed from: h */
    public static void m247h() {
        try {
            if (AwcnConfig.isCarrierInfoEnable() && m241b("android.permission.READ_PHONE_STATE")) {
                if (f439q == null) {
                    f439q = (TelephonyManager) f423a.getSystemService("phone");
                }
                f431i = f439q.getSimOperator();
                if (f441s == null) {
                    SubscriptionManager subscriptionManagerFrom = SubscriptionManager.from(f423a);
                    f441s = subscriptionManagerFrom;
                    f442t = subscriptionManagerFrom.getClass().getDeclaredMethod("getDefaultDataSubscriptionInfo", new Class[0]);
                }
                if (f442t != null) {
                    f430h = ((SubscriptionInfo) f442t.invoke(f441s, new Object[0])).getCarrierName().toString();
                }
            }
        } catch (Exception unused) {
        }
    }

    /* renamed from: i */
    public static WifiInfo m248i() {
        try {
            if (f440r == null) {
                f440r = (WifiManager) f423a.getSystemService(UtilityImpl.NET_TYPE_WIFI);
            }
            return f440r.getConnectionInfo();
        } catch (Throwable th) {
            ALog.m338e("awcn.NetworkStatusMonitor", "getWifiInfo", null, th, new Object[0]);
            return null;
        }
    }

    /* renamed from: j */
    public static Pair<String, Integer> m249j() {
        try {
            String property = System.getProperty("http.proxyHost");
            if (TextUtils.isEmpty(property)) {
                return null;
            }
            return Pair.create(property, Integer.valueOf(Integer.parseInt(System.getProperty("http.proxyPort"))));
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    /* renamed from: b */
    public static boolean m241b(String str) {
        return f423a.checkSelfPermission(str) == 0;
    }

    /* renamed from: a */
    public static void m239a(NetworkStatusHelper.NetworkStatus networkStatus, String str) {
        f425c = networkStatus;
        f426d = str;
        f427e = "";
        f428f = "";
        f429g = "";
        f432j = null;
        f430h = "";
        f431i = "";
    }

    /* renamed from: a */
    public static NetworkStatusHelper.NetworkStatus m236a(int i, String str) {
        switch (i) {
            case 1:
            case 2:
            case 4:
            case 7:
            case 11:
            case 16:
                return NetworkStatusHelper.NetworkStatus.G2;
            case 3:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 12:
            case 14:
            case 15:
            case 17:
                return NetworkStatusHelper.NetworkStatus.G3;
            case 13:
            case 18:
            case 19:
                return NetworkStatusHelper.NetworkStatus.G4;
            case 20:
                return NetworkStatusHelper.NetworkStatus.G5;
            default:
                if (!str.equalsIgnoreCase("TD-SCDMA") && !str.equalsIgnoreCase("WCDMA") && !str.equalsIgnoreCase("CDMA2000")) {
                    return NetworkStatusHelper.NetworkStatus.NONE;
                }
                return NetworkStatusHelper.NetworkStatus.G3;
        }
    }

    /* renamed from: a */
    public static String m237a(String str) {
        if (!TextUtils.isEmpty(str)) {
            String lowerCase = str.toLowerCase(Locale.US);
            if (lowerCase.contains("cmwap")) {
                return "cmwap";
            }
            if (lowerCase.contains("uniwap")) {
                return "uniwap";
            }
            if (lowerCase.contains("3gwap")) {
                return "3gwap";
            }
            if (lowerCase.contains("ctwap")) {
                return "ctwap";
            }
            if (lowerCase.contains("cmnet")) {
                return "cmnet";
            }
            if (lowerCase.contains("uninet")) {
                return "uninet";
            }
            if (lowerCase.contains("3gnet")) {
                return "3gnet";
            }
            if (lowerCase.contains("ctnet")) {
                return "ctnet";
            }
        }
        return "unknown";
    }
}
