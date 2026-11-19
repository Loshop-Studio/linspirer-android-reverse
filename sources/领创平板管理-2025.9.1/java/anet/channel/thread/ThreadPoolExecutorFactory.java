package anet.channel.thread;

import anet.channel.util.ALog;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public class ThreadPoolExecutorFactory {

    /* renamed from: a */
    public static ScheduledThreadPoolExecutor f560a = new ScheduledThreadPoolExecutor(1, new NetworkPriorityThreadFactory("AWCN Scheduler"));

    /* renamed from: b */
    public static ThreadPoolExecutor f561b = new ThreadPoolExecutor(2, 2, 60, TimeUnit.SECONDS, new LinkedBlockingDeque(), new NetworkPriorityThreadFactory("AWCN Worker(H)"));

    /* renamed from: c */
    public static ThreadPoolExecutor f562c = new PrioritizedNetworkExecutor(16, 16, 60, TimeUnit.SECONDS, new PriorityBlockingQueue(), new NetworkPriorityThreadFactory("AWCN Worker(M)"));

    /* renamed from: d */
    public static ThreadPoolExecutor f563d = new ThreadPoolExecutor(2, 2, 60, TimeUnit.SECONDS, new LinkedBlockingDeque(), new NetworkPriorityThreadFactory("AWCN Worker(L)"));

    /* renamed from: e */
    public static ThreadPoolExecutor f564e = new ThreadPoolExecutor(32, 32, 60, TimeUnit.SECONDS, new LinkedBlockingDeque(), new NetworkPriorityThreadFactory("AWCN Worker(Backup)"));

    /* renamed from: f */
    public static ThreadPoolExecutor f565f = new ThreadPoolExecutor(1, 1, 30, TimeUnit.SECONDS, new LinkedBlockingDeque(), new NetworkPriorityThreadFactory("AWCN Detector"));

    /* renamed from: g */
    public static ThreadPoolExecutor f566g = new ThreadPoolExecutor(1, 1, 30, TimeUnit.SECONDS, new LinkedBlockingDeque(), new NetworkPriorityThreadFactory("AWCN HR"));

    /* renamed from: h */
    public static ThreadPoolExecutor f567h = new ThreadPoolExecutor(1, 1, 30, TimeUnit.SECONDS, new LinkedBlockingDeque(), new NetworkPriorityThreadFactory("AWCN Cookie"));

    /* compiled from: Taobao */
    public static class Priority {
        public static int HIGH = 0;
        public static int LOW = 9;
        public static int NORMAL = 1;
    }

    /* compiled from: Taobao */
    /* renamed from: anet.channel.thread.ThreadPoolExecutorFactory$a */
    public static class NetworkPriorityRunnable implements Comparable<NetworkPriorityRunnable>, Runnable {

        /* renamed from: a */
        public Runnable f568a;

        /* renamed from: b */
        public int f569b;

        /* renamed from: c */
        public long f570c;

        public NetworkPriorityRunnable(Runnable runnable, int i) {
            this.f568a = null;
            this.f569b = 0;
            this.f570c = System.currentTimeMillis();
            this.f568a = runnable;
            this.f569b = i;
            this.f570c = System.currentTimeMillis();
        }

        @Override // java.lang.Comparable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(NetworkPriorityRunnable runnableC0414a) {
            int i = this.f569b;
            int i2 = runnableC0414a.f569b;
            return i != i2 ? i - i2 : (int) (runnableC0414a.f570c - this.f570c);
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f568a.run();
        }
    }

    /* compiled from: Taobao */
    /* renamed from: anet.channel.thread.ThreadPoolExecutorFactory$b */
    public static class NetworkPriorityThreadFactory implements ThreadFactory {

        /* renamed from: a */
        public AtomicInteger f571a = new AtomicInteger(0);

        /* renamed from: b */
        public String f572b;

        public NetworkPriorityThreadFactory(String str) {
            this.f572b = str;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable, this.f572b + this.f571a.incrementAndGet());
            ALog.m340i("awcn.ThreadPoolExecutorFactory", "thread created!", null, "name", thread.getName());
            thread.setPriority(5);
            return thread;
        }
    }

    static {
        f561b.allowCoreThreadTimeOut(true);
        f562c.allowCoreThreadTimeOut(true);
        f563d.allowCoreThreadTimeOut(true);
        f564e.allowCoreThreadTimeOut(true);
        f565f.allowCoreThreadTimeOut(true);
        f566g.allowCoreThreadTimeOut(true);
        f567h.allowCoreThreadTimeOut(true);
    }

    public static void removeScheduleTask(Runnable runnable) {
        f560a.remove(runnable);
    }

    public static synchronized void setNormalExecutorPoolSize(int i) {
        if (i < 6) {
            i = 6;
        }
        f562c.setCorePoolSize(i);
        f562c.setMaximumPoolSize(i);
    }

    public static Future<?> submitBackupTask(Runnable runnable) {
        return f564e.submit(runnable);
    }

    public static Future<?> submitCookieMonitor(Runnable runnable) {
        return f567h.submit(runnable);
    }

    public static Future<?> submitDetectTask(Runnable runnable) {
        return f565f.submit(runnable);
    }

    public static Future<?> submitHRTask(Runnable runnable) {
        return f566g.submit(runnable);
    }

    public static Future<?> submitPriorityTask(Runnable runnable, int i) {
        if (ALog.isPrintLog(1)) {
            ALog.m337d("awcn.ThreadPoolExecutorFactory", "submit priority task", null, "priority", Integer.valueOf(i));
        }
        if (i < Priority.HIGH || i > Priority.LOW) {
            i = Priority.LOW;
        }
        return i == Priority.HIGH ? f561b.submit(runnable) : i == Priority.LOW ? f563d.submit(runnable) : f562c.submit(new NetworkPriorityRunnable(runnable, i));
    }

    public static Future<?> submitScheduledTask(Runnable runnable) {
        return f560a.submit(runnable);
    }

    public static Future<?> submitScheduledTask(Runnable runnable, long j, TimeUnit timeUnit) {
        return f560a.schedule(runnable, j, timeUnit);
    }
}
