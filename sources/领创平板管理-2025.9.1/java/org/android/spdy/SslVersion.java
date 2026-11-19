package org.android.spdy;

/* loaded from: classes.dex */
public enum SslVersion {
    SLIGHT_VERSION_V1(0);

    public int code;

    SslVersion(int i) {
        this.code = i;
    }

    public int getint() {
        return this.code;
    }
}
