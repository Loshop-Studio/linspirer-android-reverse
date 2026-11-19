package anetwork.channel.unified;

import anet.channel.appmonitor.AppMonitor;
import anet.channel.statist.ExceptionStatistic;
import anet.channel.statist.RequestStatistic;
import anet.channel.util.ALog;
import anet.channel.util.ErrorConstant;
import anetwork.channel.aidl.DefaultFinishEvent;

/* compiled from: Taobao */
/* renamed from: anetwork.channel.unified.n */
/* loaded from: classes.dex */
public class UnifiedRequestTimeoutTask implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ UnifiedRequestCoordinator f806a;

    public UnifiedRequestTimeoutTask(UnifiedRequestCoordinator c0470k) {
        this.f806a = c0470k;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f806a.f799a.f796d.compareAndSet(false, true)) {
            RequestStatistic requestStatistic = this.f806a.f799a.f793a.f737b;
            if (requestStatistic.isDone.compareAndSet(false, true)) {
                requestStatistic.statusCode = ErrorConstant.ERROR_REQUEST_TIME_OUT;
                requestStatistic.msg = ErrorConstant.getErrMsg(ErrorConstant.ERROR_REQUEST_TIME_OUT);
                requestStatistic.rspEnd = System.currentTimeMillis();
                ALog.m339e("anet.UnifiedRequestTask", "task time out", this.f806a.f799a.f795c, "rs", requestStatistic);
                AppMonitor.getInstance().commitStat(new ExceptionStatistic(ErrorConstant.ERROR_REQUEST_TIME_OUT, null, requestStatistic, null));
            }
            this.f806a.f799a.m459b();
            this.f806a.f799a.f794b.onFinish(new DefaultFinishEvent(ErrorConstant.ERROR_REQUEST_TIME_OUT, (String) null, this.f806a.f799a.f793a.m425a()));
        }
    }
}
