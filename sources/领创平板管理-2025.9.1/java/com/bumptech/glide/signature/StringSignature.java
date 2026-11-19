package com.bumptech.glide.signature;

import com.bumptech.glide.load.Key;
import com.huawei.hem.CompilerOutline;
import java.security.MessageDigest;

/* loaded from: classes.dex */
public class StringSignature implements Key {
    public final String signature;

    public StringSignature(String str) {
        if (str == null) {
            throw new NullPointerException("Signature cannot be null!");
        }
        this.signature = str;
    }

    @Override // com.bumptech.glide.load.Key
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || StringSignature.class != obj.getClass()) {
            return false;
        }
        return this.signature.equals(((StringSignature) obj).signature);
    }

    @Override // com.bumptech.glide.load.Key
    public int hashCode() {
        return this.signature.hashCode();
    }

    public String toString() {
        StringBuilder sbM1765j = CompilerOutline.m1765j("StringSignature{signature='");
        sbM1765j.append(this.signature);
        sbM1765j.append('\'');
        sbM1765j.append('}');
        return sbM1765j.toString();
    }

    @Override // com.bumptech.glide.load.Key
    public void updateDiskCacheKey(MessageDigest messageDigest) {
        messageDigest.update(this.signature.getBytes("UTF-8"));
    }
}
