package com.bumptech.glide.util;

import com.huawei.hem.C0948f6;

/* loaded from: classes.dex */
public class MultiClassKey {
    public Class<?> first;
    public Class<?> second;

    public MultiClassKey() {
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || MultiClassKey.class != obj.getClass()) {
            return false;
        }
        MultiClassKey multiClassKey = (MultiClassKey) obj;
        return this.first.equals(multiClassKey.first) && this.second.equals(multiClassKey.second);
    }

    public int hashCode() {
        return this.second.hashCode() + (this.first.hashCode() * 31);
    }

    public void set(Class<?> cls, Class<?> cls2) {
        this.first = cls;
        this.second = cls2;
    }

    public String toString() {
        StringBuilder sbM1765j = C0948f6.m1765j("MultiClassKey{first=");
        sbM1765j.append(this.first);
        sbM1765j.append(", second=");
        sbM1765j.append(this.second);
        sbM1765j.append('}');
        return sbM1765j.toString();
    }

    public MultiClassKey(Class<?> cls, Class<?> cls2) {
        set(cls, cls2);
    }
}
