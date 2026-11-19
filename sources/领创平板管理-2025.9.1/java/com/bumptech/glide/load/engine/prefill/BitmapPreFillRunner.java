package com.bumptech.glide.load.engine.prefill;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Log;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.engine.cache.MemoryCache;
import com.bumptech.glide.load.resource.bitmap.BitmapResource;
import com.bumptech.glide.util.Util;
import com.huawei.hem.CompilerOutline;
import java.security.MessageDigest;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class BitmapPreFillRunner implements Runnable {
    public static final int BACKOFF_RATIO = 4;
    public static final long INITIAL_BACKOFF_MS = 40;
    public static final long MAX_DURATION_MS = 32;
    public static final String TAG = "PreFillRunner";
    public final BitmapPool bitmapPool;
    public final Clock clock;
    public long currentDelay;
    public final Handler handler;
    public boolean isCancelled;
    public final MemoryCache memoryCache;
    public final Set<PreFillType> seenTypes;
    public final PreFillQueue toPrefill;
    public static final Clock DEFAULT_CLOCK = new Clock();
    public static final long MAX_BACKOFF_MS = TimeUnit.SECONDS.toMillis(1);

    public static class Clock {
        public long now() {
            return SystemClock.currentThreadTimeMillis();
        }
    }

    public static class UniqueKey implements Key {
        public UniqueKey() {
        }

        @Override // com.bumptech.glide.load.Key
        public void updateDiskCacheKey(MessageDigest messageDigest) {
        }
    }

    public BitmapPreFillRunner(BitmapPool bitmapPool, MemoryCache memoryCache, PreFillQueue preFillQueue) {
        this(bitmapPool, memoryCache, preFillQueue, DEFAULT_CLOCK, new Handler(Looper.getMainLooper()));
    }

    private void addToBitmapPool(PreFillType preFillType, Bitmap bitmap) {
        Bitmap bitmap2;
        if (this.seenTypes.add(preFillType) && (bitmap2 = this.bitmapPool.get(preFillType.getWidth(), preFillType.getHeight(), preFillType.getConfig())) != null) {
            this.bitmapPool.put(bitmap2);
        }
        this.bitmapPool.put(bitmap);
    }

    private boolean allocate() {
        long jNow = this.clock.now();
        while (!this.toPrefill.isEmpty() && !isGcDetected(jNow)) {
            PreFillType preFillTypeRemove = this.toPrefill.remove();
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(preFillTypeRemove.getWidth(), preFillTypeRemove.getHeight(), preFillTypeRemove.getConfig());
            if (getFreeMemoryCacheBytes() >= Util.getBitmapByteSize(bitmapCreateBitmap)) {
                this.memoryCache.put(new UniqueKey(), BitmapResource.obtain(bitmapCreateBitmap, this.bitmapPool));
            } else {
                addToBitmapPool(preFillTypeRemove, bitmapCreateBitmap);
            }
            if (Log.isLoggable(TAG, 3)) {
                StringBuilder sbM1765j = CompilerOutline.m1765j("allocated [");
                sbM1765j.append(preFillTypeRemove.getWidth());
                sbM1765j.append("x");
                sbM1765j.append(preFillTypeRemove.getHeight());
                sbM1765j.append("] ");
                sbM1765j.append(preFillTypeRemove.getConfig());
                sbM1765j.append(" size: ");
                sbM1765j.append(Util.getBitmapByteSize(bitmapCreateBitmap));
                Log.d(TAG, sbM1765j.toString());
            }
        }
        return (this.isCancelled || this.toPrefill.isEmpty()) ? false : true;
    }

    private int getFreeMemoryCacheBytes() {
        return this.memoryCache.getMaxSize() - this.memoryCache.getCurrentSize();
    }

    private long getNextDelay() {
        long j = this.currentDelay;
        this.currentDelay = Math.min(4 * j, MAX_BACKOFF_MS);
        return j;
    }

    private boolean isGcDetected(long j) {
        return this.clock.now() - j >= 32;
    }

    public void cancel() {
        this.isCancelled = true;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (allocate()) {
            this.handler.postDelayed(this, getNextDelay());
        }
    }

    public BitmapPreFillRunner(BitmapPool bitmapPool, MemoryCache memoryCache, PreFillQueue preFillQueue, Clock clock, Handler handler) {
        this.seenTypes = new HashSet();
        this.currentDelay = 40L;
        this.bitmapPool = bitmapPool;
        this.memoryCache = memoryCache;
        this.toPrefill = preFillQueue;
        this.clock = clock;
        this.handler = handler;
    }
}
