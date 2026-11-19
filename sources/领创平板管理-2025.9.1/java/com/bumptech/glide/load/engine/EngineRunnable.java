package com.bumptech.glide.load.engine;

import android.util.Log;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.engine.executor.Prioritized;
import com.bumptech.glide.request.ResourceCallback;

/* loaded from: classes.dex */
public class EngineRunnable implements Runnable, Prioritized {
    public static final String TAG = "EngineRunnable";
    public final DecodeJob<?, ?, ?> decodeJob;
    public volatile boolean isCancelled;
    public final EngineRunnableManager manager;
    public final Priority priority;
    public Stage stage = Stage.CACHE;

    public interface EngineRunnableManager extends ResourceCallback {
        void submitForSource(EngineRunnable engineRunnable);
    }

    public enum Stage {
        CACHE,
        SOURCE
    }

    public EngineRunnable(EngineRunnableManager engineRunnableManager, DecodeJob<?, ?, ?> decodeJob, Priority priority) {
        this.manager = engineRunnableManager;
        this.decodeJob = decodeJob;
        this.priority = priority;
    }

    private Resource<?> decode() {
        return isDecodingFromCache() ? decodeFromCache() : decodeFromSource();
    }

    private Resource<?> decodeFromCache() {
        Resource<?> resourceDecodeResultFromCache;
        try {
            resourceDecodeResultFromCache = this.decodeJob.decodeResultFromCache();
        } catch (Exception e) {
            if (Log.isLoggable(TAG, 3)) {
                Log.d(TAG, "Exception decoding result from cache: " + e);
            }
            resourceDecodeResultFromCache = null;
        }
        return resourceDecodeResultFromCache == null ? this.decodeJob.decodeSourceFromCache() : resourceDecodeResultFromCache;
    }

    private Resource<?> decodeFromSource() {
        return this.decodeJob.decodeFromSource();
    }

    private boolean isDecodingFromCache() {
        return this.stage == Stage.CACHE;
    }

    private void onLoadComplete(Resource resource) {
        this.manager.onResourceReady(resource);
    }

    private void onLoadFailed(Exception exc) {
        if (!isDecodingFromCache()) {
            this.manager.onException(exc);
        } else {
            this.stage = Stage.SOURCE;
            this.manager.submitForSource(this);
        }
    }

    public void cancel() {
        this.isCancelled = true;
        this.decodeJob.cancel();
    }

    @Override // com.bumptech.glide.load.engine.executor.Prioritized
    public int getPriority() {
        return this.priority.ordinal();
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.isCancelled) {
            return;
        }
        Resource<?> resourceDecode = null;
        try {
            e = null;
            resourceDecode = decode();
        } catch (Exception e) {
            e = e;
            if (Log.isLoggable(TAG, 2)) {
                Log.v(TAG, "Exception decoding", e);
            }
        }
        if (this.isCancelled) {
            if (resourceDecode != null) {
                resourceDecode.recycle();
            }
        } else if (resourceDecode == null) {
            onLoadFailed(e);
        } else {
            onLoadComplete(resourceDecode);
        }
    }
}
