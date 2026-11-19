package com.bumptech.glide;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.animation.Animation;
import android.widget.ImageView;
import com.bumptech.glide.load.Encoder;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.MultiTransformation;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.ResourceEncoder;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.resource.UnitTransformation;
import com.bumptech.glide.load.resource.transcode.ResourceTranscoder;
import com.bumptech.glide.manager.Lifecycle;
import com.bumptech.glide.manager.RequestTracker;
import com.bumptech.glide.provider.ChildLoadProvider;
import com.bumptech.glide.provider.LoadProvider;
import com.bumptech.glide.request.FutureTarget;
import com.bumptech.glide.request.GenericRequest;
import com.bumptech.glide.request.Request;
import com.bumptech.glide.request.RequestCoordinator;
import com.bumptech.glide.request.RequestFutureTarget;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.ThumbnailRequestCoordinator;
import com.bumptech.glide.request.animation.GlideAnimationFactory;
import com.bumptech.glide.request.animation.NoAnimation;
import com.bumptech.glide.request.animation.ViewAnimationFactory;
import com.bumptech.glide.request.animation.ViewPropertyAnimation;
import com.bumptech.glide.request.animation.ViewPropertyAnimationFactory;
import com.bumptech.glide.request.target.PreloadTarget;
import com.bumptech.glide.request.target.Target;
import com.bumptech.glide.signature.EmptySignature;
import com.bumptech.glide.util.Util;
import java.io.File;

/* loaded from: classes.dex */
public class GenericRequestBuilder<ModelType, DataType, ResourceType, TranscodeType> implements Cloneable {
    public GlideAnimationFactory<TranscodeType> animationFactory;
    public final Context context;
    public DiskCacheStrategy diskCacheStrategy;
    public int errorId;
    public Drawable errorPlaceholder;
    public Drawable fallbackDrawable;
    public int fallbackResource;
    public final Glide glide;
    public boolean isCacheable;
    public boolean isModelSet;
    public boolean isThumbnailBuilt;
    public boolean isTransformationSet;
    public final Lifecycle lifecycle;
    public ChildLoadProvider<ModelType, DataType, ResourceType, TranscodeType> loadProvider;
    public ModelType model;
    public final Class<ModelType> modelClass;
    public int overrideHeight;
    public int overrideWidth;
    public Drawable placeholderDrawable;
    public int placeholderId;
    public Priority priority;
    public RequestListener<? super ModelType, TranscodeType> requestListener;
    public final RequestTracker requestTracker;
    public Key signature;
    public Float sizeMultiplier;
    public Float thumbSizeMultiplier;
    public GenericRequestBuilder<?, ?, ?, TranscodeType> thumbnailRequestBuilder;
    public final Class<TranscodeType> transcodeClass;
    public Transformation<ResourceType> transformation;

    /* renamed from: com.bumptech.glide.GenericRequestBuilder$2 */
    public static /* synthetic */ class C07452 {
        public static final /* synthetic */ int[] $SwitchMap$android$widget$ImageView$ScaleType;

        static {
            int[] iArr = new int[ImageView.ScaleType.values().length];
            $SwitchMap$android$widget$ImageView$ScaleType = iArr;
            try {
                iArr[ImageView.ScaleType.CENTER_CROP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$android$widget$ImageView$ScaleType[ImageView.ScaleType.FIT_CENTER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$android$widget$ImageView$ScaleType[ImageView.ScaleType.FIT_START.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$android$widget$ImageView$ScaleType[ImageView.ScaleType.FIT_END.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public GenericRequestBuilder(LoadProvider<ModelType, DataType, ResourceType, TranscodeType> loadProvider, Class<TranscodeType> cls, GenericRequestBuilder<ModelType, ?, ?, ?> genericRequestBuilder) {
        this(genericRequestBuilder.context, genericRequestBuilder.modelClass, loadProvider, cls, genericRequestBuilder.glide, genericRequestBuilder.requestTracker, genericRequestBuilder.lifecycle);
        this.model = genericRequestBuilder.model;
        this.isModelSet = genericRequestBuilder.isModelSet;
        this.signature = genericRequestBuilder.signature;
        this.diskCacheStrategy = genericRequestBuilder.diskCacheStrategy;
        this.isCacheable = genericRequestBuilder.isCacheable;
    }

    private Request buildRequest(Target<TranscodeType> target) {
        if (this.priority == null) {
            this.priority = Priority.NORMAL;
        }
        return buildRequestRecursive(target, null);
    }

    private Request buildRequestRecursive(Target<TranscodeType> target, ThumbnailRequestCoordinator thumbnailRequestCoordinator) {
        GenericRequestBuilder<?, ?, ?, TranscodeType> genericRequestBuilder = this.thumbnailRequestBuilder;
        if (genericRequestBuilder == null) {
            if (this.thumbSizeMultiplier == null) {
                return obtainRequest(target, this.sizeMultiplier.floatValue(), this.priority, thumbnailRequestCoordinator);
            }
            ThumbnailRequestCoordinator thumbnailRequestCoordinator2 = new ThumbnailRequestCoordinator(thumbnailRequestCoordinator);
            thumbnailRequestCoordinator2.setRequests(obtainRequest(target, this.sizeMultiplier.floatValue(), this.priority, thumbnailRequestCoordinator2), obtainRequest(target, this.thumbSizeMultiplier.floatValue(), getThumbnailPriority(), thumbnailRequestCoordinator2));
            return thumbnailRequestCoordinator2;
        }
        if (this.isThumbnailBuilt) {
            throw new IllegalStateException("You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()");
        }
        if (genericRequestBuilder.animationFactory.equals(NoAnimation.getFactory())) {
            this.thumbnailRequestBuilder.animationFactory = this.animationFactory;
        }
        GenericRequestBuilder<?, ?, ?, TranscodeType> genericRequestBuilder2 = this.thumbnailRequestBuilder;
        if (genericRequestBuilder2.priority == null) {
            genericRequestBuilder2.priority = getThumbnailPriority();
        }
        if (Util.isValidDimensions(this.overrideWidth, this.overrideHeight)) {
            GenericRequestBuilder<?, ?, ?, TranscodeType> genericRequestBuilder3 = this.thumbnailRequestBuilder;
            if (!Util.isValidDimensions(genericRequestBuilder3.overrideWidth, genericRequestBuilder3.overrideHeight)) {
                this.thumbnailRequestBuilder.override(this.overrideWidth, this.overrideHeight);
            }
        }
        ThumbnailRequestCoordinator thumbnailRequestCoordinator3 = new ThumbnailRequestCoordinator(thumbnailRequestCoordinator);
        Request requestObtainRequest = obtainRequest(target, this.sizeMultiplier.floatValue(), this.priority, thumbnailRequestCoordinator3);
        this.isThumbnailBuilt = true;
        Request requestBuildRequestRecursive = this.thumbnailRequestBuilder.buildRequestRecursive(target, thumbnailRequestCoordinator3);
        this.isThumbnailBuilt = false;
        thumbnailRequestCoordinator3.setRequests(requestObtainRequest, requestBuildRequestRecursive);
        return thumbnailRequestCoordinator3;
    }

    private Priority getThumbnailPriority() {
        Priority priority = this.priority;
        return priority == Priority.LOW ? Priority.NORMAL : priority == Priority.NORMAL ? Priority.HIGH : Priority.IMMEDIATE;
    }

    private Request obtainRequest(Target<TranscodeType> target, float f, Priority priority, RequestCoordinator requestCoordinator) {
        return GenericRequest.obtain(this.loadProvider, this.model, this.signature, this.context, priority, target, f, this.placeholderDrawable, this.placeholderId, this.errorPlaceholder, this.errorId, this.fallbackDrawable, this.fallbackResource, this.requestListener, requestCoordinator, this.glide.getEngine(), this.transformation, this.transcodeClass, this.isCacheable, this.animationFactory, this.overrideWidth, this.overrideHeight, this.diskCacheStrategy);
    }

    public GenericRequestBuilder<ModelType, DataType, ResourceType, TranscodeType> animate(int i) {
        return animate(new ViewAnimationFactory(this.context, i));
    }

    public void applyCenterCrop() {
    }

    public void applyFitCenter() {
    }

    public GenericRequestBuilder<ModelType, DataType, ResourceType, TranscodeType> cacheDecoder(ResourceDecoder<File, ResourceType> resourceDecoder) {
        ChildLoadProvider<ModelType, DataType, ResourceType, TranscodeType> childLoadProvider = this.loadProvider;
        if (childLoadProvider != null) {
            childLoadProvider.setCacheDecoder(resourceDecoder);
        }
        return this;
    }

    public GenericRequestBuilder<ModelType, DataType, ResourceType, TranscodeType> decoder(ResourceDecoder<DataType, ResourceType> resourceDecoder) {
        ChildLoadProvider<ModelType, DataType, ResourceType, TranscodeType> childLoadProvider = this.loadProvider;
        if (childLoadProvider != null) {
            childLoadProvider.setSourceDecoder(resourceDecoder);
        }
        return this;
    }

    public GenericRequestBuilder<ModelType, DataType, ResourceType, TranscodeType> diskCacheStrategy(DiskCacheStrategy diskCacheStrategy) {
        this.diskCacheStrategy = diskCacheStrategy;
        return this;
    }

    public GenericRequestBuilder<ModelType, DataType, ResourceType, TranscodeType> dontAnimate() {
        return animate(NoAnimation.getFactory());
    }

    public GenericRequestBuilder<ModelType, DataType, ResourceType, TranscodeType> dontTransform() {
        return transform(UnitTransformation.get());
    }

    public GenericRequestBuilder<ModelType, DataType, ResourceType, TranscodeType> encoder(ResourceEncoder<ResourceType> resourceEncoder) {
        ChildLoadProvider<ModelType, DataType, ResourceType, TranscodeType> childLoadProvider = this.loadProvider;
        if (childLoadProvider != null) {
            childLoadProvider.setEncoder(resourceEncoder);
        }
        return this;
    }

    public GenericRequestBuilder<ModelType, DataType, ResourceType, TranscodeType> error(int i) {
        this.errorId = i;
        return this;
    }

    public GenericRequestBuilder<ModelType, DataType, ResourceType, TranscodeType> fallback(Drawable drawable) {
        this.fallbackDrawable = drawable;
        return this;
    }

    public <Y extends Target<TranscodeType>> Y into(Y y) {
        Util.assertMainThread();
        if (y == null) {
            throw new IllegalArgumentException("You must pass in a non null Target");
        }
        if (!this.isModelSet) {
            throw new IllegalArgumentException("You must first set a model (try #load())");
        }
        Request request = y.getRequest();
        if (request != null) {
            request.clear();
            this.requestTracker.removeRequest(request);
            request.recycle();
        }
        Request requestBuildRequest = buildRequest(y);
        y.setRequest(requestBuildRequest);
        this.lifecycle.addListener(y);
        this.requestTracker.runRequest(requestBuildRequest);
        return y;
    }

    public GenericRequestBuilder<ModelType, DataType, ResourceType, TranscodeType> listener(RequestListener<? super ModelType, TranscodeType> requestListener) {
        this.requestListener = requestListener;
        return this;
    }

    public GenericRequestBuilder<ModelType, DataType, ResourceType, TranscodeType> load(ModelType modeltype) {
        this.model = modeltype;
        this.isModelSet = true;
        return this;
    }

    public GenericRequestBuilder<ModelType, DataType, ResourceType, TranscodeType> override(int i, int i2) {
        if (!Util.isValidDimensions(i, i2)) {
            throw new IllegalArgumentException("Width and height must be Target#SIZE_ORIGINAL or > 0");
        }
        this.overrideWidth = i;
        this.overrideHeight = i2;
        return this;
    }

    public GenericRequestBuilder<ModelType, DataType, ResourceType, TranscodeType> placeholder(int i) {
        this.placeholderId = i;
        return this;
    }

    public Target<TranscodeType> preload(int i, int i2) {
        return into((GenericRequestBuilder<ModelType, DataType, ResourceType, TranscodeType>) PreloadTarget.obtain(i, i2));
    }

    public GenericRequestBuilder<ModelType, DataType, ResourceType, TranscodeType> priority(Priority priority) {
        this.priority = priority;
        return this;
    }

    public GenericRequestBuilder<ModelType, DataType, ResourceType, TranscodeType> signature(Key key) {
        if (key == null) {
            throw new NullPointerException("Signature must not be null");
        }
        this.signature = key;
        return this;
    }

    public GenericRequestBuilder<ModelType, DataType, ResourceType, TranscodeType> sizeMultiplier(float f) {
        if (f < 0.0f || f > 1.0f) {
            throw new IllegalArgumentException("sizeMultiplier must be between 0 and 1");
        }
        this.sizeMultiplier = Float.valueOf(f);
        return this;
    }

    public GenericRequestBuilder<ModelType, DataType, ResourceType, TranscodeType> skipMemoryCache(boolean z) {
        this.isCacheable = !z;
        return this;
    }

    public GenericRequestBuilder<ModelType, DataType, ResourceType, TranscodeType> sourceEncoder(Encoder<DataType> encoder) {
        ChildLoadProvider<ModelType, DataType, ResourceType, TranscodeType> childLoadProvider = this.loadProvider;
        if (childLoadProvider != null) {
            childLoadProvider.setSourceEncoder(encoder);
        }
        return this;
    }

    public GenericRequestBuilder<ModelType, DataType, ResourceType, TranscodeType> thumbnail(GenericRequestBuilder<?, ?, ?, TranscodeType> genericRequestBuilder) {
        if (equals(genericRequestBuilder)) {
            throw new IllegalArgumentException("You cannot set a request as a thumbnail for itself. Consider using clone() on the request you are passing to thumbnail()");
        }
        this.thumbnailRequestBuilder = genericRequestBuilder;
        return this;
    }

    public GenericRequestBuilder<ModelType, DataType, ResourceType, TranscodeType> transcoder(ResourceTranscoder<ResourceType, TranscodeType> resourceTranscoder) {
        ChildLoadProvider<ModelType, DataType, ResourceType, TranscodeType> childLoadProvider = this.loadProvider;
        if (childLoadProvider != null) {
            childLoadProvider.setTranscoder(resourceTranscoder);
        }
        return this;
    }

    public GenericRequestBuilder<ModelType, DataType, ResourceType, TranscodeType> transform(Transformation<ResourceType>... transformationArr) {
        this.isTransformationSet = true;
        if (transformationArr.length == 1) {
            this.transformation = transformationArr[0];
        } else {
            this.transformation = new MultiTransformation(transformationArr);
        }
        return this;
    }

    @Deprecated
    public GenericRequestBuilder<ModelType, DataType, ResourceType, TranscodeType> animate(Animation animation) {
        return animate(new ViewAnimationFactory(animation));
    }

    @Override // 
    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public GenericRequestBuilder<ModelType, DataType, ResourceType, TranscodeType> mo5891clone() {
        try {
            GenericRequestBuilder<ModelType, DataType, ResourceType, TranscodeType> genericRequestBuilder = (GenericRequestBuilder) super.clone();
            genericRequestBuilder.loadProvider = this.loadProvider != null ? this.loadProvider.m5892clone() : null;
            return genericRequestBuilder;
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }

    public GenericRequestBuilder<ModelType, DataType, ResourceType, TranscodeType> error(Drawable drawable) {
        this.errorPlaceholder = drawable;
        return this;
    }

    public GenericRequestBuilder<ModelType, DataType, ResourceType, TranscodeType> fallback(int i) {
        this.fallbackResource = i;
        return this;
    }

    public GenericRequestBuilder<ModelType, DataType, ResourceType, TranscodeType> placeholder(Drawable drawable) {
        this.placeholderDrawable = drawable;
        return this;
    }

    public GenericRequestBuilder<ModelType, DataType, ResourceType, TranscodeType> animate(ViewPropertyAnimation.Animator animator) {
        return animate(new ViewPropertyAnimationFactory(animator));
    }

    public Target<TranscodeType> preload() {
        return preload(Integer.MIN_VALUE, Integer.MIN_VALUE);
    }

    public GenericRequestBuilder<ModelType, DataType, ResourceType, TranscodeType> animate(GlideAnimationFactory<TranscodeType> glideAnimationFactory) {
        if (glideAnimationFactory != null) {
            this.animationFactory = glideAnimationFactory;
            return this;
        }
        throw new NullPointerException("Animation factory must not be null!");
    }

    public GenericRequestBuilder<ModelType, DataType, ResourceType, TranscodeType> thumbnail(float f) {
        if (f >= 0.0f && f <= 1.0f) {
            this.thumbSizeMultiplier = Float.valueOf(f);
            return this;
        }
        throw new IllegalArgumentException("sizeMultiplier must be between 0 and 1");
    }

    public GenericRequestBuilder(Context context, Class<ModelType> cls, LoadProvider<ModelType, DataType, ResourceType, TranscodeType> loadProvider, Class<TranscodeType> cls2, Glide glide, RequestTracker requestTracker, Lifecycle lifecycle) {
        this.signature = EmptySignature.obtain();
        this.sizeMultiplier = Float.valueOf(1.0f);
        this.priority = null;
        this.isCacheable = true;
        this.animationFactory = NoAnimation.getFactory();
        this.overrideHeight = -1;
        this.overrideWidth = -1;
        this.diskCacheStrategy = DiskCacheStrategy.RESULT;
        this.transformation = UnitTransformation.get();
        this.context = context;
        this.modelClass = cls;
        this.transcodeClass = cls2;
        this.glide = glide;
        this.requestTracker = requestTracker;
        this.lifecycle = lifecycle;
        this.loadProvider = loadProvider != null ? new ChildLoadProvider<>(loadProvider) : null;
        if (context == null) {
            throw new NullPointerException("Context can't be null");
        }
        if (cls != null && loadProvider == null) {
            throw new NullPointerException("LoadProvider must not be null");
        }
    }

    public Target<TranscodeType> into(ImageView imageView) {
        Util.assertMainThread();
        if (imageView != null) {
            if (!this.isTransformationSet && imageView.getScaleType() != null) {
                int i = C07452.$SwitchMap$android$widget$ImageView$ScaleType[imageView.getScaleType().ordinal()];
                if (i == 1) {
                    applyCenterCrop();
                } else if (i == 2 || i == 3 || i == 4) {
                    applyFitCenter();
                }
            }
            return into((GenericRequestBuilder<ModelType, DataType, ResourceType, TranscodeType>) this.glide.buildImageViewTarget(imageView, this.transcodeClass));
        }
        throw new IllegalArgumentException("You must pass in a non null View");
    }

    public FutureTarget<TranscodeType> into(int i, int i2) {
        final RequestFutureTarget requestFutureTarget = new RequestFutureTarget(this.glide.getMainHandler(), i, i2);
        this.glide.getMainHandler().post(new Runnable() { // from class: com.bumptech.glide.GenericRequestBuilder.1
            @Override // java.lang.Runnable
            public void run() {
                if (requestFutureTarget.isCancelled()) {
                    return;
                }
                GenericRequestBuilder.this.into((GenericRequestBuilder) requestFutureTarget);
            }
        });
        return requestFutureTarget;
    }
}
