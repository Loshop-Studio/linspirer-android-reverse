package com.bumptech.glide.util;

import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class LruCache<T, Y> {
    public final LinkedHashMap<T, Y> cache = new LinkedHashMap<>(100, 0.75f, true);
    public int currentSize = 0;
    public final int initialMaxSize;
    public int maxSize;

    public LruCache(int i) {
        this.initialMaxSize = i;
        this.maxSize = i;
    }

    private void evict() {
        trimToSize(this.maxSize);
    }

    public void clearMemory() {
        trimToSize(0);
    }

    public boolean contains(T t) {
        return this.cache.containsKey(t);
    }

    public Y get(T t) {
        return this.cache.get(t);
    }

    public int getCurrentSize() {
        return this.currentSize;
    }

    public int getMaxSize() {
        return this.maxSize;
    }

    public int getSize(Y y) {
        return 1;
    }

    public void onItemEvicted(T t, Y y) {
    }

    public Y put(T t, Y y) {
        if (getSize(y) >= this.maxSize) {
            onItemEvicted(t, y);
            return null;
        }
        Y yPut = this.cache.put(t, y);
        if (y != null) {
            this.currentSize = getSize(y) + this.currentSize;
        }
        if (yPut != null) {
            this.currentSize -= getSize(yPut);
        }
        evict();
        return yPut;
    }

    public Y remove(T t) {
        Y yRemove = this.cache.remove(t);
        if (yRemove != null) {
            this.currentSize -= getSize(yRemove);
        }
        return yRemove;
    }

    public void setSizeMultiplier(float f) {
        if (f < 0.0f) {
            throw new IllegalArgumentException("Multiplier must be >= 0");
        }
        this.maxSize = Math.round(this.initialMaxSize * f);
        evict();
    }

    public void trimToSize(int i) {
        while (this.currentSize > i) {
            Map.Entry<T, Y> next = this.cache.entrySet().iterator().next();
            Y value = next.getValue();
            this.currentSize -= getSize(value);
            T key = next.getKey();
            this.cache.remove(key);
            onItemEvicted(key, value);
        }
    }
}
