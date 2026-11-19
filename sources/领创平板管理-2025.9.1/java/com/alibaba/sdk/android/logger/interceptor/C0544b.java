package com.alibaba.sdk.android.logger.interceptor;

import com.alibaba.sdk.android.logger.ILogger;
import com.alibaba.sdk.android.logger.LogLevel;

/* renamed from: com.alibaba.sdk.android.logger.interceptor.b */
/* loaded from: classes.dex */
public class C0544b implements InterfaceC0545c {

    /* renamed from: a */
    public ILogger f991a;

    public C0544b(ILogger iLogger) {
        this.f991a = iLogger;
    }

    @Override // com.alibaba.sdk.android.logger.interceptor.InterfaceC0545c
    /* renamed from: a */
    public void mo677a(InterceptorManager interceptorManager, int i, LogLevel logLevel, String str, String str2) {
        this.f991a.print(logLevel, str, str2);
    }
}
