package anet.channel;

import android.content.Context;
import android.text.TextUtils;
import anet.channel.entity.C0346a;
import anet.channel.entity.C0347b;
import anet.channel.entity.ConnType;
import anet.channel.entity.EventCb;
import anet.channel.request.Cancelable;
import anet.channel.request.Request;
import anet.channel.statist.SessionStatistic;
import anet.channel.strategy.IConnStrategy;
import anet.channel.strategy.StrategyCenter;
import anet.channel.thread.ThreadPoolExecutorFactory;
import anet.channel.util.ALog;
import anet.channel.util.HttpConstant;
import anet.channel.util.HttpHelper;
import anet.channel.util.StringUtils;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import org.android.spdy.SpdyAgent;
import org.android.spdy.SpdySessionKind;
import org.android.spdy.SpdyVersion;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public abstract class Session implements Comparable<Session> {

    /* renamed from: v */
    public static ExecutorService f94v = Executors.newSingleThreadExecutor();

    /* renamed from: a */
    public Context f95a;

    /* renamed from: c */
    public String f97c;

    /* renamed from: d */
    public String f98d;

    /* renamed from: e */
    public String f99e;

    /* renamed from: f */
    public String f100f;

    /* renamed from: g */
    public int f101g;

    /* renamed from: h */
    public String f102h;

    /* renamed from: i */
    public int f103i;

    /* renamed from: j */
    public ConnType f104j;

    /* renamed from: k */
    public IConnStrategy f105k;

    /* renamed from: m */
    public boolean f107m;

    /* renamed from: o */
    public Runnable f109o;

    /* renamed from: p */
    public final String f110p;

    /* renamed from: q */
    public final SessionStatistic f111q;

    /* renamed from: r */
    public int f112r;

    /* renamed from: s */
    public int f113s;

    /* renamed from: x */
    public Future<?> f117x;

    /* renamed from: b */
    public Map<EventCb, Integer> f96b = new LinkedHashMap();

    /* renamed from: w */
    public boolean f116w = false;

    /* renamed from: l */
    public String f106l = null;

    /* renamed from: n */
    public int f108n = 6;

    /* renamed from: t */
    public boolean f114t = false;

    /* renamed from: u */
    public boolean f115u = true;

    /* renamed from: y */
    public List<Long> f118y = null;

    /* renamed from: z */
    public long f119z = 0;

    /* compiled from: Taobao */
    /* renamed from: anet.channel.Session$a */
    public static class C0302a {
        public static final int AUTHING = 3;
        public static final int AUTH_FAIL = 5;
        public static final int AUTH_SUCC = 4;
        public static final int CONNECTED = 0;
        public static final int CONNECTING = 1;
        public static final int CONNETFAIL = 2;
        public static final int DISCONNECTED = 6;
        public static final int DISCONNECTING = 7;

        /* renamed from: a */
        public static final String[] f120a = {"CONNECTED", "CONNECTING", "CONNETFAIL", "AUTHING", "AUTH_SUCC", "AUTH_FAIL", "DISCONNECTED", "DISCONNECTING"};

        /* renamed from: a */
        public static String m34a(int i) {
            return f120a[i];
        }
    }

    public Session(Context context, C0346a c0346a) {
        boolean z = false;
        this.f107m = false;
        this.f95a = context;
        String strM132a = c0346a.m132a();
        this.f99e = strM132a;
        this.f100f = strM132a;
        this.f101g = c0346a.m133b();
        this.f104j = c0346a.m134c();
        String strM137f = c0346a.m137f();
        this.f97c = strM137f;
        this.f98d = strM137f.substring(strM137f.indexOf(HttpConstant.SCHEME_SPLIT) + 3);
        this.f113s = c0346a.m136e();
        this.f112r = c0346a.m135d();
        IConnStrategy iConnStrategy = c0346a.f247a;
        this.f105k = iConnStrategy;
        if (iConnStrategy != null && iConnStrategy.getIpType() == -1) {
            z = true;
        }
        this.f107m = z;
        this.f110p = c0346a.m139h();
        SessionStatistic sessionStatistic = new SessionStatistic(c0346a);
        this.f111q = sessionStatistic;
        sessionStatistic.host = this.f98d;
    }

    public static void configTnetALog(Context context, String str, int i, int i2) {
        SpdyAgent spdyAgent = SpdyAgent.getInstance(context, SpdyVersion.SPDY3, SpdySessionKind.NONE_SESSION);
        if (spdyAgent == null || !SpdyAgent.checkLoadSucc()) {
            ALog.m339e("agent null or configTnetALog load so fail!!!", null, "loadso", Boolean.valueOf(SpdyAgent.checkLoadSucc()));
        } else {
            spdyAgent.configLogFile(str, i, i2);
        }
    }

    /* renamed from: a */
    public void m33a() {
        Future<?> future;
        if (this.f109o == null || (future = this.f117x) == null) {
            return;
        }
        future.cancel(true);
    }

    public void checkAvailable() {
        ping(true);
    }

    public abstract void close();

    public void close(boolean z) {
        this.f114t = z;
        close();
    }

    public void connect() {
    }

    public IConnStrategy getConnStrategy() {
        return this.f105k;
    }

    public ConnType getConnType() {
        return this.f104j;
    }

    public String getHost() {
        return this.f97c;
    }

    public String getIp() {
        return this.f99e;
    }

    public int getPort() {
        return this.f101g;
    }

    public String getRealHost() {
        return this.f98d;
    }

    public abstract Runnable getRecvTimeOutRunnable();

    public String getUnit() {
        return this.f106l;
    }

    public void handleCallbacks(int i, C0347b c0347b) {
        f94v.submit(new RunnableC0312b(this, i, c0347b));
    }

    public void handleResponseCode(Request request, int i) {
        if (request.getHeaders().containsKey(HttpConstant.X_PV) && i >= 500 && i < 600) {
            synchronized (this) {
                if (this.f118y == null) {
                    this.f118y = new LinkedList();
                }
                if (this.f118y.size() < 5) {
                    this.f118y.add(Long.valueOf(System.currentTimeMillis()));
                } else {
                    long jLongValue = this.f118y.remove(0).longValue();
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    if (jCurrentTimeMillis - jLongValue <= 60000) {
                        StrategyCenter.getInstance().forceRefreshStrategy(request.getHost());
                        this.f118y.clear();
                    } else {
                        this.f118y.add(Long.valueOf(jCurrentTimeMillis));
                    }
                }
            }
        }
    }

    public void handleResponseHeaders(Request request, Map<String, List<String>> map) {
        try {
            if (map.containsKey(HttpConstant.X_SWITCH_UNIT)) {
                String singleHeaderFieldByKey = HttpHelper.getSingleHeaderFieldByKey(map, HttpConstant.X_SWITCH_UNIT);
                if (TextUtils.isEmpty(singleHeaderFieldByKey)) {
                    singleHeaderFieldByKey = null;
                }
                if (StringUtils.isStringEqual(this.f106l, singleHeaderFieldByKey)) {
                    return;
                }
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (jCurrentTimeMillis - this.f119z > 60000) {
                    StrategyCenter.getInstance().forceRefreshStrategy(request.getHost());
                    this.f119z = jCurrentTimeMillis;
                }
            }
        } catch (Exception unused) {
        }
    }

    public abstract boolean isAvailable();

    public synchronized void notifyStatus(int i, C0347b c0347b) {
        ALog.m339e("awcn.Session", "notifyStatus", this.f110p, "status", C0302a.m34a(i));
        if (i == this.f108n) {
            ALog.m340i("awcn.Session", "ignore notifyStatus", this.f110p, new Object[0]);
            return;
        }
        this.f108n = i;
        if (i == 0) {
            handleCallbacks(1, c0347b);
        } else if (i == 2) {
            handleCallbacks(256, c0347b);
        } else if (i == 4) {
            this.f106l = StrategyCenter.getInstance().getUnitByHost(this.f98d);
            handleCallbacks(512, c0347b);
        } else if (i == 5) {
            handleCallbacks(1024, c0347b);
        } else if (i == 6) {
            onDisconnect();
            if (!this.f116w) {
                handleCallbacks(2, c0347b);
            }
        }
    }

    public void onDisconnect() {
    }

    public void ping(boolean z) {
    }

    public void ping(boolean z, int i) {
    }

    public void registerEventcb(int i, EventCb eventCb) {
        Map<EventCb, Integer> map = this.f96b;
        if (map != null) {
            map.put(eventCb, Integer.valueOf(i));
        }
    }

    public abstract Cancelable request(Request request, RequestCb requestCb);

    public void sendCustomFrame(int i, byte[] bArr, int i2) {
    }

    public void setPingTimeout(int i) {
        if (this.f109o == null) {
            this.f109o = getRecvTimeOutRunnable();
        }
        m33a();
        Runnable runnable = this.f109o;
        if (runnable != null) {
            this.f117x = ThreadPoolExecutorFactory.submitScheduledTask(runnable, i, TimeUnit.MILLISECONDS);
        }
    }

    public String toString() {
        return "Session@[" + this.f110p + '|' + this.f104j + ']';
    }

    @Override // java.lang.Comparable
    public int compareTo(Session session) {
        return ConnType.compare(this.f104j, session.f104j);
    }
}
