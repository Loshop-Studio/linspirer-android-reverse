package com.loc;

import com.loc.ThreadTask;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ThreadPoolExecutor;

/* compiled from: BasePool.java */
/* renamed from: com.loc.br */
/* loaded from: classes.dex */
public abstract class BasePool {

    /* renamed from: a */
    public ThreadPoolExecutor f5148a;

    /* renamed from: c */
    public ConcurrentHashMap<ThreadTask, Future<?>> f5150c = new ConcurrentHashMap<>();

    /* renamed from: b */
    public ThreadTask.a f5149b = new ThreadTask.a() { // from class: com.loc.br.1
        @Override // com.loc.AbstractRunnableC1754bq.a
        /* renamed from: a */
        public final void mo4237a(ThreadTask abstractRunnableC1754bq) {
            BasePool.this.m4240a(abstractRunnableC1754bq);
        }
    };

    /* renamed from: a */
    private synchronized void m4238a(ThreadTask abstractRunnableC1754bq, Future<?> future) {
        try {
            this.f5150c.put(abstractRunnableC1754bq, future);
        } catch (Throwable th) {
            SDKLogHandler.m5333b(th, "TPool", "addQueue");
            th.printStackTrace();
        }
    }

    /* renamed from: c */
    private synchronized boolean m4239c(ThreadTask abstractRunnableC1754bq) {
        boolean zContainsKey;
        try {
            zContainsKey = this.f5150c.containsKey(abstractRunnableC1754bq);
        } catch (Throwable th) {
            SDKLogHandler.m5333b(th, "TPool", "contain");
            th.printStackTrace();
            zContainsKey = false;
        }
        return zContainsKey;
    }

    /* renamed from: a */
    public final synchronized void m4240a(ThreadTask abstractRunnableC1754bq) {
        try {
            this.f5150c.remove(abstractRunnableC1754bq);
        } catch (Throwable th) {
            SDKLogHandler.m5333b(th, "TPool", "removeQueue");
            th.printStackTrace();
        }
    }

    /* renamed from: b */
    public final Executor m4241b() {
        return this.f5148a;
    }

    /* renamed from: b */
    public final void m4242b(ThreadTask abstractRunnableC1754bq) {
        ThreadPoolExecutor threadPoolExecutor;
        if (m4239c(abstractRunnableC1754bq) || (threadPoolExecutor = this.f5148a) == null || threadPoolExecutor.isShutdown()) {
            return;
        }
        abstractRunnableC1754bq.f5147e = this.f5149b;
        try {
            Future<?> futureSubmit = this.f5148a.submit(abstractRunnableC1754bq);
            if (futureSubmit == null) {
                return;
            }
            m4238a(abstractRunnableC1754bq, futureSubmit);
        } catch (RejectedExecutionException e) {
            SDKLogHandler.m5333b(e, "TPool", "addTask");
        }
    }
}
