package com.alibaba.sdk.android.push.p016b;

import com.alibaba.sdk.android.error.ErrorCode;

/* renamed from: com.alibaba.sdk.android.push.b.f */
/* loaded from: classes.dex */
public class C0555f extends Exception {

    /* renamed from: a */
    public ErrorCode f1098a;

    public C0555f(ErrorCode errorCode) {
        super(errorCode.toShortString());
        this.f1098a = errorCode;
    }

    /* renamed from: a */
    public ErrorCode m745a() {
        return this.f1098a;
    }
}
