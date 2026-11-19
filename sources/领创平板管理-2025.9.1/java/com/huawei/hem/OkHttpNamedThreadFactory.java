package com.huawei.hem;

import java.util.concurrent.ThreadFactory;

/* compiled from: lambda */
/* renamed from: com.huawei.hem.qk */
/* loaded from: classes.dex */
public final /* synthetic */ class OkHttpNamedThreadFactory implements ThreadFactory {

    /* renamed from: a */
    public final /* synthetic */ String f3575a;

    /* renamed from: b */
    public final /* synthetic */ boolean f3576b;

    public /* synthetic */ OkHttpNamedThreadFactory(String str, boolean z) {
        this.f3575a = str;
        this.f3576b = z;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        return OkHttpCommonUtilities.m2766u(this.f3575a, this.f3576b, runnable);
    }
}
