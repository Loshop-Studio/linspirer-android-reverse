package com.bumptech.glide.load.resource.bitmap;

import android.content.Context;
import android.graphics.Bitmap;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.huawei.hem.CompilerOutline;
import java.io.InputStream;

/* loaded from: classes.dex */
public class StreamBitmapDecoder implements ResourceDecoder<InputStream, Bitmap> {

    /* renamed from: ID */
    public static final String f2125ID = "StreamBitmapDecoder.com.bumptech.glide.load.resource.bitmap";
    public BitmapPool bitmapPool;
    public DecodeFormat decodeFormat;
    public final Downsampler downsampler;

    /* renamed from: id */
    public String f2126id;

    public StreamBitmapDecoder(Context context) {
        this(Glide.get(context).getBitmapPool());
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    public String getId() {
        if (this.f2126id == null) {
            StringBuilder sbM1765j = CompilerOutline.m1765j(f2125ID);
            sbM1765j.append(this.downsampler.getId());
            sbM1765j.append(this.decodeFormat.name());
            this.f2126id = sbM1765j.toString();
        }
        return this.f2126id;
    }

    public StreamBitmapDecoder(BitmapPool bitmapPool) {
        this(bitmapPool, DecodeFormat.DEFAULT);
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    public Resource<Bitmap> decode(InputStream inputStream, int i, int i2) {
        return BitmapResource.obtain(this.downsampler.decode(inputStream, this.bitmapPool, i, i2, this.decodeFormat), this.bitmapPool);
    }

    public StreamBitmapDecoder(Context context, DecodeFormat decodeFormat) {
        this(Glide.get(context).getBitmapPool(), decodeFormat);
    }

    public StreamBitmapDecoder(BitmapPool bitmapPool, DecodeFormat decodeFormat) {
        this(Downsampler.AT_LEAST, bitmapPool, decodeFormat);
    }

    public StreamBitmapDecoder(Downsampler downsampler, BitmapPool bitmapPool, DecodeFormat decodeFormat) {
        this.downsampler = downsampler;
        this.bitmapPool = bitmapPool;
        this.decodeFormat = decodeFormat;
    }
}
