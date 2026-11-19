package com.bumptech.glide.load.resource.gif;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import com.bumptech.glide.GenericRequestBuilder;
import com.bumptech.glide.Glide;
import com.bumptech.glide.gifdecoder.GifDecoder;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.NullEncoder;
import com.bumptech.glide.request.animation.GlideAnimation;
import com.bumptech.glide.request.target.SimpleTarget;
import java.security.MessageDigest;
import java.util.UUID;

/* loaded from: classes.dex */
public class GifFrameLoader {
    public final FrameCallback callback;
    public DelayTarget current;
    public final GifDecoder gifDecoder;
    public final Handler handler;
    public boolean isCleared;
    public boolean isLoadPending;
    public boolean isRunning;
    public GenericRequestBuilder<GifDecoder, GifDecoder, Bitmap, Bitmap> requestBuilder;

    public static class DelayTarget extends SimpleTarget<Bitmap> {
        public final Handler handler;
        public final int index;
        public Bitmap resource;
        public final long targetTime;

        public DelayTarget(Handler handler, int i, long j) {
            this.handler = handler;
            this.index = i;
            this.targetTime = j;
        }

        public Bitmap getResource() {
            return this.resource;
        }

        @Override // com.bumptech.glide.request.target.Target
        public /* bridge */ /* synthetic */ void onResourceReady(Object obj, GlideAnimation glideAnimation) {
            onResourceReady((Bitmap) obj, (GlideAnimation<? super Bitmap>) glideAnimation);
        }

        public void onResourceReady(Bitmap bitmap, GlideAnimation<? super Bitmap> glideAnimation) {
            this.resource = bitmap;
            this.handler.sendMessageAtTime(this.handler.obtainMessage(1, this), this.targetTime);
        }
    }

    public interface FrameCallback {
        void onFrameReady(int i);
    }

    public class FrameLoaderCallback implements Handler.Callback {
        public static final int MSG_CLEAR = 2;
        public static final int MSG_DELAY = 1;

        public FrameLoaderCallback() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i = message.what;
            if (i == 1) {
                GifFrameLoader.this.onFrameReady((DelayTarget) message.obj);
                return true;
            }
            if (i != 2) {
                return false;
            }
            Glide.clear((DelayTarget) message.obj);
            return false;
        }
    }

    public static class FrameSignature implements Key {
        public final UUID uuid;

        public FrameSignature() {
            this(UUID.randomUUID());
        }

        @Override // com.bumptech.glide.load.Key
        public boolean equals(Object obj) {
            if (obj instanceof FrameSignature) {
                return ((FrameSignature) obj).uuid.equals(this.uuid);
            }
            return false;
        }

        @Override // com.bumptech.glide.load.Key
        public int hashCode() {
            return this.uuid.hashCode();
        }

        @Override // com.bumptech.glide.load.Key
        public void updateDiskCacheKey(MessageDigest messageDigest) {
            throw new UnsupportedOperationException("Not implemented");
        }

        public FrameSignature(UUID uuid) {
            this.uuid = uuid;
        }
    }

    public GifFrameLoader(Context context, FrameCallback frameCallback, GifDecoder gifDecoder, int i, int i2) {
        this(frameCallback, gifDecoder, null, getRequestBuilder(context, gifDecoder, i, i2, Glide.get(context).getBitmapPool()));
    }

    public static GenericRequestBuilder<GifDecoder, GifDecoder, Bitmap, Bitmap> getRequestBuilder(Context context, GifDecoder gifDecoder, int i, int i2, BitmapPool bitmapPool) {
        GifFrameResourceDecoder gifFrameResourceDecoder = new GifFrameResourceDecoder(bitmapPool);
        GifFrameModelLoader gifFrameModelLoader = new GifFrameModelLoader();
        return Glide.with(context).using(gifFrameModelLoader, GifDecoder.class).load(gifDecoder).m1284as(Bitmap.class).sourceEncoder(NullEncoder.get()).decoder(gifFrameResourceDecoder).skipMemoryCache(true).diskCacheStrategy(DiskCacheStrategy.NONE).override(i, i2);
    }

    private void loadNextFrame() {
        if (!this.isRunning || this.isLoadPending) {
            return;
        }
        this.isLoadPending = true;
        this.gifDecoder.advance();
        this.requestBuilder.signature(new FrameSignature()).into((GenericRequestBuilder<GifDecoder, GifDecoder, Bitmap, Bitmap>) new DelayTarget(this.handler, this.gifDecoder.getCurrentFrameIndex(), SystemClock.uptimeMillis() + this.gifDecoder.getNextDelay()));
    }

    public void clear() {
        stop();
        DelayTarget delayTarget = this.current;
        if (delayTarget != null) {
            Glide.clear(delayTarget);
            this.current = null;
        }
        this.isCleared = true;
    }

    public Bitmap getCurrentFrame() {
        DelayTarget delayTarget = this.current;
        if (delayTarget != null) {
            return delayTarget.getResource();
        }
        return null;
    }

    public void onFrameReady(DelayTarget delayTarget) {
        if (this.isCleared) {
            this.handler.obtainMessage(2, delayTarget).sendToTarget();
            return;
        }
        DelayTarget delayTarget2 = this.current;
        this.current = delayTarget;
        this.callback.onFrameReady(delayTarget.index);
        if (delayTarget2 != null) {
            this.handler.obtainMessage(2, delayTarget2).sendToTarget();
        }
        this.isLoadPending = false;
        loadNextFrame();
    }

    public void setFrameTransformation(Transformation<Bitmap> transformation) {
        if (transformation == null) {
            throw new NullPointerException("Transformation must not be null");
        }
        this.requestBuilder = this.requestBuilder.transform(transformation);
    }

    public void start() {
        if (this.isRunning) {
            return;
        }
        this.isRunning = true;
        this.isCleared = false;
        loadNextFrame();
    }

    public void stop() {
        this.isRunning = false;
    }

    public GifFrameLoader(FrameCallback frameCallback, GifDecoder gifDecoder, Handler handler, GenericRequestBuilder<GifDecoder, GifDecoder, Bitmap, Bitmap> genericRequestBuilder) {
        this.isRunning = false;
        this.isLoadPending = false;
        handler = handler == null ? new Handler(Looper.getMainLooper(), new FrameLoaderCallback()) : handler;
        this.callback = frameCallback;
        this.gifDecoder = gifDecoder;
        this.handler = handler;
        this.requestBuilder = genericRequestBuilder;
    }
}
