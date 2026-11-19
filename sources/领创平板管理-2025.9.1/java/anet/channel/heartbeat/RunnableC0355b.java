package anet.channel.heartbeat;

import anet.channel.GlobalAppRuntimeInfo;
import anet.channel.Session;
import anet.channel.thread.ThreadPoolExecutorFactory;
import anet.channel.util.ALog;
import java.util.concurrent.TimeUnit;

/* compiled from: Taobao */
/* renamed from: anet.channel.heartbeat.b */
/* loaded from: classes.dex */
public class RunnableC0355b implements IHeartbeat, Runnable {

    /* renamed from: a */
    public Session f278a;

    /* renamed from: b */
    public volatile long f279b = 0;

    /* renamed from: c */
    public volatile boolean f280c = false;

    /* renamed from: d */
    public long f281d = 0;

    /* renamed from: a */
    private void m144a(long j) {
        try {
            this.f279b = System.currentTimeMillis() + j;
            ThreadPoolExecutorFactory.submitScheduledTask(this, j + 50, TimeUnit.MILLISECONDS);
        } catch (Exception e) {
            ALog.m338e("awcn.DefaultHeartbeatImpl", "Submit heartbeat task failed.", this.f278a.f110p, e, new Object[0]);
        }
    }

    @Override // anet.channel.heartbeat.IHeartbeat
    public void reSchedule() {
        this.f279b = System.currentTimeMillis() + this.f281d;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f280c) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis < this.f279b - 1000) {
            m144a(this.f279b - jCurrentTimeMillis);
            return;
        }
        if (GlobalAppRuntimeInfo.isAppBackground()) {
            Session session = this.f278a;
            ALog.m339e("awcn.DefaultHeartbeatImpl", "close session in background", session.f110p, "session", session);
            this.f278a.close(false);
        } else {
            if (ALog.isPrintLog(1)) {
                Session session2 = this.f278a;
                ALog.m337d("awcn.DefaultHeartbeatImpl", "heartbeat", session2.f110p, "session", session2);
            }
            this.f278a.ping(true);
            m144a(this.f281d);
        }
    }

    @Override // anet.channel.heartbeat.IHeartbeat
    public void start(Session session) {
        if (session == null) {
            throw new NullPointerException("session is null");
        }
        this.f278a = session;
        long heartbeat = session.getConnStrategy().getHeartbeat();
        this.f281d = heartbeat;
        if (heartbeat <= 0) {
            this.f281d = 45000L;
        }
        ALog.m340i("awcn.DefaultHeartbeatImpl", "heartbeat start", session.f110p, "session", session, "interval", Long.valueOf(this.f281d));
        m144a(this.f281d);
    }

    @Override // anet.channel.heartbeat.IHeartbeat
    public void stop() {
        Session session = this.f278a;
        if (session == null) {
            return;
        }
        ALog.m340i("awcn.DefaultHeartbeatImpl", "heartbeat stop", session.f110p, "session", session);
        this.f280c = true;
    }
}
