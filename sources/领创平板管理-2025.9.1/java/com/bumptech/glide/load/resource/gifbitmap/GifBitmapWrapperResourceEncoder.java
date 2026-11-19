package com.bumptech.glide.load.resource.gifbitmap;

import android.graphics.Bitmap;
import com.bumptech.glide.load.ResourceEncoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import java.io.OutputStream;

/* loaded from: classes.dex */
public class GifBitmapWrapperResourceEncoder implements ResourceEncoder<GifBitmapWrapper> {
    public final ResourceEncoder<Bitmap> bitmapEncoder;
    public final ResourceEncoder<GifDrawable> gifEncoder;

    /* renamed from: id */
    public String f2128id;

    public GifBitmapWrapperResourceEncoder(ResourceEncoder<Bitmap> resourceEncoder, ResourceEncoder<GifDrawable> resourceEncoder2) {
        this.bitmapEncoder = resourceEncoder;
        this.gifEncoder = resourceEncoder2;
    }

    @Override // com.bumptech.glide.load.Encoder
    public String getId() {
        if (this.f2128id == null) {
            this.f2128id = this.bitmapEncoder.getId() + this.gifEncoder.getId();
        }
        return this.f2128id;
    }

    @Override // com.bumptech.glide.load.Encoder
    public boolean encode(Resource<GifBitmapWrapper> resource, OutputStream outputStream) {
        GifBitmapWrapper gifBitmapWrapper = resource.get();
        Resource<Bitmap> bitmapResource = gifBitmapWrapper.getBitmapResource();
        return bitmapResource != null ? this.bitmapEncoder.encode(bitmapResource, outputStream) : this.gifEncoder.encode(gifBitmapWrapper.getGifResource(), outputStream);
    }
}
