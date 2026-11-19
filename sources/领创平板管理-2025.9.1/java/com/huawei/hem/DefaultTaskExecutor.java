package com.huawei.hem;

import android.os.Handler;
import android.os.Looper;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* compiled from: DefaultTaskExecutor.java */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: com.huawei.hem.b */
/* loaded from: classes.dex */
public class DefaultTaskExecutor extends TaskExecutor {

    /* renamed from: a */
    public final Object f2263a = new Object();

    /* renamed from: b */
    public ExecutorService f2264b = Executors.newFixedThreadPool(2);

    /* renamed from: c */
    @Nullable
    public volatile Handler f2265c;

    @Override // com.huawei.hem.AbstractC0863c
    /* renamed from: a */
    public boolean mo1287a() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }

    @Override // com.huawei.hem.AbstractC0863c
    /* renamed from: b */
    public void mo1288b(Runnable runnable) {
        if (this.f2265c == null) {
            synchronized (this.f2263a) {
                if (this.f2265c == null) {
                    this.f2265c = new Handler(Looper.getMainLooper());
                }
            }
        }
        this.f2265c.post(runnable);
    }
}
