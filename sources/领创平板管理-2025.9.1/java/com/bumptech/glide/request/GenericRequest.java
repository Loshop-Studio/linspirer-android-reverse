package com.bumptech.glide.request;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.Log;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.engine.Engine;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.resource.transcode.ResourceTranscoder;
import com.bumptech.glide.provider.LoadProvider;
import com.bumptech.glide.request.animation.GlideAnimationFactory;
import com.bumptech.glide.request.target.SizeReadyCallback;
import com.bumptech.glide.request.target.Target;
import com.bumptech.glide.util.LogTime;
import com.bumptech.glide.util.Util;
import com.huawei.hem.C0948f6;
import java.util.Queue;

/* loaded from: classes.dex */
public final class GenericRequest<A, T, Z, R> implements Request, SizeReadyCallback, ResourceCallback {
    public static final Queue<GenericRequest<?, ?, ?, ?>> REQUEST_POOL = Util.createQueue(0);
    public static final String TAG = "GenericRequest";
    public static final double TO_MEGABYTE = 9.5367431640625E-7d;
    public GlideAnimationFactory<R> animationFactory;
    public Context context;
    public DiskCacheStrategy diskCacheStrategy;
    public Engine engine;
    public Drawable errorDrawable;
    public int errorResourceId;
    public Drawable fallbackDrawable;
    public int fallbackResourceId;
    public boolean isMemoryCacheable;
    public LoadProvider<A, T, Z, R> loadProvider;
    public Engine.LoadStatus loadStatus;
    public boolean loadedFromMemoryCache;
    public A model;
    public int overrideHeight;
    public int overrideWidth;
    public Drawable placeholderDrawable;
    public int placeholderResourceId;
    public Priority priority;
    public RequestCoordinator requestCoordinator;
    public RequestListener<? super A, R> requestListener;
    public Resource<?> resource;
    public Key signature;
    public float sizeMultiplier;
    public long startTime;
    public Status status;
    public final String tag = String.valueOf(hashCode());
    public Target<R> target;
    public Class<R> transcodeClass;
    public Transformation<Z> transformation;

    public enum Status {
        PENDING,
        RUNNING,
        WAITING_FOR_SIZE,
        COMPLETE,
        FAILED,
        CANCELLED,
        CLEARED,
        PAUSED
    }

    private boolean canNotifyStatusChanged() {
        RequestCoordinator requestCoordinator = this.requestCoordinator;
        return requestCoordinator == null || requestCoordinator.canNotifyStatusChanged(this);
    }

    private boolean canSetResource() {
        RequestCoordinator requestCoordinator = this.requestCoordinator;
        return requestCoordinator == null || requestCoordinator.canSetImage(this);
    }

    public static void check(String str, Object obj, String str2) {
        if (obj == null) {
            StringBuilder sb = new StringBuilder(str);
            sb.append(" must not be null");
            if (str2 != null) {
                sb.append(", ");
                sb.append(str2);
            }
            throw new NullPointerException(sb.toString());
        }
    }

    private Drawable getErrorDrawable() {
        if (this.errorDrawable == null && this.errorResourceId > 0) {
            this.errorDrawable = this.context.getResources().getDrawable(this.errorResourceId);
        }
        return this.errorDrawable;
    }

    private Drawable getFallbackDrawable() {
        if (this.fallbackDrawable == null && this.fallbackResourceId > 0) {
            this.fallbackDrawable = this.context.getResources().getDrawable(this.fallbackResourceId);
        }
        return this.fallbackDrawable;
    }

    private Drawable getPlaceholderDrawable() {
        if (this.placeholderDrawable == null && this.placeholderResourceId > 0) {
            this.placeholderDrawable = this.context.getResources().getDrawable(this.placeholderResourceId);
        }
        return this.placeholderDrawable;
    }

    private void init(LoadProvider<A, T, Z, R> loadProvider, A a, Key key, Context context, Priority priority, Target<R> target, float f, Drawable drawable, int i, Drawable drawable2, int i2, Drawable drawable3, int i3, RequestListener<? super A, R> requestListener, RequestCoordinator requestCoordinator, Engine engine, Transformation<Z> transformation, Class<R> cls, boolean z, GlideAnimationFactory<R> glideAnimationFactory, int i4, int i5, DiskCacheStrategy diskCacheStrategy) {
        this.loadProvider = loadProvider;
        this.model = a;
        this.signature = key;
        this.fallbackDrawable = drawable3;
        this.fallbackResourceId = i3;
        this.context = context.getApplicationContext();
        this.priority = priority;
        this.target = target;
        this.sizeMultiplier = f;
        this.placeholderDrawable = drawable;
        this.placeholderResourceId = i;
        this.errorDrawable = drawable2;
        this.errorResourceId = i2;
        this.requestListener = requestListener;
        this.requestCoordinator = requestCoordinator;
        this.engine = engine;
        this.transformation = transformation;
        this.transcodeClass = cls;
        this.isMemoryCacheable = z;
        this.animationFactory = glideAnimationFactory;
        this.overrideWidth = i4;
        this.overrideHeight = i5;
        this.diskCacheStrategy = diskCacheStrategy;
        this.status = Status.PENDING;
        if (a != null) {
            check("ModelLoader", loadProvider.getModelLoader(), "try .using(ModelLoader)");
            check("Transcoder", loadProvider.getTranscoder(), "try .as*(Class).transcode(ResourceTranscoder)");
            check("Transformation", transformation, "try .transform(UnitTransformation.get())");
            if (diskCacheStrategy.cacheSource()) {
                check("SourceEncoder", loadProvider.getSourceEncoder(), "try .sourceEncoder(Encoder) or .diskCacheStrategy(NONE/RESULT)");
            } else {
                check("SourceDecoder", loadProvider.getSourceDecoder(), "try .decoder/.imageDecoder/.videoDecoder(ResourceDecoder) or .diskCacheStrategy(ALL/SOURCE)");
            }
            if (diskCacheStrategy.cacheSource() || diskCacheStrategy.cacheResult()) {
                check("CacheDecoder", loadProvider.getCacheDecoder(), "try .cacheDecoder(ResouceDecoder) or .diskCacheStrategy(NONE)");
            }
            if (diskCacheStrategy.cacheResult()) {
                check("Encoder", loadProvider.getEncoder(), "try .encode(ResourceEncoder) or .diskCacheStrategy(NONE/SOURCE)");
            }
        }
    }

    private boolean isFirstReadyResource() {
        RequestCoordinator requestCoordinator = this.requestCoordinator;
        return requestCoordinator == null || !requestCoordinator.isAnyResourceSet();
    }

    private void logV(String str) {
        StringBuilder sbM1767l = C0948f6.m1767l(str, " this: ");
        sbM1767l.append(this.tag);
        Log.v(TAG, sbM1767l.toString());
    }

    private void notifyLoadSuccess() {
        RequestCoordinator requestCoordinator = this.requestCoordinator;
        if (requestCoordinator != null) {
            requestCoordinator.onRequestSuccess(this);
        }
    }

    public static <A, T, Z, R> GenericRequest<A, T, Z, R> obtain(LoadProvider<A, T, Z, R> loadProvider, A a, Key key, Context context, Priority priority, Target<R> target, float f, Drawable drawable, int i, Drawable drawable2, int i2, Drawable drawable3, int i3, RequestListener<? super A, R> requestListener, RequestCoordinator requestCoordinator, Engine engine, Transformation<Z> transformation, Class<R> cls, boolean z, GlideAnimationFactory<R> glideAnimationFactory, int i4, int i5, DiskCacheStrategy diskCacheStrategy) {
        GenericRequest<A, T, Z, R> genericRequest = (GenericRequest) REQUEST_POOL.poll();
        if (genericRequest == null) {
            genericRequest = new GenericRequest<>();
        }
        genericRequest.init(loadProvider, a, key, context, priority, target, f, drawable, i, drawable2, i2, drawable3, i3, requestListener, requestCoordinator, engine, transformation, cls, z, glideAnimationFactory, i4, i5, diskCacheStrategy);
        return genericRequest;
    }

    private void releaseResource(Resource resource) {
        this.engine.release(resource);
        this.resource = null;
    }

    private void setErrorPlaceholder(Exception exc) {
        if (canNotifyStatusChanged()) {
            Drawable fallbackDrawable = this.model == null ? getFallbackDrawable() : null;
            if (fallbackDrawable == null) {
                fallbackDrawable = getErrorDrawable();
            }
            if (fallbackDrawable == null) {
                fallbackDrawable = getPlaceholderDrawable();
            }
            this.target.onLoadFailed(exc, fallbackDrawable);
        }
    }

    @Override // com.bumptech.glide.request.Request
    public void begin() {
        this.startTime = LogTime.getLogTime();
        if (this.model == null) {
            onException(null);
            return;
        }
        this.status = Status.WAITING_FOR_SIZE;
        if (Util.isValidDimensions(this.overrideWidth, this.overrideHeight)) {
            onSizeReady(this.overrideWidth, this.overrideHeight);
        } else {
            this.target.getSize(this);
        }
        if (!isComplete() && !isFailed() && canNotifyStatusChanged()) {
            this.target.onLoadStarted(getPlaceholderDrawable());
        }
        if (Log.isLoggable(TAG, 2)) {
            StringBuilder sbM1765j = C0948f6.m1765j("finished run method in ");
            sbM1765j.append(LogTime.getElapsedMillis(this.startTime));
            logV(sbM1765j.toString());
        }
    }

    public void cancel() {
        this.status = Status.CANCELLED;
        Engine.LoadStatus loadStatus = this.loadStatus;
        if (loadStatus != null) {
            loadStatus.cancel();
            this.loadStatus = null;
        }
    }

    @Override // com.bumptech.glide.request.Request
    public void clear() {
        Util.assertMainThread();
        if (this.status == Status.CLEARED) {
            return;
        }
        cancel();
        Resource<?> resource = this.resource;
        if (resource != null) {
            releaseResource(resource);
        }
        if (canNotifyStatusChanged()) {
            this.target.onLoadCleared(getPlaceholderDrawable());
        }
        this.status = Status.CLEARED;
    }

    @Override // com.bumptech.glide.request.Request
    public boolean isCancelled() {
        Status status = this.status;
        return status == Status.CANCELLED || status == Status.CLEARED;
    }

    @Override // com.bumptech.glide.request.Request
    public boolean isComplete() {
        return this.status == Status.COMPLETE;
    }

    @Override // com.bumptech.glide.request.Request
    public boolean isFailed() {
        return this.status == Status.FAILED;
    }

    @Override // com.bumptech.glide.request.Request
    public boolean isPaused() {
        return this.status == Status.PAUSED;
    }

    @Override // com.bumptech.glide.request.Request
    public boolean isResourceSet() {
        return isComplete();
    }

    @Override // com.bumptech.glide.request.Request
    public boolean isRunning() {
        Status status = this.status;
        return status == Status.RUNNING || status == Status.WAITING_FOR_SIZE;
    }

    @Override // com.bumptech.glide.request.ResourceCallback
    public void onException(Exception exc) {
        if (Log.isLoggable(TAG, 3)) {
            Log.d(TAG, "load failed", exc);
        }
        this.status = Status.FAILED;
        RequestListener<? super A, R> requestListener = this.requestListener;
        if (requestListener == null || !requestListener.onException(exc, this.model, this.target, isFirstReadyResource())) {
            setErrorPlaceholder(exc);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.bumptech.glide.request.ResourceCallback
    public void onResourceReady(Resource<?> resource) {
        if (resource == null) {
            StringBuilder sbM1765j = C0948f6.m1765j("Expected to receive a Resource<R> with an object of ");
            sbM1765j.append(this.transcodeClass);
            sbM1765j.append(" inside, but instead got null.");
            onException(new Exception(sbM1765j.toString()));
            return;
        }
        Object obj = resource.get();
        if (obj != null && this.transcodeClass.isAssignableFrom(obj.getClass())) {
            if (canSetResource()) {
                onResourceReady(resource, obj);
                return;
            } else {
                releaseResource(resource);
                this.status = Status.COMPLETE;
                return;
            }
        }
        releaseResource(resource);
        StringBuilder sbM1765j2 = C0948f6.m1765j("Expected to receive an object of ");
        sbM1765j2.append(this.transcodeClass);
        sbM1765j2.append(" but instead got ");
        sbM1765j2.append(obj != null ? obj.getClass() : "");
        sbM1765j2.append("{");
        sbM1765j2.append(obj);
        sbM1765j2.append("}");
        sbM1765j2.append(" inside Resource{");
        sbM1765j2.append(resource);
        sbM1765j2.append("}.");
        sbM1765j2.append(obj == null ? " To indicate failure return a null Resource object, rather than a Resource object containing null data." : "");
        onException(new Exception(sbM1765j2.toString()));
    }

    @Override // com.bumptech.glide.request.target.SizeReadyCallback
    public void onSizeReady(int i, int i2) {
        if (Log.isLoggable(TAG, 2)) {
            StringBuilder sbM1765j = C0948f6.m1765j("Got onSizeReady in ");
            sbM1765j.append(LogTime.getElapsedMillis(this.startTime));
            logV(sbM1765j.toString());
        }
        if (this.status != Status.WAITING_FOR_SIZE) {
            return;
        }
        this.status = Status.RUNNING;
        int iRound = Math.round(this.sizeMultiplier * i);
        int iRound2 = Math.round(this.sizeMultiplier * i2);
        DataFetcher<T> resourceFetcher = this.loadProvider.getModelLoader().getResourceFetcher(this.model, iRound, iRound2);
        if (resourceFetcher == null) {
            StringBuilder sbM1765j2 = C0948f6.m1765j("Failed to load model: '");
            sbM1765j2.append(this.model);
            sbM1765j2.append("'");
            onException(new Exception(sbM1765j2.toString()));
            return;
        }
        ResourceTranscoder<Z, R> transcoder = this.loadProvider.getTranscoder();
        if (Log.isLoggable(TAG, 2)) {
            StringBuilder sbM1765j3 = C0948f6.m1765j("finished setup for calling load in ");
            sbM1765j3.append(LogTime.getElapsedMillis(this.startTime));
            logV(sbM1765j3.toString());
        }
        this.loadedFromMemoryCache = true;
        this.loadStatus = this.engine.load(this.signature, iRound, iRound2, resourceFetcher, this.loadProvider, this.transformation, transcoder, this.priority, this.isMemoryCacheable, this.diskCacheStrategy, this);
        this.loadedFromMemoryCache = this.resource != null;
        if (Log.isLoggable(TAG, 2)) {
            StringBuilder sbM1765j4 = C0948f6.m1765j("finished onSizeReady in ");
            sbM1765j4.append(LogTime.getElapsedMillis(this.startTime));
            logV(sbM1765j4.toString());
        }
    }

    @Override // com.bumptech.glide.request.Request
    public void pause() {
        clear();
        this.status = Status.PAUSED;
    }

    @Override // com.bumptech.glide.request.Request
    public void recycle() {
        this.loadProvider = null;
        this.model = null;
        this.context = null;
        this.target = null;
        this.placeholderDrawable = null;
        this.errorDrawable = null;
        this.fallbackDrawable = null;
        this.requestListener = null;
        this.requestCoordinator = null;
        this.transformation = null;
        this.animationFactory = null;
        this.loadedFromMemoryCache = false;
        this.loadStatus = null;
        REQUEST_POOL.offer(this);
    }

    private void onResourceReady(Resource<?> resource, R r) {
        boolean zIsFirstReadyResource = isFirstReadyResource();
        this.status = Status.COMPLETE;
        this.resource = resource;
        RequestListener<? super A, R> requestListener = this.requestListener;
        if (requestListener == null || !requestListener.onResourceReady(r, this.model, this.target, this.loadedFromMemoryCache, zIsFirstReadyResource)) {
            this.target.onResourceReady(r, this.animationFactory.build(this.loadedFromMemoryCache, zIsFirstReadyResource));
        }
        notifyLoadSuccess();
        if (Log.isLoggable(TAG, 2)) {
            StringBuilder sbM1765j = C0948f6.m1765j("Resource ready in ");
            sbM1765j.append(LogTime.getElapsedMillis(this.startTime));
            sbM1765j.append(" size: ");
            sbM1765j.append(resource.getSize() * 9.5367431640625E-7d);
            sbM1765j.append(" fromCache: ");
            sbM1765j.append(this.loadedFromMemoryCache);
            logV(sbM1765j.toString());
        }
    }
}
