package com.bumptech.glide.load.resource.gif;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.Gravity;
import com.bumptech.glide.gifdecoder.GifDecoder;
import com.bumptech.glide.gifdecoder.GifHeader;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.drawable.GlideDrawable;
import com.bumptech.glide.load.resource.gif.GifFrameLoader;

/* loaded from: classes.dex */
public class GifDrawable extends GlideDrawable implements GifFrameLoader.FrameCallback {
    public boolean applyGravity;
    public final GifDecoder decoder;
    public final Rect destRect;
    public final GifFrameLoader frameLoader;
    public boolean isRecycled;
    public boolean isRunning;
    public boolean isStarted;
    public boolean isVisible;
    public int loopCount;
    public int maxLoopCount;
    public final Paint paint;
    public final GifState state;

    public static class GifState extends Drawable.ConstantState {
        public static final int GRAVITY = 119;
        public BitmapPool bitmapPool;
        public GifDecoder.BitmapProvider bitmapProvider;
        public Context context;
        public byte[] data;
        public Bitmap firstFrame;
        public Transformation<Bitmap> frameTransformation;
        public GifHeader gifHeader;
        public int targetHeight;
        public int targetWidth;

        public GifState(GifHeader gifHeader, byte[] bArr, Context context, Transformation<Bitmap> transformation, int i, int i2, GifDecoder.BitmapProvider bitmapProvider, BitmapPool bitmapPool, Bitmap bitmap) {
            if (bitmap == null) {
                throw new NullPointerException("The first frame of the GIF must not be null");
            }
            this.gifHeader = gifHeader;
            this.data = bArr;
            this.bitmapPool = bitmapPool;
            this.firstFrame = bitmap;
            this.context = context.getApplicationContext();
            this.frameTransformation = transformation;
            this.targetWidth = i;
            this.targetHeight = i2;
            this.bitmapProvider = bitmapProvider;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return newDrawable();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new GifDrawable(this);
        }

        public GifState(GifState gifState) {
            if (gifState != null) {
                this.gifHeader = gifState.gifHeader;
                this.data = gifState.data;
                this.context = gifState.context;
                this.frameTransformation = gifState.frameTransformation;
                this.targetWidth = gifState.targetWidth;
                this.targetHeight = gifState.targetHeight;
                this.bitmapProvider = gifState.bitmapProvider;
                this.bitmapPool = gifState.bitmapPool;
                this.firstFrame = gifState.firstFrame;
            }
        }
    }

    public GifDrawable(Context context, GifDecoder.BitmapProvider bitmapProvider, BitmapPool bitmapPool, Transformation<Bitmap> transformation, int i, int i2, GifHeader gifHeader, byte[] bArr, Bitmap bitmap) {
        this(new GifState(gifHeader, bArr, context, transformation, i, i2, bitmapProvider, bitmapPool, bitmap));
    }

    private void reset() {
        this.frameLoader.clear();
        invalidateSelf();
    }

    private void resetLoopCount() {
        this.loopCount = 0;
    }

    private void startRunning() {
        if (this.decoder.getFrameCount() == 1) {
            invalidateSelf();
        } else {
            if (this.isRunning) {
                return;
            }
            this.isRunning = true;
            this.frameLoader.start();
            invalidateSelf();
        }
    }

    private void stopRunning() {
        this.isRunning = false;
        this.frameLoader.stop();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.isRecycled) {
            return;
        }
        if (this.applyGravity) {
            Gravity.apply(119, getIntrinsicWidth(), getIntrinsicHeight(), getBounds(), this.destRect);
            this.applyGravity = false;
        }
        Bitmap currentFrame = this.frameLoader.getCurrentFrame();
        if (currentFrame == null) {
            currentFrame = this.state.firstFrame;
        }
        canvas.drawBitmap(currentFrame, (Rect) null, this.destRect, this.paint);
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        return this.state;
    }

    public byte[] getData() {
        return this.state.data;
    }

    public GifDecoder getDecoder() {
        return this.decoder;
    }

    public Bitmap getFirstFrame() {
        return this.state.firstFrame;
    }

    public int getFrameCount() {
        return this.decoder.getFrameCount();
    }

    public Transformation<Bitmap> getFrameTransformation() {
        return this.state.frameTransformation;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.state.firstFrame.getHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.state.firstFrame.getWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -2;
    }

    @Override // com.bumptech.glide.load.resource.drawable.GlideDrawable
    public boolean isAnimated() {
        return true;
    }

    public boolean isRecycled() {
        return this.isRecycled;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.isRunning;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.applyGravity = true;
    }

    @Override // com.bumptech.glide.load.resource.gif.GifFrameLoader.FrameCallback
    @TargetApi(11)
    public void onFrameReady(int i) {
        if (getCallback() == null) {
            stop();
            reset();
            return;
        }
        invalidateSelf();
        if (i == this.decoder.getFrameCount() - 1) {
            this.loopCount++;
        }
        int i2 = this.maxLoopCount;
        if (i2 == -1 || this.loopCount < i2) {
            return;
        }
        stop();
    }

    public void recycle() {
        this.isRecycled = true;
        GifState gifState = this.state;
        gifState.bitmapPool.put(gifState.firstFrame);
        this.frameLoader.clear();
        this.frameLoader.stop();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.paint.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.paint.setColorFilter(colorFilter);
    }

    public void setFrameTransformation(Transformation<Bitmap> transformation, Bitmap bitmap) {
        if (bitmap == null) {
            throw new NullPointerException("The first frame of the GIF must not be null");
        }
        if (transformation == null) {
            throw new NullPointerException("The frame transformation must not be null");
        }
        GifState gifState = this.state;
        gifState.frameTransformation = transformation;
        gifState.firstFrame = bitmap;
        this.frameLoader.setFrameTransformation(transformation);
    }

    public void setIsRunning(boolean z) {
        this.isRunning = z;
    }

    @Override // com.bumptech.glide.load.resource.drawable.GlideDrawable
    public void setLoopCount(int i) {
        if (i <= 0 && i != -1 && i != 0) {
            throw new IllegalArgumentException("Loop count must be greater than 0, or equal to GlideDrawable.LOOP_FOREVER, or equal to GlideDrawable.LOOP_INTRINSIC");
        }
        if (i == 0) {
            this.maxLoopCount = this.decoder.getLoopCount();
        } else {
            this.maxLoopCount = i;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        this.isVisible = z;
        if (!z) {
            stopRunning();
        } else if (this.isStarted) {
            startRunning();
        }
        return super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        this.isStarted = true;
        resetLoopCount();
        if (this.isVisible) {
            startRunning();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.isStarted = false;
        stopRunning();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public GifDrawable(GifDrawable gifDrawable, Bitmap bitmap, Transformation<Bitmap> transformation) {
        GifState gifState = gifDrawable.state;
        this(new GifState(gifState.gifHeader, gifState.data, gifState.context, transformation, gifState.targetWidth, gifState.targetHeight, gifState.bitmapProvider, gifState.bitmapPool, bitmap));
    }

    public GifDrawable(GifState gifState) {
        this.destRect = new Rect();
        this.isVisible = true;
        this.maxLoopCount = -1;
        if (gifState != null) {
            this.state = gifState;
            this.decoder = new GifDecoder(gifState.bitmapProvider);
            this.paint = new Paint();
            this.decoder.setData(gifState.gifHeader, gifState.data);
            GifFrameLoader gifFrameLoader = new GifFrameLoader(gifState.context, this, this.decoder, gifState.targetWidth, gifState.targetHeight);
            this.frameLoader = gifFrameLoader;
            gifFrameLoader.setFrameTransformation(gifState.frameTransformation);
            return;
        }
        throw new NullPointerException("GifState must not be null");
    }

    public GifDrawable(GifDecoder gifDecoder, GifFrameLoader gifFrameLoader, Bitmap bitmap, BitmapPool bitmapPool, Paint paint) {
        this.destRect = new Rect();
        this.isVisible = true;
        this.maxLoopCount = -1;
        this.decoder = gifDecoder;
        this.frameLoader = gifFrameLoader;
        GifState gifState = new GifState(null);
        this.state = gifState;
        this.paint = paint;
        gifState.bitmapPool = bitmapPool;
        gifState.firstFrame = bitmap;
    }
}
