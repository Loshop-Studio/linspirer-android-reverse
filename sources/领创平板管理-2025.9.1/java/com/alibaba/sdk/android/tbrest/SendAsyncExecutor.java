package com.alibaba.sdk.android.tbrest;

import com.huawei.hem.CompilerOutline;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: SendAsyncExecutor.java */
/* renamed from: com.alibaba.sdk.android.tbrest.a */
/* loaded from: classes.dex */
public class SendAsyncExecutor {

    /* renamed from: a */
    public static ScheduledExecutorService f1362a = null;

    /* renamed from: a */
    public static final AtomicInteger f1363a = new AtomicInteger();

    /* renamed from: g */
    public static int f1364g = 1;

    /* renamed from: a */
    public Integer f1365a = 2;

    /* compiled from: SendAsyncExecutor.java */
    /* renamed from: com.alibaba.sdk.android.tbrest.a$a */
    public static class a implements ThreadFactory {
        public final int priority;

        public a(int i) {
            this.priority = i;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable, CompilerOutline.m1754L("RestSend:", SendAsyncExecutor.f1363a.getAndIncrement()));
            thread.setPriority(this.priority);
            return thread;
        }
    }

    /* renamed from: a */
    public synchronized void m976a(Runnable runnable) {
        try {
            if (f1362a == null) {
                f1362a = Executors.newScheduledThreadPool(this.f1365a.intValue(), new a(f1364g));
            }
            f1362a.submit(runnable);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
