package com.huawei.hem;

import com.huawei.hem.OkHttpResponse;
import javax.annotation.Nullable;

/* compiled from: ExchangeCodec.java */
/* renamed from: com.huawei.hem.nl */
/* loaded from: classes.dex */
public interface ExchangeCodec {
    /* renamed from: a */
    void mo2139a();

    /* renamed from: b */
    void mo2140b(OkHttpRequest c0988gk);

    /* renamed from: c */
    void mo2141c();

    void cancel();

    /* renamed from: d */
    long mo2142d(OkHttpResponse c1088kk);

    /* renamed from: e */
    Source mo2143e(OkHttpResponse c1088kk);

    /* renamed from: f */
    Sink mo2144f(OkHttpRequest c0988gk, long j);

    @Nullable
    /* renamed from: g */
    OkHttpResponse.a mo2145g(boolean z);

    /* renamed from: h */
    RealConnection mo2146h();
}
