package anetwork.channel.unified;

import android.support.v7.widget.TooltipCompatHandler;
import android.text.TextUtils;
import anet.channel.Config;
import anet.channel.GlobalAppRuntimeInfo;
import anet.channel.NoAvailStrategyException;
import anet.channel.Session;
import anet.channel.SessionCenter;
import anet.channel.appmonitor.AppMonitor;
import anet.channel.bytes.ByteArray;
import anet.channel.entity.C0346a;
import anet.channel.entity.C0348c;
import anet.channel.entity.ENV;
import anet.channel.request.Cancelable;
import anet.channel.request.Request;
import anet.channel.session.C0378d;
import anet.channel.statist.ExceptionStatistic;
import anet.channel.statist.RequestStatistic;
import anet.channel.status.NetworkStatusHelper;
import anet.channel.strategy.dispatch.DispatchConstants;
import anet.channel.thread.ThreadPoolExecutorFactory;
import anet.channel.util.ALog;
import anet.channel.util.AppLifecycle;
import anet.channel.util.ErrorConstant;
import anet.channel.util.HttpConstant;
import anet.channel.util.HttpUrl;
import anet.channel.util.StringUtils;
import anetwork.channel.aidl.DefaultFinishEvent;
import anetwork.channel.cache.Cache;
import anetwork.channel.config.NetworkConfigCenter;
import anetwork.channel.entity.C0458g;
import anetwork.channel.http.NetworkSdkSetting;
import anetwork.channel.interceptor.Callback;
import anetwork.channel.util.RequestConstant;
import java.io.ByteArrayOutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.android.agoo.common.AgooConstants;

/* compiled from: Taobao */
/* renamed from: anetwork.channel.unified.e */
/* loaded from: classes.dex */
public class C0464e implements IUnifiedTask {
    public static final int MAX_RSP_BUFFER_LENGTH = 131072;
    public static final String TAG = "anet.NetworkTask";

    /* renamed from: a */
    public C0469j f760a;

    /* renamed from: b */
    public Cache f761b;

    /* renamed from: c */
    public Cache.Entry f762c;

    /* renamed from: e */
    public String f764e;

    /* renamed from: h */
    public volatile AtomicBoolean f767h;

    /* renamed from: d */
    public ByteArrayOutputStream f763d = null;

    /* renamed from: f */
    public volatile Cancelable f765f = null;

    /* renamed from: g */
    public volatile boolean f766g = false;

    /* renamed from: i */
    public int f768i = 0;

    /* renamed from: j */
    public int f769j = 0;

    /* renamed from: k */
    public boolean f770k = false;

    /* renamed from: l */
    public boolean f771l = false;

    /* renamed from: m */
    public a f772m = null;

    public C0464e(C0469j c0469j, Cache cache, Cache.Entry entry) {
        this.f761b = null;
        this.f762c = null;
        this.f764e = DispatchConstants.OTHER;
        this.f767h = null;
        this.f760a = c0469j;
        this.f767h = c0469j.f796d;
        this.f761b = cache;
        this.f762c = entry;
        this.f764e = c0469j.f793a.m435h().get(HttpConstant.F_REFER);
    }

    /* renamed from: b */
    private Session m454b() {
        Session throwsException;
        SessionCenter sessionCenterM449a = m449a();
        HttpUrl httpUrlM433f = this.f760a.f793a.m433f();
        boolean zContainsNonDefaultPort = httpUrlM433f.containsNonDefaultPort();
        C0458g c0458g = this.f760a.f793a;
        RequestStatistic requestStatistic = c0458g.f737b;
        if (c0458g.f741f != 1 || !NetworkConfigCenter.isSpdyEnabled() || this.f760a.f793a.f736a != 0 || zContainsNonDefaultPort) {
            return m447a(null, sessionCenterM449a, httpUrlM433f, zContainsNonDefaultPort);
        }
        HttpUrl httpUrlM451a = m451a(httpUrlM433f);
        try {
            throwsException = sessionCenterM449a.getThrowsException(httpUrlM451a, C0348c.f255a, 0L);
        } catch (NoAvailStrategyException unused) {
            return m447a(null, sessionCenterM449a, httpUrlM433f, zContainsNonDefaultPort);
        } catch (Exception unused2) {
            throwsException = null;
        }
        if (throwsException == null) {
            ThreadPoolExecutorFactory.submitPriorityTask(new RunnableC0466g(this, sessionCenterM449a, httpUrlM451a, requestStatistic, httpUrlM433f, zContainsNonDefaultPort), ThreadPoolExecutorFactory.Priority.NORMAL);
            return null;
        }
        ALog.m340i(TAG, "tryGetSession", this.f760a.f795c, "Session", throwsException);
        requestStatistic.spdyRequestSend = true;
        return throwsException;
    }

    /* renamed from: c */
    private void m455c() {
        SessionCenter sessionCenterM449a = m449a();
        HttpUrl httpUrlM433f = this.f760a.f793a.m433f();
        boolean zContainsNonDefaultPort = httpUrlM433f.containsNonDefaultPort();
        C0458g c0458g = this.f760a.f793a;
        RequestStatistic requestStatistic = c0458g.f737b;
        Request requestM425a = c0458g.m425a();
        if (this.f760a.f793a.f741f != 1 || !NetworkConfigCenter.isSpdyEnabled() || this.f760a.f793a.f736a != 0 || zContainsNonDefaultPort) {
            m452a(m447a(null, sessionCenterM449a, httpUrlM433f, zContainsNonDefaultPort), requestM425a);
            return;
        }
        sessionCenterM449a.asyncGet(m451a(httpUrlM433f), C0348c.f255a, TooltipCompatHandler.HOVER_HIDE_TIMEOUT_SHORT_MS, new C0467h(this, requestStatistic, System.currentTimeMillis(), requestM425a, sessionCenterM449a, httpUrlM433f, zContainsNonDefaultPort));
    }

    @Override // anet.channel.request.Cancelable
    public void cancel() {
        this.f766g = true;
        if (this.f765f != null) {
            this.f765f.cancel();
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f766g) {
            return;
        }
        RequestStatistic requestStatistic = this.f760a.f793a.f737b;
        requestStatistic.f_refer = this.f764e;
        if (!NetworkStatusHelper.isConnected()) {
            if (NetworkConfigCenter.isRequestDelayRetryForNoNetwork() && requestStatistic.statusCode != -200) {
                requestStatistic.statusCode = -200;
                ThreadPoolExecutorFactory.submitScheduledTask(new RunnableC0465f(this), 1000L, TimeUnit.MILLISECONDS);
                return;
            }
            if (ALog.isPrintLog(2)) {
                ALog.m340i(TAG, "network unavailable", this.f760a.f795c, "NetworkStatus", NetworkStatusHelper.getStatus());
            }
            this.f767h.set(true);
            this.f760a.m458a();
            requestStatistic.isDone.set(true);
            requestStatistic.statusCode = -200;
            requestStatistic.msg = ErrorConstant.getErrMsg(-200);
            requestStatistic.rspEnd = System.currentTimeMillis();
            this.f760a.f794b.onFinish(new DefaultFinishEvent(-200, (String) null, this.f760a.f793a.m425a()));
            return;
        }
        if (!NetworkConfigCenter.isBgRequestForbidden() || !GlobalAppRuntimeInfo.isAppBackground() || AppLifecycle.lastEnterBackgroundTime <= 0 || AppLifecycle.isGoingForeground || System.currentTimeMillis() - AppLifecycle.lastEnterBackgroundTime <= NetworkConfigCenter.getBgForbidRequestThreshold() || NetworkConfigCenter.isUrlInWhiteList(this.f760a.f793a.m433f()) || NetworkConfigCenter.isBizInWhiteList(this.f760a.f793a.m425a().getBizId()) || this.f760a.f793a.m425a().isAllowRequestInBg()) {
            if (ALog.isPrintLog(2)) {
                C0469j c0469j = this.f760a;
                ALog.m340i(TAG, "exec request", c0469j.f795c, "retryTimes", Integer.valueOf(c0469j.f793a.f736a));
            }
            if (NetworkConfigCenter.isGetSessionAsyncEnable()) {
                m455c();
                return;
            }
            try {
                Session sessionM454b = m454b();
                if (sessionM454b == null) {
                    return;
                }
                m452a(sessionM454b, this.f760a.f793a.m425a());
                return;
            } catch (Exception e) {
                ALog.m338e(TAG, "send request failed.", this.f760a.f795c, e, new Object[0]);
                return;
            }
        }
        this.f767h.set(true);
        this.f760a.m458a();
        if (ALog.isPrintLog(2)) {
            C0469j c0469j2 = this.f760a;
            ALog.m340i(TAG, "request forbidden in background", c0469j2.f795c, AgooConstants.OPEN_URL, c0469j2.f793a.m433f());
        }
        requestStatistic.isDone.set(true);
        requestStatistic.statusCode = ErrorConstant.ERROR_REQUEST_FORBIDDEN_IN_BG;
        requestStatistic.msg = ErrorConstant.getErrMsg(ErrorConstant.ERROR_REQUEST_FORBIDDEN_IN_BG);
        requestStatistic.rspEnd = System.currentTimeMillis();
        this.f760a.f794b.onFinish(new DefaultFinishEvent(ErrorConstant.ERROR_REQUEST_FORBIDDEN_IN_BG, (String) null, this.f760a.f793a.m425a()));
        ExceptionStatistic exceptionStatistic = new ExceptionStatistic(ErrorConstant.ERROR_REQUEST_FORBIDDEN_IN_BG, null, "rt");
        exceptionStatistic.host = this.f760a.f793a.m433f().host();
        exceptionStatistic.url = this.f760a.f793a.m434g();
        AppMonitor.getInstance().commitStat(exceptionStatistic);
    }

    /* compiled from: Taobao */
    /* renamed from: anetwork.channel.unified.e$a */
    public static class a {

        /* renamed from: a */
        public int f773a;

        /* renamed from: b */
        public Map<String, List<String>> f774b;

        /* renamed from: c */
        public List<ByteArray> f775c = new ArrayList();

        public a(int i, Map<String, List<String>> map) {
            this.f773a = i;
            this.f774b = map;
        }

        /* renamed from: a */
        public void m457a() {
            Iterator<ByteArray> it = this.f775c.iterator();
            while (it.hasNext()) {
                it.next().recycle();
            }
        }

        /* renamed from: a */
        public int m456a(Callback callback, int i) {
            callback.onResponseCode(this.f773a, this.f774b);
            Iterator<ByteArray> it = this.f775c.iterator();
            int i2 = 1;
            while (it.hasNext()) {
                callback.onDataReceiveSize(i2, i, it.next());
                i2++;
            }
            return i2;
        }
    }

    /* renamed from: a */
    private HttpUrl m451a(HttpUrl httpUrl) {
        HttpUrl httpUrl2;
        String str = this.f760a.f793a.m435h().get(HttpConstant.X_HOST_CNAME);
        return (TextUtils.isEmpty(str) || (httpUrl2 = HttpUrl.parse(httpUrl.urlString().replaceFirst(httpUrl.host(), str))) == null) ? httpUrl : httpUrl2;
    }

    /* renamed from: a */
    private SessionCenter m449a() {
        String strM426a = this.f760a.f793a.m426a(RequestConstant.APPKEY);
        if (TextUtils.isEmpty(strM426a)) {
            return SessionCenter.getInstance();
        }
        ENV env = ENV.ONLINE;
        String strM426a2 = this.f760a.f793a.m426a(RequestConstant.ENVIRONMENT);
        if (RequestConstant.ENV_PRE.equalsIgnoreCase(strM426a2)) {
            env = ENV.PREPARE;
        } else if (RequestConstant.ENV_TEST.equalsIgnoreCase(strM426a2)) {
            env = ENV.TEST;
        }
        if (env != NetworkSdkSetting.CURRENT_ENV) {
            NetworkSdkSetting.CURRENT_ENV = env;
            SessionCenter.switchEnvironment(env);
        }
        Config config = Config.getConfig(strM426a, env);
        if (config == null) {
            config = new Config.Builder().setAppkey(strM426a).setEnv(env).setAuthCode(this.f760a.f793a.m426a(RequestConstant.AUTH_CODE)).build();
        }
        return SessionCenter.getInstance(config);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public Session m447a(Session session, SessionCenter sessionCenter, HttpUrl httpUrl, boolean z) {
        C0458g c0458g = this.f760a.f793a;
        RequestStatistic requestStatistic = c0458g.f737b;
        if (session == null && c0458g.m432e() && !z && !NetworkStatusHelper.isProxy()) {
            session = sessionCenter.get(httpUrl, C0348c.f256b, 0L);
        }
        if (session == null) {
            ALog.m340i(TAG, "create HttpSession with local DNS", this.f760a.f795c, new Object[0]);
            session = new C0378d(GlobalAppRuntimeInfo.getContext(), new C0346a(StringUtils.concatString(httpUrl.scheme(), HttpConstant.SCHEME_SPLIT, httpUrl.host()), this.f760a.f795c, null));
        }
        if (requestStatistic.spdyRequestSend) {
            requestStatistic.degraded = 1;
        }
        ALog.m340i(TAG, "tryGetHttpSession", this.f760a.f795c, "Session", session);
        return session;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x003c  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private anet.channel.request.Request m450a(anet.channel.request.Request r7) {
        /*
            r6 = this;
            anetwork.channel.unified.j r0 = r6.f760a
            anetwork.channel.entity.g r0 = r0.f793a
            boolean r0 = r0.m436i()
            if (r0 == 0) goto L3c
            anetwork.channel.unified.j r0 = r6.f760a
            anetwork.channel.entity.g r0 = r0.f793a
            java.lang.String r0 = r0.m434g()
            java.lang.String r0 = anetwork.channel.cookie.CookieManager.getCookie(r0)
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            if (r1 != 0) goto L3c
            anet.channel.request.Request$Builder r1 = r7.newBuilder()
            java.util.Map r2 = r7.getHeaders()
            java.lang.String r3 = "Cookie"
            java.lang.Object r2 = r2.get(r3)
            java.lang.String r2 = (java.lang.String) r2
            boolean r4 = android.text.TextUtils.isEmpty(r2)
            if (r4 != 0) goto L38
            java.lang.String r4 = "; "
            java.lang.String r0 = anet.channel.util.StringUtils.concatString(r2, r4, r0)
        L38:
            r1.addHeader(r3, r0)
            goto L3d
        L3c:
            r1 = 0
        L3d:
            anetwork.channel.cache.Cache$Entry r0 = r6.f762c
            if (r0 == 0) goto L66
            if (r1 != 0) goto L48
            anet.channel.request.Request$Builder r0 = r7.newBuilder()
            r1 = r0
        L48:
            anetwork.channel.cache.Cache$Entry r0 = r6.f762c
            java.lang.String r0 = r0.etag
            if (r0 == 0) goto L53
            java.lang.String r2 = "If-None-Match"
            r1.addHeader(r2, r0)
        L53:
            anetwork.channel.cache.Cache$Entry r0 = r6.f762c
            long r2 = r0.lastModified
            r4 = 0
            int r0 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r0 <= 0) goto L66
            java.lang.String r0 = anetwork.channel.cache.C0443a.m387a(r2)
            java.lang.String r2 = "If-Modified-Since"
            r1.addHeader(r2, r0)
        L66:
            anetwork.channel.unified.j r0 = r6.f760a
            anetwork.channel.entity.g r0 = r0.f793a
            int r0 = r0.f736a
            if (r0 != 0) goto L84
            java.lang.String r0 = r6.f764e
            java.lang.String r2 = "weex"
            boolean r0 = r2.equalsIgnoreCase(r0)
            if (r0 == 0) goto L84
            if (r1 != 0) goto L7f
            anet.channel.request.Request$Builder r0 = r7.newBuilder()
            r1 = r0
        L7f:
            r0 = 3000(0xbb8, float:4.204E-42)
            r1.setReadTimeout(r0)
        L84:
            if (r1 != 0) goto L87
            goto L8b
        L87:
            anet.channel.request.Request r7 = r1.build()
        L8b:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: anetwork.channel.unified.C0464e.m450a(anet.channel.request.Request):anet.channel.request.Request");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m452a(Session session, Request request) {
        if (session == null || this.f766g) {
            return;
        }
        Request requestM450a = m450a(request);
        RequestStatistic requestStatistic = this.f760a.f793a.f737b;
        requestStatistic.reqStart = System.currentTimeMillis();
        this.f765f = session.request(requestM450a, new C0468i(this, requestM450a, requestStatistic));
    }
}
