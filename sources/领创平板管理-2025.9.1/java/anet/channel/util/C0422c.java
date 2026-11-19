package anet.channel.util;

import android.text.TextUtils;
import anet.channel.AwcnConfig;
import anet.channel.GlobalAppRuntimeInfo;
import anet.channel.appmonitor.AppMonitor;
import anet.channel.statist.NetTypeStat;
import anet.channel.status.NetworkStatusHelper;
import anet.channel.thread.ThreadPoolExecutorFactory;
import com.huawei.hem.CompilerOutline;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.InterfaceAddress;
import java.net.NetworkInterface;
import java.net.UnknownHostException;
import java.security.InvalidParameterException;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.TimeUnit;
import org.android.netutil.UdpConnectType;
import org.android.spdy.SpdyAgent;
import org.android.spdy.SpdySessionKind;
import org.android.spdy.SpdyVersion;

/* compiled from: Taobao */
/* renamed from: anet.channel.util.c */
/* loaded from: classes.dex */
public class C0422c {
    public static final int IPV4_ONLY = 1;
    public static final int IPV6_ONLY = 2;
    public static final int IP_DUAL_STACK = 3;
    public static final int IP_STACK_UNKNOWN = 0;

    /* renamed from: b */
    public static volatile String f586b;

    /* renamed from: c */
    public static C0425f f587c;

    /* renamed from: a */
    public static final byte[][] f585a = {new byte[]{-64, 0, 0, -86}, new byte[]{-64, 0, 0, -85}};

    /* renamed from: d */
    public static ConcurrentHashMap<String, C0425f> f588d = new ConcurrentHashMap<>();

    /* renamed from: e */
    public static ConcurrentHashMap<String, Integer> f589e = new ConcurrentHashMap<>();

    static {
        f586b = null;
        f587c = null;
        try {
            f587c = new C0425f((Inet6Address) InetAddress.getAllByName("64:ff9b::")[0], 96);
            f586b = m349b(NetworkStatusHelper.getStatus());
        } catch (Exception unused) {
        }
    }

    /* renamed from: a */
    public static boolean m347a() {
        return false;
    }

    /* renamed from: b */
    public static String m349b(NetworkStatusHelper.NetworkStatus networkStatus) {
        if (networkStatus.isWifi()) {
            String wifiBSSID = NetworkStatusHelper.getWifiBSSID();
            if (TextUtils.isEmpty(wifiBSSID)) {
                wifiBSSID = "";
            }
            return "WIFI$" + wifiBSSID;
        }
        if (!networkStatus.isMobile()) {
            return "UnknownNetwork";
        }
        return networkStatus.getType() + "$" + NetworkStatusHelper.getApn();
    }

    /* renamed from: c */
    public static int m351c() {
        Integer num = f589e.get(f586b);
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    /* renamed from: d */
    public static C0425f m352d() {
        C0425f c0425f = f588d.get(f586b);
        return c0425f == null ? f587c : c0425f;
    }

    /* renamed from: e */
    public static void m353e() {
        if (!AwcnConfig.isIpv6Enable()) {
            ALog.m339e("awcn.Inet64Util", "[startIpStackDetect]ipv6Enable=false", null, new Object[0]);
            return;
        }
        f586b = m349b(NetworkStatusHelper.getStatus());
        if (f589e.putIfAbsent(f586b, 0) != null) {
            return;
        }
        int iM358j = m358j();
        f589e.put(f586b, Integer.valueOf(iM358j));
        NetTypeStat netTypeStat = new NetTypeStat();
        netTypeStat.ipStackType = iM358j;
        String str = f586b;
        if (iM358j == 2 || iM358j == 3) {
            ThreadPoolExecutorFactory.submitScheduledTask(new RunnableC0423d(str, netTypeStat), 1500L, TimeUnit.MILLISECONDS);
        } else if (GlobalAppRuntimeInfo.isTargetProcess()) {
            AppMonitor.getInstance().commitStat(netTypeStat);
        }
    }

    /* renamed from: h */
    public static int m356h() {
        String str;
        int iIntValue;
        TreeMap treeMap = new TreeMap();
        Iterator it = Collections.list(NetworkInterface.getNetworkInterfaces()).iterator();
        while (true) {
            str = null;
            iIntValue = 0;
            if (!it.hasNext()) {
                break;
            }
            NetworkInterface networkInterface = (NetworkInterface) it.next();
            if (!networkInterface.getInterfaceAddresses().isEmpty()) {
                String displayName = networkInterface.getDisplayName();
                ALog.m340i("awcn.Inet64Util", CompilerOutline.m1760e("find NetworkInterface:", displayName), null, new Object[0]);
                Iterator<InterfaceAddress> it2 = networkInterface.getInterfaceAddresses().iterator();
                int i = 0;
                while (it2.hasNext()) {
                    InetAddress address = it2.next().getAddress();
                    if (address instanceof Inet6Address) {
                        Inet6Address inet6Address = (Inet6Address) address;
                        if (!m348a(inet6Address)) {
                            StringBuilder sbM1765j = CompilerOutline.m1765j("Found IPv6 address:");
                            sbM1765j.append(inet6Address.toString());
                            ALog.m339e("awcn.Inet64Util", sbM1765j.toString(), null, new Object[0]);
                            i |= 2;
                        }
                    } else if (address instanceof Inet4Address) {
                        Inet4Address inet4Address = (Inet4Address) address;
                        if (!m348a((InetAddress) inet4Address) && !inet4Address.getHostAddress().startsWith("192.168.43.")) {
                            StringBuilder sbM1765j2 = CompilerOutline.m1765j("Found IPv4 address:");
                            sbM1765j2.append(inet4Address.toString());
                            ALog.m339e("awcn.Inet64Util", sbM1765j2.toString(), null, new Object[0]);
                            i |= 1;
                        }
                    }
                }
                if (i != 0) {
                    treeMap.put(displayName.toLowerCase(), Integer.valueOf(i));
                }
            }
        }
        if (treeMap.isEmpty()) {
            return 0;
        }
        if (treeMap.size() == 1) {
            return ((Integer) treeMap.firstEntry().getValue()).intValue();
        }
        if (NetworkStatusHelper.getStatus().isWifi()) {
            str = "wlan";
        } else if (NetworkStatusHelper.getStatus().isMobile()) {
            str = "rmnet";
        }
        if (str != null) {
            Iterator it3 = treeMap.entrySet().iterator();
            while (true) {
                if (!it3.hasNext()) {
                    break;
                }
                Map.Entry entry = (Map.Entry) it3.next();
                if (((String) entry.getKey()).startsWith(str)) {
                    iIntValue = ((Integer) entry.getValue()).intValue();
                    break;
                }
            }
        }
        return (iIntValue == 2 && treeMap.containsKey("v4-wlan0")) ? iIntValue | ((Integer) treeMap.remove("v4-wlan0")).intValue() : iIntValue;
    }

    /* renamed from: i */
    public static int m357i() {
        SpdyAgent.getInstance(GlobalAppRuntimeInfo.getContext(), SpdyVersion.SPDY3, SpdySessionKind.NONE_SESSION);
        int i = UdpConnectType.nativeTestUdpConnectIpv4() != 0 ? 1 : 0;
        return UdpConnectType.nativeTestUdpConnectIpv6() != 0 ? i | 2 : i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v3, types: [boolean] */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r3v9 */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.lang.Object[]] */
    /* renamed from: j */
    public static int m358j() {
        ?? IsIpStackDetectByUdpConnect;
        int iM356h;
        try {
            IsIpStackDetectByUdpConnect = AwcnConfig.isIpStackDetectByUdpConnect();
            try {
                if (IsIpStackDetectByUdpConnect != 0) {
                    String str = "udp_connect";
                    iM356h = m357i();
                    IsIpStackDetectByUdpConnect = str;
                } else {
                    String str2 = "interfaces";
                    iM356h = m356h();
                    IsIpStackDetectByUdpConnect = str2;
                }
            } catch (Throwable th) {
                th = th;
                ALog.m338e("awcn.Inet64Util", "[detectIpStack]error.", null, th, new Object[0]);
                iM356h = 0;
                ALog.m339e("awcn.Inet64Util", "startIpStackDetect", null, new Object[]{"ip stack", Integer.valueOf(iM356h), "detectType", IsIpStackDetectByUdpConnect});
                return iM356h;
            }
        } catch (Throwable th2) {
            th = th2;
            IsIpStackDetectByUdpConnect = 0;
        }
        ALog.m339e("awcn.Inet64Util", "startIpStackDetect", null, new Object[]{"ip stack", Integer.valueOf(iM356h), "detectType", IsIpStackDetectByUdpConnect});
        return iM356h;
    }

    /* renamed from: k */
    public static C0425f m359k() throws UnknownHostException {
        InetAddress byName;
        boolean z;
        try {
            byName = InetAddress.getByName("ipv4only.arpa");
        } catch (Exception unused) {
            byName = null;
        }
        if (byName instanceof Inet6Address) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("Resolved AAAA: ");
            sbM1765j.append(byName.toString());
            ALog.m340i("awcn.Inet64Util", sbM1765j.toString(), null, new Object[0]);
            byte[] address = byName.getAddress();
            if (address.length != 16) {
                return null;
            }
            int i = 12;
            while (true) {
                z = true;
                if (i < 0) {
                    z = false;
                    break;
                }
                byte b = address[i];
                byte[][] bArr = f585a;
                if ((b & bArr[0][0]) != 0 && address[i + 1] == 0 && address[i + 2] == 0) {
                    int i2 = i + 3;
                    if (address[i2] == bArr[0][3] || address[i2] == bArr[1][3]) {
                        break;
                    }
                }
                i--;
            }
            if (z) {
                address[i + 3] = 0;
                address[i + 2] = 0;
                address[i + 1] = 0;
                address[i] = 0;
                return new C0425f(Inet6Address.getByAddress("ipv4only.arpa", address, 0), i * 8);
            }
        } else if (byName instanceof Inet4Address) {
            StringBuilder sbM1765j2 = CompilerOutline.m1765j("Resolved A: ");
            sbM1765j2.append(byName.toString());
            ALog.m340i("awcn.Inet64Util", sbM1765j2.toString(), null, new Object[0]);
        }
        return null;
    }

    /* renamed from: a */
    public static String m346a(Inet4Address inet4Address) throws Exception {
        if (inet4Address == null) {
            throw new InvalidParameterException("address in null");
        }
        C0425f c0425fM352d = m352d();
        if (c0425fM352d == null) {
            throw new Exception("cannot get nat64 prefix");
        }
        byte[] address = inet4Address.getAddress();
        byte[] address2 = c0425fM352d.f594b.getAddress();
        int i = c0425fM352d.f593a / 8;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int i4 = i2 + i;
            if (i4 > 15 || i3 >= 4) {
                break;
            }
            if (i4 != 8) {
                address2[i4] = (byte) (address[i3] | address2[i4]);
                i3++;
            }
            i2++;
        }
        return InetAddress.getByAddress(address2).getHostAddress();
    }

    /* renamed from: b */
    public static boolean m350b() {
        Integer num = f589e.get(f586b);
        return num != null && num.intValue() == 1;
    }

    /* renamed from: a */
    public static String m345a(String str) {
        return m346a((Inet4Address) Inet4Address.getByName(str));
    }

    /* renamed from: a */
    public static boolean m348a(InetAddress inetAddress) {
        return inetAddress.isLoopbackAddress() || inetAddress.isLinkLocalAddress() || inetAddress.isAnyLocalAddress();
    }
}
