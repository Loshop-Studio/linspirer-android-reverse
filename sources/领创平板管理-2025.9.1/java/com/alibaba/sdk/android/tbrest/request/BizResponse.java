package com.alibaba.sdk.android.tbrest.request;

/* loaded from: classes.dex */
public class BizResponse {
    public static final int DENY_SERVICE = 107;
    public static final int NGX_ADASH_DENY_SERVICE = 116;
    public static final int NGX_ADASH_DISABLE_RTLOG = 115;
    public static final int NGX_ADASH_DOWNGRADE_V1 = 109;
    public static final int NO_ERROR = 0;
    public static final int UNKNOWN_ERROR = -1;
    public String data;
    public int errCode = -1;

    /* renamed from: rt */
    public long f1370rt = 0;

    public boolean isSuccess() {
        return this.errCode == 0;
    }
}
