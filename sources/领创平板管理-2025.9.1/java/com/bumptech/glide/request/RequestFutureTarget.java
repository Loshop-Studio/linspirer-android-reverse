package com.bumptech.glide.request;

import android.graphics.drawable.Drawable;
import android.os.Handler;
import com.bumptech.glide.request.animation.GlideAnimation;
import com.bumptech.glide.request.target.SizeReadyCallback;
import com.bumptech.glide.util.Util;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes.dex */
public class RequestFutureTarget<T, R> implements FutureTarget<R>, Runnable {
    public static final Waiter DEFAULT_WAITER = new Waiter();
    public final boolean assertBackgroundThread;
    public Exception exception;
    public boolean exceptionReceived;
    public final int height;
    public boolean isCancelled;
    public final Handler mainHandler;
    public Request request;
    public R resource;
    public boolean resultReceived;
    public final Waiter waiter;
    public final int width;

    public static class Waiter {
        public void notifyAll(Object obj) {
            obj.notifyAll();
        }

        public void waitForTimeout(Object obj, long j) throws InterruptedException {
            obj.wait(j);
        }
    }

    public RequestFutureTarget(Handler handler, int i, int i2) {
        this(handler, i, i2, true, DEFAULT_WAITER);
    }

    private synchronized R doGet(Long l) {
        if (this.assertBackgroundThread) {
            Util.assertBackgroundThread();
        }
        if (this.isCancelled) {
            throw new CancellationException();
        }
        if (this.exceptionReceived) {
            throw new ExecutionException(this.exception);
        }
        if (this.resultReceived) {
            return this.resource;
        }
        if (l == null) {
            this.waiter.waitForTimeout(this, 0L);
        } else if (l.longValue() > 0) {
            this.waiter.waitForTimeout(this, l.longValue());
        }
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        if (this.exceptionReceived) {
            throw new ExecutionException(this.exception);
        }
        if (this.isCancelled) {
            throw new CancellationException();
        }
        if (!this.resultReceived) {
            throw new TimeoutException();
        }
        return this.resource;
    }

    @Override // java.util.concurrent.Future
    public synchronized boolean cancel(boolean z) {
        if (this.isCancelled) {
            return true;
        }
        boolean z2 = !isDone();
        if (z2) {
            this.isCancelled = true;
            if (z) {
                clear();
            }
            this.waiter.notifyAll(this);
        }
        return z2;
    }

    @Override // com.bumptech.glide.request.FutureTarget
    public void clear() {
        this.mainHandler.post(this);
    }

    @Override // java.util.concurrent.Future
    public R get() {
        try {
            return doGet(null);
        } catch (TimeoutException e) {
            throw new AssertionError(e);
        }
    }

    @Override // com.bumptech.glide.request.target.Target
    public Request getRequest() {
        return this.request;
    }

    @Override // com.bumptech.glide.request.target.Target
    public void getSize(SizeReadyCallback sizeReadyCallback) {
        sizeReadyCallback.onSizeReady(this.width, this.height);
    }

    @Override // java.util.concurrent.Future
    public synchronized boolean isCancelled() {
        return this.isCancelled;
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x000c  */
    @Override // java.util.concurrent.Future
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized boolean isDone() {
        /*
            r1 = this;
            monitor-enter(r1)
            boolean r0 = r1.isCancelled     // Catch: java.lang.Throwable -> Lf
            if (r0 != 0) goto Lc
            boolean r0 = r1.resultReceived     // Catch: java.lang.Throwable -> Lf
            if (r0 == 0) goto La
            goto Lc
        La:
            r0 = 0
            goto Ld
        Lc:
            r0 = 1
        Ld:
            monitor-exit(r1)
            return r0
        Lf:
            r0 = move-exception
            monitor-exit(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.request.RequestFutureTarget.isDone():boolean");
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public void onDestroy() {
    }

    @Override // com.bumptech.glide.request.target.Target
    public void onLoadCleared(Drawable drawable) {
    }

    @Override // com.bumptech.glide.request.target.Target
    public synchronized void onLoadFailed(Exception exc, Drawable drawable) {
        this.exceptionReceived = true;
        this.exception = exc;
        this.waiter.notifyAll(this);
    }

    @Override // com.bumptech.glide.request.target.Target
    public void onLoadStarted(Drawable drawable) {
    }

    @Override // com.bumptech.glide.request.target.Target
    public synchronized void onResourceReady(R r, GlideAnimation<? super R> glideAnimation) {
        this.resultReceived = true;
        this.resource = r;
        this.waiter.notifyAll(this);
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public void onStart() {
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public void onStop() {
    }

    @Override // java.lang.Runnable
    public void run() {
        Request request = this.request;
        if (request != null) {
            request.clear();
            cancel(false);
        }
    }

    @Override // com.bumptech.glide.request.target.Target
    public void setRequest(Request request) {
        this.request = request;
    }

    public RequestFutureTarget(Handler handler, int i, int i2, boolean z, Waiter waiter) {
        this.mainHandler = handler;
        this.width = i;
        this.height = i2;
        this.assertBackgroundThread = z;
        this.waiter = waiter;
    }

    @Override // java.util.concurrent.Future
    public R get(long j, TimeUnit timeUnit) {
        return doGet(Long.valueOf(timeUnit.toMillis(j)));
    }
}
