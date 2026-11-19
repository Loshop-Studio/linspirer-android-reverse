package com.huawei.hem;

import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* renamed from: com.huawei.hem.ka */
/* loaded from: classes.dex */
public class AnalyticsTaskExecutor {

    /* renamed from: b */
    public static AnalyticsTaskExecutor f3060b;

    /* renamed from: c */
    public static AnalyticsTaskExecutor f3061c;

    /* renamed from: a */
    public ThreadPoolExecutor f3062a = new ThreadPoolExecutor(0, 1, 60000, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(5000));

    /* renamed from: com.huawei.hem.ka$a */
    public static class a implements Runnable {

        /* renamed from: a */
        public Runnable f3063a;

        public a(Runnable runnable) {
            this.f3063a = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            Runnable runnable = this.f3063a;
            if (runnable != null) {
                try {
                    runnable.run();
                } catch (Exception unused) {
                    HiAnalyticsSdkState.m2939f("hmsSdk", "InnerTask : Exception has happened,From internal operations!");
                }
            }
        }
    }

    static {
        new ThreadPoolExecutor(0, 1, 60000L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(5000));
        new ThreadPoolExecutor(0, 1, 60000L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(5000));
        f3060b = new AnalyticsTaskExecutor();
        f3061c = new AnalyticsTaskExecutor();
    }

    /* renamed from: a */
    public void m2190a(AnalyticsRunnable interfaceRunnableC1003ha) {
        try {
            this.f3062a.execute(new a(interfaceRunnableC1003ha));
        } catch (RejectedExecutionException unused) {
            HiAnalyticsSdkState.m2939f("hmsSdk", "addToQueue() Exception has happened!Form rejected execution");
        }
    }
}
