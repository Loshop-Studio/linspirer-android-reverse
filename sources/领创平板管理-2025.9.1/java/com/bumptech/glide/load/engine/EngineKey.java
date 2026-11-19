package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.Encoder;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.ResourceEncoder;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.resource.transcode.ResourceTranscoder;
import com.huawei.hem.CompilerOutline;
import java.nio.ByteBuffer;
import java.security.MessageDigest;

/* loaded from: classes.dex */
public class EngineKey implements Key {
    public static final String EMPTY_LOG_STRING = "";
    public final ResourceDecoder cacheDecoder;
    public final ResourceDecoder decoder;
    public final ResourceEncoder encoder;
    public int hashCode;
    public final int height;

    /* renamed from: id */
    public final String f2120id;
    public Key originalKey;
    public final Key signature;
    public final Encoder sourceEncoder;
    public String stringKey;
    public final ResourceTranscoder transcoder;
    public final Transformation transformation;
    public final int width;

    public EngineKey(String str, Key key, int i, int i2, ResourceDecoder resourceDecoder, ResourceDecoder resourceDecoder2, Transformation transformation, ResourceEncoder resourceEncoder, ResourceTranscoder resourceTranscoder, Encoder encoder) {
        this.f2120id = str;
        this.signature = key;
        this.width = i;
        this.height = i2;
        this.cacheDecoder = resourceDecoder;
        this.decoder = resourceDecoder2;
        this.transformation = transformation;
        this.encoder = resourceEncoder;
        this.transcoder = resourceTranscoder;
        this.sourceEncoder = encoder;
    }

    @Override // com.bumptech.glide.load.Key
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || EngineKey.class != obj.getClass()) {
            return false;
        }
        EngineKey engineKey = (EngineKey) obj;
        if (!this.f2120id.equals(engineKey.f2120id) || !this.signature.equals(engineKey.signature) || this.height != engineKey.height || this.width != engineKey.width) {
            return false;
        }
        if ((this.transformation == null) ^ (engineKey.transformation == null)) {
            return false;
        }
        Transformation transformation = this.transformation;
        if (transformation != null && !transformation.getId().equals(engineKey.transformation.getId())) {
            return false;
        }
        if ((this.decoder == null) ^ (engineKey.decoder == null)) {
            return false;
        }
        ResourceDecoder resourceDecoder = this.decoder;
        if (resourceDecoder != null && !resourceDecoder.getId().equals(engineKey.decoder.getId())) {
            return false;
        }
        if ((this.cacheDecoder == null) ^ (engineKey.cacheDecoder == null)) {
            return false;
        }
        ResourceDecoder resourceDecoder2 = this.cacheDecoder;
        if (resourceDecoder2 != null && !resourceDecoder2.getId().equals(engineKey.cacheDecoder.getId())) {
            return false;
        }
        if ((this.encoder == null) ^ (engineKey.encoder == null)) {
            return false;
        }
        ResourceEncoder resourceEncoder = this.encoder;
        if (resourceEncoder != null && !resourceEncoder.getId().equals(engineKey.encoder.getId())) {
            return false;
        }
        if ((this.transcoder == null) ^ (engineKey.transcoder == null)) {
            return false;
        }
        ResourceTranscoder resourceTranscoder = this.transcoder;
        if (resourceTranscoder != null && !resourceTranscoder.getId().equals(engineKey.transcoder.getId())) {
            return false;
        }
        if ((this.sourceEncoder == null) ^ (engineKey.sourceEncoder == null)) {
            return false;
        }
        Encoder encoder = this.sourceEncoder;
        return encoder == null || encoder.getId().equals(engineKey.sourceEncoder.getId());
    }

    public Key getOriginalKey() {
        if (this.originalKey == null) {
            this.originalKey = new OriginalKey(this.f2120id, this.signature);
        }
        return this.originalKey;
    }

    @Override // com.bumptech.glide.load.Key
    public int hashCode() {
        if (this.hashCode == 0) {
            int iHashCode = this.f2120id.hashCode();
            this.hashCode = iHashCode;
            int iHashCode2 = this.signature.hashCode() + (iHashCode * 31);
            this.hashCode = iHashCode2;
            int i = (iHashCode2 * 31) + this.width;
            this.hashCode = i;
            int i2 = (i * 31) + this.height;
            this.hashCode = i2;
            int i3 = i2 * 31;
            ResourceDecoder resourceDecoder = this.cacheDecoder;
            int iHashCode3 = i3 + (resourceDecoder != null ? resourceDecoder.getId().hashCode() : 0);
            this.hashCode = iHashCode3;
            int i4 = iHashCode3 * 31;
            ResourceDecoder resourceDecoder2 = this.decoder;
            int iHashCode4 = i4 + (resourceDecoder2 != null ? resourceDecoder2.getId().hashCode() : 0);
            this.hashCode = iHashCode4;
            int i5 = iHashCode4 * 31;
            Transformation transformation = this.transformation;
            int iHashCode5 = i5 + (transformation != null ? transformation.getId().hashCode() : 0);
            this.hashCode = iHashCode5;
            int i6 = iHashCode5 * 31;
            ResourceEncoder resourceEncoder = this.encoder;
            int iHashCode6 = i6 + (resourceEncoder != null ? resourceEncoder.getId().hashCode() : 0);
            this.hashCode = iHashCode6;
            int i7 = iHashCode6 * 31;
            ResourceTranscoder resourceTranscoder = this.transcoder;
            int iHashCode7 = i7 + (resourceTranscoder != null ? resourceTranscoder.getId().hashCode() : 0);
            this.hashCode = iHashCode7;
            int i8 = iHashCode7 * 31;
            Encoder encoder = this.sourceEncoder;
            this.hashCode = i8 + (encoder != null ? encoder.getId().hashCode() : 0);
        }
        return this.hashCode;
    }

    public String toString() {
        if (this.stringKey == null) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("EngineKey{");
            sbM1765j.append(this.f2120id);
            sbM1765j.append('+');
            sbM1765j.append(this.signature);
            sbM1765j.append("+[");
            sbM1765j.append(this.width);
            sbM1765j.append('x');
            sbM1765j.append(this.height);
            sbM1765j.append("]+");
            sbM1765j.append('\'');
            ResourceDecoder resourceDecoder = this.cacheDecoder;
            sbM1765j.append(resourceDecoder != null ? resourceDecoder.getId() : "");
            sbM1765j.append('\'');
            sbM1765j.append('+');
            sbM1765j.append('\'');
            ResourceDecoder resourceDecoder2 = this.decoder;
            sbM1765j.append(resourceDecoder2 != null ? resourceDecoder2.getId() : "");
            sbM1765j.append('\'');
            sbM1765j.append('+');
            sbM1765j.append('\'');
            Transformation transformation = this.transformation;
            sbM1765j.append(transformation != null ? transformation.getId() : "");
            sbM1765j.append('\'');
            sbM1765j.append('+');
            sbM1765j.append('\'');
            ResourceEncoder resourceEncoder = this.encoder;
            sbM1765j.append(resourceEncoder != null ? resourceEncoder.getId() : "");
            sbM1765j.append('\'');
            sbM1765j.append('+');
            sbM1765j.append('\'');
            ResourceTranscoder resourceTranscoder = this.transcoder;
            sbM1765j.append(resourceTranscoder != null ? resourceTranscoder.getId() : "");
            sbM1765j.append('\'');
            sbM1765j.append('+');
            sbM1765j.append('\'');
            Encoder encoder = this.sourceEncoder;
            sbM1765j.append(encoder != null ? encoder.getId() : "");
            sbM1765j.append('\'');
            sbM1765j.append('}');
            this.stringKey = sbM1765j.toString();
        }
        return this.stringKey;
    }

    @Override // com.bumptech.glide.load.Key
    public void updateDiskCacheKey(MessageDigest messageDigest) {
        byte[] bArrArray = ByteBuffer.allocate(8).putInt(this.width).putInt(this.height).array();
        this.signature.updateDiskCacheKey(messageDigest);
        messageDigest.update(this.f2120id.getBytes("UTF-8"));
        messageDigest.update(bArrArray);
        ResourceDecoder resourceDecoder = this.cacheDecoder;
        messageDigest.update((resourceDecoder != null ? resourceDecoder.getId() : "").getBytes("UTF-8"));
        ResourceDecoder resourceDecoder2 = this.decoder;
        messageDigest.update((resourceDecoder2 != null ? resourceDecoder2.getId() : "").getBytes("UTF-8"));
        Transformation transformation = this.transformation;
        messageDigest.update((transformation != null ? transformation.getId() : "").getBytes("UTF-8"));
        ResourceEncoder resourceEncoder = this.encoder;
        messageDigest.update((resourceEncoder != null ? resourceEncoder.getId() : "").getBytes("UTF-8"));
        Encoder encoder = this.sourceEncoder;
        messageDigest.update((encoder != null ? encoder.getId() : "").getBytes("UTF-8"));
    }
}
