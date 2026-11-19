package com.bumptech.glide.load.resource.bytes;

import com.bumptech.glide.load.engine.Resource;

/* loaded from: classes.dex */
public class BytesResource implements Resource<byte[]> {
    public final byte[] bytes;

    public BytesResource(byte[] bArr) {
        if (bArr == null) {
            throw new NullPointerException("Bytes must not be null");
        }
        this.bytes = bArr;
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public int getSize() {
        return this.bytes.length;
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public void recycle() {
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public byte[] get() {
        return this.bytes;
    }
}
