package com.huawei.hms.framework.common;

import android.support.v7.widget.ActivityChooserView;
import com.huawei.hem.CompilerOutline;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class ExecutorsUtils {
    public static final String THREADNAME_HEADER = "NetworkKit_";

    public static ThreadFactory createThreadFactory(final String str) {
        if (str == null || str.trim().isEmpty()) {
            throw new NullPointerException("ThreadName is empty");
        }
        return new ThreadFactory() { // from class: com.huawei.hms.framework.common.ExecutorsUtils.1
            public final AtomicInteger threadNumbers = new AtomicInteger(0);

            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                StringBuilder sbM1765j = CompilerOutline.m1765j("NetworkKit_");
                sbM1765j.append(str);
                sbM1765j.append("_");
                sbM1765j.append(this.threadNumbers.getAndIncrement());
                return new Thread(runnable, sbM1765j.toString());
            }
        };
    }

    public static ExecutorService newCachedThreadPool(String str) {
        return new ThreadPoolExcutorEnhance(0, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, 60L, TimeUnit.SECONDS, new SynchronousQueue(), createThreadFactory(str));
    }

    public static ExecutorService newFixedThreadPool(int i, String str) {
        return new ThreadPoolExcutorEnhance(i, i, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), createThreadFactory(str));
    }

    public static ScheduledExecutorService newScheduledThreadPool(int i, String str) {
        return new ScheduledThreadPoolExecutorEnhance(i, createThreadFactory(str));
    }

    public static ExecutorService newSingleThreadExecutor(String str) {
        return ExecutorsEnhance.newSingleThreadExecutor(createThreadFactory(str));
    }
}
