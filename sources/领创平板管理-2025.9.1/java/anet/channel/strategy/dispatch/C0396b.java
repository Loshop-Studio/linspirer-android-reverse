package anet.channel.strategy.dispatch;

import android.util.Base64InputStream;
import anet.channel.GlobalAppRuntimeInfo;
import anet.channel.appmonitor.AppMonitor;
import anet.channel.flow.FlowStat;
import anet.channel.flow.NetworkAnalysis;
import anet.channel.statist.AmdcStatistic;
import anet.channel.status.NetworkStatusHelper;
import anet.channel.strategy.ConnEvent;
import anet.channel.strategy.IConnStrategy;
import anet.channel.strategy.StrategyCenter;
import anet.channel.strategy.utils.C0413c;
import anet.channel.util.ALog;
import anet.channel.util.C0422c;
import anet.channel.util.HttpConstant;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Random;
import java.util.TreeMap;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.zip.GZIPInputStream;
import javax.net.ssl.HostnameVerifier;

/* compiled from: Taobao */
/* renamed from: anet.channel.strategy.dispatch.b */
/* loaded from: classes.dex */
public class C0396b {

    /* renamed from: a */
    public static AtomicInteger f502a = new AtomicInteger(0);

    /* renamed from: b */
    public static HostnameVerifier f503b = new C0397c();

    /* renamed from: c */
    public static Random f504c = new Random();

    /* renamed from: a */
    public static List<IConnStrategy> m302a(String str) {
        List<IConnStrategy> connStrategyListByHost = Collections.EMPTY_LIST;
        if (!NetworkStatusHelper.isProxy()) {
            connStrategyListByHost = StrategyCenter.getInstance().getConnStrategyListByHost(DispatchConstants.getAmdcServerDomain());
            ListIterator<IConnStrategy> listIterator = connStrategyListByHost.listIterator();
            while (listIterator.hasNext()) {
                if (!listIterator.next().getProtocol().protocol.equalsIgnoreCase(str)) {
                    listIterator.remove();
                }
            }
        }
        return connStrategyListByHost;
    }

    /* renamed from: a */
    public static void m305a(Map map) {
        String strM301a;
        IConnStrategy iConnStrategyRemove;
        String strM301a2;
        if (map == null) {
            return;
        }
        String schemeByHost = AmdcRuntimeInfo.isForceHttps() ? HttpConstant.HTTPS : StrategyCenter.getInstance().getSchemeByHost(DispatchConstants.getAmdcServerDomain(), HttpConstant.HTTP);
        List<IConnStrategy> listM302a = m302a(schemeByHost);
        for (int i = 0; i < 3; i++) {
            HashMap map2 = new HashMap(map);
            if (i != 2) {
                iConnStrategyRemove = !listM302a.isEmpty() ? listM302a.remove(0) : null;
                if (iConnStrategyRemove != null) {
                    strM301a2 = m301a(schemeByHost, iConnStrategyRemove.getIp(), iConnStrategyRemove.getPort(), map2, i);
                } else {
                    strM301a2 = m301a(schemeByHost, (String) null, 0, map2, i);
                }
            } else {
                String[] amdcServerFixIp = DispatchConstants.getAmdcServerFixIp();
                if (amdcServerFixIp != null && amdcServerFixIp.length > 0) {
                    strM301a = m301a(schemeByHost, amdcServerFixIp[f504c.nextInt(amdcServerFixIp.length)], 0, map2, i);
                } else {
                    strM301a = m301a(schemeByHost, (String) null, 0, map2, i);
                }
                String str = strM301a;
                iConnStrategyRemove = null;
                strM301a2 = str;
            }
            int iM299a = m299a(strM301a2, map2, i);
            if (iConnStrategyRemove != null) {
                ConnEvent connEvent = new ConnEvent();
                connEvent.isSuccess = iM299a == 0;
                StrategyCenter.getInstance().notifyConnEvent(DispatchConstants.getAmdcServerDomain(), iConnStrategyRemove, connEvent);
            }
            if (iM299a == 0 || iM299a == 2) {
                return;
            }
        }
    }

    /* renamed from: a */
    public static String m301a(String str, String str2, int i, Map<String, String> map, int i2) {
        StringBuilder sb = new StringBuilder(64);
        if (!AmdcRuntimeInfo.isForceHttps() && i2 == 2 && HttpConstant.HTTPS.equalsIgnoreCase(str) && f504c.nextBoolean()) {
            str = HttpConstant.HTTP;
        }
        sb.append(str);
        sb.append(HttpConstant.SCHEME_SPLIT);
        if (str2 != null) {
            if (C0422c.m347a() && C0413c.m331a(str2)) {
                try {
                    str2 = C0422c.m345a(str2);
                } catch (Exception unused) {
                }
            }
            if (C0413c.m332b(str2)) {
                sb.append('[');
                sb.append(str2);
                sb.append(']');
            } else {
                sb.append(str2);
            }
            if (i == 0) {
                i = HttpConstant.HTTPS.equalsIgnoreCase(str) ? 443 : 80;
            }
            sb.append(":");
            sb.append(i);
        } else {
            sb.append(DispatchConstants.getAmdcServerDomain());
        }
        sb.append(DispatchConstants.serverPath);
        TreeMap treeMap = new TreeMap();
        treeMap.put("appkey", map.remove("appkey"));
        treeMap.put("v", map.remove("v"));
        treeMap.put("platform", map.remove("platform"));
        sb.append('?');
        sb.append(C0413c.m330a(treeMap, "utf-8"));
        return sb.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0293 A[Catch: all -> 0x02b5, TryCatch #8 {all -> 0x02b5, blocks: (B:112:0x0289, B:114:0x0293, B:115:0x0297), top: B:147:0x0289 }] */
    /* JADX WARN: Removed duplicated region for block: B:135:0x02a7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:168:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v5, types: [long] */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r7v8, types: [java.net.URL] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m299a(java.lang.String r17, java.util.Map r18, int r19) {
        /*
            Method dump skipped, instructions count: 711
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: anet.channel.strategy.dispatch.C0396b.m299a(java.lang.String, java.util.Map, int):int");
    }

    /* renamed from: a */
    public static String m300a(InputStream inputStream, boolean z) throws Throwable {
        IOException e;
        FilterInputStream base64InputStream;
        FilterInputStream bufferedInputStream = new BufferedInputStream(inputStream);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(1024);
        try {
            if (z) {
                try {
                    bufferedInputStream = new GZIPInputStream(bufferedInputStream);
                } catch (IOException e2) {
                    e = e2;
                    ALog.m338e("awcn.DispatchCore", "", null, e, new Object[0]);
                    try {
                        bufferedInputStream.close();
                    } catch (IOException unused) {
                    }
                    return null;
                }
            }
            base64InputStream = new Base64InputStream(bufferedInputStream, 0);
        } catch (Throwable th) {
            th = th;
        }
        try {
            byte[] bArr = new byte[1024];
            while (true) {
                int i = base64InputStream.read(bArr);
                if (i == -1) {
                    break;
                }
                byteArrayOutputStream.write(bArr, 0, i);
            }
            String str = new String(byteArrayOutputStream.toByteArray(), "utf-8");
            try {
                base64InputStream.close();
            } catch (IOException unused2) {
            }
            return str;
        } catch (IOException e3) {
            e = e3;
            bufferedInputStream = base64InputStream;
            ALog.m338e("awcn.DispatchCore", "", null, e, new Object[0]);
            bufferedInputStream.close();
            return null;
        } catch (Throwable th2) {
            th = th2;
            bufferedInputStream = base64InputStream;
            try {
                bufferedInputStream.close();
            } catch (IOException unused3) {
            }
            throw th;
        }
    }

    /* renamed from: a */
    public static void m304a(String str, String str2, URL url, int i, int i2) {
        if ((i2 != 1 || i == 2) && GlobalAppRuntimeInfo.isTargetProcess()) {
            try {
                AmdcStatistic amdcStatistic = new AmdcStatistic();
                amdcStatistic.errorCode = str;
                amdcStatistic.errorMsg = str2;
                if (url != null) {
                    amdcStatistic.host = url.getHost();
                    amdcStatistic.url = url.toString();
                }
                amdcStatistic.retryTimes = i;
                AppMonitor.getInstance().commitStat(amdcStatistic);
            } catch (Exception unused) {
            }
        }
    }

    /* renamed from: a */
    public static void m303a(String str, long j, long j2) {
        try {
            FlowStat flowStat = new FlowStat();
            flowStat.refer = "amdc";
            flowStat.protocoltype = HttpConstant.HTTP;
            flowStat.req_identifier = str;
            flowStat.upstream = j;
            flowStat.downstream = j2;
            NetworkAnalysis.getInstance().commitFlow(flowStat);
        } catch (Exception e) {
            ALog.m338e("awcn.DispatchCore", "commit flow info failed!", null, e, new Object[0]);
        }
    }
}
