package anet.channel.strategy.utils;

import anet.channel.strategy.dispatch.C0395a;
import anet.channel.util.ALog;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: Taobao */
/* renamed from: anet.channel.strategy.utils.a */
/* loaded from: classes.dex */
public class C0411a {

    /* renamed from: a */
    public static AtomicInteger f558a = new AtomicInteger(0);

    /* renamed from: b */
    public static ScheduledThreadPoolExecutor f559b = null;

    /* renamed from: a */
    public static ScheduledThreadPoolExecutor m325a() {
        if (f559b == null) {
            synchronized (C0411a.class) {
                if (f559b == null) {
                    ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(2, new ThreadFactoryC0412b());
                    f559b = scheduledThreadPoolExecutor;
                    scheduledThreadPoolExecutor.setKeepAliveTime(60L, TimeUnit.SECONDS);
                    f559b.allowCoreThreadTimeOut(true);
                }
            }
        }
        return f559b;
    }

    /* renamed from: a */
    public static void m326a(Runnable runnable) {
        try {
            m325a().submit(runnable);
        } catch (Exception e) {
            ALog.m338e(C0395a.TAG, "submit task failed", null, e, new Object[0]);
        }
    }

    /* renamed from: a */
    public static void m327a(Runnable runnable, long j) {
        try {
            m325a().schedule(runnable, j, TimeUnit.MILLISECONDS);
        } catch (Exception e) {
            ALog.m338e(C0395a.TAG, "schedule task failed", null, e, new Object[0]);
        }
    }
}
