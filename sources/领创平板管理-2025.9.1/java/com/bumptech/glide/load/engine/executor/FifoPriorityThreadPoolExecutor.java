package com.bumptech.glide.load.engine.executor;

import android.os.Process;
import android.util.Log;
import com.huawei.hem.C0948f6;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class FifoPriorityThreadPoolExecutor extends ThreadPoolExecutor {
    public static final String TAG = "PriorityExecutor";
    public final AtomicInteger ordering;
    public final UncaughtThrowableStrategy uncaughtThrowableStrategy;

    public static class DefaultThreadFactory implements ThreadFactory {
        public int threadNum = 0;

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            StringBuilder sbM1765j = C0948f6.m1765j("fifo-pool-thread-");
            sbM1765j.append(this.threadNum);
            Thread thread = new Thread(runnable, sbM1765j.toString()) { // from class: com.bumptech.glide.load.engine.executor.FifoPriorityThreadPoolExecutor.DefaultThreadFactory.1
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() throws SecurityException, IllegalArgumentException {
                    Process.setThreadPriority(10);
                    super.run();
                }
            };
            this.threadNum++;
            return thread;
        }
    }

    public static class LoadTask<T> extends FutureTask<T> implements Comparable<LoadTask<?>> {
        public final int order;
        public final int priority;

        public LoadTask(Runnable runnable, T t, int i) {
            super(runnable, t);
            if (!(runnable instanceof Prioritized)) {
                throw new IllegalArgumentException("FifoPriorityThreadPoolExecutor must be given Runnables that implement Prioritized");
            }
            this.priority = ((Prioritized) runnable).getPriority();
            this.order = i;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof LoadTask)) {
                return false;
            }
            LoadTask loadTask = (LoadTask) obj;
            return this.order == loadTask.order && this.priority == loadTask.priority;
        }

        public int hashCode() {
            return (this.priority * 31) + this.order;
        }

        @Override // java.lang.Comparable
        public int compareTo(LoadTask<?> loadTask) {
            int i = this.priority - loadTask.priority;
            return i == 0 ? this.order - loadTask.order : i;
        }
    }

    public enum UncaughtThrowableStrategy {
        IGNORE,
        LOG { // from class: com.bumptech.glide.load.engine.executor.FifoPriorityThreadPoolExecutor.UncaughtThrowableStrategy.1
            @Override // com.bumptech.glide.load.engine.executor.FifoPriorityThreadPoolExecutor.UncaughtThrowableStrategy
            public void handle(Throwable th) {
                if (Log.isLoggable(FifoPriorityThreadPoolExecutor.TAG, 6)) {
                    Log.e(FifoPriorityThreadPoolExecutor.TAG, "Request threw uncaught throwable", th);
                }
            }
        },
        THROW { // from class: com.bumptech.glide.load.engine.executor.FifoPriorityThreadPoolExecutor.UncaughtThrowableStrategy.2
            @Override // com.bumptech.glide.load.engine.executor.FifoPriorityThreadPoolExecutor.UncaughtThrowableStrategy
            public void handle(Throwable th) {
                super.handle(th);
                throw new RuntimeException(th);
            }
        };

        public void handle(Throwable th) {
        }
    }

    public FifoPriorityThreadPoolExecutor(int i) {
        this(i, UncaughtThrowableStrategy.LOG);
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    public void afterExecute(Runnable runnable, Throwable th) throws ExecutionException, InterruptedException {
        super.afterExecute(runnable, th);
        if (th == null && (runnable instanceof Future)) {
            Future future = (Future) runnable;
            if (!future.isDone() || future.isCancelled()) {
                return;
            }
            try {
                future.get();
            } catch (InterruptedException e) {
                this.uncaughtThrowableStrategy.handle(e);
            } catch (ExecutionException e2) {
                this.uncaughtThrowableStrategy.handle(e2);
            }
        }
    }

    @Override // java.util.concurrent.AbstractExecutorService
    public <T> RunnableFuture<T> newTaskFor(Runnable runnable, T t) {
        return new LoadTask(runnable, t, this.ordering.getAndIncrement());
    }

    public FifoPriorityThreadPoolExecutor(int i, UncaughtThrowableStrategy uncaughtThrowableStrategy) {
        this(i, i, 0L, TimeUnit.MILLISECONDS, new DefaultThreadFactory(), uncaughtThrowableStrategy);
    }

    public FifoPriorityThreadPoolExecutor(int i, int i2, long j, TimeUnit timeUnit, ThreadFactory threadFactory, UncaughtThrowableStrategy uncaughtThrowableStrategy) {
        super(i, i2, j, timeUnit, new PriorityBlockingQueue(), threadFactory);
        this.ordering = new AtomicInteger();
        this.uncaughtThrowableStrategy = uncaughtThrowableStrategy;
    }
}
