package com.bumptech.glide.load.engine.cache;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.content.Context;
import android.text.format.Formatter;
import android.util.DisplayMetrics;
import android.util.Log;
import com.huawei.hem.CompilerOutline;

/* loaded from: classes.dex */
public class MemorySizeCalculator {
    public static final int BITMAP_POOL_TARGET_SCREENS = 4;
    public static final int BYTES_PER_ARGB_8888_PIXEL = 4;
    public static final float LOW_MEMORY_MAX_SIZE_MULTIPLIER = 0.33f;
    public static final float MAX_SIZE_MULTIPLIER = 0.4f;
    public static final int MEMORY_CACHE_TARGET_SCREENS = 2;
    public static final String TAG = "MemorySizeCalculator";
    public final int bitmapPoolSize;
    public final Context context;
    public final int memoryCacheSize;

    public static class DisplayMetricsScreenDimensions implements ScreenDimensions {
        public final DisplayMetrics displayMetrics;

        public DisplayMetricsScreenDimensions(DisplayMetrics displayMetrics) {
            this.displayMetrics = displayMetrics;
        }

        @Override // com.bumptech.glide.load.engine.cache.MemorySizeCalculator.ScreenDimensions
        public int getHeightPixels() {
            return this.displayMetrics.heightPixels;
        }

        @Override // com.bumptech.glide.load.engine.cache.MemorySizeCalculator.ScreenDimensions
        public int getWidthPixels() {
            return this.displayMetrics.widthPixels;
        }
    }

    public interface ScreenDimensions {
        int getHeightPixels();

        int getWidthPixels();
    }

    public MemorySizeCalculator(Context context) {
        this(context, (ActivityManager) context.getSystemService("activity"), new DisplayMetricsScreenDimensions(context.getResources().getDisplayMetrics()));
    }

    public static int getMaxSize(ActivityManager activityManager) {
        return Math.round(activityManager.getMemoryClass() * 1024 * 1024 * (isLowMemoryDevice(activityManager) ? 0.33f : 0.4f));
    }

    @TargetApi(19)
    public static boolean isLowMemoryDevice(ActivityManager activityManager) {
        return activityManager.isLowRamDevice();
    }

    private String toMb(int i) {
        return Formatter.formatFileSize(this.context, i);
    }

    public int getBitmapPoolSize() {
        return this.bitmapPoolSize;
    }

    public int getMemoryCacheSize() {
        return this.memoryCacheSize;
    }

    public MemorySizeCalculator(Context context, ActivityManager activityManager, ScreenDimensions screenDimensions) {
        this.context = context;
        int maxSize = getMaxSize(activityManager);
        int heightPixels = screenDimensions.getHeightPixels() * screenDimensions.getWidthPixels() * 4;
        int i = heightPixels * 4;
        int i2 = heightPixels * 2;
        int i3 = i2 + i;
        if (i3 <= maxSize) {
            this.memoryCacheSize = i2;
            this.bitmapPoolSize = i;
        } else {
            int iRound = Math.round(maxSize / 6.0f);
            this.memoryCacheSize = iRound * 2;
            this.bitmapPoolSize = iRound * 4;
        }
        if (Log.isLoggable(TAG, 3)) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("Calculated memory cache size: ");
            sbM1765j.append(toMb(this.memoryCacheSize));
            sbM1765j.append(" pool size: ");
            sbM1765j.append(toMb(this.bitmapPoolSize));
            sbM1765j.append(" memory class limited? ");
            sbM1765j.append(i3 > maxSize);
            sbM1765j.append(" max size: ");
            sbM1765j.append(toMb(maxSize));
            sbM1765j.append(" memoryClass: ");
            sbM1765j.append(activityManager.getMemoryClass());
            sbM1765j.append(" isLowMemoryDevice: ");
            sbM1765j.append(isLowMemoryDevice(activityManager));
            Log.d(TAG, sbM1765j.toString());
        }
    }
}
