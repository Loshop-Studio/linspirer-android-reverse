package com.huawei.hem;

/* compiled from: ErrorCode.java */
/* renamed from: com.huawei.hem.wl */
/* loaded from: classes.dex */
public enum Http2ErrorCode {
    NO_ERROR(0),
    PROTOCOL_ERROR(1),
    INTERNAL_ERROR(2),
    FLOW_CONTROL_ERROR(3),
    REFUSED_STREAM(7),
    CANCEL(8),
    COMPRESSION_ERROR(9),
    CONNECT_ERROR(10),
    ENHANCE_YOUR_CALM(11),
    INADEQUATE_SECURITY(12),
    HTTP_1_1_REQUIRED(13);

    public final int httpCode;

    Http2ErrorCode(int i) {
        this.httpCode = i;
    }

    public static Http2ErrorCode fromHttp2(int i) {
        for (Http2ErrorCode enumC1390wl : values()) {
            if (enumC1390wl.httpCode == i) {
                return enumC1390wl;
            }
        }
        return null;
    }
}
