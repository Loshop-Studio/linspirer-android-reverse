package anet.channel.thread;

import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* compiled from: Taobao */
/* renamed from: anet.channel.thread.a */
/* loaded from: classes.dex */
public class PrioritizedNetworkExecutor extends ThreadPoolExecutor {
    public PrioritizedNetworkExecutor(int i, int i2, long j, TimeUnit timeUnit, BlockingQueue<Runnable> blockingQueue, ThreadFactory threadFactory) {
        super(i, i2, j, timeUnit, blockingQueue, threadFactory);
    }

    @Override // java.util.concurrent.AbstractExecutorService
    public <T> RunnableFuture<T> newTaskFor(Runnable runnable, T t) {
        return new a(runnable, t);
    }

    @Override // java.util.concurrent.AbstractExecutorService
    public <T> RunnableFuture<T> newTaskFor(Callable<T> callable) {
        return new a(callable);
    }

    /* compiled from: Taobao */
    /* renamed from: anet.channel.thread.a$a */
    public class a<V> extends FutureTask<V> implements Comparable<a<V>> {

        /* renamed from: b */
        public Object f574b;

        public a(Callable<V> callable) {
            super(callable);
            this.f574b = callable;
        }

        @Override // java.lang.Comparable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(a<V> aVar) {
            if (this == aVar) {
                return 0;
            }
            if (aVar == null) {
                return -1;
            }
            Object obj = this.f574b;
            if (obj != null && aVar.f574b != null && obj.getClass().equals(aVar.f574b.getClass())) {
                Object obj2 = this.f574b;
                if (obj2 instanceof Comparable) {
                    return ((Comparable) obj2).compareTo(aVar.f574b);
                }
            }
            return 0;
        }

        public a(Runnable runnable, V v) {
            super(runnable, v);
            this.f574b = runnable;
        }
    }
}
