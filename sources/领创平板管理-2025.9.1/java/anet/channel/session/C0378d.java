package anet.channel.session;

import android.content.Context;
import anet.channel.AwcnConfig;
import anet.channel.RequestCb;
import anet.channel.Session;
import anet.channel.entity.C0346a;
import anet.channel.entity.C0347b;
import anet.channel.entity.ConnType;
import anet.channel.request.C0368b;
import anet.channel.request.Cancelable;
import anet.channel.request.Request;
import anet.channel.statist.RequestStatistic;
import anet.channel.strategy.utils.C0413c;
import anet.channel.thread.ThreadPoolExecutorFactory;
import anet.channel.util.ALog;
import anet.channel.util.C0422c;
import anet.channel.util.C0427h;
import anet.channel.util.C0429j;
import anet.channel.util.ErrorConstant;
import anet.channel.util.HttpConstant;
import anet.channel.util.Utils;
import com.taobao.accs.common.Constants;
import javax.net.ssl.SSLSocketFactory;

/* compiled from: Taobao */
/* renamed from: anet.channel.session.d */
/* loaded from: classes.dex */
public class C0378d extends Session {

    /* renamed from: w */
    public SSLSocketFactory f399w;

    public C0378d(Context context, C0346a c0346a) {
        super(context, c0346a);
        if (this.f105k == null) {
            String str = this.f97c;
            this.f104j = (str == null || !str.startsWith(HttpConstant.HTTPS)) ? ConnType.HTTP : ConnType.HTTPS;
        } else if (AwcnConfig.isHttpsSniEnable() && this.f104j.equals(ConnType.HTTPS)) {
            this.f399w = new C0429j(this.f98d);
        }
    }

    @Override // anet.channel.Session
    public void close() {
        notifyStatus(6, null);
    }

    @Override // anet.channel.Session
    public void connect() {
        try {
            if (this.f105k != null && this.f105k.getIpSource() == 1) {
                notifyStatus(4, new C0347b(1));
                return;
            }
            Request.Builder redirectEnable = new Request.Builder().setUrl(this.f97c).setSeq(this.f110p).setConnectTimeout((int) (this.f112r * Utils.getNetworkTimeFactor())).setReadTimeout((int) (this.f113s * Utils.getNetworkTimeFactor())).setRedirectEnable(false);
            if (this.f399w != null) {
                redirectEnable.setSslSocketFactory(this.f399w);
            }
            if (this.f107m) {
                redirectEnable.addHeader(HttpConstant.HOST, this.f99e);
            }
            if (C0422c.m347a() && C0413c.m331a(this.f99e)) {
                try {
                    this.f100f = C0422c.m345a(this.f99e);
                } catch (Exception unused) {
                }
            }
            ALog.m340i("awcn.HttpSession", "HttpSession connect", null, Constants.KEY_HOST, this.f97c, "ip", this.f100f, "port", Integer.valueOf(this.f101g));
            Request requestBuild = redirectEnable.build();
            requestBuild.setDnsOptimize(this.f100f, this.f101g);
            ThreadPoolExecutorFactory.submitPriorityTask(new RunnableC0379e(this, requestBuild), ThreadPoolExecutorFactory.Priority.LOW);
        } catch (Throwable th) {
            ALog.m338e("awcn.HttpSession", "HTTP connect fail.", null, th, new Object[0]);
        }
    }

    @Override // anet.channel.Session
    public Runnable getRecvTimeOutRunnable() {
        return null;
    }

    @Override // anet.channel.Session
    public boolean isAvailable() {
        return this.f108n == 4;
    }

    @Override // anet.channel.Session
    public Cancelable request(Request request, RequestCb requestCb) {
        C0368b c0368b = C0368b.NULL;
        Request.Builder builderNewBuilder = null;
        RequestStatistic requestStatistic = request != null ? request.f328a : new RequestStatistic(this.f98d, null);
        requestStatistic.setConnType(this.f104j);
        if (requestStatistic.start == 0) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            requestStatistic.reqStart = jCurrentTimeMillis;
            requestStatistic.start = jCurrentTimeMillis;
        }
        if (request == null || requestCb == null) {
            if (requestCb != null) {
                requestCb.onFinish(-102, ErrorConstant.getErrMsg(-102), requestStatistic);
            }
            return c0368b;
        }
        try {
            if (request.getSslSocketFactory() == null && this.f399w != null) {
                builderNewBuilder = request.newBuilder().setSslSocketFactory(this.f399w);
            }
            if (this.f107m) {
                if (builderNewBuilder == null) {
                    builderNewBuilder = request.newBuilder();
                }
                builderNewBuilder.addHeader(HttpConstant.HOST, this.f99e);
            }
            if (builderNewBuilder != null) {
                request = builderNewBuilder.build();
            }
            if (this.f100f == null) {
                String strHost = request.getHttpUrl().host();
                if (C0422c.m347a() && C0413c.m331a(strHost)) {
                    try {
                        this.f100f = C0422c.m345a(strHost);
                    } catch (Exception unused) {
                    }
                }
            }
            request.setDnsOptimize(this.f100f, this.f101g);
            request.setUrlScheme(this.f104j.isSSL());
            if (this.f105k != null) {
                request.f328a.setIpInfo(this.f105k.getIpSource(), this.f105k.getIpType());
            } else {
                request.f328a.setIpInfo(1, 1);
            }
            request.f328a.unit = this.f106l;
            return new C0368b(ThreadPoolExecutorFactory.submitPriorityTask(new RunnableC0380f(this, request, requestCb, requestStatistic), C0427h.m363a(request)), request.getSeq());
        } catch (Throwable th) {
            requestCb.onFinish(-101, ErrorConstant.formatMsg(-101, th.toString()), requestStatistic);
            return c0368b;
        }
    }

    @Override // anet.channel.Session
    public void close(boolean z) {
        this.f114t = false;
        close();
    }
}
