package com.taobao.accs.net;

import android.content.Context;
import android.content.Intent;
import android.support.v4.app.NotificationCompat;
import android.text.TextUtils;
import anet.channel.DataFrameCb;
import anet.channel.IAuth;
import anet.channel.ISessionListener;
import anet.channel.Session;
import anet.channel.SessionCenter;
import anet.channel.SessionInfo;
import anet.channel.request.Request;
import anet.channel.session.TnetSpdySession;
import com.alibaba.sdk.android.error.ErrorCode;
import com.alibaba.sdk.android.logger.ILog;
import com.huawei.hem.CompilerOutline;
import com.loc.AMapLog;
import com.taobao.accs.ACCSClient;
import com.taobao.accs.AccsClientConfig;
import com.taobao.accs.AccsErrorCode;
import com.taobao.accs.AccsException;
import com.taobao.accs.AccsState;
import com.taobao.accs.ConnectionListener;
import com.taobao.accs.common.Constants;
import com.taobao.accs.common.ThreadPoolExecutorFactory;
import com.taobao.accs.data.Message;
import com.taobao.accs.p072ut.monitor.NetPerformanceMonitor;
import com.taobao.accs.p072ut.p073a.AccsMonitorStatistics;
import com.taobao.accs.utl.AccsLogger;
import com.taobao.accs.utl.BaseMonitor;
import com.taobao.accs.utl.OrangeAdapter;
import com.taobao.accs.utl.UtilityImpl;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: Taobao */
/* renamed from: com.taobao.accs.net.j */
/* loaded from: classes.dex */
public class AccsInAppConnection extends AccsConnectionBase implements DataFrameCb, ISessionListener {

    /* renamed from: n */
    public boolean f6244n;

    /* renamed from: o */
    public long f6245o;

    /* renamed from: p */
    public ScheduledFuture f6246p;

    /* renamed from: q */
    public ScheduledFuture f6247q;

    /* renamed from: r */
    public boolean f6248r;

    /* renamed from: s */
    public ErrorCode f6249s;

    /* renamed from: t */
    public ILog f6250t;

    /* renamed from: u */
    public Runnable f6251u;

    /* renamed from: v */
    public Runnable f6252v;

    /* renamed from: w */
    public Runnable f6253w;

    /* renamed from: x */
    public Set<String> f6254x;

    /* compiled from: Taobao */
    /* renamed from: com.taobao.accs.net.j$a */
    public static class a implements IAuth {

        /* renamed from: a */
        public String f6255a;

        /* renamed from: b */
        public int f6256b;

        /* renamed from: c */
        public String f6257c;

        /* renamed from: d */
        public AccsConnectionBase f6258d;

        /* renamed from: e */
        public ILog f6259e;

        public a(AccsConnectionBase abstractC1940b, String str) {
            this.f6257c = abstractC1940b.mo5641d();
            this.f6255a = abstractC1940b.m5640c("https://" + str + "/accs/");
            this.f6256b = abstractC1940b.f6211c;
            this.f6258d = abstractC1940b;
            this.f6259e = AccsLogger.getLogger(abstractC1940b.mo5641d());
        }

        @Override // anet.channel.IAuth
        public void auth(Session session, IAuth.AuthCallback authCallback) {
            this.f6259e.mo670i(BaseMonitor.ALARM_POINT_AUTH, "URL", this.f6255a);
            session.request(new Request.Builder().setUrl(this.f6255a).build(), new AccsSessionAuthResponse(this, authCallback));
        }
    }

    public AccsInAppConnection(Context context, int i, String str) {
        super(context, i, str);
        this.f6244n = true;
        this.f6245o = 3600000L;
        this.f6248r = false;
        this.f6249s = null;
        this.f6251u = new StartAccsSessionReconnectTask(this);
        this.f6252v = new SendInAppPingTask(this);
        this.f6253w = new StartInAppServiceTask(this);
        this.f6254x = Collections.synchronizedSet(new HashSet());
        this.f6250t = AccsLogger.getLogger(mo5641d());
        if (!OrangeAdapter.isTnetLogOff(true)) {
            String strM5758d = UtilityImpl.m5758d(this.f6212d, "inapp");
            this.f6250t.mo664d("config tnet log path:" + strM5758d);
            if (!TextUtils.isEmpty(strM5758d)) {
                Session.configTnetALog(context, strM5758d, 5242880, 5);
            }
        }
        AccsClientConfig configByTag = AccsClientConfig.getConfigByTag(str);
        if (configByTag == null || !configByTag.isChannelLoopStart()) {
            this.f6250t.mo664d("channel delay start");
            ThreadPoolExecutorFactory.getScheduledExecutor().schedule(this.f6253w, 120000L, TimeUnit.MILLISECONDS);
        } else {
            this.f6250t.mo664d("channel loop start");
            ThreadPoolExecutorFactory.getScheduledExecutor().scheduleWithFixedDelay(this.f6253w, 120000L, configByTag.getLoopInterval(), TimeUnit.MILLISECONDS);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: q */
    public void m5674q() {
        if (this.f6217i.isAccsHeartbeatEnable()) {
            ScheduledThreadPoolExecutor scheduledExecutor = ThreadPoolExecutorFactory.getScheduledExecutor();
            Runnable runnable = this.f6252v;
            long j = this.f6245o;
            this.f6246p = scheduledExecutor.scheduleAtFixedRate(runnable, j, j, TimeUnit.MILLISECONDS);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: r */
    public void m5675r() {
        m5676s();
        this.f6250t.mo669i("startReconnectTask");
        this.f6247q = ThreadPoolExecutorFactory.getScheduledExecutor().scheduleWithFixedDelay(this.f6251u, 120L, 120L, TimeUnit.SECONDS);
    }

    /* renamed from: s */
    private void m5676s() {
        ScheduledFuture scheduledFuture = this.f6247q;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
            this.f6247q = null;
        }
    }

    @Override // com.taobao.accs.net.AbstractC1940b
    /* renamed from: a */
    public void mo5631a(boolean z, boolean z2) {
    }

    @Override // com.taobao.accs.net.AbstractC1940b
    /* renamed from: c */
    public AccsMonitorStatistics mo5639c() {
        return null;
    }

    @Override // com.taobao.accs.net.AbstractC1940b
    /* renamed from: e */
    public void mo5642e() {
        this.f6250t.mo666e("shut down");
        this.f6244n = false;
    }

    @Override // com.taobao.accs.net.AbstractC1940b
    /* renamed from: l */
    public boolean mo5649l() {
        return this.f6248r;
    }

    @Override // com.taobao.accs.net.AbstractC1940b
    /* renamed from: m */
    public int mo5650m() {
        ErrorCode errorCode = this.f6249s;
        if (errorCode != null) {
            return errorCode.getCodeInt();
        }
        return 0;
    }

    @Override // com.taobao.accs.net.AbstractC1940b
    /* renamed from: n */
    public void mo5651n() {
        SessionCenter sessionCenter = SessionCenter.getInstance(this.f6217i.getAppKey());
        if (sessionCenter == null) {
            return;
        }
        String inappHost = this.f6217i.getInappHost();
        sessionCenter.unregisterSessionInfo(inappHost);
        if (this.f6254x.contains(inappHost)) {
            this.f6254x.remove(inappHost);
        }
    }

    @Override // com.taobao.accs.net.AbstractC1940b
    /* renamed from: o */
    public void mo5652o() {
        this.f6250t.mo669i("reconnect begin");
        this.f6215g = false;
        mo5626a(this.f6212d);
        ThreadPoolExecutorFactory.getSendScheduledExecutor().execute(new ReconnectInAppSessionTask(this));
    }

    @Override // anet.channel.ISessionListener
    public void onConnectionChanged(Intent intent) {
        boolean booleanExtra = intent.getBooleanExtra(Constants.KEY_CONNECT_AVAILABLE, false);
        String stringExtra = intent.getStringExtra(Constants.KEY_HOST);
        ErrorCode errorCode = Constants.getErrorCode(intent);
        if (TextUtils.isEmpty(stringExtra)) {
            return;
        }
        if (booleanExtra) {
            this.f6250t.mo670i("InAppConnection Available. last status", Boolean.valueOf(this.f6248r));
            m5676s();
            if (!this.f6248r) {
                m5637b(this.f6212d);
            }
        } else {
            if (errorCode.getCodeInt() == AccsErrorCode.SUCCESS.getCodeInt()) {
                errorCode = UtilityImpl.m5766g(this.f6212d) ? AccsErrorCode.INAPP_CON_DISCONNECTED.copy().detail(AccsErrorCode.getAllDetails("lost connect")).build() : AccsErrorCode.NO_NETWORK.copy().detail(AccsErrorCode.getAllDetails("lost connect")).build();
            }
            this.f6250t.mo668e("InAppConnection Not Available ", BaseMonitor.COUNT_ERROR, errorCode);
            m5675r();
        }
        this.f6248r = booleanExtra;
        this.f6249s = errorCode;
        if (errorCode == null || errorCode.getCodeInt() == AccsErrorCode.SUCCESS.getCodeInt()) {
            AccsState.getInstance().m5451b(AccsState.CONNECTION_CHANGE, AMapLog.f5947g + stringExtra + "a" + booleanExtra);
        } else {
            AccsState.getInstance().m5451b(AccsState.CONNECTION_CHANGE, AMapLog.f5947g + stringExtra + "a" + booleanExtra + "c" + errorCode.getCodeInt());
            AccsState.getInstance().m5451b(AccsState.RECENT_ERRORS, Integer.valueOf(errorCode.getCodeInt()));
        }
        m5670a(booleanExtra, errorCode);
    }

    @Override // anet.channel.DataFrameCb
    public void onDataReceive(TnetSpdySession tnetSpdySession, byte[] bArr, int i, int i2) {
        ThreadPoolExecutorFactory.getScheduledExecutor().execute(new ProcessInAppFrameTask(this, i2, i, bArr, tnetSpdySession));
    }

    @Override // anet.channel.DataFrameCb
    public void onException(int i, int i2, boolean z, String str) {
        this.f6250t.mo668e("onException", Constants.KEY_DATA_ID, Integer.valueOf(i), "errorId", Integer.valueOf(i2), "needRetry", Boolean.valueOf(z), "detail", str);
        ThreadPoolExecutorFactory.getScheduledExecutor().execute(new ReportInAppConnectionExceptionTask(this, i2, str, i, z));
    }

    @Override // com.taobao.accs.net.AbstractC1940b
    /* renamed from: a */
    public synchronized void mo5625a() {
        this.f6250t.mo664d("start");
        this.f6244n = true;
        mo5626a(this.f6212d);
    }

    @Override // com.taobao.accs.net.AbstractC1940b
    /* renamed from: b */
    public void mo5635b() {
        this.f6214f = 0;
    }

    @Override // com.taobao.accs.net.AbstractC1940b
    /* renamed from: d */
    public String mo5641d() {
        StringBuilder sbM1765j = CompilerOutline.m1765j("InAppConn_");
        sbM1765j.append(this.f6221m);
        return sbM1765j.toString();
    }

    @Override // com.taobao.accs.net.AbstractC1940b
    /* renamed from: a */
    public void mo5628a(Message message, boolean z) {
        if (this.f6244n && message != null) {
            try {
                if (ThreadPoolExecutorFactory.getSendScheduledExecutor().getQueue().size() <= 1000) {
                    long j = message.f6094Q;
                    if (j <= 0) {
                        j = 1;
                    }
                    ScheduledFuture<?> scheduledFutureSchedule = ThreadPoolExecutorFactory.getSendScheduledExecutor().schedule(new SendInAppMessageTask(this, message), j, TimeUnit.MILLISECONDS);
                    if (message.m5509a() == 1 && message.f6092O != null) {
                        if (message.m5514c() && mo5633a(message.f6092O)) {
                            this.f6213e.m5562b(message);
                        }
                        this.f6213e.f6141a.put(message.f6092O, scheduledFutureSchedule);
                    }
                    NetPerformanceMonitor netPerformanceMonitorM5516e = message.m5516e();
                    if (netPerformanceMonitorM5516e != null) {
                        netPerformanceMonitorM5516e.setDeviceId(UtilityImpl.getDeviceId(this.f6212d));
                        netPerformanceMonitorM5516e.setConnType(this.f6211c);
                        netPerformanceMonitorM5516e.onEnterQueueData();
                        return;
                    }
                    return;
                }
                throw new RejectedExecutionException("accs");
            } catch (RejectedExecutionException unused) {
                int size = ThreadPoolExecutorFactory.getSendScheduledExecutor().getQueue().size();
                ErrorCode errorCodeBuild = AccsErrorCode.MESSAGE_QUEUE_FULL.copy().detail("inapp " + size).build();
                this.f6213e.m5554a(message, errorCodeBuild);
                this.f6250t.mo668e("send queue full", NotificationCompat.CATEGORY_ERROR, errorCodeBuild);
                return;
            } catch (Throwable th) {
                this.f6250t.mo667e("send error", th);
                this.f6213e.m5554a(message, AccsErrorCode.SEND_LOCAL_EXCEPTION.copy().detail(AccsErrorCode.getExceptionInfo(th)).build());
                return;
            }
        }
        ILog iLog = this.f6250t;
        StringBuilder sbM1765j = CompilerOutline.m1765j("not running or msg null! ");
        sbM1765j.append(this.f6244n);
        iLog.mo671w(sbM1765j.toString());
    }

    @Override // com.taobao.accs.net.AbstractC1940b
    /* renamed from: a */
    public void mo5629a(String str, boolean z, long j) {
        ThreadPoolExecutorFactory.getScheduledExecutor().schedule(new InAppDataTimeoutTask(this, str, j, z), j, TimeUnit.MILLISECONDS);
    }

    @Override // com.taobao.accs.net.AbstractC1940b
    /* renamed from: a */
    public void mo5630a(String str, boolean z, String str2) {
        Session session;
        try {
            Message messageM5560b = this.f6213e.m5560b(str);
            if (messageM5560b != null && messageM5560b.f6106f != null && (session = SessionCenter.getInstance(this.f6217i.getAppKey()).get(messageM5560b.f6106f.toString(), 0L)) != null) {
                if (z) {
                    session.close(true);
                } else {
                    session.ping(true);
                }
            }
        } catch (Exception e) {
            this.f6250t.mo667e("onTimeOut", e);
        }
    }

    @Override // com.taobao.accs.net.AbstractC1940b
    /* renamed from: a */
    public boolean mo5633a(String str) {
        if (str == null) {
            return false;
        }
        ScheduledFuture<?> scheduledFuture = this.f6213e.f6141a.get(str);
        boolean zCancel = scheduledFuture != null ? scheduledFuture.cancel(false) : false;
        if (zCancel) {
            this.f6250t.mo670i("cancel", "customDataId", str);
        }
        return zCancel;
    }

    /* renamed from: a */
    public void m5679a(JSONObject jSONObject) throws JSONException {
        if (jSONObject == null) {
            this.f6250t.mo666e("onReceiveAccsHeartbeatResp response data is null");
            return;
        }
        this.f6250t.mo670i("onReceiveAccsHeartbeatResp", Constants.KEY_DATA, jSONObject);
        try {
            int i = jSONObject.getInt("timeInterval");
            if (i != -1) {
                long j = i * 1000;
                if (this.f6245o != j) {
                    if (i == 0) {
                        j = 3600000;
                    }
                    this.f6245o = j;
                    this.f6246p = ThreadPoolExecutorFactory.getScheduledExecutor().scheduleAtFixedRate(this.f6252v, this.f6245o, this.f6245o, TimeUnit.MILLISECONDS);
                }
            } else if (this.f6246p != null) {
                this.f6246p.cancel(true);
            }
        } catch (JSONException e) {
            this.f6250t.mo667e("onReceiveAccsHeartbeatResp", e);
        }
    }

    @Override // com.taobao.accs.net.AbstractC1940b
    /* renamed from: a */
    public void mo5626a(Context context) {
        try {
            if (this.f6215g) {
                return;
            }
            super.mo5626a(context);
            String inappHost = this.f6217i.getInappHost();
            boolean z = false;
            if (mo5645h() && this.f6217i.isKeepalive()) {
                z = true;
            } else {
                this.f6250t.mo664d("initAwcn close keepalive");
            }
            m5677a(SessionCenter.getInstance(this.f6217i.getAppKey()), inappHost, z);
            this.f6215g = true;
            this.f6250t.mo669i("initAwcn success!");
        } catch (Throwable th) {
            this.f6250t.mo667e("initAwcn", th);
        }
    }

    /* renamed from: a */
    public void m5677a(SessionCenter sessionCenter, String str, boolean z) {
        if (this.f6254x.contains(str)) {
            return;
        }
        SessionInfo sessionInfoCreate = SessionInfo.create(str, z, true, new a(this, str), null, this);
        sessionCenter.registerAccsSessionListener(this);
        sessionCenter.registerPublicKey(str, this.f6217i.getInappPubKey());
        sessionCenter.registerSessionInfo(sessionInfoCreate);
        this.f6254x.add(str);
        this.f6250t.mo670i("registerSessionInfo", Constants.KEY_HOST, str);
    }

    /* renamed from: a */
    public void m5678a(AccsClientConfig accsClientConfig) {
        if (accsClientConfig == null) {
            this.f6250t.mo669i("updateConfig null");
            return;
        }
        if (accsClientConfig.equals(this.f6217i)) {
            this.f6250t.mo669i("updateConfig not any changed");
            return;
        }
        try {
            boolean z = false;
            this.f6250t.mo670i("updateConfig", "old", this.f6217i, "new", accsClientConfig);
            String inappHost = this.f6217i.getInappHost();
            String inappHost2 = accsClientConfig.getInappHost();
            SessionCenter sessionCenter = SessionCenter.getInstance(this.f6217i.getAppKey());
            if (sessionCenter == null) {
                this.f6250t.mo664d("old session not exist, no need update");
                return;
            }
            sessionCenter.unregisterSessionInfo(inappHost);
            if (this.f6254x.contains(inappHost)) {
                this.f6254x.remove(inappHost);
            }
            String appKey = this.f6217i.getAppKey();
            this.f6217i = accsClientConfig;
            this.f6210b = accsClientConfig.getAppKey();
            this.f6221m = this.f6217i.getTag();
            if (!appKey.equals(this.f6210b)) {
                sessionCenter = SessionCenter.getInstance(this.f6210b);
            }
            if (mo5645h() && this.f6217i.isKeepalive()) {
                z = true;
            } else {
                this.f6250t.mo669i("updateConfig close keepalive");
            }
            m5677a(sessionCenter, inappHost2, z);
            this.f6250t.mo669i("updateConfig done");
        } catch (Throwable th) {
            this.f6250t.mo667e("updateConfig", th);
        }
    }

    /* renamed from: a */
    private void m5670a(boolean z, ErrorCode errorCode) {
        try {
            for (ConnectionListener connectionListener : ACCSClient.getAccsClient(this.f6221m).getConnectionListeners()) {
                if (z) {
                    connectionListener.onConnect();
                } else {
                    connectionListener.onDisconnect(errorCode.getCodeInt(), errorCode.getMsg());
                }
            }
        } catch (AccsException e) {
            e.printStackTrace();
        }
    }
}
