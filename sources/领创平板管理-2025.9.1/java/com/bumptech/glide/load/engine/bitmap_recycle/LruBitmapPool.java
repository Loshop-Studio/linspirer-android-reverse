package com.bumptech.glide.load.engine.bitmap_recycle;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.util.Log;
import com.huawei.hem.CompilerOutline;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes.dex */
public class LruBitmapPool implements BitmapPool {
    public static final Bitmap.Config DEFAULT_CONFIG = Bitmap.Config.ARGB_8888;
    public static final String TAG = "LruBitmapPool";
    public final Set<Bitmap.Config> allowedConfigs;
    public int currentSize;
    public int evictions;
    public int hits;
    public final int initialMaxSize;
    public int maxSize;
    public int misses;
    public int puts;
    public final LruPoolStrategy strategy;
    public final BitmapTracker tracker;

    public interface BitmapTracker {
        void add(Bitmap bitmap);

        void remove(Bitmap bitmap);
    }

    public static class NullBitmapTracker implements BitmapTracker {
        public NullBitmapTracker() {
        }

        @Override // com.bumptech.glide.load.engine.bitmap_recycle.LruBitmapPool.BitmapTracker
        public void add(Bitmap bitmap) {
        }

        @Override // com.bumptech.glide.load.engine.bitmap_recycle.LruBitmapPool.BitmapTracker
        public void remove(Bitmap bitmap) {
        }
    }

    public static class ThrowingBitmapTracker implements BitmapTracker {
        public final Set<Bitmap> bitmaps = Collections.synchronizedSet(new HashSet());

        @Override // com.bumptech.glide.load.engine.bitmap_recycle.LruBitmapPool.BitmapTracker
        public void add(Bitmap bitmap) {
            if (!this.bitmaps.contains(bitmap)) {
                this.bitmaps.add(bitmap);
                return;
            }
            throw new IllegalStateException("Can't add already added bitmap: " + bitmap + " [" + bitmap.getWidth() + "x" + bitmap.getHeight() + "]");
        }

        @Override // com.bumptech.glide.load.engine.bitmap_recycle.LruBitmapPool.BitmapTracker
        public void remove(Bitmap bitmap) {
            if (!this.bitmaps.contains(bitmap)) {
                throw new IllegalStateException("Cannot remove bitmap not in tracker");
            }
            this.bitmaps.remove(bitmap);
        }
    }

    public LruBitmapPool(int i, LruPoolStrategy lruPoolStrategy, Set<Bitmap.Config> set) {
        this.initialMaxSize = i;
        this.maxSize = i;
        this.strategy = lruPoolStrategy;
        this.allowedConfigs = set;
        this.tracker = new NullBitmapTracker();
    }

    private void dump() {
        if (Log.isLoggable(TAG, 2)) {
            dumpUnchecked();
        }
    }

    private void dumpUnchecked() {
        StringBuilder sbM1765j = CompilerOutline.m1765j("Hits=");
        sbM1765j.append(this.hits);
        sbM1765j.append(", misses=");
        sbM1765j.append(this.misses);
        sbM1765j.append(", puts=");
        sbM1765j.append(this.puts);
        sbM1765j.append(", evictions=");
        sbM1765j.append(this.evictions);
        sbM1765j.append(", currentSize=");
        sbM1765j.append(this.currentSize);
        sbM1765j.append(", maxSize=");
        sbM1765j.append(this.maxSize);
        sbM1765j.append("\nStrategy=");
        sbM1765j.append(this.strategy);
        Log.v(TAG, sbM1765j.toString());
    }

    private void evict() {
        trimToSize(this.maxSize);
    }

    public static Set<Bitmap.Config> getDefaultAllowedConfigs() {
        HashSet hashSet = new HashSet();
        hashSet.addAll(Arrays.asList(Bitmap.Config.values()));
        hashSet.add(null);
        return Collections.unmodifiableSet(hashSet);
    }

    public static LruPoolStrategy getDefaultStrategy() {
        return new SizeConfigStrategy();
    }

    private synchronized void trimToSize(int i) {
        while (this.currentSize > i) {
            Bitmap bitmapRemoveLast = this.strategy.removeLast();
            if (bitmapRemoveLast == null) {
                if (Log.isLoggable(TAG, 5)) {
                    Log.w(TAG, "Size mismatch, resetting");
                    dumpUnchecked();
                }
                this.currentSize = 0;
                return;
            }
            this.tracker.remove(bitmapRemoveLast);
            this.currentSize -= this.strategy.getSize(bitmapRemoveLast);
            bitmapRemoveLast.recycle();
            this.evictions++;
            if (Log.isLoggable(TAG, 3)) {
                Log.d(TAG, "Evicting bitmap=" + this.strategy.logBitmap(bitmapRemoveLast));
            }
            dump();
        }
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool
    public void clearMemory() {
        if (Log.isLoggable(TAG, 3)) {
            Log.d(TAG, "clearMemory");
        }
        trimToSize(0);
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool
    public synchronized Bitmap get(int i, int i2, Bitmap.Config config) {
        Bitmap dirty;
        dirty = getDirty(i, i2, config);
        if (dirty != null) {
            dirty.eraseColor(0);
        }
        return dirty;
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool
    @TargetApi(12)
    public synchronized Bitmap getDirty(int i, int i2, Bitmap.Config config) {
        Bitmap bitmap;
        bitmap = this.strategy.get(i, i2, config != null ? config : DEFAULT_CONFIG);
        if (bitmap == null) {
            if (Log.isLoggable(TAG, 3)) {
                Log.d(TAG, "Missing bitmap=" + this.strategy.logBitmap(i, i2, config));
            }
            this.misses++;
        } else {
            this.hits++;
            this.currentSize -= this.strategy.getSize(bitmap);
            this.tracker.remove(bitmap);
            bitmap.setHasAlpha(true);
        }
        if (Log.isLoggable(TAG, 2)) {
            Log.v(TAG, "Get bitmap=" + this.strategy.logBitmap(i, i2, config));
        }
        dump();
        return bitmap;
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool
    public int getMaxSize() {
        return this.maxSize;
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool
    public synchronized boolean put(Bitmap bitmap) {
        if (bitmap == null) {
            throw new NullPointerException("Bitmap must not be null");
        }
        if (bitmap.isMutable() && this.strategy.getSize(bitmap) <= this.maxSize && this.allowedConfigs.contains(bitmap.getConfig())) {
            int size = this.strategy.getSize(bitmap);
            this.strategy.put(bitmap);
            this.tracker.add(bitmap);
            this.puts++;
            this.currentSize += size;
            if (Log.isLoggable(TAG, 2)) {
                Log.v(TAG, "Put bitmap in pool=" + this.strategy.logBitmap(bitmap));
            }
            dump();
            evict();
            return true;
        }
        if (Log.isLoggable(TAG, 2)) {
            Log.v(TAG, "Reject bitmap from pool, bitmap: " + this.strategy.logBitmap(bitmap) + ", is mutable: " + bitmap.isMutable() + ", is allowed config: " + this.allowedConfigs.contains(bitmap.getConfig()));
        }
        return false;
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool
    public synchronized void setSizeMultiplier(float f) {
        this.maxSize = Math.round(this.initialMaxSize * f);
        evict();
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool
    @SuppressLint({"InlinedApi"})
    public void trimMemory(int i) {
        if (Log.isLoggable(TAG, 3)) {
            Log.d(TAG, "trimMemory, level=" + i);
        }
        if (i >= 60) {
            clearMemory();
        } else if (i >= 40) {
            trimToSize(this.maxSize / 2);
        }
    }

    public LruBitmapPool(int i) {
        this(i, getDefaultStrategy(), getDefaultAllowedConfigs());
    }

    public LruBitmapPool(int i, Set<Bitmap.Config> set) {
        this(i, getDefaultStrategy(), set);
    }
}
