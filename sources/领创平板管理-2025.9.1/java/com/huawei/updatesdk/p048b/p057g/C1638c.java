package com.huawei.updatesdk.p048b.p057g;

import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* renamed from: com.huawei.updatesdk.b.g.c */
/* loaded from: classes.dex */
public class C1638c {

    /* renamed from: a */
    public static final ThreadPoolExecutor f4711a = new ThreadPoolExecutor(2, 2, 10, TimeUnit.SECONDS, new LinkedBlockingQueue(), new a("UpdateSDK-ServerTask"));

    /* renamed from: b */
    public static final ThreadPoolExecutor f4712b = new ThreadPoolExecutor(0, 2, 5, TimeUnit.SECONDS, new LinkedBlockingQueue(), new a("UpdateSDK-CheckTask"));

    /* renamed from: com.huawei.updatesdk.b.g.c$a */
    public static class a implements ThreadFactory {

        /* renamed from: a */
        public final AtomicInteger f4713a = new AtomicInteger();

        /* renamed from: b */
        public String f4714b;

        public a(String str) {
            this.f4714b = str;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, this.f4714b + "#" + this.f4713a.incrementAndGet());
        }
    }
}
