package com.taobao.accs.net;

import android.content.Context;
import android.text.TextUtils;
import anet.channel.GlobalAppRuntimeInfo;
import anet.channel.appmonitor.AppMonitor;
import anet.channel.strategy.IConnStrategy;
import anet.channel.util.HttpConstant;
import com.alibaba.sdk.android.error.ErrorCode;
import com.alibaba.sdk.android.tbrest.utils.Base64;
import com.huawei.hem.CompilerOutline;
import com.huawei.hms.framework.network.grs.GrsManager;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.taobao.accs.AccsClientConfig;
import com.taobao.accs.AccsErrorCode;
import com.taobao.accs.common.Constants;
import com.taobao.accs.common.ThreadPoolExecutorFactory;
import com.taobao.accs.data.AccsMessageDataManager;
import com.taobao.accs.data.Message;
import com.taobao.accs.p072ut.monitor.SessionMonitor;
import com.taobao.accs.p072ut.p073a.AccsMonitorStatistics;
import com.taobao.accs.p072ut.p073a.AccsReceiveStatistics;
import com.taobao.accs.utl.ALog;
import com.taobao.accs.utl.AppMonitorAdapter;
import com.taobao.accs.utl.BaseMonitor;
import com.taobao.accs.utl.AccsLibraryLoadState;
import com.taobao.accs.utl.AccsLogConfiguration;
import com.taobao.accs.utl.OrangeAdapter;
import com.taobao.accs.utl.UTMini;
import com.taobao.accs.utl.UtilityImpl;
import com.taobao.accs.utl.Utils;
import java.net.URL;
import java.net.URLEncoder;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import org.android.agoo.common.AgooConstants;
import org.android.agoo.message.MessageService;
import org.android.spdy.RequestPriority;
import org.android.spdy.SessionCb;
import org.android.spdy.SessionInfo;
import org.android.spdy.SpdyAgent;
import org.android.spdy.SpdyByteArray;
import org.android.spdy.SpdyDataProvider;
import org.android.spdy.SpdyRequest;
import org.android.spdy.SpdySession;
import org.android.spdy.SpdySessionKind;
import org.android.spdy.SpdyVersion;
import org.android.spdy.Spdycb;
import org.android.spdy.SuperviseConnectInfo;
import org.android.spdy.SuperviseData;

/* compiled from: Taobao */
/* renamed from: com.taobao.accs.net.w */
/* loaded from: classes.dex */
public class AccsSpdyConnection extends AccsConnectionBase implements SessionCb, Spdycb {

    /* renamed from: A */
    public Object f6284A;

    /* renamed from: B */
    public long f6285B;

    /* renamed from: C */
    public long f6286C;

    /* renamed from: D */
    public long f6287D;

    /* renamed from: E */
    public long f6288E;

    /* renamed from: F */
    public int f6289F;

    /* renamed from: G */
    public String f6290G;

    /* renamed from: H */
    public SessionMonitor f6291H;

    /* renamed from: I */
    public AccsMonitorStatistics f6292I;

    /* renamed from: J */
    public boolean f6293J;

    /* renamed from: K */
    public String f6294K;

    /* renamed from: L */
    public boolean f6295L;

    /* renamed from: M */
    public AccsHttpDnsProvider f6296M;

    /* renamed from: N */
    public String f6297N;

    /* renamed from: n */
    public ScheduledFuture<?> f6298n;

    /* renamed from: o */
    public String f6299o;

    /* renamed from: p */
    public int f6300p;

    /* renamed from: q */
    public String f6301q;

    /* renamed from: r */
    public int f6302r;

    /* renamed from: s */
    public int f6303s;

    /* renamed from: t */
    public LinkedList<Message> f6304t;

    /* renamed from: u */
    public a f6305u;

    /* renamed from: v */
    public boolean f6306v;

    /* renamed from: w */
    public String f6307w;

    /* renamed from: x */
    public String f6308x;

    /* renamed from: y */
    public SpdyAgent f6309y;

    /* renamed from: z */
    public SpdySession f6310z;

    /* compiled from: Taobao */
    /* renamed from: com.taobao.accs.net.w$a */
    public class a extends Thread {

        /* renamed from: a */
        public int f6311a;

        /* renamed from: b */
        public long f6312b;

        /* renamed from: d */
        public final String f6314d;

        public a(String str) {
            super(str);
            this.f6314d = getName();
            this.f6311a = 0;
        }

        /* renamed from: a */
        private void m5710a(boolean z) throws InterruptedException {
            if (AccsSpdyConnection.this.f6303s == 1) {
                if (AccsSpdyConnection.this.f6303s != 1 || System.currentTimeMillis() - this.f6312b <= 5000) {
                    return;
                }
                this.f6311a = 0;
                return;
            }
            ALog.m5726d(AccsSpdyConnection.this.mo5641d(), "tryConnect", "force", Boolean.valueOf(z));
            if (!UtilityImpl.m5766g(AccsSpdyConnection.this.f6212d)) {
                ALog.m5728e(this.f6314d, "Network not available", new Object[0]);
                return;
            }
            if (z) {
                this.f6311a = 0;
            }
            ALog.m5729i(this.f6314d, "tryConnect", "force", Boolean.valueOf(z), "failTimes", Integer.valueOf(this.f6311a));
            if (AccsSpdyConnection.this.f6303s != 1 && this.f6311a >= 4) {
                AccsSpdyConnection.this.f6293J = true;
                ALog.m5728e(this.f6314d, "tryConnect fail", "maxTimes", 4);
                return;
            }
            if (AccsSpdyConnection.this.f6303s != 1) {
                if (AccsSpdyConnection.this.f6211c == 1 && this.f6311a == 0) {
                    ALog.m5729i(this.f6314d, "tryConnect in app, no sleep", new Object[0]);
                } else {
                    ALog.m5729i(this.f6314d, "tryConnect, need sleep", new Object[0]);
                    try {
                        Thread.sleep(5000L);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
                AccsSpdyConnection.this.f6294K = "";
                if (this.f6311a == 3) {
                    AccsSpdyConnection.this.f6296M.m5667b(AccsSpdyConnection.this.m5708r());
                }
                AccsSpdyConnection.this.m5697d((String) null);
                AccsSpdyConnection.this.f6291H.setRetryTimes(this.f6311a);
                if (AccsSpdyConnection.this.f6303s == 1) {
                    this.f6312b = System.currentTimeMillis();
                    return;
                }
                this.f6311a++;
                ALog.m5728e(this.f6314d, "try connect fail, ready for reconnect", new Object[0]);
                m5710a(false);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:17:0x0062 A[Catch: all -> 0x0502, TryCatch #2 {, blocks: (B:7:0x0027, B:9:0x0033, B:15:0x004d, B:17:0x0062, B:19:0x0074, B:21:0x007c, B:12:0x0047, B:13:0x004a), top: B:200:0x0027, inners: #1 }] */
        @Override // java.lang.Thread, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                Method dump skipped, instructions count: 1291
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.taobao.accs.net.C1961w.a.run():void");
        }
    }

    public AccsSpdyConnection(Context context, int i, String str) {
        super(context, i, str);
        this.f6303s = 3;
        this.f6304t = new LinkedList<>();
        this.f6306v = true;
        this.f6309y = null;
        this.f6310z = null;
        this.f6284A = new Object();
        this.f6289F = -1;
        this.f6290G = null;
        this.f6293J = false;
        this.f6294K = "";
        this.f6295L = false;
        this.f6296M = new AccsHttpDnsProvider(m5708r());
        m5706w();
    }

    /* renamed from: t */
    private int m5703t() {
        boolean zM5648k = m5648k();
        if (AccsClientConfig.mEnv == 2) {
            return 0;
        }
        int channelPubKey = this.f6217i.getChannelPubKey();
        if (channelPubKey <= 0) {
            return zM5648k ? 4 : 3;
        }
        ALog.m5729i(mo5641d(), "getPublicKeyType use custom pub key", "pubKey", Integer.valueOf(channelPubKey));
        return channelPubKey;
    }

    /* renamed from: u */
    private void m5704u() {
        if (this.f6310z == null) {
            m5695c(3);
            return;
        }
        try {
            String strEncode = URLEncoder.encode(UtilityImpl.getDeviceId(this.f6212d));
            String strM5739a = UtilityImpl.m5739a(m5646i(), this.f6217i.getAppSecret(), UtilityImpl.getDeviceId(this.f6212d));
            String strM5640c = m5640c(this.f6307w);
            ALog.m5729i(mo5641d(), BaseMonitor.ALARM_POINT_AUTH, AgooConstants.OPEN_URL, strM5640c);
            this.f6308x = strM5640c;
            if (m5689a(strEncode, m5646i(), strM5739a)) {
                new URL(strM5640c);
                SpdyRequest spdyRequest = new SpdyRequest(new URL(strM5640c), "GET", RequestPriority.DEFAULT_PRIORITY, 80000, AccsConnectionBase.ACCS_RECEIVE_TIMEOUT);
                spdyRequest.setDomain(m5708r());
                this.f6310z.submitRequest(spdyRequest, new SpdyDataProvider((byte[]) null), m5708r(), this);
                return;
            }
            ErrorCode errorCodeBuild = AccsErrorCode.SPDY_AUTH_PARAM_ERROR.copy().detail("device " + strEncode + " key " + m5646i() + " sign " + strM5739a).build();
            ALog.m5728e(mo5641d(), "auth param error!", "code", errorCodeBuild);
            m5685a(errorCodeBuild);
        } catch (Throwable th) {
            ALog.m5727e(mo5641d(), "auth exception ", th, new Object[0]);
            m5685a(AccsErrorCode.SPDY_AUTH_EXCEPTION.copy().detail(AccsErrorCode.getExceptionInfo(th)).build());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: v */
    public synchronized void m5705v() {
        if (this.f6211c == 1) {
            return;
        }
        this.f6285B = System.currentTimeMillis();
        this.f6286C = System.nanoTime();
        AccsHeartbeatManagerBase.m5654a(this.f6212d).m5657a();
    }

    /* renamed from: w */
    private void m5706w() {
        try {
            SpdyAgent.enableDebug = true;
            this.f6309y = SpdyAgent.getInstance(this.f6212d, SpdyVersion.SPDY3, SpdySessionKind.NONE_SESSION);
            if (!SpdyAgent.checkLoadSucc()) {
                ALog.m5728e(mo5641d(), "initClient", new Object[0]);
                AccsLibraryLoadState.m5781b();
                return;
            }
            AccsLibraryLoadState.m5780a();
            if (!m5648k()) {
                this.f6309y.setAccsSslCallback(new AccsSpdyKeyCallback(this));
            }
            if (OrangeAdapter.isTnetLogOff(false)) {
                return;
            }
            String str = this.f6211c == 0 ? "service" : "inapp";
            ALog.m5726d(mo5641d(), "into--[setTnetLogPath]", new Object[0]);
            String strM5758d = UtilityImpl.m5758d(this.f6212d, str);
            ALog.m5726d(mo5641d(), "config tnet log path:" + strM5758d, new Object[0]);
            if (TextUtils.isEmpty(strM5758d)) {
                return;
            }
            this.f6309y.configLogFile(strM5758d, 5242880, 5);
        } catch (Throwable th) {
            ALog.m5727e(mo5641d(), "initClient", th, new Object[0]);
        }
    }

    @Override // org.android.spdy.SessionCb
    public void bioPingRecvCallback(SpdySession spdySession, int i) {
        ALog.m5732w(mo5641d(), CompilerOutline.m1754L("bioPingRecvCallback uniId:", i), new Object[0]);
    }

    @Override // org.android.spdy.SessionCb
    public byte[] getSSLMeta(SpdySession spdySession) {
        return UtilityImpl.m5748a(this.f6212d, this.f6210b, spdySession.getDomain());
    }

    @Override // com.taobao.accs.net.AbstractC1940b
    /* renamed from: h */
    public boolean mo5645h() {
        return false;
    }

    @Override // com.taobao.accs.net.AbstractC1940b
    /* renamed from: l */
    public boolean mo5649l() {
        return this.f6303s == 1;
    }

    @Override // com.taobao.accs.net.AbstractC1940b
    /* renamed from: m */
    public int mo5650m() {
        return 0;
    }

    @Override // com.taobao.accs.net.AbstractC1940b
    /* renamed from: n */
    public void mo5651n() {
        m5707q();
    }

    @Override // com.taobao.accs.net.AbstractC1940b
    /* renamed from: o */
    public void mo5652o() {
        mo5631a(true, false);
    }

    @Override // org.android.spdy.SessionCb
    public int putSSLMeta(SpdySession spdySession, byte[] bArr) {
        return UtilityImpl.m5734a(this.f6212d, this.f6210b, spdySession.getDomain(), bArr);
    }

    /* renamed from: q */
    public void m5707q() {
        ALog.m5728e(mo5641d(), " force close!", new Object[0]);
        try {
            this.f6310z.closeSession();
            this.f6291H.setCloseType(1);
        } catch (Exception unused) {
        }
        m5695c(3);
    }

    /* renamed from: r */
    public String m5708r() {
        String channelHost = this.f6217i.getChannelHost();
        ALog.m5729i(mo5641d(), "getChannelHost", Constants.KEY_HOST, channelHost);
        return channelHost == null ? "" : channelHost;
    }

    /* renamed from: s */
    public boolean m5709s() {
        return this.f6306v;
    }

    @Override // org.android.spdy.SessionCb
    public void spdyCustomControlFrameFailCallback(SpdySession spdySession, Object obj, int i, int i2) {
        m5636b(i);
    }

    @Override // org.android.spdy.SessionCb
    public void spdyCustomControlFrameRecvCallback(SpdySession spdySession, Object obj, int i, int i2, int i3, int i4, byte[] bArr) {
        m5705v();
        ALog.m5729i(mo5641d(), "onFrame", "type", Integer.valueOf(i2), "len", Integer.valueOf(bArr.length));
        StringBuilder sb = new StringBuilder();
        if (ALog.isPrintLog(ALog.Level.D) && bArr.length < 512) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            for (byte b : bArr) {
                sb.append(Integer.toHexString(b & Base64.EQUALS_SIGN_ENC));
                sb.append(" ");
            }
            ALog.m5726d(mo5641d(), ((Object) sb) + " log time:" + (System.currentTimeMillis() - jCurrentTimeMillis), new Object[0]);
        }
        if (i2 == 200) {
            try {
                long jCurrentTimeMillis2 = System.currentTimeMillis();
                this.f6213e.m5558a(bArr);
                AccsReceiveStatistics c1968dM5567g = this.f6213e.m5567g();
                if (c1968dM5567g != null) {
                    c1968dM5567g.f6347c = String.valueOf(jCurrentTimeMillis2);
                    c1968dM5567g.f6351g = this.f6211c == 0 ? "service" : "inapp";
                    c1968dM5567g.m5720a();
                }
            } catch (Throwable th) {
                ALog.m5727e(mo5641d(), "onDataReceive ", th, new Object[0]);
                UTMini.getInstance().commitEvent(66001, "SERVICE_DATA_RECEIVE", UtilityImpl.m5740a(th));
            }
            ALog.m5726d(mo5641d(), "try handle msg", new Object[0]);
            m5644g();
        } else {
            ALog.m5728e(mo5641d(), "drop frame", "len", Integer.valueOf(bArr.length));
        }
        ALog.m5726d(mo5641d(), "spdyCustomControlFrameRecvCallback", new Object[0]);
    }

    @Override // org.android.spdy.Spdycb
    public void spdyDataChunkRecvCB(SpdySession spdySession, boolean z, long j, SpdyByteArray spdyByteArray, Object obj) {
        ALog.m5726d(mo5641d(), "spdyDataChunkRecvCB", new Object[0]);
    }

    @Override // org.android.spdy.Spdycb
    public void spdyDataRecvCallback(SpdySession spdySession, boolean z, long j, int i, Object obj) {
        ALog.m5726d(mo5641d(), "spdyDataRecvCallback", new Object[0]);
    }

    @Override // org.android.spdy.Spdycb
    public void spdyDataSendCallback(SpdySession spdySession, boolean z, long j, int i, Object obj) {
        ALog.m5726d(mo5641d(), "spdyDataSendCallback", new Object[0]);
    }

    @Override // org.android.spdy.Spdycb
    public void spdyOnStreamResponse(SpdySession spdySession, long j, Map<String, List<String>> map, Object obj) throws NumberFormatException {
        this.f6285B = System.currentTimeMillis();
        this.f6286C = System.nanoTime();
        try {
            Map<String, String> mapM5742a = UtilityImpl.m5742a(map);
            ALog.m5726d("SilenceConn_", "spdyOnStreamResponse", "header", map);
            int i = Integer.parseInt(mapM5742a.get(HttpConstant.STATUS));
            if (i == 200) {
                ALog.m5729i(mo5641d(), "spdyOnStreamResponse", "httpStatusCode", Integer.valueOf(i));
                m5695c(1);
                String str = mapM5742a.get("x-at");
                if (!TextUtils.isEmpty(str)) {
                    this.f6219k = str;
                }
                this.f6291H.auth_time = this.f6291H.connection_stop_date > 0 ? System.currentTimeMillis() - this.f6291H.connection_stop_date : 0L;
                String str2 = this.f6211c == 0 ? "service" : "inapp";
                UTMini.getInstance().commitEvent(66001, "CONNECTED 200 " + str2, (Object) this.f6308x, (Object) this.f6294K, (Object) 221, MessageService.MSG_DB_READY_REPORT);
                AppMonitorAdapter.commitAlarmSuccess("accs", BaseMonitor.ALARM_POINT_AUTH, "");
            } else {
                ALog.m5728e(mo5641d(), "spdyOnStreamResponse", "httpStatusCode", Integer.valueOf(i));
                m5685a(AccsErrorCode.NETWORKSDK_SPDY_RES_ERROR.copy().detail("channel code " + i).build());
            }
        } catch (Exception e) {
            ALog.m5728e(mo5641d(), e.toString(), new Object[0]);
            m5707q();
            this.f6291H.setCloseReason("exception");
        }
        ALog.m5726d(mo5641d(), "spdyOnStreamResponse", new Object[0]);
    }

    @Override // org.android.spdy.SessionCb
    public void spdyPingRecvCallback(SpdySession spdySession, long j, Object obj) {
        ALog.m5726d(mo5641d(), CompilerOutline.m1755M("spdyPingRecvCallback uniId:", j), new Object[0]);
        if (j < 0) {
            return;
        }
        this.f6213e.m5561b();
        AccsHeartbeatManagerBase.m5654a(this.f6212d).m5661e();
        AccsHeartbeatManagerBase.m5654a(this.f6212d).m5657a();
        this.f6291H.onPingCBReceive();
        if (this.f6291H.ping_rec_times % 2 == 0) {
            UtilityImpl.m5744a(this.f6212d, Constants.SP_KEY_SERVICE_END, System.currentTimeMillis());
        }
    }

    @Override // org.android.spdy.Spdycb
    public void spdyRequestRecvCallback(SpdySession spdySession, long j, Object obj) {
        ALog.m5726d(mo5641d(), "spdyRequestRecvCallback", new Object[0]);
    }

    @Override // org.android.spdy.SessionCb
    public void spdySessionCloseCallback(SpdySession spdySession, Object obj, SuperviseConnectInfo superviseConnectInfo, int i) {
        ALog.m5728e(mo5641d(), "spdySessionCloseCallback", Constants.KEY_ERROR_CODE, Integer.valueOf(i));
        if (spdySession != null) {
            try {
                spdySession.cleanUp();
            } catch (Exception e) {
                ALog.m5728e(mo5641d(), "session cleanUp has exception: " + e, new Object[0]);
            }
        }
        m5695c(3);
        this.f6291H.onCloseConnect();
        if (this.f6291H.getConCloseDate() > 0 && this.f6291H.getConStopDate() > 0) {
            this.f6291H.getConCloseDate();
            this.f6291H.getConStopDate();
        }
        this.f6291H.setCloseReason(this.f6291H.getCloseReason() + "tnet error:" + i);
        if (superviseConnectInfo != null) {
            this.f6291H.live_time = superviseConnectInfo.keepalive_period_second;
        }
        AppMonitor.getInstance().commitStat(this.f6291H);
        for (Message message : this.f6213e.m5565e()) {
            if (message.m5516e() != null) {
                message.m5516e().setFailReason("session close");
                AppMonitor.getInstance().commitStat(message.m5516e());
            }
        }
        String str = this.f6211c == 0 ? "service" : "inapp";
        String strMo5641d = mo5641d();
        StringBuilder sbM1765j = CompilerOutline.m1765j("spdySessionCloseCallback, conKeepTime:");
        sbM1765j.append(this.f6291H.live_time);
        sbM1765j.append(" connectType:");
        sbM1765j.append(str);
        ALog.m5726d(strMo5641d, sbM1765j.toString(), new Object[0]);
        UTMini.getInstance().commitEvent(66001, CompilerOutline.m1760e("DISCONNECT CLOSE ", str), (Object) Integer.valueOf(i), (Object) Long.valueOf(this.f6291H.live_time), (Object) 221, this.f6308x, this.f6294K);
    }

    @Override // org.android.spdy.SessionCb
    public void spdySessionConnectCB(SpdySession spdySession, SuperviseConnectInfo superviseConnectInfo) {
        this.f6289F = superviseConnectInfo.connectTime;
        int i = superviseConnectInfo.handshakeTime;
        ALog.m5729i(mo5641d(), "spdySessionConnectCB", "sessionConnectInterval", Integer.valueOf(this.f6289F), "sslTime", Integer.valueOf(i), "reuse", Integer.valueOf(superviseConnectInfo.sessionTicketReused));
        m5704u();
        this.f6291H.setRet(true);
        this.f6291H.onConnectStop();
        SessionMonitor sessionMonitor = this.f6291H;
        sessionMonitor.tcp_time = this.f6289F;
        sessionMonitor.ssl_time = i;
        String str = this.f6211c == 0 ? "service" : "inapp";
        UTMini uTMini = UTMini.getInstance();
        StringBuilder sbM1769n = CompilerOutline.m1769n("CONNECTED ", str, " ");
        sbM1769n.append(superviseConnectInfo.sessionTicketReused);
        uTMini.commitEvent(66001, sbM1769n.toString(), (Object) String.valueOf(this.f6289F), (Object) String.valueOf(i), (Object) 221, String.valueOf(superviseConnectInfo.sessionTicketReused), this.f6308x, this.f6294K);
        AppMonitorAdapter.commitAlarmSuccess("accs", "connect", "");
    }

    @Override // org.android.spdy.SessionCb
    public void spdySessionFailedError(SpdySession spdySession, int i, Object obj) {
        if (spdySession != null) {
            try {
                spdySession.cleanUp();
            } catch (Exception e) {
                ALog.m5728e(mo5641d(), "session cleanUp has exception: " + e, new Object[0]);
            }
        }
        a aVar = this.f6305u;
        int i2 = aVar != null ? aVar.f6311a : 0;
        ALog.m5728e(mo5641d(), "spdySessionFailedError", "retryTimes", Integer.valueOf(i2), "errorId", Integer.valueOf(i));
        this.f6293J = false;
        this.f6295L = true;
        m5695c(3);
        this.f6291H.setFailReason(i);
        this.f6291H.onConnectStop();
        UTMini.getInstance().commitEvent(66001, CompilerOutline.m1760e("DISCONNECT ", this.f6211c == 0 ? "service" : "inapp"), (Object) Integer.valueOf(i), (Object) Integer.valueOf(i2), (Object) 221, this.f6308x, this.f6294K);
        AppMonitorAdapter.commitAlarmFail("accs", "connect", CompilerOutline.m1754L("retrytimes:", i2), i + "", "");
    }

    @Override // org.android.spdy.Spdycb
    public void spdyStreamCloseCallback(SpdySession spdySession, long j, int i, Object obj, SuperviseData superviseData) {
        ALog.m5726d(mo5641d(), "spdyStreamCloseCallback", new Object[0]);
        if (i != 0) {
            ALog.m5728e(mo5641d(), "spdyStreamCloseCallback", HiAnalyticsConstant.HaKey.BI_KEY_RESULT, Integer.valueOf(i));
            m5685a(AccsErrorCode.NETWORKSDK_SPDY_CLOSE_ERROR.copy().detail("channel code " + i).build());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public void m5697d(String str) {
        SessionInfo sessionInfo;
        int i = this.f6303s;
        if (i == 2 || i == 1) {
            return;
        }
        if (this.f6296M == null) {
            this.f6296M = new AccsHttpDnsProvider(m5708r());
        }
        List<IConnStrategy> listM5665a = this.f6296M.m5665a(m5708r());
        if (listM5665a == null || listM5665a.size() <= 0) {
            if (str != null) {
                this.f6299o = str;
            } else {
                this.f6299o = m5708r();
            }
            this.f6300p = System.currentTimeMillis() % 2 == 0 ? 80 : 443;
            AppMonitorAdapter.commitCount("accs", BaseMonitor.COUNT_POINT_DNS, "localdns", 0.0d);
            ALog.m5729i(mo5641d(), "connect get ip from amdc fail!!", new Object[0]);
        } else {
            for (IConnStrategy iConnStrategy : listM5665a) {
                if (iConnStrategy != null) {
                    ALog.m5729i(mo5641d(), "connect", "ip", iConnStrategy.getIp(), "port", Integer.valueOf(iConnStrategy.getPort()));
                }
            }
            if (this.f6295L) {
                this.f6296M.m5666b();
                this.f6295L = false;
            }
            IConnStrategy iConnStrategyM5663a = this.f6296M.m5663a();
            this.f6299o = iConnStrategyM5663a == null ? m5708r() : iConnStrategyM5663a.getIp();
            this.f6300p = iConnStrategyM5663a != null ? iConnStrategyM5663a.getPort() : 443;
            AppMonitorAdapter.commitCount("accs", BaseMonitor.COUNT_POINT_DNS, "httpdns", 0.0d);
            ALog.m5729i(mo5641d(), "connect from amdc succ", "ip", this.f6299o, "port", Integer.valueOf(this.f6300p), "originPos", Integer.valueOf(this.f6296M.m5668c()));
        }
        if (Utils.isIPV6Address(this.f6299o)) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("https://[");
            sbM1765j.append(this.f6299o);
            sbM1765j.append("]:");
            sbM1765j.append(this.f6300p);
            sbM1765j.append("/accs/");
            this.f6307w = sbM1765j.toString();
        } else {
            StringBuilder sbM1765j2 = CompilerOutline.m1765j("https://");
            sbM1765j2.append(this.f6299o);
            sbM1765j2.append(":");
            sbM1765j2.append(this.f6300p);
            sbM1765j2.append("/accs/");
            this.f6307w = sbM1765j2.toString();
        }
        ALog.m5729i(mo5641d(), "connect", "URL", this.f6307w);
        this.f6297N = String.valueOf(System.currentTimeMillis());
        if (this.f6291H != null) {
            AppMonitor.getInstance().commitStat(this.f6291H);
        }
        SessionMonitor sessionMonitor = new SessionMonitor();
        this.f6291H = sessionMonitor;
        sessionMonitor.setConnectType(this.f6211c == 0 ? "service" : "inapp");
        if (this.f6309y != null) {
            try {
                this.f6287D = System.currentTimeMillis();
                this.f6288E = System.nanoTime();
                this.f6301q = UtilityImpl.m5738a(this.f6212d);
                this.f6302r = UtilityImpl.m5749b(this.f6212d);
                this.f6285B = System.currentTimeMillis();
                this.f6291H.onStartConnect();
                m5695c(2);
                synchronized (this.f6284A) {
                    try {
                        if (TextUtils.isEmpty(this.f6301q) || this.f6302r < 0 || !this.f6293J) {
                            ALog.m5729i(mo5641d(), "connect normal", new Object[0]);
                            sessionInfo = new SessionInfo(this.f6299o, this.f6300p, m5708r() + "_" + this.f6210b, null, 0, this.f6297N, this, 4226);
                            this.f6294K = "";
                        } else {
                            ALog.m5729i(mo5641d(), "connect", "proxy", this.f6301q, "port", Integer.valueOf(this.f6302r));
                            sessionInfo = new SessionInfo(this.f6299o, this.f6300p, m5708r() + "_" + this.f6210b, this.f6301q, this.f6302r, this.f6297N, this, 4226);
                            this.f6294K = this.f6301q + ":" + this.f6302r;
                        }
                        sessionInfo.setPubKeySeqNum(m5703t());
                        sessionInfo.setConnectionTimeoutMs(AccsConnectionBase.ACCS_RECEIVE_TIMEOUT);
                        this.f6310z = this.f6309y.createSession(sessionInfo);
                        this.f6291H.connection_stop_date = 0L;
                        this.f6284A.wait();
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    } catch (Exception e2) {
                        e2.printStackTrace();
                        this.f6293J = false;
                    }
                }
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        }
    }

    @Override // com.taobao.accs.net.AbstractC1940b
    /* renamed from: c */
    public AccsMonitorStatistics mo5639c() {
        if (this.f6292I == null) {
            this.f6292I = new AccsMonitorStatistics();
        }
        AccsMonitorStatistics c1967c = this.f6292I;
        c1967c.f6335b = this.f6211c;
        c1967c.f6337d = this.f6304t.size();
        this.f6292I.f6342i = UtilityImpl.m5766g(this.f6212d);
        AccsMonitorStatistics c1967c2 = this.f6292I;
        c1967c2.f6339f = this.f6294K;
        c1967c2.f6334a = this.f6303s;
        SessionMonitor sessionMonitor = this.f6291H;
        c1967c2.f6336c = sessionMonitor != null && sessionMonitor.getRet();
        this.f6292I.f6343j = m5709s();
        AccsMonitorStatistics c1967c3 = this.f6292I;
        AccsMessageDataManager c1921d = this.f6213e;
        c1967c3.f6338e = c1921d != null ? c1921d.m5564d() : 0;
        AccsMonitorStatistics c1967c4 = this.f6292I;
        c1967c4.f6340g = this.f6308x;
        return c1967c4;
    }

    @Override // com.taobao.accs.net.AbstractC1940b
    /* renamed from: e */
    public void mo5642e() {
        super.mo5642e();
        this.f6306v = false;
        ThreadPoolExecutorFactory.getScheduledExecutor().execute(new CloseSpdyConnectionTask(this));
        ALog.m5728e(mo5641d(), "shut down", new Object[0]);
    }

    @Override // com.taobao.accs.net.AbstractC1940b
    /* renamed from: b */
    public void mo5635b() {
        this.f6293J = false;
        this.f6214f = 0;
    }

    @Override // com.taobao.accs.net.AbstractC1940b
    /* renamed from: a */
    public void mo5625a() {
        this.f6306v = true;
        ALog.m5726d(mo5641d(), "start", new Object[0]);
        mo5626a(this.f6212d);
        if (this.f6305u == null) {
            ALog.m5729i(mo5641d(), "start thread", new Object[0]);
            StringBuilder sbM1765j = CompilerOutline.m1765j("NetworkThread_");
            sbM1765j.append(this.f6221m);
            a aVar = new a(sbM1765j.toString());
            this.f6305u = aVar;
            aVar.setPriority(2);
            this.f6305u.start();
        }
        mo5631a(false, false);
    }

    @Override // com.taobao.accs.net.AbstractC1940b
    /* renamed from: b */
    public String mo5634b(String str) {
        StringBuilder sbM1765j = CompilerOutline.m1765j("https://");
        sbM1765j.append(this.f6217i.getChannelHost());
        return sbM1765j.toString();
    }

    /* renamed from: c */
    private synchronized void m5695c(int i) {
        ALog.m5729i(mo5641d(), "notifyStatus start", "status", m5624a(i));
        if (i == this.f6303s) {
            ALog.m5726d(mo5641d(), "ignore notifyStatus", new Object[0]);
            return;
        }
        this.f6303s = i;
        if (i == 1) {
            AccsHeartbeatManagerBase.m5654a(this.f6212d).m5662f();
            m5705v();
            if (this.f6298n != null) {
                this.f6298n.cancel(true);
            }
            synchronized (this.f6284A) {
                try {
                    this.f6284A.notifyAll();
                } catch (Exception unused) {
                }
            }
            synchronized (this.f6304t) {
                try {
                    this.f6304t.notifyAll();
                } catch (Exception unused2) {
                }
            }
            ALog.m5729i(mo5641d(), "notifyStatus end", "status", m5624a(i));
        }
        if (i == 2) {
            if (this.f6298n != null) {
                this.f6298n.cancel(true);
            }
            ThreadPoolExecutorFactory.getScheduledExecutor().schedule(new SpdyConnectTimeoutTask(this, this.f6297N), 120000L, TimeUnit.MILLISECONDS);
        } else if (i == 3) {
            ALog.m5732w(mo5641d(), "notifyStatus", "status", m5624a(i));
            m5705v();
            AccsHeartbeatManagerBase.m5654a(this.f6212d).m5660d();
            synchronized (this.f6284A) {
                try {
                    this.f6284A.notifyAll();
                } catch (Exception unused3) {
                }
            }
            this.f6213e.m5552a(AccsErrorCode.SPDY_CON_DISCONNECTED.copy().detail(AccsLogConfiguration.m5789a().m5793b()).build());
            mo5631a(false, true);
        }
        ALog.m5729i(mo5641d(), "notifyStatus end", "status", m5624a(i));
    }

    @Override // com.taobao.accs.net.AbstractC1940b
    /* renamed from: a */
    public void mo5628a(Message message, boolean z) {
        if (this.f6306v && message != null) {
            try {
                if (ThreadPoolExecutorFactory.getScheduledExecutor().getQueue().size() <= 1000) {
                    ScheduledFuture<?> scheduledFutureSchedule = ThreadPoolExecutorFactory.getScheduledExecutor().schedule(new EnqueueSpdyMessageTask(this, message, z), message.f6094Q, TimeUnit.MILLISECONDS);
                    if (message.m5509a() == 1 && message.f6092O != null) {
                        if (message.m5514c()) {
                            mo5633a(message.f6092O);
                        }
                        this.f6213e.f6141a.put(message.f6092O, scheduledFutureSchedule);
                    }
                    if (message.m5516e() != null) {
                        message.m5516e().setDeviceId(UtilityImpl.getDeviceId(this.f6212d));
                        message.m5516e().setConnType(this.f6211c);
                        message.m5516e().onEnterQueueData();
                        return;
                    }
                    return;
                }
                throw new RejectedExecutionException("accs");
            } catch (RejectedExecutionException unused) {
                int size = ThreadPoolExecutorFactory.getScheduledExecutor().getQueue().size();
                this.f6213e.m5554a(message, AccsErrorCode.MESSAGE_QUEUE_FULL.copy().detail("channel " + size).build());
                ALog.m5728e(mo5641d(), CompilerOutline.m1754L("send queue full count:", size), new Object[0]);
                return;
            } catch (Throwable th) {
                ALog.m5727e(mo5641d(), "send error", th, new Object[0]);
                this.f6213e.m5554a(message, AccsErrorCode.SEND_LOCAL_EXCEPTION.copy().detail(AccsErrorCode.getExceptionInfo(th)).build());
                return;
            }
        }
        String strMo5641d = mo5641d();
        StringBuilder sbM1765j = CompilerOutline.m1765j("not running or msg null! ");
        sbM1765j.append(this.f6306v);
        ALog.m5728e(strMo5641d, sbM1765j.toString(), new Object[0]);
    }

    @Override // com.taobao.accs.net.AbstractC1940b
    /* renamed from: a */
    public void mo5631a(boolean z, boolean z2) {
        ALog.m5726d(mo5641d(), "try ping, force:" + z, new Object[0]);
        if (this.f6211c == 1) {
            ALog.m5726d(mo5641d(), "INAPP, skip", new Object[0]);
        } else {
            m5638b(Message.m5496a(z, (int) (z2 ? Math.random() * 10.0d * 1000.0d : 0.0d)), z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m5686a(Message message) {
        if (message.f6120t == null || this.f6304t.size() == 0) {
            return;
        }
        for (int size = this.f6304t.size() - 1; size >= 0; size--) {
            Message message2 = this.f6304t.get(size);
            if (message2 != null && message2.f6120t != null && message2.m5517f().equals(message.m5517f())) {
                switch (message.f6120t.intValue()) {
                    case 1:
                    case 2:
                        if (message2.f6120t.intValue() == 1 || message2.f6120t.intValue() == 2) {
                            this.f6304t.remove(size);
                            break;
                        }
                        break;
                    case 3:
                    case 4:
                        if (message2.f6120t.intValue() == 3 || message2.f6120t.intValue() == 4) {
                            this.f6304t.remove(size);
                            break;
                        }
                        break;
                    case 5:
                    case 6:
                        if (message2.f6120t.intValue() == 5 || message2.f6120t.intValue() == 6) {
                            this.f6304t.remove(size);
                            break;
                        }
                        break;
                }
                String strMo5641d = mo5641d();
                StringBuilder sbM1765j = CompilerOutline.m1765j("clearRepeatControlCommand message:");
                sbM1765j.append(message2.f6120t);
                sbM1765j.append(GrsManager.SEPARATOR);
                sbM1765j.append(message2.m5517f());
                ALog.m5726d(strMo5641d, sbM1765j.toString(), new Object[0]);
            }
        }
        AccsMessageDataManager c1921d = this.f6213e;
        if (c1921d != null) {
            c1921d.m5562b(message);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0038  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean m5689a(java.lang.String r12, java.lang.String r13, java.lang.String r14) {
        /*
            r11 = this;
            android.content.Context r0 = r11.f6212d
            int r0 = com.taobao.accs.utl.Utils.getMode(r0)
            r1 = 2
            r2 = 1
            if (r0 != r1) goto Lb
            return r2
        Lb:
            boolean r0 = android.text.TextUtils.isEmpty(r12)
            r3 = 0
            if (r0 != 0) goto L1e
            boolean r0 = android.text.TextUtils.isEmpty(r13)
            if (r0 != 0) goto L1e
            boolean r0 = android.text.TextUtils.isEmpty(r14)
            if (r0 == 0) goto L9b
        L1e:
            r0 = 3
            r11.m5695c(r0)
            boolean r12 = android.text.TextUtils.isEmpty(r12)
            if (r12 == 0) goto L29
            goto L38
        L29:
            boolean r12 = android.text.TextUtils.isEmpty(r13)
            if (r12 == 0) goto L31
            r0 = r1
            goto L39
        L31:
            boolean r12 = android.text.TextUtils.isEmpty(r14)
            if (r12 == 0) goto L38
            goto L39
        L38:
            r0 = r2
        L39:
            com.taobao.accs.ut.monitor.SessionMonitor r12 = r11.f6291H
            r12.setFailReason(r0)
            com.taobao.accs.ut.monitor.SessionMonitor r12 = r11.f6291H
            r12.onConnectStop()
            int r12 = r11.f6211c
            if (r12 != 0) goto L4a
            java.lang.String r12 = "service"
            goto L4c
        L4a:
            java.lang.String r12 = "inapp"
        L4c:
            com.taobao.accs.net.w$a r13 = r11.f6305u
            if (r13 == 0) goto L53
            int r13 = r13.f6311a
            goto L54
        L53:
            r13 = r3
        L54:
            com.taobao.accs.utl.UTMini r4 = com.taobao.accs.utl.UTMini.getInstance()
            r5 = 66001(0x101d1, float:9.2487E-41)
            java.lang.String r14 = "DISCONNECT "
            java.lang.String r6 = com.huawei.hem.C0948f6.m1760e(r14, r12)
            java.lang.Integer r7 = java.lang.Integer.valueOf(r0)
            java.lang.Integer r8 = java.lang.Integer.valueOf(r13)
            r12 = 221(0xdd, float:3.1E-43)
            java.lang.Integer r9 = java.lang.Integer.valueOf(r12)
            java.lang.String[] r10 = new java.lang.String[r1]
            java.lang.String r12 = r11.f6308x
            r10[r3] = r12
            java.lang.String r12 = r11.f6294K
            r10[r2] = r12
            r4.commitEvent(r5, r6, r7, r8, r9, r10)
            java.lang.String r12 = "retrytimes:"
            java.lang.String r12 = com.huawei.hem.C0948f6.m1754L(r12, r13)
            java.lang.StringBuilder r13 = new java.lang.StringBuilder
            r13.<init>()
            r13.append(r0)
            java.lang.String r14 = ""
            r13.append(r14)
            java.lang.String r13 = r13.toString()
            java.lang.String r0 = "accs"
            java.lang.String r1 = "connect"
            com.taobao.accs.utl.AppMonitorAdapter.commitAlarmFail(r0, r1, r12, r13, r14)
            r2 = r3
        L9b:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.taobao.accs.net.C1961w.m5689a(java.lang.String, java.lang.String, java.lang.String):boolean");
    }

    @Override // com.taobao.accs.net.AbstractC1940b
    /* renamed from: d */
    public String mo5641d() {
        StringBuilder sbM1765j = CompilerOutline.m1765j("SilenceConn_");
        sbM1765j.append(this.f6221m);
        return sbM1765j.toString();
    }

    /* renamed from: a */
    private void m5685a(ErrorCode errorCode) {
        this.f6219k = null;
        m5707q();
        a aVar = this.f6305u;
        int i = aVar != null ? aVar.f6311a : 0;
        SessionMonitor sessionMonitor = this.f6291H;
        StringBuilder sbM1765j = CompilerOutline.m1765j("code not 200 is");
        sbM1765j.append(errorCode.getCodeInt());
        sessionMonitor.setCloseReason(sbM1765j.toString());
        this.f6295L = true;
        UTMini.getInstance().commitEvent(66001, CompilerOutline.m1760e("CONNECTED NO 200 ", this.f6211c == 0 ? "service" : "inapp"), (Object) errorCode, (Object) Integer.valueOf(i), (Object) 221, this.f6308x, this.f6294K);
        AppMonitorAdapter.commitAlarmFail("accs", BaseMonitor.ALARM_POINT_AUTH, "", errorCode + "", "");
    }

    @Override // com.taobao.accs.net.AbstractC1940b
    /* renamed from: a */
    public void mo5630a(String str, boolean z, String str2) {
        try {
            m5695c(4);
            m5707q();
            this.f6291H.setCloseReason(str2);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.taobao.accs.net.AbstractC1940b
    /* renamed from: a */
    public boolean mo5633a(String str) {
        boolean z;
        synchronized (this.f6304t) {
            z = true;
            int size = this.f6304t.size() - 1;
            while (true) {
                if (size >= 0) {
                    Message message = this.f6304t.get(size);
                    if (message != null && message.m5509a() == 1 && message.f6092O != null && message.f6092O.equals(str)) {
                        this.f6304t.remove(size);
                        break;
                    }
                    size--;
                } else {
                    z = false;
                    break;
                }
            }
        }
        return z;
    }

    @Override // com.taobao.accs.net.AbstractC1940b
    /* renamed from: a */
    public void mo5626a(Context context) {
        if (this.f6215g) {
            return;
        }
        super.mo5626a(context);
        GlobalAppRuntimeInfo.setBackground(false);
        this.f6215g = true;
        ALog.m5729i(mo5641d(), "init awcn success!", new Object[0]);
    }
}
