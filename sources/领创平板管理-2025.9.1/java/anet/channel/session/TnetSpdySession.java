package anet.channel.session;

import android.content.Context;
import android.text.TextUtils;
import anet.channel.AwcnConfig;
import anet.channel.Config;
import anet.channel.DataFrameCb;
import anet.channel.GlobalAppRuntimeInfo;
import anet.channel.IAuth;
import anet.channel.RequestCb;
import anet.channel.Session;
import anet.channel.appmonitor.AppMonitor;
import anet.channel.bytes.ByteArray;
import anet.channel.bytes.C0317a;
import anet.channel.entity.C0346a;
import anet.channel.entity.C0347b;
import anet.channel.heartbeat.HeartbeatManager;
import anet.channel.heartbeat.IHeartbeat;
import anet.channel.heartbeat.RunnableC0356c;
import anet.channel.request.C0369c;
import anet.channel.request.Cancelable;
import anet.channel.request.Request;
import anet.channel.security.ISecurity;
import anet.channel.statist.ExceptionStatistic;
import anet.channel.statist.RequestStatistic;
import anet.channel.statist.SessionMonitor;
import anet.channel.statist.SessionStatistic;
import anet.channel.status.NetworkStatusHelper;
import anet.channel.strategy.ConnEvent;
import anet.channel.strategy.StrategyCenter;
import anet.channel.strategy.utils.C0413c;
import anet.channel.util.ALog;
import anet.channel.util.C0422c;
import anet.channel.util.ErrorConstant;
import anet.channel.util.HttpConstant;
import anet.channel.util.HttpHelper;
import anet.channel.util.Utils;
import anetwork.channel.util.RequestConstant;
import com.alibaba.sdk.android.tbrest.utils.Base64;
import com.huawei.hem.CompilerOutline;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.taobao.accs.common.Constants;
import java.lang.reflect.InvocationTargetException;
import java.net.URL;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.android.agoo.common.AgooConstants;
import org.android.spdy.RequestPriority;
import org.android.spdy.SessionCb;
import org.android.spdy.SessionInfo;
import org.android.spdy.SpdyAgent;
import org.android.spdy.SpdyByteArray;
import org.android.spdy.SpdyDataProvider;
import org.android.spdy.SpdyErrorException;
import org.android.spdy.SpdyRequest;
import org.android.spdy.SpdySession;
import org.android.spdy.SpdySessionKind;
import org.android.spdy.SpdyVersion;
import org.android.spdy.SuperviseConnectInfo;
import org.android.spdy.SuperviseData;
import org.json.JSONException;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public class TnetSpdySession extends Session implements SessionCb {

    /* renamed from: A */
    public long f375A;

    /* renamed from: B */
    public int f376B;

    /* renamed from: C */
    public DataFrameCb f377C;

    /* renamed from: D */
    public IHeartbeat f378D;

    /* renamed from: E */
    public IAuth f379E;

    /* renamed from: F */
    public String f380F;

    /* renamed from: G */
    public ISecurity f381G;

    /* renamed from: H */
    public int f382H;

    /* renamed from: I */
    public boolean f383I;

    /* renamed from: w */
    public SpdyAgent f384w;

    /* renamed from: x */
    public SpdySession f385x;

    /* renamed from: y */
    public volatile boolean f386y;

    /* renamed from: z */
    public long f387z;

    /* compiled from: Taobao */
    /* renamed from: anet.channel.session.TnetSpdySession$a */
    public class C0374a extends C0375a {

        /* renamed from: b */
        public Request f389b;

        /* renamed from: c */
        public RequestCb f390c;

        /* renamed from: d */
        public int f391d = 0;

        /* renamed from: e */
        public long f392e = 0;

        public C0374a(Request request, RequestCb requestCb) {
            this.f389b = request;
            this.f390c = requestCb;
        }

        /* renamed from: a */
        private void m224a(SuperviseData superviseData, int i, String str) {
            try {
                this.f389b.f328a.rspEnd = System.currentTimeMillis();
                if (this.f389b.f328a.isDone.get()) {
                    return;
                }
                if (i > 0) {
                    this.f389b.f328a.ret = 1;
                }
                this.f389b.f328a.statusCode = i;
                this.f389b.f328a.msg = str;
                if (superviseData != null) {
                    this.f389b.f328a.rspEnd = superviseData.responseEnd;
                    this.f389b.f328a.sendBeforeTime = superviseData.sendStart - superviseData.requestStart;
                    this.f389b.f328a.sendDataTime = superviseData.sendEnd - this.f389b.f328a.sendStart;
                    this.f389b.f328a.firstDataTime = superviseData.responseStart - superviseData.sendEnd;
                    this.f389b.f328a.recDataTime = superviseData.responseEnd - superviseData.responseStart;
                    this.f389b.f328a.sendDataSize = superviseData.bodySize + superviseData.compressSize;
                    this.f389b.f328a.recDataSize = this.f392e + superviseData.recvUncompressSize;
                    this.f389b.f328a.reqHeadInflateSize = superviseData.uncompressSize;
                    this.f389b.f328a.reqHeadDeflateSize = superviseData.compressSize;
                    this.f389b.f328a.reqBodyInflateSize = superviseData.bodySize;
                    this.f389b.f328a.reqBodyDeflateSize = superviseData.bodySize;
                    this.f389b.f328a.rspHeadDeflateSize = superviseData.recvCompressSize;
                    this.f389b.f328a.rspHeadInflateSize = superviseData.recvUncompressSize;
                    this.f389b.f328a.rspBodyDeflateSize = superviseData.recvBodySize;
                    this.f389b.f328a.rspBodyInflateSize = this.f392e;
                    if (this.f389b.f328a.contentLength == 0) {
                        this.f389b.f328a.contentLength = superviseData.originContentLength;
                    }
                    TnetSpdySession.this.f111q.recvSizeCount += superviseData.recvBodySize + superviseData.recvCompressSize;
                    TnetSpdySession.this.f111q.sendSizeCount += superviseData.bodySize + superviseData.compressSize;
                }
            } catch (Exception unused) {
            }
        }

        @Override // anet.channel.session.C0375a, org.android.spdy.Spdycb
        public void spdyDataChunkRecvCB(SpdySession spdySession, boolean z, long j, SpdyByteArray spdyByteArray, Object obj) {
            if (ALog.isPrintLog(1)) {
                ALog.m337d("awcn.TnetSpdySession", "spdyDataChunkRecvCB", this.f389b.getSeq(), "len", Integer.valueOf(spdyByteArray.getDataLength()), "fin", Boolean.valueOf(z));
            }
            this.f392e += spdyByteArray.getDataLength();
            this.f389b.f328a.recDataSize += spdyByteArray.getDataLength();
            IHeartbeat iHeartbeat = TnetSpdySession.this.f378D;
            if (iHeartbeat != null) {
                iHeartbeat.reSchedule();
            }
            if (this.f390c != null) {
                ByteArray byteArrayM71a = C0317a.a.f177a.m71a(spdyByteArray.getByteArray(), spdyByteArray.getDataLength());
                spdyByteArray.recycle();
                this.f390c.onDataReceive(byteArrayM71a, z);
            }
            TnetSpdySession.this.handleCallbacks(32, null);
        }

        @Override // anet.channel.session.C0375a, org.android.spdy.Spdycb
        public void spdyOnStreamResponse(SpdySession spdySession, long j, Map<String, List<String>> map, Object obj) {
            this.f389b.f328a.firstDataTime = System.currentTimeMillis() - this.f389b.f328a.sendStart;
            this.f391d = HttpHelper.parseStatusCode(map);
            TnetSpdySession.this.f382H = 0;
            ALog.m340i("awcn.TnetSpdySession", "", this.f389b.getSeq(), HiAnalyticsConstant.HaKey.BI_KEY_RESULT, Integer.valueOf(this.f391d));
            ALog.m340i("awcn.TnetSpdySession", "", this.f389b.getSeq(), "response headers", map);
            RequestCb requestCb = this.f390c;
            if (requestCb != null) {
                requestCb.onResponseCode(this.f391d, HttpHelper.cloneMap(map));
            }
            TnetSpdySession.this.handleCallbacks(16, null);
            this.f389b.f328a.contentEncoding = HttpHelper.getSingleHeaderFieldByKey(map, HttpConstant.CONTENT_ENCODING);
            this.f389b.f328a.contentType = HttpHelper.getSingleHeaderFieldByKey(map, HttpConstant.CONTENT_TYPE);
            this.f389b.f328a.contentLength = HttpHelper.parseContentLength(map);
            this.f389b.f328a.serverRT = HttpHelper.parseServerRT(map);
            TnetSpdySession.this.handleResponseCode(this.f389b, this.f391d);
            TnetSpdySession.this.handleResponseHeaders(this.f389b, map);
            IHeartbeat iHeartbeat = TnetSpdySession.this.f378D;
            if (iHeartbeat != null) {
                iHeartbeat.reSchedule();
            }
        }

        @Override // anet.channel.session.C0375a, org.android.spdy.Spdycb
        public void spdyStreamCloseCallback(SpdySession spdySession, long j, int i, Object obj, SuperviseData superviseData) {
            String msg;
            if (ALog.isPrintLog(1)) {
                ALog.m337d("awcn.TnetSpdySession", "spdyStreamCloseCallback", this.f389b.getSeq(), "streamId", Long.valueOf(j), Constants.KEY_ERROR_CODE, Integer.valueOf(i));
            }
            if (i != 0) {
                this.f391d = ErrorConstant.ERROR_TNET_REQUEST_FAIL;
                msg = ErrorConstant.formatMsg(ErrorConstant.ERROR_TNET_REQUEST_FAIL, String.valueOf(i));
                if (i != -2005) {
                    AppMonitor.getInstance().commitStat(new ExceptionStatistic(-300, msg, this.f389b.f328a, null));
                }
                ALog.m339e("awcn.TnetSpdySession", "spdyStreamCloseCallback error", this.f389b.getSeq(), "session", TnetSpdySession.this.f110p, "status code", Integer.valueOf(i), "URL", this.f389b.getHttpUrl().simpleUrlString());
            } else {
                msg = HttpConstant.SUCCESS;
            }
            this.f389b.f328a.tnetErrorCode = i;
            m224a(superviseData, this.f391d, msg);
            RequestCb requestCb = this.f390c;
            if (requestCb != null) {
                requestCb.onFinish(this.f391d, msg, this.f389b.f328a);
            }
            if (i == -2004) {
                if (!TnetSpdySession.this.f386y) {
                    TnetSpdySession.this.ping(true);
                }
                if (TnetSpdySession.m219e(TnetSpdySession.this) >= 2) {
                    ConnEvent connEvent = new ConnEvent();
                    connEvent.isSuccess = false;
                    connEvent.isAccs = TnetSpdySession.this.f383I;
                    StrategyCenter.getInstance().notifyConnEvent(TnetSpdySession.this.f98d, TnetSpdySession.this.f105k, connEvent);
                    TnetSpdySession.this.close(true);
                }
            }
        }
    }

    public TnetSpdySession(Context context, C0346a c0346a) {
        super(context, c0346a);
        this.f386y = false;
        this.f375A = 0L;
        this.f382H = 0;
        this.f376B = -1;
        this.f377C = null;
        this.f378D = null;
        this.f379E = null;
        this.f380F = null;
        this.f381G = null;
        this.f383I = false;
    }

    /* renamed from: e */
    public static /* synthetic */ int m219e(TnetSpdySession tnetSpdySession) {
        int i = tnetSpdySession.f382H + 1;
        tnetSpdySession.f382H = i;
        return i;
    }

    @Override // org.android.spdy.SessionCb
    public void bioPingRecvCallback(SpdySession spdySession, int i) {
    }

    @Override // anet.channel.Session
    public void close() {
        ALog.m339e("awcn.TnetSpdySession", "force close!", this.f110p, "session", this);
        notifyStatus(7, null);
        try {
            if (this.f378D != null) {
                this.f378D.stop();
                this.f378D = null;
            }
            if (this.f385x != null) {
                this.f385x.closeSession();
            }
        } catch (Exception unused) {
        }
    }

    @Override // anet.channel.Session
    public void connect() {
        int xquicCongControl;
        int i = this.f108n;
        int i2 = 1;
        if (i == 1 || i == 0 || i == 4) {
            return;
        }
        try {
            if (this.f384w == null) {
                m215c();
            }
            if (C0422c.m347a() && C0413c.m331a(this.f99e)) {
                try {
                    this.f100f = C0422c.m345a(this.f99e);
                } catch (Exception unused) {
                }
            }
            String strValueOf = String.valueOf(System.currentTimeMillis());
            ALog.m339e("awcn.TnetSpdySession", "connect", this.f110p, Constants.KEY_HOST, this.f97c, "ip", this.f100f, "port", Integer.valueOf(this.f101g), "sessionId", strValueOf, "SpdyProtocol,", this.f104j, "proxyIp,", this.f102h, "proxyPort,", Integer.valueOf(this.f103i));
            SessionInfo sessionInfo = new SessionInfo(this.f100f, this.f101g, this.f97c + "_" + this.f380F, this.f102h, this.f103i, strValueOf, this, this.f104j.getTnetConType());
            sessionInfo.setConnectionTimeoutMs((int) (((float) this.f112r) * Utils.getNetworkTimeFactor()));
            if (this.f104j.isPublicKeyAuto() || this.f104j.isH2S() || this.f104j.isHTTP3()) {
                sessionInfo.setCertHost(this.f107m ? this.f99e : this.f98d);
            } else if (this.f376B >= 0) {
                sessionInfo.setPubKeySeqNum(this.f376B);
            } else {
                int tnetPublicKey = this.f104j.getTnetPublicKey(this.f381G != null ? this.f381G.isSecOff() : true);
                this.f376B = tnetPublicKey;
                sessionInfo.setPubKeySeqNum(tnetPublicKey);
            }
            if (this.f104j.isHTTP3() && (xquicCongControl = AwcnConfig.getXquicCongControl()) >= 0) {
                sessionInfo.setXquicCongControl(xquicCongControl);
            }
            SpdySession spdySessionCreateSession = this.f384w.createSession(sessionInfo);
            this.f385x = spdySessionCreateSession;
            if (spdySessionCreateSession.getRefCount() > 1) {
                ALog.m339e("awcn.TnetSpdySession", "get session ref count > 1!!!", this.f110p, new Object[0]);
                notifyStatus(0, new C0347b(1));
                m223b();
                return;
            }
            notifyStatus(1, null);
            this.f387z = System.currentTimeMillis();
            SessionStatistic sessionStatistic = this.f111q;
            if (TextUtils.isEmpty(this.f102h)) {
                i2 = 0;
            }
            sessionStatistic.isProxy = i2;
            this.f111q.isTunnel = RequestConstant.FALSE;
            this.f111q.isBackground = GlobalAppRuntimeInfo.isAppBackground();
            this.f375A = 0L;
        } catch (Throwable th) {
            notifyStatus(2, null);
            ALog.m338e("awcn.TnetSpdySession", "connect exception ", this.f110p, th, new Object[0]);
        }
    }

    @Override // anet.channel.Session
    public Runnable getRecvTimeOutRunnable() {
        return new RunnableC0382h(this);
    }

    @Override // org.android.spdy.SessionCb
    public byte[] getSSLMeta(SpdySession spdySession) {
        String domain = spdySession.getDomain();
        if (TextUtils.isEmpty(domain)) {
            ALog.m340i("awcn.TnetSpdySession", "get sslticket host is null", null, new Object[0]);
            return null;
        }
        try {
            if (this.f381G == null) {
                return null;
            }
            return this.f381G.getBytes(this.f95a, "accs_ssl_key2_" + domain);
        } catch (Throwable th) {
            ALog.m338e("awcn.TnetSpdySession", "getSSLMeta", null, th, new Object[0]);
            return null;
        }
    }

    public void initConfig(Config config) {
        if (config != null) {
            this.f380F = config.getAppkey();
            this.f381G = config.getSecurity();
        }
    }

    public void initSessionInfo(anet.channel.SessionInfo sessionInfo) {
        if (sessionInfo != null) {
            this.f377C = sessionInfo.dataFrameCb;
            this.f379E = sessionInfo.auth;
            if (sessionInfo.isKeepAlive) {
                this.f111q.isKL = 1L;
                this.f114t = true;
                IHeartbeat iHeartbeat = sessionInfo.heartbeat;
                this.f378D = iHeartbeat;
                boolean z = sessionInfo.isAccs;
                this.f383I = z;
                if (iHeartbeat == null) {
                    if (!z || AwcnConfig.isAccsSessionCreateForbiddenInBg()) {
                        this.f378D = HeartbeatManager.getDefaultHeartbeat();
                    } else {
                        this.f378D = HeartbeatManager.getDefaultBackgroundAccsHeartbeat();
                    }
                }
            }
        }
        if (AwcnConfig.isIdleSessionCloseEnable() && this.f378D == null) {
            this.f378D = new RunnableC0356c();
        }
    }

    @Override // anet.channel.Session
    public boolean isAvailable() {
        return this.f108n == 4;
    }

    @Override // anet.channel.Session
    public void onDisconnect() {
        this.f386y = false;
    }

    @Override // anet.channel.Session
    public void ping(boolean z) {
        ping(z, this.f113s);
    }

    @Override // org.android.spdy.SessionCb
    public int putSSLMeta(SpdySession spdySession, byte[] bArr) {
        String domain = spdySession.getDomain();
        if (TextUtils.isEmpty(domain)) {
            return -1;
        }
        try {
            if (this.f381G == null) {
                return -1;
            }
            ISecurity iSecurity = this.f381G;
            Context context = this.f95a;
            StringBuilder sb = new StringBuilder();
            sb.append("accs_ssl_key2_");
            sb.append(domain);
            return iSecurity.saveBytes(context, sb.toString(), bArr) ? 0 : -1;
        } catch (Throwable th) {
            ALog.m338e("awcn.TnetSpdySession", "putSSLMeta", null, th, new Object[0]);
            return -1;
        }
    }

    @Override // anet.channel.Session
    public Cancelable request(Request request, RequestCb requestCb) throws JSONException {
        String str;
        SpdyRequest spdyRequest;
        C0369c c0369c = C0369c.NULL;
        RequestStatistic requestStatistic = request != null ? request.f328a : new RequestStatistic(this.f98d, null);
        requestStatistic.setConnType(this.f104j);
        if (requestStatistic.start == 0) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            requestStatistic.reqStart = jCurrentTimeMillis;
            requestStatistic.start = jCurrentTimeMillis;
        }
        requestStatistic.setIPAndPort(this.f100f, this.f101g);
        requestStatistic.ipRefer = this.f105k.getIpSource();
        requestStatistic.ipType = this.f105k.getIpType();
        requestStatistic.unit = this.f106l;
        if (request == null || requestCb == null) {
            if (requestCb != null) {
                requestCb.onFinish(-102, ErrorConstant.getErrMsg(-102), requestStatistic);
            }
            return c0369c;
        }
        try {
            if (this.f385x == null || !(this.f108n == 0 || this.f108n == 4)) {
                requestCb.onFinish(ErrorConstant.ERROR_SESSION_INVALID, ErrorConstant.getErrMsg(ErrorConstant.ERROR_SESSION_INVALID), request.f328a);
                return c0369c;
            }
            if (this.f107m) {
                request.setDnsOptimize(this.f99e, this.f101g);
            }
            request.setUrlScheme(this.f104j.isSSL());
            URL url = request.getUrl();
            if (ALog.isPrintLog(2)) {
                ALog.m340i("awcn.TnetSpdySession", "", request.getSeq(), "request URL", url.toString());
                ALog.m340i("awcn.TnetSpdySession", "", request.getSeq(), "request Method", request.getMethod());
                ALog.m340i("awcn.TnetSpdySession", "", request.getSeq(), "request headers", request.getHeaders());
            }
            if (TextUtils.isEmpty(this.f102h) || this.f103i <= 0) {
                str = "";
                spdyRequest = new SpdyRequest(url, request.getMethod(), RequestPriority.DEFAULT_PRIORITY, -1, request.getConnectTimeout());
            } else {
                str = "";
                spdyRequest = new SpdyRequest(url, url.getHost(), url.getPort(), this.f102h, this.f103i, request.getMethod(), RequestPriority.DEFAULT_PRIORITY, -1, request.getConnectTimeout(), 0);
            }
            spdyRequest.setRequestRdTimeoutMs(request.getReadTimeout());
            Map<String, String> headers = request.getHeaders();
            if (headers.containsKey(HttpConstant.HOST)) {
                HashMap map = new HashMap(request.getHeaders());
                String str2 = (String) map.remove(HttpConstant.HOST);
                if (this.f107m) {
                    str2 = this.f99e;
                }
                map.put(":host", str2);
                spdyRequest.addHeaders(map);
            } else {
                spdyRequest.addHeaders(headers);
                spdyRequest.addHeader(":host", this.f107m ? this.f99e : request.getHost());
            }
            SpdyDataProvider spdyDataProvider = new SpdyDataProvider(request.getBodyBytes());
            request.f328a.sendStart = System.currentTimeMillis();
            request.f328a.processTime = request.f328a.sendStart - request.f328a.start;
            int iSubmitRequest = this.f385x.submitRequest(spdyRequest, spdyDataProvider, this, new C0374a(request, requestCb));
            if (ALog.isPrintLog(1)) {
                ALog.m337d("awcn.TnetSpdySession", str, request.getSeq(), "streamId", Integer.valueOf(iSubmitRequest));
            }
            C0369c c0369c2 = new C0369c(this.f385x, iSubmitRequest, request.getSeq());
            try {
                this.f111q.requestCount++;
                this.f111q.stdRCount++;
                this.f387z = System.currentTimeMillis();
                if (this.f378D != null) {
                    this.f378D.reSchedule();
                }
                return c0369c2;
            } catch (SpdyErrorException e) {
                e = e;
                c0369c = c0369c2;
                if (e.SpdyErrorGetCode() == -1104 || e.SpdyErrorGetCode() == -1103) {
                    ALog.m339e("awcn.TnetSpdySession", "Send request on closed session!!!", this.f110p, new Object[0]);
                    notifyStatus(6, new C0347b(2));
                }
                requestCb.onFinish(-300, ErrorConstant.formatMsg(-300, String.valueOf(e.SpdyErrorGetCode())), requestStatistic);
                return c0369c;
            } catch (Exception unused) {
                c0369c = c0369c2;
                requestCb.onFinish(-101, ErrorConstant.getErrMsg(-101), requestStatistic);
                return c0369c;
            }
        } catch (SpdyErrorException e2) {
            e = e2;
        } catch (Exception unused2) {
        }
    }

    @Override // anet.channel.Session
    public void sendCustomFrame(int i, byte[] bArr, int i2) {
        try {
            if (this.f377C == null) {
                return;
            }
            ALog.m339e("awcn.TnetSpdySession", "sendCustomFrame", this.f110p, Constants.KEY_DATA_ID, Integer.valueOf(i), "type", Integer.valueOf(i2));
            if (this.f108n != 4 || this.f385x == null) {
                ALog.m339e("awcn.TnetSpdySession", "sendCustomFrame", this.f110p, "sendCustomFrame con invalid mStatus:" + this.f108n);
                m207a(i, ErrorConstant.ERROR_SESSION_INVALID, true, "session invalid");
                return;
            }
            if (bArr != null && bArr.length > 16384) {
                m207a(i, ErrorConstant.ERROR_DATA_TOO_LARGE, false, null);
                return;
            }
            this.f385x.sendCustomControlFrame(i, i2, 0, bArr == null ? 0 : bArr.length, bArr);
            this.f111q.requestCount++;
            this.f111q.cfRCount++;
            this.f387z = System.currentTimeMillis();
            if (this.f378D != null) {
                this.f378D.reSchedule();
            }
        } catch (SpdyErrorException e) {
            ALog.m338e("awcn.TnetSpdySession", "sendCustomFrame error", this.f110p, e, new Object[0]);
            m207a(i, -300, true, "SpdyErrorException: " + e.toString());
        } catch (Exception e2) {
            ALog.m338e("awcn.TnetSpdySession", "sendCustomFrame error", this.f110p, e2, new Object[0]);
            m207a(i, -101, true, e2.toString());
        }
    }

    public void setTnetPublicKey(int i) {
        this.f376B = i;
    }

    @Override // org.android.spdy.SessionCb
    public void spdyCustomControlFrameFailCallback(SpdySession spdySession, Object obj, int i, int i2) {
        ALog.m339e("awcn.TnetSpdySession", "spdyCustomControlFrameFailCallback", this.f110p, Constants.KEY_DATA_ID, Integer.valueOf(i));
        m207a(i, i2, true, "tnet error");
    }

    @Override // org.android.spdy.SessionCb
    public void spdyCustomControlFrameRecvCallback(SpdySession spdySession, Object obj, int i, int i2, int i3, int i4, byte[] bArr) {
        ALog.m339e("awcn.TnetSpdySession", "[spdyCustomControlFrameRecvCallback]", this.f110p, "len", Integer.valueOf(i4), "frameCb", this.f377C);
        if (ALog.isPrintLog(1) && i4 < 512) {
            String string = "";
            for (byte b : bArr) {
                StringBuilder sbM1765j = CompilerOutline.m1765j(string);
                sbM1765j.append(Integer.toHexString(b & Base64.EQUALS_SIGN_ENC));
                sbM1765j.append(" ");
                string = sbM1765j.toString();
            }
            ALog.m339e("awcn.TnetSpdySession", null, this.f110p, "str", string);
        }
        DataFrameCb dataFrameCb = this.f377C;
        if (dataFrameCb != null) {
            dataFrameCb.onDataReceive(this, bArr, i, i2);
        } else {
            ALog.m339e("awcn.TnetSpdySession", "AccsFrameCb is null", this.f110p, new Object[0]);
            AppMonitor.getInstance().commitStat(new ExceptionStatistic(-105, null, "rt"));
        }
        this.f111q.inceptCount++;
        IHeartbeat iHeartbeat = this.f378D;
        if (iHeartbeat != null) {
            iHeartbeat.reSchedule();
        }
    }

    @Override // org.android.spdy.SessionCb
    public void spdyPingRecvCallback(SpdySession spdySession, long j, Object obj) {
        if (ALog.isPrintLog(2)) {
            ALog.m340i("awcn.TnetSpdySession", "ping receive", this.f110p, HttpConstant.HOST, this.f97c, AgooConstants.MESSAGE_ID, Long.valueOf(j));
        }
        if (j < 0) {
            return;
        }
        this.f386y = false;
        this.f382H = 0;
        IHeartbeat iHeartbeat = this.f378D;
        if (iHeartbeat != null) {
            iHeartbeat.reSchedule();
        }
        handleCallbacks(128, null);
    }

    @Override // org.android.spdy.SessionCb
    public void spdySessionCloseCallback(SpdySession spdySession, Object obj, SuperviseConnectInfo superviseConnectInfo, int i) {
        ALog.m339e("awcn.TnetSpdySession", "spdySessionCloseCallback", this.f110p, " errorCode:", Integer.valueOf(i));
        IHeartbeat iHeartbeat = this.f378D;
        if (iHeartbeat != null) {
            iHeartbeat.stop();
            this.f378D = null;
        }
        if (spdySession != null) {
            try {
                spdySession.cleanUp();
            } catch (Exception e) {
                ALog.m338e("awcn.TnetSpdySession", "session clean up failed!", null, e, new Object[0]);
            }
        }
        if (i == -3516) {
            ConnEvent connEvent = new ConnEvent();
            connEvent.isSuccess = false;
            StrategyCenter.getInstance().notifyConnEvent(this.f98d, this.f105k, connEvent);
        }
        notifyStatus(6, new C0347b(2));
        if (superviseConnectInfo != null) {
            SessionStatistic sessionStatistic = this.f111q;
            sessionStatistic.requestCount = superviseConnectInfo.reused_counter;
            sessionStatistic.liveTime = superviseConnectInfo.keepalive_period_second;
            try {
                if (this.f104j.isHTTP3()) {
                    if (spdySession != null) {
                        ALog.m339e("awcn.TnetSpdySession", "[HTTP3 spdySessionCloseCallback]", this.f110p, "connectInfo", spdySession.getConnectInfoOnDisConnected());
                    }
                    this.f111q.xqc0RttStatus = superviseConnectInfo.xqc0RttStatus;
                    this.f111q.retransmissionRate = superviseConnectInfo.retransmissionRate;
                    this.f111q.lossRate = superviseConnectInfo.lossRate;
                    this.f111q.tlpCount = superviseConnectInfo.tlpCount;
                    this.f111q.rtoCount = superviseConnectInfo.rtoCount;
                    this.f111q.srtt = superviseConnectInfo.srtt;
                }
            } catch (Exception unused) {
            }
        }
        SessionStatistic sessionStatistic2 = this.f111q;
        if (sessionStatistic2.errorCode == 0) {
            sessionStatistic2.errorCode = i;
        }
        this.f111q.lastPingInterval = (int) (System.currentTimeMillis() - this.f387z);
        AppMonitor.getInstance().commitStat(this.f111q);
        if (C0413c.m332b(this.f111q.f416ip)) {
            AppMonitor.getInstance().commitStat(new SessionMonitor(this.f111q));
        }
        AppMonitor.getInstance().commitAlarm(this.f111q.getAlarmObject());
    }

    @Override // org.android.spdy.SessionCb
    public void spdySessionConnectCB(SpdySession spdySession, SuperviseConnectInfo superviseConnectInfo) {
        SessionStatistic sessionStatistic = this.f111q;
        sessionStatistic.connectionTime = superviseConnectInfo.connectTime;
        sessionStatistic.sslTime = superviseConnectInfo.handshakeTime;
        sessionStatistic.sslCalTime = superviseConnectInfo.doHandshakeTime;
        sessionStatistic.netType = NetworkStatusHelper.getNetworkSubType();
        this.f375A = System.currentTimeMillis();
        notifyStatus(0, new C0347b(1));
        m223b();
        ALog.m339e("awcn.TnetSpdySession", "spdySessionConnectCB connect", this.f110p, "connectTime", Integer.valueOf(superviseConnectInfo.connectTime), "sslTime", Integer.valueOf(superviseConnectInfo.handshakeTime));
        if (this.f104j.isHTTP3()) {
            this.f111q.scid = superviseConnectInfo.scid;
            this.f111q.dcid = superviseConnectInfo.dcid;
            this.f111q.congControlKind = superviseConnectInfo.congControlKind;
            ALog.m339e("awcn.TnetSpdySession", "[HTTP3 spdySessionConnectCB]", this.f110p, "connectInfo", spdySession.getConnectInfoOnConnected());
        }
    }

    @Override // org.android.spdy.SessionCb
    public void spdySessionFailedError(SpdySession spdySession, int i, Object obj) {
        if (spdySession != null) {
            try {
                spdySession.cleanUp();
            } catch (Exception e) {
                ALog.m338e("awcn.TnetSpdySession", "[spdySessionFailedError]session clean up failed!", null, e, new Object[0]);
            }
        }
        notifyStatus(2, new C0347b(256, i, "tnet connect fail"));
        ALog.m339e("awcn.TnetSpdySession", null, this.f110p, " errorId:", Integer.valueOf(i));
        SessionStatistic sessionStatistic = this.f111q;
        sessionStatistic.errorCode = i;
        sessionStatistic.ret = 0;
        sessionStatistic.netType = NetworkStatusHelper.getNetworkSubType();
        AppMonitor.getInstance().commitStat(this.f111q);
        if (C0413c.m332b(this.f111q.f416ip)) {
            AppMonitor.getInstance().commitStat(new SessionMonitor(this.f111q));
        }
        AppMonitor.getInstance().commitAlarm(this.f111q.getAlarmObject());
    }

    @Override // anet.channel.Session
    public void ping(boolean z, int i) {
        if (ALog.isPrintLog(1)) {
            ALog.m337d("awcn.TnetSpdySession", "ping", this.f110p, Constants.KEY_HOST, this.f97c, "thread", Thread.currentThread().getName());
        }
        if (z) {
            try {
                if (this.f385x == null) {
                    if (this.f111q != null) {
                        this.f111q.closeReason = "session null";
                    }
                    ALog.m339e("awcn.TnetSpdySession", this.f97c + " session null", this.f110p, new Object[0]);
                    close();
                    return;
                }
                if (this.f108n == 0 || this.f108n == 4) {
                    handleCallbacks(64, null);
                    if (this.f386y) {
                        return;
                    }
                    this.f386y = true;
                    this.f111q.ppkgCount++;
                    this.f385x.submitPing();
                    if (ALog.isPrintLog(1)) {
                        ALog.m337d("awcn.TnetSpdySession", this.f97c + " submit ping ms:" + (System.currentTimeMillis() - this.f387z) + " force:" + z, this.f110p, new Object[0]);
                    }
                    setPingTimeout(i);
                    this.f387z = System.currentTimeMillis();
                    if (this.f378D != null) {
                        this.f378D.reSchedule();
                    }
                }
            } catch (SpdyErrorException e) {
                if (e.SpdyErrorGetCode() == -1104 || e.SpdyErrorGetCode() == -1103) {
                    ALog.m339e("awcn.TnetSpdySession", "Send request on closed session!!!", this.f110p, new Object[0]);
                    notifyStatus(6, new C0347b(2));
                }
                ALog.m338e("awcn.TnetSpdySession", "ping", this.f110p, e, new Object[0]);
            } catch (Exception e2) {
                ALog.m338e("awcn.TnetSpdySession", "ping", this.f110p, e2, new Object[0]);
            }
        }
    }

    /* renamed from: c */
    private void m215c() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        SpdyAgent.enableDebug = false;
        this.f384w = SpdyAgent.getInstance(this.f95a, SpdyVersion.SPDY3, SpdySessionKind.NONE_SESSION);
        ISecurity iSecurity = this.f381G;
        if (iSecurity != null && !iSecurity.isSecOff()) {
            this.f384w.setAccsSslCallback(new C0384j(this));
        }
        if (AwcnConfig.isTnetHeaderCacheEnable()) {
            return;
        }
        try {
            this.f384w.getClass().getDeclaredMethod("disableHeaderCache", new Class[0]).invoke(this.f384w, new Object[0]);
            ALog.m340i("awcn.TnetSpdySession", "tnet disableHeaderCache", null, new Object[0]);
        } catch (Exception e) {
            ALog.m338e("awcn.TnetSpdySession", "tnet disableHeaderCache", null, e, new Object[0]);
        }
    }

    /* renamed from: b */
    public void m223b() {
        IAuth iAuth = this.f379E;
        if (iAuth != null) {
            iAuth.auth(this, new C0383i(this));
            return;
        }
        notifyStatus(4, null);
        this.f111q.ret = 1;
        IHeartbeat iHeartbeat = this.f378D;
        if (iHeartbeat != null) {
            iHeartbeat.start(this);
        }
    }

    /* renamed from: a */
    private void m207a(int i, int i2, boolean z, String str) {
        DataFrameCb dataFrameCb = this.f377C;
        if (dataFrameCb != null) {
            dataFrameCb.onException(i, i2, z, str);
        }
    }
}
