package com.alibaba.sdk.android.logger.interceptor;

import com.alibaba.sdk.android.logger.ILogger;
import com.alibaba.sdk.android.logger.LogLevel;

/* renamed from: com.alibaba.sdk.android.logger.interceptor.a */
/* loaded from: classes.dex */
public class LogOutputInterceptor implements ILogInterceptor {

    /* renamed from: a */
    public LogOutputStage f988a;

    public LogOutputInterceptor(LogOutputStage interfaceC0546d) {
        this.f988a = interfaceC0546d;
    }

    @Override // com.alibaba.sdk.android.logger.interceptor.ILogInterceptor
    public void handle(final InterceptorManager interceptorManager, int i, LogLevel logLevel, String str, Object[] objArr) {
        this.f988a.mo689a(logLevel, str, objArr, new ILogger() { // from class: com.alibaba.sdk.android.logger.interceptor.a.1
            @Override // com.alibaba.sdk.android.logger.ILogger
            public void print(LogLevel logLevel2, String str2, String str3) {
                interceptorManager.toNextLoggerInterceptor(-1, logLevel2, str2, str3);
            }
        });
    }
}
