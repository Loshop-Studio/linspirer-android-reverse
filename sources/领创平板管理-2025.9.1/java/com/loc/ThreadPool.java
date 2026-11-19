package com.loc;

import com.loc.BasicThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* compiled from: ThreadPool.java */
/* renamed from: com.loc.bp */
/* loaded from: classes.dex */
public final class ThreadPool extends BasePool {

    /* renamed from: c */
    public static ThreadPool f5146c = new ThreadPool(new BasicThreadFactory.a().m4234a("amap-global-threadPool").m4235a());

    public ThreadPool(BasicThreadFactory threadFactoryC1752bo) {
        try {
            ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(threadFactoryC1752bo.m4221a(), threadFactoryC1752bo.m4222b(), threadFactoryC1752bo.m4224d(), TimeUnit.SECONDS, threadFactoryC1752bo.m4223c(), threadFactoryC1752bo);
            this.f5148a = threadPoolExecutor;
            threadPoolExecutor.allowCoreThreadTimeOut(true);
        } catch (Throwable th) {
            SDKLogHandler.m5333b(th, "TPool", "ThreadPool");
            th.printStackTrace();
        }
    }

    /* renamed from: a */
    public static ThreadPool m4236a() {
        return f5146c;
    }
}
