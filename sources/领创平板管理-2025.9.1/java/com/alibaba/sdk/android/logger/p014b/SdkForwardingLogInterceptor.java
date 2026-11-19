package com.alibaba.sdk.android.logger.p014b;

import com.alibaba.sdk.android.logger.LogLevel;
import com.alibaba.sdk.android.logger.interceptor.ILogInterceptor;
import com.alibaba.sdk.android.logger.interceptor.InterceptorManager;

/* renamed from: com.alibaba.sdk.android.logger.b.c */
/* loaded from: classes.dex */
public class SdkForwardingLogInterceptor implements ILogInterceptor {

    /* renamed from: a */
    public ControlledLoggerDispatcher f972a;

    public SdkForwardingLogInterceptor(ControlledLoggerDispatcher c0539e) {
        this.f972a = c0539e;
    }

    @Override // com.alibaba.sdk.android.logger.interceptor.ILogInterceptor
    public void handle(InterceptorManager interceptorManager, int i, LogLevel logLevel, String str, Object[] objArr) {
        if (this.f972a.m683a(logLevel)) {
            interceptorManager.toNextLogInterceptor(i, logLevel, str, objArr);
        }
    }
}
