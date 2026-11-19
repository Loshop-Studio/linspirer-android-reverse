package com.bumptech.glide.load.model;

import android.os.ParcelFileDescriptor;
import com.bumptech.glide.load.Encoder;
import java.io.InputStream;
import java.io.OutputStream;

/* loaded from: classes.dex */
public class ImageVideoWrapperEncoder implements Encoder<ImageVideoWrapper> {
    public final Encoder<ParcelFileDescriptor> fileDescriptorEncoder;

    /* renamed from: id */
    public String f2122id;
    public final Encoder<InputStream> streamEncoder;

    public ImageVideoWrapperEncoder(Encoder<InputStream> encoder, Encoder<ParcelFileDescriptor> encoder2) {
        this.streamEncoder = encoder;
        this.fileDescriptorEncoder = encoder2;
    }

    @Override // com.bumptech.glide.load.Encoder
    public String getId() {
        if (this.f2122id == null) {
            this.f2122id = this.streamEncoder.getId() + this.fileDescriptorEncoder.getId();
        }
        return this.f2122id;
    }

    @Override // com.bumptech.glide.load.Encoder
    public boolean encode(ImageVideoWrapper imageVideoWrapper, OutputStream outputStream) {
        return imageVideoWrapper.getStream() != null ? this.streamEncoder.encode(imageVideoWrapper.getStream(), outputStream) : this.fileDescriptorEncoder.encode(imageVideoWrapper.getFileDescriptor(), outputStream);
    }
}
