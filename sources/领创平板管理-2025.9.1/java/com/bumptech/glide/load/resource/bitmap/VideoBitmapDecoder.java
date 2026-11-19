package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.os.ParcelFileDescriptor;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import java.io.IOException;

/* loaded from: classes.dex */
public class VideoBitmapDecoder implements BitmapDecoder<ParcelFileDescriptor> {
    public static final MediaMetadataRetrieverFactory DEFAULT_FACTORY = new MediaMetadataRetrieverFactory();
    public static final int NO_FRAME = -1;
    public MediaMetadataRetrieverFactory factory;
    public int frame;

    public static class MediaMetadataRetrieverFactory {
        public MediaMetadataRetriever build() {
            return new MediaMetadataRetriever();
        }
    }

    public VideoBitmapDecoder() {
        this(DEFAULT_FACTORY, -1);
    }

    public static int checkValidFrame(int i) {
        if (i >= 0) {
            return i;
        }
        throw new IllegalArgumentException("Requested frame must be non-negative");
    }

    @Override // com.bumptech.glide.load.resource.bitmap.BitmapDecoder
    public String getId() {
        return "VideoBitmapDecoder.com.bumptech.glide.load.resource.bitmap";
    }

    public VideoBitmapDecoder(int i) {
        this(DEFAULT_FACTORY, checkValidFrame(i));
    }

    @Override // com.bumptech.glide.load.resource.bitmap.BitmapDecoder
    public Bitmap decode(ParcelFileDescriptor parcelFileDescriptor, BitmapPool bitmapPool, int i, int i2, DecodeFormat decodeFormat) throws IOException, IllegalArgumentException {
        MediaMetadataRetriever mediaMetadataRetrieverBuild = this.factory.build();
        mediaMetadataRetrieverBuild.setDataSource(parcelFileDescriptor.getFileDescriptor());
        int i3 = this.frame;
        Bitmap frameAtTime = i3 >= 0 ? mediaMetadataRetrieverBuild.getFrameAtTime(i3) : mediaMetadataRetrieverBuild.getFrameAtTime();
        mediaMetadataRetrieverBuild.release();
        parcelFileDescriptor.close();
        return frameAtTime;
    }

    public VideoBitmapDecoder(MediaMetadataRetrieverFactory mediaMetadataRetrieverFactory) {
        this(mediaMetadataRetrieverFactory, -1);
    }

    public VideoBitmapDecoder(MediaMetadataRetrieverFactory mediaMetadataRetrieverFactory, int i) {
        this.factory = mediaMetadataRetrieverFactory;
        this.frame = i;
    }
}
