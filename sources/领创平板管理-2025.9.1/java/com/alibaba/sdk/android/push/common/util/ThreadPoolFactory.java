package com.alibaba.sdk.android.push.common.util;

import com.alibaba.sdk.android.ams.common.logger.AmsLogger;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class ThreadPoolFactory {
    public static volatile ScheduledThreadPoolExecutor scheduleThreadPoolExecutor;
    public static final AtomicInteger integer = new AtomicInteger();
    public static final String TAG = "MPS:ThreadPoolFactory";
    public static AmsLogger logger = AmsLogger.getLogger(TAG);

    /* renamed from: com.alibaba.sdk.android.push.common.util.ThreadPoolFactory$a */
    public static class PushNamedThreadFactory implements ThreadFactory {

        /* renamed from: a */
        public String f1152a;

        public PushNamedThreadFactory(String str) {
            this.f1152a = str;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable, this.f1152a + ThreadPoolFactory.integer.getAndIncrement());
            thread.setPriority(5);
            return thread;
        }
    }

    public static void execute(Runnable runnable) {
        try {
            getScheduledExecutor().execute(runnable);
        } catch (Throwable th) {
            logger.m502e("ThreadPoolExecutorFactory execute", th);
        }
    }

    public static ScheduledThreadPoolExecutor getScheduledExecutor() {
        if (scheduleThreadPoolExecutor == null) {
            synchronized (ThreadPoolFactory.class) {
                if (scheduleThreadPoolExecutor == null) {
                    scheduleThreadPoolExecutor = new ScheduledThreadPoolExecutor(1, new PushNamedThreadFactory(TAG));
                    scheduleThreadPoolExecutor.setKeepAliveTime(60L, TimeUnit.SECONDS);
                    scheduleThreadPoolExecutor.allowCoreThreadTimeOut(true);
                }
            }
        }
        return scheduleThreadPoolExecutor;
    }

    public static ScheduledFuture<?> schedule(Runnable runnable, long j, TimeUnit timeUnit) {
        try {
            return getScheduledExecutor().schedule(runnable, j, timeUnit);
        } catch (Throwable th) {
            logger.m502e("ThreadPoolExecutorFactory schedule", th);
            return null;
        }
    }
}
