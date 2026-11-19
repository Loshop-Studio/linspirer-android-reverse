package com.bumptech.glide.load.engine.prefill;

import android.graphics.Bitmap;
import com.huawei.hem.C0948f6;

/* loaded from: classes.dex */
public final class PreFillType {
    public static final Bitmap.Config DEFAULT_CONFIG = Bitmap.Config.RGB_565;
    public final Bitmap.Config config;
    public final int height;
    public final int weight;
    public final int width;

    public static class Builder {
        public Bitmap.Config config;
        public final int height;
        public int weight;
        public final int width;

        public Builder(int i) {
            this(i, i);
        }

        public PreFillType build() {
            return new PreFillType(this.width, this.height, this.config, this.weight);
        }

        public Bitmap.Config getConfig() {
            return this.config;
        }

        public Builder setConfig(Bitmap.Config config) {
            this.config = config;
            return this;
        }

        public Builder setWeight(int i) {
            if (i <= 0) {
                throw new IllegalArgumentException("Weight must be > 0");
            }
            this.weight = i;
            return this;
        }

        public Builder(int i, int i2) {
            this.weight = 1;
            if (i <= 0) {
                throw new IllegalArgumentException("Width must be > 0");
            }
            if (i2 <= 0) {
                throw new IllegalArgumentException("Height must be > 0");
            }
            this.width = i;
            this.height = i2;
        }
    }

    public PreFillType(int i, int i2, Bitmap.Config config, int i3) {
        if (config == null) {
            throw new NullPointerException("Config must not be null");
        }
        this.width = i;
        this.height = i2;
        this.config = config;
        this.weight = i3;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof PreFillType)) {
            return false;
        }
        PreFillType preFillType = (PreFillType) obj;
        return this.height == preFillType.height && this.width == preFillType.width && this.weight == preFillType.weight && this.config == preFillType.config;
    }

    public Bitmap.Config getConfig() {
        return this.config;
    }

    public int getHeight() {
        return this.height;
    }

    public int getWeight() {
        return this.weight;
    }

    public int getWidth() {
        return this.width;
    }

    public int hashCode() {
        return ((this.config.hashCode() + (((this.width * 31) + this.height) * 31)) * 31) + this.weight;
    }

    public String toString() {
        StringBuilder sbM1765j = C0948f6.m1765j("PreFillSize{width=");
        sbM1765j.append(this.width);
        sbM1765j.append(", height=");
        sbM1765j.append(this.height);
        sbM1765j.append(", config=");
        sbM1765j.append(this.config);
        sbM1765j.append(", weight=");
        sbM1765j.append(this.weight);
        sbM1765j.append('}');
        return sbM1765j.toString();
    }
}
