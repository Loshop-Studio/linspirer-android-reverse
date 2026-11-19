package com.loc;

import com.loc.ThreadFactoryC1752bo;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* compiled from: ThreadPool.java */
/* renamed from: com.loc.bp */
/* loaded from: classes.dex */
public final class C1753bp extends AbstractC1755br {

    /* renamed from: c */
    public static C1753bp f5146c = new C1753bp(new ThreadFactoryC1752bo.a().m4234a("amap-global-threadPool").m4235a());

    public C1753bp(ThreadFactoryC1752bo threadFactoryC1752bo) {
        try {
            ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(threadFactoryC1752bo.m4221a(), threadFactoryC1752bo.m4222b(), threadFactoryC1752bo.m4224d(), TimeUnit.SECONDS, threadFactoryC1752bo.m4223c(), threadFactoryC1752bo);
            this.f5148a = threadPoolExecutor;
            threadPoolExecutor.allowCoreThreadTimeOut(true);
        } catch (Throwable th) {
            C1862w.m5333b(th, "TPool", "ThreadPool");
            th.printStackTrace();
        }
    }

    /* renamed from: a */
    public static C1753bp m4236a() {
        return f5146c;
    }
}
