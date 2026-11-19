package com.alibaba.sdk.android.push.common.util.p019a;

import com.alibaba.sdk.android.error.ErrorCode;

/* renamed from: com.alibaba.sdk.android.push.common.util.a.a */
/* loaded from: classes.dex */
public class C0563a extends Exception {

    /* renamed from: a */
    public ErrorCode f1153a;

    public C0563a(ErrorCode errorCode) {
        super(errorCode.toShortString());
        this.f1153a = errorCode;
    }

    /* renamed from: a */
    public ErrorCode m766a() {
        return this.f1153a;
    }
}
