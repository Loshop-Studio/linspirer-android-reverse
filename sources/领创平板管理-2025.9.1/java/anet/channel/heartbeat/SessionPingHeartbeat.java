package anet.channel.heartbeat;

import anet.channel.Session;
import anet.channel.thread.ThreadPoolExecutorFactory;
import java.util.concurrent.TimeUnit;

/* compiled from: Taobao */
/* renamed from: anet.channel.heartbeat.a */
/* loaded from: classes.dex */
public class SessionPingHeartbeat implements IHeartbeat, Runnable {

    /* renamed from: a */
    public Session f276a = null;

    /* renamed from: b */
    public volatile boolean f277b = false;

    @Override // anet.channel.heartbeat.IHeartbeat
    public void reSchedule() {
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f277b) {
            return;
        }
        this.f276a.ping(true);
        ThreadPoolExecutorFactory.submitScheduledTask(this, 45000L, TimeUnit.MILLISECONDS);
    }

    @Override // anet.channel.heartbeat.IHeartbeat
    public void start(Session session) {
        if (session == null) {
            throw new NullPointerException("session is null");
        }
        this.f276a = session;
        run();
    }

    @Override // anet.channel.heartbeat.IHeartbeat
    public void stop() {
        this.f277b = true;
    }
}
