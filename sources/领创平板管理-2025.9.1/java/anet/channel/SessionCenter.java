package anet.channel;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.util.LruCache;
import anet.channel.Config;
import anet.channel.detect.C0337n;
import anet.channel.entity.C0348c;
import anet.channel.entity.ConnType;
import anet.channel.entity.ENV;
import anet.channel.p006e.C0339a;
import anet.channel.status.NetworkStatusHelper;
import anet.channel.strategy.C0407l;
import anet.channel.strategy.ConnProtocol;
import anet.channel.strategy.IStrategyListener;
import anet.channel.strategy.StrategyCenter;
import anet.channel.strategy.dispatch.AmdcRuntimeInfo;
import anet.channel.util.ALog;
import anet.channel.util.AppLifecycle;
import anet.channel.util.C0428i;
import anet.channel.util.HttpConstant;
import anet.channel.util.HttpUrl;
import anet.channel.util.StringUtils;
import anet.channel.util.Utils;
import anetwork.channel.util.RequestConstant;
import com.huawei.hem.CompilerOutline;
import com.taobao.accs.common.Constants;
import java.net.ConnectException;
import java.security.InvalidParameterException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeoutException;
import org.android.agoo.common.AgooConstants;
import org.android.spdy.SpdyAgent;
import org.android.spdy.SpdySessionKind;
import org.android.spdy.SpdyVersion;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public class SessionCenter {
    public static final String TAG = "awcn.SessionCenter";

    /* renamed from: a */
    public static Map<Config, SessionCenter> f121a = new HashMap();

    /* renamed from: j */
    public static boolean f122j = false;

    /* renamed from: c */
    public String f124c;

    /* renamed from: d */
    public Config f125d;

    /* renamed from: h */
    public final AccsSessionManager f129h;

    /* renamed from: e */
    public final C0338e f126e = new C0338e();

    /* renamed from: f */
    public final LruCache<String, SessionRequest> f127f = new LruCache<>(32);

    /* renamed from: g */
    public final C0318c f128g = new C0318c();

    /* renamed from: i */
    public final C0303a f130i = new C0303a(this, null);

    /* renamed from: b */
    public Context f123b = GlobalAppRuntimeInfo.getContext();

    public SessionCenter(Config config) {
        this.f125d = config;
        this.f124c = config.getAppkey();
        this.f130i.m44a();
        this.f129h = new AccsSessionManager(this);
        if (config.getAppkey().equals("[default]")) {
            return;
        }
        AmdcRuntimeInfo.setSign(new C0321d(this, config.getAppkey(), config.getSecurity()));
    }

    public static void checkAndStartAccsSession() {
        Iterator<SessionCenter> it = f121a.values().iterator();
        while (it.hasNext()) {
            it.next().f129h.checkAndStartSession();
        }
    }

    public static synchronized SessionCenter getInstance(String str) {
        Config configByTag;
        configByTag = Config.getConfigByTag(str);
        if (configByTag == null) {
            throw new RuntimeException("tag not exist!");
        }
        return getInstance(configByTag);
    }

    public static synchronized void init(Context context) {
        if (context == null) {
            ALog.m339e(TAG, "context is null!", null, new Object[0]);
            throw new NullPointerException("init failed. context is null");
        }
        GlobalAppRuntimeInfo.setContext(context.getApplicationContext());
        if (!f122j) {
            f121a.put(Config.DEFAULT_CONFIG, new SessionCenter(Config.DEFAULT_CONFIG));
            AppLifecycle.initialize();
            NetworkStatusHelper.startListener(context);
            if (!AwcnConfig.isTbNextLaunch()) {
                StrategyCenter.getInstance().initialize(GlobalAppRuntimeInfo.getContext());
            }
            if (GlobalAppRuntimeInfo.isTargetProcess()) {
                C0337n.m106a();
                C0339a.m116a();
            }
            f122j = true;
        }
    }

    public static synchronized void switchEnvironment(ENV env) {
        try {
            if (GlobalAppRuntimeInfo.getEnv() != env) {
                ALog.m340i(TAG, "switch env", null, "old", GlobalAppRuntimeInfo.getEnv(), "new", env);
                GlobalAppRuntimeInfo.setEnv(env);
                StrategyCenter.getInstance().switchEnv();
                SpdyAgent.getInstance(GlobalAppRuntimeInfo.getContext(), SpdyVersion.SPDY3, SpdySessionKind.NONE_SESSION).switchAccsServer(env == ENV.TEST ? 0 : 1);
            }
            Iterator<Map.Entry<Config, SessionCenter>> it = f121a.entrySet().iterator();
            while (it.hasNext()) {
                SessionCenter value = it.next().getValue();
                if (value.f125d.getEnv() != env) {
                    ALog.m340i(TAG, "remove instance", value.f124c, RequestConstant.ENVIRONMENT, value.f125d.getEnv());
                    value.f129h.forceCloseSession(false);
                    value.f130i.m45b();
                    it.remove();
                }
            }
        } catch (Throwable th) {
            ALog.m338e(TAG, "switch env error.", null, th, new Object[0]);
        }
    }

    public void asyncGet(HttpUrl httpUrl, int i, long j, SessionGetCallback sessionGetCallback) {
        if (sessionGetCallback == null) {
            throw new NullPointerException("cb is null");
        }
        if (j <= 0) {
            throw new InvalidParameterException("timeout must > 0");
        }
        try {
            m43b(httpUrl, i, j, sessionGetCallback);
        } catch (Exception unused) {
            sessionGetCallback.onSessionGetFail();
        }
    }

    /* renamed from: b */
    public void m43b(HttpUrl httpUrl, int i, long j, SessionGetCallback sessionGetCallback) throws ConnectException {
        SessionInfo sessionInfoM77b;
        if (!f122j) {
            ALog.m339e(TAG, "getInternal not inited!", this.f124c, new Object[0]);
            throw new IllegalStateException("getInternal not inited");
        }
        if (httpUrl == null) {
            throw new InvalidParameterException("httpUrl is null");
        }
        if (sessionGetCallback == null) {
            throw new InvalidParameterException("sessionGetCallback is null");
        }
        String str = this.f124c;
        Object[] objArr = new Object[6];
        objArr[0] = "u";
        objArr[1] = httpUrl.urlString();
        objArr[2] = "sessionType";
        objArr[3] = i == C0348c.f255a ? "LongLink" : "ShortLink";
        objArr[4] = "timeout";
        objArr[5] = Long.valueOf(j);
        ALog.m337d(TAG, "getInternal", str, objArr);
        SessionRequest sessionRequestM35a = m35a(httpUrl);
        Session sessionM108a = this.f126e.m108a(sessionRequestM35a, i);
        if (sessionM108a != null) {
            ALog.m337d(TAG, "get internal hit cache session", this.f124c, "session", sessionM108a);
            sessionGetCallback.onSessionGetSuccess(sessionM108a);
            return;
        }
        if (this.f125d == Config.DEFAULT_CONFIG && i != C0348c.f256b) {
            sessionGetCallback.onSessionGetFail();
            return;
        }
        if (GlobalAppRuntimeInfo.isAppBackground() && i == C0348c.f255a && AwcnConfig.isAccsSessionCreateForbiddenInBg() && (sessionInfoM77b = this.f128g.m77b(httpUrl.host())) != null && sessionInfoM77b.isAccs) {
            ALog.m342w(TAG, "app background, forbid to create accs session", this.f124c, new Object[0]);
            throw new ConnectException("accs session connecting forbidden in background");
        }
        sessionRequestM35a.m62b(this.f123b, i, C0428i.m364a(this.f124c), sessionGetCallback, j);
    }

    @Deprecated
    public void enterBackground() {
        AppLifecycle.onBackground();
    }

    @Deprecated
    public void enterForeground() {
        AppLifecycle.onForeground();
    }

    public void forceRecreateAccsSession() {
        this.f129h.forceCloseSession(true);
    }

    public Session get(String str, long j) {
        return get(HttpUrl.parse(str), C0348c.f257c, j);
    }

    public Session getThrowsException(String str, long j) {
        return m41a(HttpUrl.parse(str), C0348c.f257c, j, null);
    }

    public void registerAccsSessionListener(ISessionListener iSessionListener) {
        this.f129h.registerListener(iSessionListener);
    }

    public void registerPublicKey(String str, int i) {
        this.f128g.m76a(str, i);
    }

    public void registerSessionInfo(SessionInfo sessionInfo) {
        this.f128g.m75a(sessionInfo);
        if (sessionInfo.isKeepAlive) {
            this.f129h.checkAndStartSession();
        }
    }

    @Deprecated
    public synchronized void switchEnv(ENV env) {
        switchEnvironment(env);
    }

    public void unregisterAccsSessionListener(ISessionListener iSessionListener) {
        this.f129h.unregisterListener(iSessionListener);
    }

    public void unregisterSessionInfo(String str) {
        SessionInfo sessionInfoM73a = this.f128g.m73a(str);
        if (sessionInfoM73a == null || !sessionInfoM73a.isKeepAlive) {
            return;
        }
        this.f129h.checkAndStartSession();
    }

    /* compiled from: Taobao */
    /* renamed from: anet.channel.SessionCenter$a */
    public class C0303a implements NetworkStatusHelper.INetworkStatusChangeListener, IStrategyListener, AppLifecycle.AppLifecycleListener {

        /* renamed from: a */
        public boolean f131a;

        public C0303a() {
            this.f131a = false;
        }

        /* renamed from: a */
        public void m44a() {
            AppLifecycle.registerLifecycleListener(this);
            NetworkStatusHelper.addStatusChangeListener(this);
            StrategyCenter.getInstance().registerListener(this);
        }

        /* renamed from: b */
        public void m45b() {
            StrategyCenter.getInstance().unregisterListener(this);
            AppLifecycle.unregisterLifecycleListener(this);
            NetworkStatusHelper.removeStatusChangeListener(this);
        }

        @Override // anet.channel.util.AppLifecycle.AppLifecycleListener
        public void background() {
            ALog.m340i(SessionCenter.TAG, "[background]", SessionCenter.this.f124c, new Object[0]);
            if (!SessionCenter.f122j) {
                ALog.m339e(SessionCenter.TAG, "background not inited!", SessionCenter.this.f124c, new Object[0]);
                return;
            }
            try {
                StrategyCenter.getInstance().saveData();
                if (AwcnConfig.isAccsSessionCreateForbiddenInBg() && "OPPO".equalsIgnoreCase(Build.BRAND)) {
                    ALog.m340i(SessionCenter.TAG, "close session for OPPO", SessionCenter.this.f124c, new Object[0]);
                    SessionCenter.this.f129h.forceCloseSession(false);
                }
            } catch (Exception unused) {
            }
        }

        @Override // anet.channel.util.AppLifecycle.AppLifecycleListener
        public void forground() {
            ALog.m340i(SessionCenter.TAG, "[forground]", SessionCenter.this.f124c, new Object[0]);
            if (SessionCenter.this.f123b == null || this.f131a) {
                return;
            }
            this.f131a = true;
            try {
                if (!SessionCenter.f122j) {
                    ALog.m339e(SessionCenter.TAG, "forground not inited!", SessionCenter.this.f124c, new Object[0]);
                    return;
                }
                try {
                    if (AppLifecycle.lastEnterBackgroundTime == 0 || System.currentTimeMillis() - AppLifecycle.lastEnterBackgroundTime <= 60000) {
                        SessionCenter.this.f129h.checkAndStartSession();
                    } else {
                        SessionCenter.this.f129h.forceCloseSession(true);
                    }
                } catch (Exception unused) {
                } catch (Throwable th) {
                    this.f131a = false;
                    throw th;
                }
                this.f131a = false;
            } catch (Exception unused2) {
            }
        }

        @Override // anet.channel.status.NetworkStatusHelper.INetworkStatusChangeListener
        public void onNetworkStatusChanged(NetworkStatusHelper.NetworkStatus networkStatus) {
            ALog.m339e(SessionCenter.TAG, "onNetworkStatusChanged.", SessionCenter.this.f124c, "networkStatus", networkStatus);
            List<SessionRequest> listM109a = SessionCenter.this.f126e.m109a();
            if (!listM109a.isEmpty()) {
                for (SessionRequest sessionRequest : listM109a) {
                    ALog.m337d(SessionCenter.TAG, "network change, try recreate session", SessionCenter.this.f124c, new Object[0]);
                    sessionRequest.m59a((String) null);
                }
            }
            SessionCenter.this.f129h.checkAndStartSession();
        }

        @Override // anet.channel.strategy.IStrategyListener
        public void onStrategyUpdated(C0407l.d dVar) {
            SessionCenter.this.m38a(dVar);
            SessionCenter.this.f129h.checkAndStartSession();
        }

        public /* synthetic */ C0303a(SessionCenter sessionCenter, C0321d c0321d) {
            this();
        }
    }

    @Deprecated
    public Session get(String str, ConnType.TypeLevel typeLevel, long j) {
        return get(HttpUrl.parse(str), typeLevel == ConnType.TypeLevel.SPDY ? C0348c.f255a : C0348c.f256b, j);
    }

    @Deprecated
    public Session getThrowsException(String str, ConnType.TypeLevel typeLevel, long j) {
        return m41a(HttpUrl.parse(str), typeLevel == ConnType.TypeLevel.SPDY ? C0348c.f255a : C0348c.f256b, j, null);
    }

    /* renamed from: a */
    private SessionRequest m35a(HttpUrl httpUrl) {
        String cNameByHost = StrategyCenter.getInstance().getCNameByHost(httpUrl.host());
        if (cNameByHost == null) {
            cNameByHost = httpUrl.host();
        }
        String strScheme = httpUrl.scheme();
        if (!httpUrl.isSchemeLocked()) {
            strScheme = StrategyCenter.getInstance().getSchemeByHost(cNameByHost, strScheme);
        }
        return m42a(StringUtils.concatString(strScheme, HttpConstant.SCHEME_SPLIT, cNameByHost));
    }

    @Deprecated
    public Session get(HttpUrl httpUrl, ConnType.TypeLevel typeLevel, long j) {
        return get(httpUrl, typeLevel == ConnType.TypeLevel.SPDY ? C0348c.f255a : C0348c.f256b, j);
    }

    public Session getThrowsException(HttpUrl httpUrl, int i, long j) {
        return m41a(httpUrl, i, j, null);
    }

    public static synchronized SessionCenter getInstance(Config config) {
        SessionCenter sessionCenter;
        Context appContext;
        if (config != null) {
            if (!f122j && (appContext = Utils.getAppContext()) != null) {
                init(appContext);
            }
            sessionCenter = f121a.get(config);
            if (sessionCenter == null) {
                sessionCenter = new SessionCenter(config);
                f121a.put(config, sessionCenter);
            }
        } else {
            throw new NullPointerException("config is null!");
        }
        return sessionCenter;
    }

    public Session get(HttpUrl httpUrl, int i, long j) {
        try {
            return m41a(httpUrl, i, j, null);
        } catch (NoAvailStrategyException e) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("[Get]");
            sbM1765j.append(e.getMessage());
            ALog.m340i(TAG, sbM1765j.toString(), this.f124c, null, AgooConstants.OPEN_URL, httpUrl.urlString());
            return null;
        } catch (ConnectException e2) {
            ALog.m339e(TAG, "[Get]connect exception", this.f124c, "errMsg", e2.getMessage(), AgooConstants.OPEN_URL, httpUrl.urlString());
            return null;
        } catch (InvalidParameterException e3) {
            ALog.m338e(TAG, "[Get]param url is invalid", this.f124c, e3, AgooConstants.OPEN_URL, httpUrl);
            return null;
        } catch (TimeoutException e4) {
            ALog.m338e(TAG, "[Get]timeout exception", this.f124c, e4, AgooConstants.OPEN_URL, httpUrl.urlString());
            return null;
        } catch (Exception e5) {
            StringBuilder sbM1765j2 = CompilerOutline.m1765j("[Get]");
            sbM1765j2.append(e5.getMessage());
            ALog.m338e(TAG, sbM1765j2.toString(), this.f124c, null, AgooConstants.OPEN_URL, httpUrl.urlString());
            return null;
        }
    }

    @Deprecated
    public Session getThrowsException(HttpUrl httpUrl, ConnType.TypeLevel typeLevel, long j) {
        return m41a(httpUrl, typeLevel == ConnType.TypeLevel.SPDY ? C0348c.f255a : C0348c.f256b, j, null);
    }

    /* renamed from: a */
    public Session m41a(HttpUrl httpUrl, int i, long j, SessionGetCallback sessionGetCallback) throws ConnectException {
        SessionInfo sessionInfoM77b;
        if (!f122j) {
            ALog.m339e(TAG, "getInternal not inited!", this.f124c, new Object[0]);
            throw new IllegalStateException("getInternal not inited");
        }
        if (httpUrl != null) {
            String str = this.f124c;
            Object[] objArr = new Object[6];
            objArr[0] = "u";
            objArr[1] = httpUrl.urlString();
            objArr[2] = "sessionType";
            objArr[3] = i == C0348c.f255a ? "LongLink" : "ShortLink";
            objArr[4] = "timeout";
            objArr[5] = Long.valueOf(j);
            ALog.m337d(TAG, "getInternal", str, objArr);
            SessionRequest sessionRequestM35a = m35a(httpUrl);
            Session sessionM108a = this.f126e.m108a(sessionRequestM35a, i);
            if (sessionM108a != null) {
                ALog.m337d(TAG, "get internal hit cache session", this.f124c, "session", sessionM108a);
            } else {
                if (this.f125d == Config.DEFAULT_CONFIG && i != C0348c.f256b) {
                    if (sessionGetCallback == null) {
                        return null;
                    }
                    sessionGetCallback.onSessionGetFail();
                    return null;
                }
                if (GlobalAppRuntimeInfo.isAppBackground() && i == C0348c.f255a && AwcnConfig.isAccsSessionCreateForbiddenInBg() && (sessionInfoM77b = this.f128g.m77b(httpUrl.host())) != null && sessionInfoM77b.isAccs) {
                    ALog.m342w(TAG, "app background, forbid to create accs session", this.f124c, new Object[0]);
                    throw new ConnectException("accs session connecting forbidden in background");
                }
                sessionRequestM35a.m55a(this.f123b, i, C0428i.m364a(this.f124c), sessionGetCallback, j);
                if (sessionGetCallback == null && j > 0 && (i == C0348c.f257c || sessionRequestM35a.m61b() == i)) {
                    sessionRequestM35a.m54a(j);
                    sessionM108a = this.f126e.m108a(sessionRequestM35a, i);
                    if (sessionM108a == null) {
                        throw new ConnectException("session connecting failed or timeout");
                    }
                }
            }
            return sessionM108a;
        }
        throw new InvalidParameterException("httpUrl is null");
    }

    @Deprecated
    public static synchronized SessionCenter getInstance() {
        Context appContext;
        if (!f122j && (appContext = Utils.getAppContext()) != null) {
            init(appContext);
        }
        SessionCenter sessionCenter = null;
        for (Map.Entry<Config, SessionCenter> entry : f121a.entrySet()) {
            SessionCenter value = entry.getValue();
            if (entry.getKey() != Config.DEFAULT_CONFIG) {
                return value;
            }
            sessionCenter = value;
        }
        return sessionCenter;
    }

    @Deprecated
    public static synchronized void init(Context context, String str) {
        init(context, str, GlobalAppRuntimeInfo.getEnv());
    }

    public static synchronized void init(Context context, String str, ENV env) {
        if (context != null) {
            Config config = Config.getConfig(str, env);
            if (config == null) {
                config = new Config.Builder().setAppkey(str).setEnv(env).build();
            }
            init(context, config);
        } else {
            ALog.m339e(TAG, "context is null!", null, new Object[0]);
            throw new NullPointerException("init failed. context is null");
        }
    }

    /* renamed from: b */
    private void m40b(C0407l.b bVar) {
        boolean z;
        boolean z2;
        ALog.m340i(TAG, "find effectNow", this.f124c, Constants.KEY_HOST, bVar.f529a);
        C0407l.a[] aVarArr = bVar.f536h;
        String[] strArr = bVar.f534f;
        for (Session session : this.f126e.m110a(m42a(StringUtils.buildKey(bVar.f531c, bVar.f529a)))) {
            if (!session.getConnType().isHttpType()) {
                int i = 0;
                while (true) {
                    if (i >= strArr.length) {
                        z = false;
                        break;
                    } else {
                        if (session.getIp().equals(strArr[i])) {
                            z = true;
                            break;
                        }
                        i++;
                    }
                }
                if (z) {
                    int i2 = 0;
                    while (true) {
                        if (i2 >= aVarArr.length) {
                            z2 = false;
                            break;
                        } else {
                            if (session.getPort() == aVarArr[i2].f521a && session.getConnType().equals(ConnType.valueOf(ConnProtocol.valueOf(aVarArr[i2])))) {
                                z2 = true;
                                break;
                            }
                            i2++;
                        }
                    }
                    if (!z2) {
                        if (ALog.isPrintLog(2)) {
                            ALog.m340i(TAG, "aisle not match", session.f110p, "port", Integer.valueOf(session.getPort()), "connType", session.getConnType(), "aisle", Arrays.toString(aVarArr));
                        }
                        session.close(true);
                    }
                } else {
                    if (ALog.isPrintLog(2)) {
                        ALog.m340i(TAG, "ip not match", session.f110p, "session ip", session.getIp(), "ips", Arrays.toString(strArr));
                    }
                    session.close(true);
                }
            }
        }
    }

    public static synchronized void init(Context context, Config config) {
        if (context == null) {
            ALog.m339e(TAG, "context is null!", null, new Object[0]);
            throw new NullPointerException("init failed. context is null");
        }
        if (config != null) {
            init(context);
            if (!f121a.containsKey(config)) {
                f121a.put(config, new SessionCenter(config));
            }
        } else {
            ALog.m339e(TAG, "paramter config is null!", null, new Object[0]);
            throw new NullPointerException("init failed. config is null");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m38a(C0407l.d dVar) {
        try {
            for (C0407l.b bVar : dVar.f544b) {
                if (bVar.f539k) {
                    m40b(bVar);
                }
                if (bVar.f533e != null) {
                    m37a(bVar);
                }
            }
        } catch (Exception e) {
            ALog.m338e(TAG, "checkStrategy failed", this.f124c, e, new Object[0]);
        }
    }

    /* renamed from: a */
    private void m37a(C0407l.b bVar) {
        for (Session session : this.f126e.m110a(m42a(StringUtils.buildKey(bVar.f531c, bVar.f529a)))) {
            if (!StringUtils.isStringEqual(session.f106l, bVar.f533e)) {
                ALog.m340i(TAG, "unit change", session.f110p, "session unit", session.f106l, "unit", bVar.f533e);
                session.close(true);
            }
        }
    }

    /* renamed from: a */
    public SessionRequest m42a(String str) {
        SessionRequest sessionRequest;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        synchronized (this.f127f) {
            sessionRequest = this.f127f.get(str);
            if (sessionRequest == null) {
                sessionRequest = new SessionRequest(str, this);
                this.f127f.put(str, sessionRequest);
            }
        }
        return sessionRequest;
    }
}
