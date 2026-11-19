package com.huawei.hem;

import javax.annotation.Nullable;

/* compiled from: Authenticator.java */
/* renamed from: com.huawei.hem.hj */
/* loaded from: classes.dex */
public interface OkHttpAuthenticator {

    /* renamed from: a */
    public static final OkHttpAuthenticator f2873a = new OkHttpAuthenticator() { // from class: com.huawei.hem.bj
        @Override // com.huawei.hem.InterfaceC1012hj
        /* renamed from: a */
        public final OkHttpRequest mo1420a(Route c1164nk, OkHttpResponse c1088kk) {
            return OkHttpNullAuthenticator.m1875a(c1164nk, c1088kk);
        }
    };

    @Nullable
    /* renamed from: a */
    OkHttpRequest mo1420a(@Nullable Route c1164nk, OkHttpResponse c1088kk);
}
