package com.alibaba.sdk.android.crashdefend.p011b;

import android.support.v7.widget.ActivityChooserView;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* renamed from: com.alibaba.sdk.android.crashdefend.b.a */
/* loaded from: classes.dex */
public class C0515a {

    /* renamed from: a */
    public final ThreadFactory f909a = new ThreadFactory() { // from class: com.alibaba.sdk.android.crashdefend.b.a.1
        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable, "safe_thread");
            thread.setDaemon(false);
            return thread;
        }
    };

    /* renamed from: b */
    public ExecutorService f910b;

    /* renamed from: a */
    public synchronized ExecutorService m597a() {
        if (this.f910b == null) {
            this.f910b = new ThreadPoolExecutor(0, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, 1L, TimeUnit.SECONDS, new SynchronousQueue(), this.f909a);
        }
        return this.f910b;
    }
}
