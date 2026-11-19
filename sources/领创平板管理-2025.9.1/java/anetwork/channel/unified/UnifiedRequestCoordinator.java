package anetwork.channel.unified;

import android.os.Looper;
import android.text.TextUtils;
import anet.channel.appmonitor.AppMonitor;
import anet.channel.monitor.BandwidthSampler;
import anet.channel.request.FutureRequestCancellation;
import anet.channel.request.Request;
import anet.channel.statist.ExceptionStatistic;
import anet.channel.statist.RequestStatistic;
import anet.channel.thread.ThreadPoolExecutorFactory;
import anet.channel.util.ALog;
import anet.channel.util.ErrorConstant;
import anetwork.channel.aidl.DefaultFinishEvent;
import anetwork.channel.cache.Cache;
import anetwork.channel.cache.CacheManager;
import anetwork.channel.config.NetworkConfigCenter;
import anetwork.channel.entity.NetworkListenerDispatcher;
import anetwork.channel.entity.UnifiedRequestConfig;
import anetwork.channel.interceptor.Callback;
import anetwork.channel.interceptor.Interceptor;
import anetwork.channel.interceptor.InterceptorManager;
import anetwork.channel.util.RequestConstant;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import org.android.agoo.common.AgooConstants;

/* compiled from: Taobao */
/* renamed from: anetwork.channel.unified.k */
/* loaded from: classes.dex */
public class UnifiedRequestCoordinator {

    /* renamed from: a */
    public UnifiedRequestCancellation f799a;

    /* compiled from: Taobao */
    /* renamed from: anetwork.channel.unified.k$a */
    public class a implements Interceptor.Chain {

        /* renamed from: b */
        public int f801b;

        /* renamed from: c */
        public Request f802c;

        /* renamed from: d */
        public Callback f803d;

        public a(int i, Request request, Callback callback) {
            this.f801b = 0;
            this.f802c = null;
            this.f803d = null;
            this.f801b = i;
            this.f802c = request;
            this.f803d = callback;
        }

        @Override // anetwork.channel.interceptor.Interceptor.Chain
        public Callback callback() {
            return this.f803d;
        }

        @Override // anetwork.channel.interceptor.Interceptor.Chain
        public Future proceed(Request request, Callback callback) {
            if (UnifiedRequestCoordinator.this.f799a.f796d.get()) {
                ALog.m340i("anet.UnifiedRequestTask", "request canneled or timeout in processing interceptor", request.getSeq(), new Object[0]);
                return null;
            }
            if (this.f801b < InterceptorManager.getSize()) {
                return InterceptorManager.getInterceptor(this.f801b).intercept(UnifiedRequestCoordinator.this.new a(this.f801b + 1, request, callback));
            }
            UnifiedRequestCoordinator.this.f799a.f793a.m427a(request);
            UnifiedRequestCoordinator.this.f799a.f794b = callback;
            Cache cache = NetworkConfigCenter.isHttpCacheEnable() ? CacheManager.getCache(UnifiedRequestCoordinator.this.f799a.f793a.m434g(), UnifiedRequestCoordinator.this.f799a.f793a.m435h()) : null;
            UnifiedRequestCancellation c0469j = UnifiedRequestCoordinator.this.f799a;
            c0469j.f797e = cache != null ? new UnifiedCacheTask(c0469j, cache) : new UnifiedNetworkTask(c0469j, null, null);
            UnifiedRequestCoordinator.this.f799a.f797e.run();
            UnifiedRequestCoordinator.this.m461c();
            return null;
        }

        @Override // anetwork.channel.interceptor.Interceptor.Chain
        public Request request() {
            return this.f802c;
        }
    }

    public UnifiedRequestCoordinator(UnifiedRequestConfig c0458g, NetworkListenerDispatcher c0454c) {
        c0454c.m421a(c0458g.f740e);
        this.f799a = new UnifiedRequestCancellation(c0458g, c0454c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public void m461c() {
        this.f799a.f798f = ThreadPoolExecutorFactory.submitScheduledTask(new UnifiedRequestTimeoutTask(this), this.f799a.f793a.m429b(), TimeUnit.MILLISECONDS);
    }

    /* renamed from: b */
    public void m463b() {
        if (this.f799a.f796d.compareAndSet(false, true)) {
            ALog.m339e("anet.UnifiedRequestTask", "task cancelled", this.f799a.f795c, "URL", this.f799a.f793a.m433f().simpleUrlString());
            RequestStatistic requestStatistic = this.f799a.f793a.f737b;
            if (requestStatistic.isDone.compareAndSet(false, true)) {
                requestStatistic.ret = 2;
                requestStatistic.statusCode = ErrorConstant.ERROR_REQUEST_CANCEL;
                requestStatistic.msg = ErrorConstant.getErrMsg(ErrorConstant.ERROR_REQUEST_CANCEL);
                requestStatistic.rspEnd = System.currentTimeMillis();
                AppMonitor.getInstance().commitStat(new ExceptionStatistic(ErrorConstant.ERROR_REQUEST_CANCEL, null, requestStatistic, null));
                if (requestStatistic.recDataSize > 102400) {
                    BandwidthSampler.m150a().m155a(requestStatistic.sendStart, requestStatistic.rspEnd, requestStatistic.recDataSize);
                }
            }
            this.f799a.m459b();
            this.f799a.m458a();
            this.f799a.f794b.onFinish(new DefaultFinishEvent(ErrorConstant.ERROR_REQUEST_CANCEL, (String) null, this.f799a.f793a.m425a()));
        }
    }

    /* renamed from: a */
    public Future m462a() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        this.f799a.f793a.f737b.reqServiceTransmissionEnd = jCurrentTimeMillis;
        this.f799a.f793a.f737b.start = jCurrentTimeMillis;
        UnifiedRequestConfig c0458g = this.f799a.f793a;
        c0458g.f737b.isReqSync = c0458g.m430c();
        this.f799a.f793a.f737b.isReqMain = Looper.myLooper() == Looper.getMainLooper();
        try {
            this.f799a.f793a.f737b.netReqStart = Long.valueOf(this.f799a.f793a.m426a(RequestConstant.KEY_REQ_START)).longValue();
        } catch (Exception unused) {
        }
        String strM426a = this.f799a.f793a.m426a(RequestConstant.KEY_TRACE_ID);
        if (!TextUtils.isEmpty(strM426a)) {
            this.f799a.f793a.f737b.traceId = strM426a;
        }
        String strM426a2 = this.f799a.f793a.m426a(RequestConstant.KEY_REQ_PROCESS);
        UnifiedRequestConfig c0458g2 = this.f799a.f793a;
        RequestStatistic requestStatistic = c0458g2.f737b;
        requestStatistic.process = strM426a2;
        requestStatistic.pTraceId = c0458g2.m426a(RequestConstant.KEY_PARENT_TRACE_ID);
        UnifiedRequestCancellation c0469j = this.f799a;
        ALog.m339e("anet.UnifiedRequestTask", "[traceId:" + strM426a + "]start", c0469j.f795c, "bizId", c0469j.f793a.m425a().getBizId(), "processFrom", strM426a2, AgooConstants.OPEN_URL, this.f799a.f793a.m434g());
        if (!NetworkConfigCenter.isUrlInDegradeList(this.f799a.f793a.m433f())) {
            ThreadPoolExecutorFactory.submitPriorityTask(new ProceedRequestInterceptorTask(this), ThreadPoolExecutorFactory.Priority.HIGH);
            return new UnifiedResponseFuture(this);
        }
        UnifiedDegradeTask c0461b = new UnifiedDegradeTask(this.f799a);
        this.f799a.f797e = c0461b;
        c0461b.f751a = new FutureRequestCancellation(ThreadPoolExecutorFactory.submitBackupTask(new StartUnifiedNetworkTask(this)), this.f799a.f793a.m425a().getSeq());
        m461c();
        return new UnifiedResponseFuture(this);
    }
}
