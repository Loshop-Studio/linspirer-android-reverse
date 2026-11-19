package anet.channel.detect;

import android.text.TextUtils;
import android.util.Pair;
import anet.channel.AwcnConfig;
import anet.channel.GlobalAppRuntimeInfo;
import anet.channel.statist.RequestStatistic;
import anet.channel.status.NetworkStatusHelper;
import anet.channel.strategy.IConnStrategy;
import anet.channel.strategy.StrategyCenter;
import anet.channel.strategy.dispatch.DispatchConstants;
import anet.channel.thread.ThreadPoolExecutorFactory;
import anet.channel.util.ALog;
import com.huawei.hem.CompilerOutline;
import com.taobao.accs.common.Constants;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import org.android.netutil.NetUtils;
import org.android.netutil.PingEntry;
import org.android.netutil.PingResponse;
import org.android.netutil.PingTask;
import org.android.spdy.SpdyAgent;
import org.android.spdy.SpdySessionKind;
import org.android.spdy.SpdyVersion;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public class ExceptionDetector {

    /* renamed from: a */
    public long f185a;

    /* renamed from: b */
    public String f186b;

    /* renamed from: c */
    public String f187c;

    /* renamed from: d */
    public String f188d;

    /* renamed from: e */
    public LimitedQueue<Pair<String, Integer>> f189e = new LimitedQueue<>(10);

    /* compiled from: Taobao */
    public class LimitedQueue<E> extends LinkedList<E> {

        /* renamed from: b */
        public int f191b;

        public LimitedQueue(int i) {
            this.f191b = i;
        }

        @Override // java.util.LinkedList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List, java.util.Deque, java.util.Queue
        public boolean add(E e) {
            boolean zAdd = super.add(e);
            while (zAdd && size() > this.f191b) {
                super.remove();
            }
            return zAdd;
        }
    }

    /* compiled from: Taobao */
    /* renamed from: anet.channel.detect.ExceptionDetector$a */
    public class C0323a {

        /* renamed from: a */
        public String f192a;

        /* renamed from: b */
        public String f193b;

        /* renamed from: c */
        public String f194c;

        /* renamed from: d */
        public Future<PingResponse> f195d;

        /* renamed from: e */
        public Future<PingResponse> f196e;

        /* renamed from: f */
        public Future<PingResponse> f197f;

        public C0323a() {
        }

        public /* synthetic */ C0323a(ExceptionDetector exceptionDetector, C0324a c0324a) {
            this();
        }
    }

    /* renamed from: a */
    public void m90a() {
        NetworkStatusHelper.addStatusChangeListener(new C0324a(this));
    }

    /* renamed from: b */
    public void m92b() throws JSONException {
        ALog.m339e("anet.ExceptionDetector", "network detect start.", null, new Object[0]);
        SpdyAgent.getInstance(GlobalAppRuntimeInfo.getContext(), SpdyVersion.SPDY3, SpdySessionKind.NONE_SESSION);
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        NetworkStatusHelper.NetworkStatus status = NetworkStatusHelper.getStatus();
        jSONObject2.put("status", status.getType());
        jSONObject2.put("subType", NetworkStatusHelper.getNetworkSubType());
        if (status != NetworkStatusHelper.NetworkStatus.NO) {
            if (status.isMobile()) {
                jSONObject2.put("apn", NetworkStatusHelper.getApn());
                jSONObject2.put(DispatchConstants.CARRIER, NetworkStatusHelper.getCarrier());
            } else {
                jSONObject2.put(DispatchConstants.BSSID, NetworkStatusHelper.getWifiBSSID());
                jSONObject2.put("ssid", NetworkStatusHelper.getWifiSSID());
            }
            jSONObject2.put("proxy", NetworkStatusHelper.getProxyType());
        }
        jSONObject.put("NetworkInfo", jSONObject2);
        String defaultGateway = status.isWifi() ? NetUtils.getDefaultGateway("114.114.114.114") : NetUtils.getPreferNextHop("114.114.114.114", 2);
        Future<PingResponse> futureLaunch = !TextUtils.isEmpty(defaultGateway) ? new PingTask(defaultGateway, 1000, 3, 0, 0).launch() : null;
        C0323a c0323aM86a = m86a("guide-acs.m.taobao.com", this.f186b);
        C0323a c0323aM86a2 = m86a("gw.alicdn.com", this.f188d);
        C0323a c0323aM86a3 = m86a("msgacs.m.taobao.com", this.f187c);
        JSONObject jSONObject3 = new JSONObject();
        jSONObject3.put("nextHop", defaultGateway);
        jSONObject3.put("ping", m89a(futureLaunch));
        jSONObject.put("LocalDetect", jSONObject3);
        JSONArray jSONArray = new JSONArray();
        jSONArray.put(m88a(c0323aM86a));
        jSONArray.put(m88a(c0323aM86a2));
        jSONArray.put(m88a(c0323aM86a3));
        jSONObject.put("InternetDetect", jSONArray);
        JSONObject jSONObject4 = new JSONObject();
        Iterator<Pair<String, Integer>> it = this.f189e.iterator();
        while (it.hasNext()) {
            Pair<String, Integer> next = it.next();
            jSONObject4.put((String) next.first, next.second);
        }
        jSONObject.put("BizDetect", jSONObject4);
        this.f189e.clear();
        ALog.m339e("anet.ExceptionDetector", "network detect result: " + jSONObject.toString(), null, new Object[0]);
    }

    /* renamed from: c */
    public boolean m93c() {
        if (this.f189e.size() != 10) {
            return false;
        }
        if (NetworkStatusHelper.getStatus() == NetworkStatusHelper.NetworkStatus.NO) {
            ALog.m339e("anet.ExceptionDetector", "no network", null, new Object[0]);
            return false;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis < this.f185a) {
            return false;
        }
        Iterator<Pair<String, Integer>> it = this.f189e.iterator();
        int i = 0;
        while (it.hasNext()) {
            int iIntValue = ((Integer) it.next().second).intValue();
            if (iIntValue == -202 || iIntValue == -400 || iIntValue == -401 || iIntValue == -405 || iIntValue == -406) {
                i++;
            }
        }
        boolean z = i * 2 > 10;
        if (z) {
            this.f185a = jCurrentTimeMillis + 1800000;
        }
        return z;
    }

    /* renamed from: a */
    public void m91a(RequestStatistic requestStatistic) {
        if (AwcnConfig.isNetworkDetectEnable()) {
            ThreadPoolExecutorFactory.submitDetectTask(new RunnableC0326c(this, requestStatistic));
        } else {
            ALog.m340i("anet.ExceptionDetector", "network detect closed.", null, new Object[0]);
        }
    }

    /* renamed from: a */
    private ArrayList<String> m87a(String str, int i) {
        ArrayList<String> arrayList = new ArrayList<>();
        if (TextUtils.isEmpty(str)) {
            return arrayList;
        }
        int i2 = 0;
        while (i2 < i) {
            i2++;
            PingResponse pingResponse = null;
            try {
                pingResponse = (PingResponse) new PingTask(str, 0, 1, 0, i2).launch().get();
            } catch (Exception unused) {
            }
            StringBuilder sb = new StringBuilder();
            if (pingResponse != null) {
                String lastHopIPStr = pingResponse.getLastHopIPStr();
                double d = pingResponse.getResults()[0].rtt;
                int errcode = pingResponse.getErrcode();
                if (TextUtils.isEmpty(lastHopIPStr)) {
                    lastHopIPStr = "*";
                }
                sb.append("hop=");
                sb.append(lastHopIPStr);
                sb.append(",rtt=");
                sb.append(d);
                sb.append(",errCode=");
                sb.append(errcode);
            }
            arrayList.add(sb.toString());
        }
        return arrayList;
    }

    /* renamed from: a */
    private C0323a m86a(String str, String str2) {
        C0323a c0323a = new C0323a(this, null);
        c0323a.f192a = str;
        try {
            c0323a.f193b = InetAddress.getByName(str).getHostAddress();
        } catch (UnknownHostException unused) {
        }
        if (!TextUtils.isEmpty(str2)) {
            c0323a.f194c = str2;
        } else {
            List<IConnStrategy> connStrategyListByHost = StrategyCenter.getInstance().getConnStrategyListByHost(str);
            if (connStrategyListByHost != null && !connStrategyListByHost.isEmpty()) {
                c0323a.f194c = connStrategyListByHost.get(0).getIp();
            }
        }
        String str3 = !TextUtils.isEmpty(c0323a.f194c) ? c0323a.f194c : c0323a.f193b;
        if (!TextUtils.isEmpty(str3)) {
            String str4 = str3;
            c0323a.f195d = new PingTask(str4, 1000, 3, 0, 0).launch();
            c0323a.f196e = new PingTask(str4, 1000, 3, 1172, 0).launch();
            c0323a.f197f = new PingTask(str4, 1000, 3, 1432, 0).launch();
        }
        return c0323a;
    }

    /* renamed from: a */
    private JSONObject m88a(C0323a c0323a) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        if (c0323a != null && c0323a.f195d != null) {
            jSONObject.put(Constants.KEY_HOST, c0323a.f192a);
            jSONObject.put("currentIp", c0323a.f194c);
            jSONObject.put("localIp", c0323a.f193b);
            jSONObject.put("ping", m89a(c0323a.f195d));
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("1200", m89a(c0323a.f196e));
            jSONObject2.put("1460", m89a(c0323a.f197f));
            jSONObject.put("MTU", jSONObject2);
            if ("guide-acs.m.taobao.com".equals(c0323a.f192a)) {
                ArrayList<String> arrayListM87a = m87a(!TextUtils.isEmpty(c0323a.f194c) ? c0323a.f194c : c0323a.f193b, 5);
                JSONObject jSONObject3 = new JSONObject();
                int i = 0;
                while (i < arrayListM87a.size()) {
                    int i2 = i + 1;
                    jSONObject3.put(String.valueOf(i2), arrayListM87a.get(i));
                    i = i2;
                }
                jSONObject.put("traceRoute", jSONObject3);
            }
        }
        return jSONObject;
    }

    /* renamed from: a */
    private JSONObject m89a(Future<PingResponse> future) throws ExecutionException, JSONException, InterruptedException {
        JSONObject jSONObject = new JSONObject();
        if (future == null) {
            return jSONObject;
        }
        PingResponse pingResponse = null;
        try {
            pingResponse = future.get();
        } catch (Exception unused) {
        }
        if (pingResponse == null) {
            return jSONObject;
        }
        jSONObject.put("errCode", pingResponse.getErrcode());
        JSONArray jSONArray = new JSONArray();
        for (PingEntry pingEntry : pingResponse.getResults()) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("seq=");
            sbM1765j.append(pingEntry.seq);
            sbM1765j.append(",hop=");
            sbM1765j.append(pingEntry.hop);
            sbM1765j.append(",rtt=");
            sbM1765j.append(pingEntry.rtt);
            jSONArray.put(sbM1765j.toString());
        }
        jSONObject.put("response", jSONArray);
        return jSONObject;
    }
}
