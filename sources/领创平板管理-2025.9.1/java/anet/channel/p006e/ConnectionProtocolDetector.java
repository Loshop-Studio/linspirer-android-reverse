package anet.channel.p006e;

import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import anet.channel.AwcnConfig;
import anet.channel.GlobalAppRuntimeInfo;
import anet.channel.status.NetworkStatusHelper;
import anet.channel.strategy.IConnStrategy;
import anet.channel.strategy.IStrategyFilter;
import anet.channel.strategy.IStrategyListener;
import anet.channel.strategy.StrategyCenter;
import anet.channel.thread.ThreadPoolExecutorFactory;
import anet.channel.util.ALog;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.android.spdy.SpdyAgent;
import org.android.spdy.SpdySessionKind;
import org.android.spdy.SpdyVersion;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: Taobao */
/* renamed from: anet.channel.e.a */
/* loaded from: classes.dex */
public class ConnectionProtocolDetector {

    /* renamed from: a */
    public static b f229a;

    /* renamed from: b */
    public static String f230b;

    /* renamed from: f */
    public static SharedPreferences f234f;

    /* renamed from: c */
    public static AtomicBoolean f231c = new AtomicBoolean(false);

    /* renamed from: d */
    public static AtomicBoolean f232d = new AtomicBoolean(false);

    /* renamed from: e */
    public static long f233e = 21600000;

    /* renamed from: g */
    public static IStrategyFilter f235g = new ProtocolDetectionFilter();

    /* renamed from: h */
    public static AtomicInteger f236h = new AtomicInteger(1);

    /* renamed from: i */
    public static IStrategyListener f237i = new ProtocolStrategyUpdateListener();

    /* renamed from: j */
    public static NetworkStatusHelper.INetworkStatusChangeListener f238j = new ProtocolDetectionNetworkListener();

    /* compiled from: Taobao */
    /* renamed from: anet.channel.e.a$a */
    public static class a {

        /* renamed from: a */
        public long f239a;

        /* renamed from: b */
        public boolean f240b;

        public a() {
        }

        public /* synthetic */ a(ProtocolDetectionFilter c0340b) {
            this();
        }
    }

    /* renamed from: b */
    public static boolean m121b() {
        b bVar = f229a;
        if (bVar != null) {
            return bVar.m131b(NetworkStatusHelper.getUniqueId(NetworkStatusHelper.getStatus()));
        }
        return false;
    }

    /* renamed from: a */
    public static void m118a(NetworkStatusHelper.NetworkStatus networkStatus) {
        if (!AwcnConfig.isHttp3Enable()) {
            ALog.m340i("awcn.Http3ConnDetector", "startDetect", null, "http3 global config close.");
            return;
        }
        if (f232d.get()) {
            ALog.m339e("awcn.Http3ConnDetector", "tnet exception.", null, new Object[0]);
            return;
        }
        if (NetworkStatusHelper.isConnected()) {
            if (TextUtils.isEmpty(f230b)) {
                ALog.m339e("awcn.Http3ConnDetector", "startDetect", null, "host is null");
                return;
            }
            List<IConnStrategy> connStrategyListByHost = StrategyCenter.getInstance().getConnStrategyListByHost(f230b, f235g);
            if (connStrategyListByHost.isEmpty()) {
                ALog.m339e("awcn.Http3ConnDetector", "startDetect", null, "http3 strategy is null.");
                return;
            }
            if (f231c.compareAndSet(false, true)) {
                try {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    SpdyAgent.getInstance(GlobalAppRuntimeInfo.getContext(), SpdyVersion.SPDY3, SpdySessionKind.NONE_SESSION).InitializeSecurityStuff();
                    ALog.m339e("awcn.Http3ConnDetector", "tnet init http3.", null, "cost", Long.valueOf(System.currentTimeMillis() - jCurrentTimeMillis));
                } catch (Throwable th) {
                    ALog.m338e("awcn.Http3ConnDetector", "tnet init http3 error.", null, th, new Object[0]);
                    f232d.set(true);
                    return;
                }
            }
            if (f229a == null) {
                f229a = new b();
            }
            if (f229a.m130a(NetworkStatusHelper.getUniqueId(networkStatus))) {
                ThreadPoolExecutorFactory.submitDetectTask(new ProtocolDetectionSessionTask(connStrategyListByHost, networkStatus));
            }
        }
    }

    /* renamed from: b */
    public static IConnStrategy m120b(IConnStrategy iConnStrategy) {
        return new ProbeConnectionStrategy(iConnStrategy);
    }

    /* compiled from: Taobao */
    /* renamed from: anet.channel.e.a$b */
    public static class b {

        /* renamed from: a */
        public Map<String, a> f241a = new ConcurrentHashMap();

        public b() throws JSONException {
            m127a();
        }

        /* renamed from: a */
        private void m127a() throws JSONException {
            ProtocolDetectionFilter c0340b = null;
            String string = ConnectionProtocolDetector.f234f.getString("networksdk_http3_history_records", null);
            if (TextUtils.isEmpty(string)) {
                return;
            }
            try {
                JSONArray jSONArray = new JSONArray(string);
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject jSONObject = (JSONObject) jSONArray.get(i);
                    a aVar = new a(c0340b);
                    String string2 = jSONObject.getString("networkUniqueId");
                    aVar.f239a = jSONObject.getLong("time");
                    aVar.f240b = jSONObject.getBoolean("enable");
                    if (m128a(aVar.f239a)) {
                        synchronized (this.f241a) {
                            this.f241a.put(string2, aVar);
                        }
                    }
                }
            } catch (JSONException unused) {
            }
        }

        /* renamed from: b */
        public boolean m131b(String str) {
            synchronized (this.f241a) {
                a aVar = this.f241a.get(str);
                if (aVar == null) {
                    return false;
                }
                return aVar.f240b;
            }
        }

        /* renamed from: a */
        public boolean m130a(String str) {
            synchronized (this.f241a) {
                a aVar = this.f241a.get(str);
                boolean z = true;
                if (aVar == null) {
                    return true;
                }
                if (m128a(aVar.f239a)) {
                    z = false;
                }
                return z;
            }
        }

        /* renamed from: a */
        private boolean m128a(long j) {
            return System.currentTimeMillis() - j < ConnectionProtocolDetector.f233e;
        }

        /* renamed from: a */
        public void m129a(String str, boolean z) {
            a aVar = new a(null);
            aVar.f240b = z;
            aVar.f239a = System.currentTimeMillis();
            JSONArray jSONArray = new JSONArray();
            synchronized (this.f241a) {
                this.f241a.put(str, aVar);
                for (Map.Entry<String, a> entry : this.f241a.entrySet()) {
                    String key = entry.getKey();
                    a value = entry.getValue();
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("networkUniqueId", key);
                        jSONObject.put("time", value.f239a);
                        jSONObject.put("enable", value.f240b);
                        jSONArray.put(jSONObject);
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                }
            }
            ConnectionProtocolDetector.f234f.edit().putString("networksdk_http3_history_records", jSONArray.toString()).apply();
        }
    }

    /* renamed from: a */
    public static void m116a() {
        try {
            ALog.m339e("awcn.Http3ConnDetector", "registerListener", null, "http3Enable", Boolean.valueOf(AwcnConfig.isHttp3Enable()));
            SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(GlobalAppRuntimeInfo.getContext());
            f234f = defaultSharedPreferences;
            f230b = defaultSharedPreferences.getString("http3_detector_host", "");
            m118a(NetworkStatusHelper.getStatus());
            NetworkStatusHelper.addStatusChangeListener(f238j);
            StrategyCenter.getInstance().registerListener(f237i);
        } catch (Exception e) {
            ALog.m338e("awcn.Http3ConnDetector", "[registerListener]error", null, e, new Object[0]);
        }
    }

    /* renamed from: a */
    public static void m117a(long j) {
        if (j < 0) {
            return;
        }
        f233e = j;
    }

    /* renamed from: a */
    public static void m119a(boolean z) {
        b bVar = f229a;
        if (bVar != null) {
            bVar.m129a(NetworkStatusHelper.getUniqueId(NetworkStatusHelper.getStatus()), z);
        }
    }
}
