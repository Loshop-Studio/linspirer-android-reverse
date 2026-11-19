package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.Key;
import java.security.MessageDigest;

/* loaded from: classes.dex */
public class OriginalKey implements Key {

    /* renamed from: id */
    public final String f2121id;
    public final Key signature;

    public OriginalKey(String str, Key key) {
        this.f2121id = str;
        this.signature = key;
    }

    @Override // com.bumptech.glide.load.Key
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || OriginalKey.class != obj.getClass()) {
            return false;
        }
        OriginalKey originalKey = (OriginalKey) obj;
        return this.f2121id.equals(originalKey.f2121id) && this.signature.equals(originalKey.signature);
    }

    @Override // com.bumptech.glide.load.Key
    public int hashCode() {
        return this.signature.hashCode() + (this.f2121id.hashCode() * 31);
    }

    @Override // com.bumptech.glide.load.Key
    public void updateDiskCacheKey(MessageDigest messageDigest) {
        messageDigest.update(this.f2121id.getBytes("UTF-8"));
        this.signature.updateDiskCacheKey(messageDigest);
    }
}
