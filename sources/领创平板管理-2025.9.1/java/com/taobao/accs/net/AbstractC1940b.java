package com.taobao.accs.net;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import anet.channel.AwcnConfig;
import anet.channel.Config;
import anet.channel.SessionCenter;
import anet.channel.entity.ConnType;
import anet.channel.entity.ENV;
import anet.channel.strategy.ConnProtocol;
import anet.channel.strategy.StrategyTemplate;
import com.alibaba.sdk.android.error.ErrorCode;
import com.huawei.hem.CompilerOutline;
import com.taobao.accs.ACCSManager;
import com.taobao.accs.AccsClientConfig;
import com.taobao.accs.AccsErrorCode;
import com.taobao.accs.AccsException;
import com.taobao.accs.client.C1912c;
import com.taobao.accs.common.Constants;
import com.taobao.accs.common.ThreadPoolExecutorFactory;
import com.taobao.accs.data.C1921d;
import com.taobao.accs.data.Message;
import com.taobao.accs.p072ut.p073a.C1967c;
import com.taobao.accs.utl.ALog;
import com.taobao.accs.utl.AppMonitorAdapter;
import com.taobao.accs.utl.BaseMonitor;
import com.taobao.accs.utl.UtilityImpl;
import java.net.URLEncoder;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* compiled from: Taobao */
/* renamed from: com.taobao.accs.net.b */
/* loaded from: classes.dex */
public abstract class AbstractC1940b {
    public static final int ACCS_RECEIVE_TIMEOUT = 40000;
    public static final int INAPP = 1;
    public static final int SERVICE = 0;

    /* renamed from: a */
    public String f6209a;

    /* renamed from: b */
    public String f6210b;

    /* renamed from: c */
    public int f6211c;

    /* renamed from: d */
    public Context f6212d;

    /* renamed from: e */
    public C1921d f6213e;

    /* renamed from: h */
    public C1912c f6216h;

    /* renamed from: i */
    public AccsClientConfig f6217i;

    /* renamed from: j */
    public String f6218j;

    /* renamed from: m */
    public String f6221m;

    /* renamed from: o */
    public Runnable f6223o;

    /* renamed from: p */
    public ScheduledFuture<?> f6224p;

    /* renamed from: f */
    public int f6214f = 0;

    /* renamed from: n */
    public long f6222n = 0;

    /* renamed from: g */
    public volatile boolean f6215g = false;

    /* renamed from: k */
    public String f6219k = null;

    /* renamed from: l */
    public LinkedHashMap<Integer, Message> f6220l = new LinkedHashMap<Integer, Message>() { // from class: com.taobao.accs.net.BaseConnection$1
        @Override // java.util.LinkedHashMap
        public boolean removeEldestEntry(Map.Entry<Integer, Message> entry) {
            return size() > 10;
        }
    };

    public AbstractC1940b(Context context, int i, String str) {
        this.f6210b = "";
        this.f6211c = i;
        this.f6212d = context.getApplicationContext();
        AccsClientConfig configByTag = AccsClientConfig.getConfigByTag(str);
        if (configByTag == null) {
            ALog.m5728e(mo5641d(), "BaseConnection config null!!", new Object[0]);
            try {
                configByTag = new AccsClientConfig.Builder().setAppKey(ACCSManager.getDefaultAppkey(context)).setTag(str).build();
            } catch (AccsException e) {
                ALog.m5727e(mo5641d(), "BaseConnection build config", e, new Object[0]);
            }
        }
        this.f6221m = configByTag.getTag();
        this.f6210b = configByTag.getAppKey();
        this.f6217i = configByTag;
        C1921d c1921d = new C1921d(context, this);
        this.f6213e = c1921d;
        c1921d.f6142b = this.f6211c;
        ALog.m5726d(mo5641d(), "new connection", new Object[0]);
    }

    /* renamed from: a */
    public String m5624a(int i) {
        return i != 1 ? i != 2 ? (i == 3 || i != 4) ? "DISCONNECTED" : "DISCONNECTING" : "CONNECTING" : "CONNECTED";
    }

    /* renamed from: a */
    public abstract void mo5625a();

    /* renamed from: a */
    public abstract void mo5628a(Message message, boolean z);

    /* renamed from: a */
    public void mo5629a(String str, boolean z, long j) {
        ThreadPoolExecutorFactory.getScheduledExecutor().schedule(new RunnableC1941c(this, str, j, z), j, TimeUnit.MILLISECONDS);
    }

    /* renamed from: a */
    public abstract void mo5630a(String str, boolean z, String str2);

    /* renamed from: a */
    public abstract void mo5631a(boolean z, boolean z2);

    /* renamed from: a */
    public abstract boolean mo5633a(String str);

    /* renamed from: b */
    public abstract void mo5635b();

    /* renamed from: b */
    public void m5638b(Message message, boolean z) {
        if (!message.f6103c && !UtilityImpl.m5766g(this.f6212d)) {
            ALog.m5728e(mo5641d(), "sendMessage ready no network", Constants.KEY_DATA_ID, message.f6117q);
            this.f6213e.m5554a(message, AccsErrorCode.NO_NETWORK);
            return;
        }
        long jM5585a = message.m5509a() != 2 ? this.f6213e.f6144d.m5585a(message.f6085H, message.f6099V) : 0L;
        if (jM5585a == -1) {
            ALog.m5728e(mo5641d(), "sendMessage ready server limit high", Constants.KEY_DATA_ID, message.f6117q);
            this.f6213e.m5554a(message, AccsErrorCode.SERVIER_HIGH_LIMIT);
            return;
        }
        if (jM5585a == -1000) {
            ALog.m5728e(mo5641d(), "sendMessage ready server limit high for brush", Constants.KEY_DATA_ID, message.f6117q);
            this.f6213e.m5554a(message, AccsErrorCode.SERVIER_HIGH_LIMIT_BRUSH);
            return;
        }
        if (jM5585a > 0) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            long j = this.f6222n;
            if (jCurrentTimeMillis > j) {
                message.f6094Q = jM5585a;
            } else {
                message.f6094Q = (j + jM5585a) - System.currentTimeMillis();
            }
            this.f6222n = System.currentTimeMillis() + message.f6094Q;
            ALog.m5728e(mo5641d(), "sendMessage ready delayed", Constants.KEY_DATA_ID, message.f6117q, "type", Message.C1917c.m5526b(message.m5509a()), "delay", Long.valueOf(message.f6094Q));
        } else if ("accs".equals(message.f6085H)) {
            ALog.m5729i(mo5641d(), "sendMessage ready", Constants.KEY_DATA_ID, message.f6117q, "type", Message.C1917c.m5526b(message.m5509a()), "delay", Long.valueOf(message.f6094Q));
        } else if (ALog.isPrintLog(ALog.Level.D)) {
            ALog.m5726d(mo5641d(), "sendMessage ready", Constants.KEY_DATA_ID, message.f6117q, "type", Message.C1917c.m5526b(message.m5509a()), "delay", Long.valueOf(message.f6094Q));
        }
        try {
            if (TextUtils.isEmpty(this.f6218j)) {
                this.f6218j = UtilityImpl.getDeviceId(this.f6212d);
            }
            if (message.m5518g()) {
                this.f6213e.m5554a(message, AccsErrorCode.REQ_TIME_OUT.copy().msg("重试或者延期时超时，不发送").detail(AccsErrorCode.getAllDetails(null)).build());
            } else {
                mo5628a(message, z);
            }
        } catch (RejectedExecutionException unused) {
            int size = ThreadPoolExecutorFactory.getSendScheduledExecutor().getQueue().size();
            this.f6213e.m5554a(message, AccsErrorCode.MESSAGE_QUEUE_FULL.copy().detail(" " + size).build());
            ALog.m5728e(mo5641d(), "sendMessage ready queue full", "size", Integer.valueOf(size));
        }
    }

    /* renamed from: c */
    public abstract C1967c mo5639c();

    /* renamed from: c */
    public String m5640c(String str) {
        String deviceId = UtilityImpl.getDeviceId(this.f6212d);
        try {
            deviceId = URLEncoder.encode(deviceId);
        } catch (Throwable th) {
            ALog.m5727e(mo5641d(), "buildAuthUrl", th, new Object[0]);
        }
        String strM5739a = UtilityImpl.m5739a(m5646i(), this.f6217i.getAppSecret(), UtilityImpl.getDeviceId(this.f6212d));
        StringBuilder sb = new StringBuilder(256);
        sb.append(str);
        sb.append("auth?1=");
        sb.append(deviceId);
        sb.append("&2=");
        sb.append(strM5739a);
        sb.append("&3=");
        sb.append(m5646i());
        if (this.f6219k != null) {
            sb.append("&4=");
            sb.append(this.f6219k);
        }
        sb.append("&5=");
        sb.append(this.f6211c);
        sb.append("&6=");
        sb.append(UtilityImpl.m5761e(this.f6212d));
        sb.append("&7=");
        sb.append(UtilityImpl.m5750b());
        sb.append("&8=");
        sb.append(this.f6211c == 1 ? "1.1.2" : 221);
        sb.append("&9=");
        sb.append(System.currentTimeMillis());
        sb.append("&10=");
        sb.append(1);
        sb.append("&11=");
        sb.append(Build.VERSION.SDK_INT);
        sb.append("&12=");
        sb.append(this.f6212d.getPackageName());
        sb.append("&13=");
        sb.append(UtilityImpl.m5768i(this.f6212d));
        sb.append("&14=");
        sb.append(this.f6209a);
        sb.append("&15=");
        sb.append(UtilityImpl.m5751b(Build.MODEL));
        sb.append("&16=");
        sb.append(UtilityImpl.m5751b(Build.BRAND));
        sb.append("&17=");
        sb.append(221);
        sb.append("&19=");
        sb.append(!m5648k() ? 1 : 0);
        sb.append("&20=");
        sb.append(this.f6217i.getStoreId());
        return sb.toString();
    }

    /* renamed from: d */
    public abstract String mo5641d();

    /* renamed from: e */
    public void mo5642e() {
    }

    /* renamed from: f */
    public void m5643f() {
        if (this.f6223o == null) {
            this.f6223o = new RunnableC1942d(this);
        }
        m5644g();
        this.f6224p = ThreadPoolExecutorFactory.getScheduledExecutor().schedule(this.f6223o, 40000L, TimeUnit.MILLISECONDS);
    }

    /* renamed from: g */
    public void m5644g() {
        ScheduledFuture<?> scheduledFuture = this.f6224p;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
        }
    }

    /* renamed from: h */
    public boolean mo5645h() {
        return true;
    }

    /* renamed from: i */
    public String m5646i() {
        return this.f6210b;
    }

    /* renamed from: j */
    public C1912c m5647j() {
        if (this.f6216h == null) {
            ALog.m5726d(mo5641d(), "new ClientManager", Constants.KEY_CONFIG_TAG, this.f6221m);
            this.f6216h = new C1912c(this.f6212d, this.f6221m, this.f6217i.getInappHost(), this.f6210b);
        }
        return this.f6216h;
    }

    /* renamed from: k */
    public boolean m5648k() {
        return 2 == this.f6217i.getSecurity();
    }

    /* renamed from: l */
    public abstract boolean mo5649l();

    /* renamed from: m */
    public abstract int mo5650m();

    /* renamed from: n */
    public abstract void mo5651n();

    /* renamed from: o */
    public abstract void mo5652o();

    /* renamed from: p */
    public void m5653p() {
        C1912c c1912c = this.f6216h;
        if (c1912c != null) {
            c1912c.m5477a();
        }
        this.f6215g = false;
    }

    /* renamed from: a */
    public boolean m5632a(Message message, int i) {
        boolean z = true;
        try {
        } catch (Throwable th) {
            th = th;
            z = false;
        }
        if (message.f6095R > 3) {
            return false;
        }
        message.f6095R++;
        message.f6094Q = i;
        ALog.m5728e(mo5641d(), "reSend dataid:" + message.f6117q + " retryTimes:" + message.f6095R, new Object[0]);
        m5638b(message, true);
        try {
            if (message.m5516e() != null) {
                message.m5516e().take_date = 0L;
                message.m5516e().to_tnet_date = 0L;
                message.m5516e().retry_times = message.f6095R;
                if (message.f6095R == 1) {
                    AppMonitorAdapter.commitCount("accs", BaseMonitor.COUNT_POINT_RESEND, "total", 0.0d);
                }
            }
        } catch (Throwable th2) {
            th = th2;
            ALog.m5727e(mo5641d(), "reSend error", th, new Object[0]);
            this.f6213e.m5554a(message, AccsErrorCode.SEND_LOCAL_EXCEPTION.copy().detail(AccsErrorCode.getExceptionInfo(th)).build());
            return z;
        }
        return z;
    }

    /* renamed from: a */
    public void mo5626a(Context context) {
        try {
            ENV env = ENV.ONLINE;
            if (AccsClientConfig.mEnv == 2) {
                env = ENV.TEST;
                SessionCenter.switchEnvironment(env);
            } else if (AccsClientConfig.mEnv == 1) {
                env = ENV.PREPARE;
                SessionCenter.switchEnvironment(env);
            }
            try {
                AwcnConfig.setSendConnectInfoByService(false);
            } catch (Throwable unused) {
            }
            SessionCenter.init(context, new Config.Builder().setAppkey(this.f6210b).setAppSecret(this.f6217i.getAppSecret()).setAuthCode(this.f6217i.getAuthCode()).setEnv(env).setTag(this.f6217i.getAppKey()).build());
            String str = ConnType.PK_ACS;
            if (this.f6217i.getInappPubKey() == 10 || this.f6217i.getInappPubKey() == 11) {
                str = "open";
            }
            StrategyTemplate.getInstance().registerConnProtocol(this.f6217i.getInappHost(), ConnProtocol.valueOf(ConnType.HTTP2, ConnType.RTT_0, str, false));
        } catch (Throwable th) {
            ALog.m5727e(mo5641d(), "initAwcn", th, new Object[0]);
        }
    }

    /* renamed from: b */
    public void m5636b(int i) {
        if (i < 0) {
            ALog.m5728e(mo5641d(), "reSendAck", Constants.KEY_DATA_ID, Integer.valueOf(i));
            Message message = this.f6220l.get(Integer.valueOf(i));
            if (message != null) {
                m5632a(message, 5000);
                AppMonitorAdapter.commitCount("accs", BaseMonitor.COUNT_POINT_RESEND, BaseMonitor.COUNT_ACK, 0.0d);
            }
        }
    }

    /* renamed from: b */
    public String mo5634b(String str) {
        String inappHost = this.f6217i.getInappHost();
        String strM1762g = CompilerOutline.m1762g(CompilerOutline.m1765j("https://"), TextUtils.isEmpty(str) ? "" : str, inappHost);
        try {
            StringBuilder sb = new StringBuilder();
            sb.append("https://");
            if (TextUtils.isEmpty(str)) {
                str = "";
            }
            sb.append(str);
            sb.append(inappHost);
            return sb.toString();
        } catch (Throwable th) {
            ALog.m5727e("InAppConnection", "getHost", th, new Object[0]);
            return strM1762g;
        }
    }

    /* renamed from: a */
    public void m5627a(Message message, ErrorCode errorCode) {
        this.f6213e.m5554a(message, errorCode);
    }

    /* renamed from: b */
    public void m5637b(Context context) {
        try {
            ThreadPoolExecutorFactory.schedule(new RunnableC1943e(this, context), 10000L, TimeUnit.MILLISECONDS);
        } catch (Throwable th) {
            ALog.m5731w(mo5641d(), "startChannelService", th, new Object[0]);
        }
    }
}
