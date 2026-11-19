package com.huawei.hem;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: FileDownloadExecutors.java */
/* renamed from: com.huawei.hem.ah */
/* loaded from: classes.dex */
public class ThreadFactoryC0829ah implements ThreadFactory {

    /* renamed from: a */
    public final String f2208a;

    /* renamed from: c */
    public final AtomicInteger f2210c = new AtomicInteger(1);

    /* renamed from: b */
    public final ThreadGroup f2209b = Thread.currentThread().getThreadGroup();

    static {
        new AtomicInteger(1);
    }

    public ThreadFactoryC0829ah(String str) {
        this.f2208a = C1010hh.m1962l(str);
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        Thread thread = new Thread(this.f2209b, runnable, this.f2208a + this.f2210c.getAndIncrement(), 0L);
        if (thread.isDaemon()) {
            thread.setDaemon(false);
        }
        if (thread.getPriority() != 5) {
            thread.setPriority(5);
        }
        return thread;
    }
}
