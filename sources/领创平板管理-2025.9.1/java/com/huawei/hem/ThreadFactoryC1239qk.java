package com.huawei.hem;

import java.util.concurrent.ThreadFactory;

/* compiled from: lambda */
/* renamed from: com.huawei.hem.qk */
/* loaded from: classes.dex */
public final /* synthetic */ class ThreadFactoryC1239qk implements ThreadFactory {

    /* renamed from: a */
    public final /* synthetic */ String f3575a;

    /* renamed from: b */
    public final /* synthetic */ boolean f3576b;

    public /* synthetic */ ThreadFactoryC1239qk(String str, boolean z) {
        this.f3575a = str;
        this.f3576b = z;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        return C1314tk.m2766u(this.f3575a, this.f3576b, runnable);
    }
}
