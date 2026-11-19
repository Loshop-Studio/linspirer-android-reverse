package anet.channel.heartbeat;

import anet.channel.Session;
import anet.channel.thread.ThreadPoolExecutorFactory;
import java.util.concurrent.TimeUnit;

/* compiled from: Taobao */
/* renamed from: anet.channel.heartbeat.c */
/* loaded from: classes.dex */
public class SessionIdleTimer implements IHeartbeat, Runnable {

    /* renamed from: a */
    public Session f282a = null;

    /* renamed from: b */
    public volatile boolean f283b = false;

    /* renamed from: c */
    public volatile long f284c = System.currentTimeMillis();

    @Override // anet.channel.heartbeat.IHeartbeat
    public void reSchedule() {
        this.f284c = System.currentTimeMillis() + 45000;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f283b) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis < this.f284c - 1000) {
            ThreadPoolExecutorFactory.submitScheduledTask(this, this.f284c - jCurrentTimeMillis, TimeUnit.MILLISECONDS);
        } else {
            this.f282a.close(false);
        }
    }

    @Override // anet.channel.heartbeat.IHeartbeat
    public void start(Session session) {
        if (session == null) {
            throw new NullPointerException("session is null");
        }
        this.f282a = session;
        this.f284c = System.currentTimeMillis() + 45000;
        ThreadPoolExecutorFactory.submitScheduledTask(this, 45000L, TimeUnit.MILLISECONDS);
    }

    @Override // anet.channel.heartbeat.IHeartbeat
    public void stop() {
        this.f283b = true;
    }
}
