package org.android.spdy;

/* loaded from: classes.dex */
public enum SpdyVersion {
    SPDY2(2),
    SPDY3(3),
    SPDY3DOT1(4);

    public int version;

    SpdyVersion(int i) {
        this.version = i;
    }

    public int getInt() {
        return this.version;
    }
}
