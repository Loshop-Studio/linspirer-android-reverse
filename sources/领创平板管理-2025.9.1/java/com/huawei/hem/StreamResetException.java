package com.huawei.hem;

import java.io.IOException;

/* compiled from: StreamResetException.java */
/* renamed from: com.huawei.hem.qm */
/* loaded from: classes.dex */
public final class StreamResetException extends IOException {
    public final Http2ErrorCode errorCode;

    public StreamResetException(Http2ErrorCode enumC1390wl) {
        super("stream was reset: " + enumC1390wl);
        this.errorCode = enumC1390wl;
    }
}
