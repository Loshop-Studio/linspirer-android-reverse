package com.bumptech.glide.load.resource.gifbitmap;

import android.graphics.Bitmap;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.model.ImageVideoWrapper;
import com.bumptech.glide.load.resource.bitmap.BitmapResource;
import com.bumptech.glide.load.resource.bitmap.ImageHeaderParser;
import com.bumptech.glide.load.resource.bitmap.RecyclableBufferedInputStream;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import com.bumptech.glide.util.ByteArrayPool;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public class GifBitmapWrapperResourceDecoder implements ResourceDecoder<ImageVideoWrapper, GifBitmapWrapper> {
    public static final ImageTypeParser DEFAULT_PARSER = new ImageTypeParser();
    public static final BufferedStreamFactory DEFAULT_STREAM_FACTORY = new BufferedStreamFactory();
    public static final int MARK_LIMIT_BYTES = 2048;
    public final ResourceDecoder<ImageVideoWrapper, Bitmap> bitmapDecoder;
    public final BitmapPool bitmapPool;
    public final ResourceDecoder<InputStream, GifDrawable> gifDecoder;

    /* renamed from: id */
    public String f2127id;
    public final ImageTypeParser parser;
    public final BufferedStreamFactory streamFactory;

    public static class BufferedStreamFactory {
        public InputStream build(InputStream inputStream, byte[] bArr) {
            return new RecyclableBufferedInputStream(inputStream, bArr);
        }
    }

    public static class ImageTypeParser {
        public ImageHeaderParser.ImageType parse(InputStream inputStream) {
            return new ImageHeaderParser(inputStream).getType();
        }
    }

    public GifBitmapWrapperResourceDecoder(ResourceDecoder<ImageVideoWrapper, Bitmap> resourceDecoder, ResourceDecoder<InputStream, GifDrawable> resourceDecoder2, BitmapPool bitmapPool) {
        this(resourceDecoder, resourceDecoder2, bitmapPool, DEFAULT_PARSER, DEFAULT_STREAM_FACTORY);
    }

    private GifBitmapWrapper decodeBitmapWrapper(ImageVideoWrapper imageVideoWrapper, int i, int i2) {
        Resource<Bitmap> resourceDecode = this.bitmapDecoder.decode(imageVideoWrapper, i, i2);
        if (resourceDecode != null) {
            return new GifBitmapWrapper(resourceDecode, null);
        }
        return null;
    }

    private GifBitmapWrapper decodeGifWrapper(InputStream inputStream, int i, int i2) {
        Resource<GifDrawable> resourceDecode = this.gifDecoder.decode(inputStream, i, i2);
        if (resourceDecode == null) {
            return null;
        }
        GifDrawable gifDrawable = resourceDecode.get();
        return gifDrawable.getFrameCount() > 1 ? new GifBitmapWrapper(null, resourceDecode) : new GifBitmapWrapper(new BitmapResource(gifDrawable.getFirstFrame(), this.bitmapPool), null);
    }

    private GifBitmapWrapper decodeStream(ImageVideoWrapper imageVideoWrapper, int i, int i2, byte[] bArr) throws IOException {
        InputStream inputStreamBuild = this.streamFactory.build(imageVideoWrapper.getStream(), bArr);
        inputStreamBuild.mark(2048);
        ImageHeaderParser.ImageType imageType = this.parser.parse(inputStreamBuild);
        inputStreamBuild.reset();
        GifBitmapWrapper gifBitmapWrapperDecodeGifWrapper = imageType == ImageHeaderParser.ImageType.GIF ? decodeGifWrapper(inputStreamBuild, i, i2) : null;
        return gifBitmapWrapperDecodeGifWrapper == null ? decodeBitmapWrapper(new ImageVideoWrapper(inputStreamBuild, imageVideoWrapper.getFileDescriptor()), i, i2) : gifBitmapWrapperDecodeGifWrapper;
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    public String getId() {
        if (this.f2127id == null) {
            this.f2127id = this.gifDecoder.getId() + this.bitmapDecoder.getId();
        }
        return this.f2127id;
    }

    public GifBitmapWrapperResourceDecoder(ResourceDecoder<ImageVideoWrapper, Bitmap> resourceDecoder, ResourceDecoder<InputStream, GifDrawable> resourceDecoder2, BitmapPool bitmapPool, ImageTypeParser imageTypeParser, BufferedStreamFactory bufferedStreamFactory) {
        this.bitmapDecoder = resourceDecoder;
        this.gifDecoder = resourceDecoder2;
        this.bitmapPool = bitmapPool;
        this.parser = imageTypeParser;
        this.streamFactory = bufferedStreamFactory;
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    public Resource<GifBitmapWrapper> decode(ImageVideoWrapper imageVideoWrapper, int i, int i2) {
        ByteArrayPool byteArrayPool = ByteArrayPool.get();
        byte[] bytes = byteArrayPool.getBytes();
        try {
            GifBitmapWrapper gifBitmapWrapperDecode = decode(imageVideoWrapper, i, i2, bytes);
            if (gifBitmapWrapperDecode != null) {
                return new GifBitmapWrapperResource(gifBitmapWrapperDecode);
            }
            return null;
        } finally {
            byteArrayPool.releaseBytes(bytes);
        }
    }

    private GifBitmapWrapper decode(ImageVideoWrapper imageVideoWrapper, int i, int i2, byte[] bArr) {
        if (imageVideoWrapper.getStream() != null) {
            return decodeStream(imageVideoWrapper, i, i2, bArr);
        }
        return decodeBitmapWrapper(imageVideoWrapper, i, i2);
    }
}
