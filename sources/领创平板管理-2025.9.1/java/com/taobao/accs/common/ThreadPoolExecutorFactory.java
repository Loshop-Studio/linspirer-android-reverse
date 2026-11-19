package com.taobao.accs.common;

import com.taobao.accs.utl.ALog;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public class ThreadPoolExecutorFactory {
    public static final String TAG = "ThreadPoolExecutorFactory";
    public static final AtomicInteger integer = new AtomicInteger();
    public static volatile ScheduledThreadPoolExecutor scheduleThreadPoolExecutor;
    public static volatile ScheduledThreadPoolExecutor sendThreadPoolExecutor;

    /* compiled from: Taobao */
    /* renamed from: com.taobao.accs.common.ThreadPoolExecutorFactory$a */
    public static class ThreadFactoryC1914a implements ThreadFactory {

        /* renamed from: a */
        public String f6075a;

        public ThreadFactoryC1914a(String str) {
            this.f6075a = str;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable, this.f6075a + ThreadPoolExecutorFactory.integer.getAndIncrement());
            thread.setPriority(5);
            return thread;
        }
    }

    public static void execute(Runnable runnable) {
        try {
            getScheduledExecutor().execute(runnable);
        } catch (Throwable th) {
            ALog.m5727e(TAG, "ThreadPoolExecutorFactory execute", th, new Object[0]);
        }
    }

    public static ScheduledThreadPoolExecutor getScheduledExecutor() {
        if (scheduleThreadPoolExecutor == null) {
            synchronized (ThreadPoolExecutorFactory.class) {
                if (scheduleThreadPoolExecutor == null) {
                    scheduleThreadPoolExecutor = new ScheduledThreadPoolExecutor(1, new ThreadFactoryC1914a("ACCS"));
                    scheduleThreadPoolExecutor.setKeepAliveTime(60L, TimeUnit.SECONDS);
                    scheduleThreadPoolExecutor.allowCoreThreadTimeOut(true);
                }
            }
        }
        return scheduleThreadPoolExecutor;
    }

    public static ScheduledThreadPoolExecutor getSendScheduledExecutor() {
        if (sendThreadPoolExecutor == null) {
            synchronized (ThreadPoolExecutorFactory.class) {
                if (sendThreadPoolExecutor == null) {
                    sendThreadPoolExecutor = new ScheduledThreadPoolExecutor(1, new ThreadFactoryC1914a("ACCS-SEND"));
                    sendThreadPoolExecutor.setKeepAliveTime(60L, TimeUnit.SECONDS);
                    sendThreadPoolExecutor.allowCoreThreadTimeOut(true);
                }
            }
        }
        return sendThreadPoolExecutor;
    }

    public static ScheduledFuture<?> schedule(Runnable runnable, long j, TimeUnit timeUnit) {
        try {
            return getScheduledExecutor().schedule(runnable, j, timeUnit);
        } catch (Throwable th) {
            ALog.m5727e(TAG, "ThreadPoolExecutorFactory schedule", th, new Object[0]);
            return null;
        }
    }
}
