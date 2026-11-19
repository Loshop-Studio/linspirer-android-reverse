package com.alibaba.sdk.android.logger;

import com.alibaba.sdk.android.logger.interceptor.LogOutputInterceptor;
import com.alibaba.sdk.android.logger.interceptor.LogPrintAdapter;
import com.alibaba.sdk.android.logger.interceptor.InterceptorManager;
import com.alibaba.sdk.android.logger.p013a.SdkObjectLogFormatter;
import com.alibaba.sdk.android.logger.p014b.LogCallerLocationFormatter;
import com.alibaba.sdk.android.logger.p014b.SdkLogLevelControl;
import com.alibaba.sdk.android.logger.p014b.SdkForwardingLogInterceptor;
import com.alibaba.sdk.android.logger.p014b.ControlledLoggerDispatcher;
import com.alibaba.sdk.android.logger.p014b.SdkTaggedLogger;
import com.alibaba.sdk.android.logger.p014b.SdkLogTagFormatter;
import com.alibaba.sdk.android.logger.p014b.SdkLoggerOutput;

/* loaded from: classes.dex */
public class BaseSdkLogApi {

    /* renamed from: a */
    public SdkLogTagFormatter f962a;

    /* renamed from: d */
    public InterceptorManager f965d;

    /* renamed from: c */
    public SdkObjectLogFormatter f964c = new SdkObjectLogFormatter();

    /* renamed from: e */
    public SdkLogLevelControl f966e = new SdkLogLevelControl();

    /* renamed from: b */
    public ControlledLoggerDispatcher f963b = new ControlledLoggerDispatcher(this.f966e);

    public BaseSdkLogApi(String str, boolean z) {
        this.f962a = new SdkLogTagFormatter(str);
        InterceptorManager interceptorManager = new InterceptorManager(new LogOutputInterceptor(new SdkLoggerOutput(this.f964c)), new LogPrintAdapter(this.f963b));
        this.f965d = interceptorManager;
        interceptorManager.m692a(new SdkForwardingLogInterceptor(this.f963b));
        if (z) {
            this.f966e.m678a(LogLevel.DEBUG);
            this.f965d.m693a(new LogCallerLocationFormatter());
        }
    }

    public void addILogger(ILogger iLogger) {
        this.f963b.m684b(iLogger);
    }

    public <T> void addObjectFormat(Class<T> cls, IObjectLogFormat<T> iObjectLogFormat) {
        this.f964c.m675a(cls, iObjectLogFormat);
    }

    public void enable(boolean z) {
        this.f966e.m679a(z);
    }

    public LogBuilder getLogBuilder(Object obj) {
        return new LogBuilder(this.f965d, obj, this.f962a);
    }

    public ILog getLogger(Object obj) {
        return new SdkTaggedLogger(this.f962a.m686a(obj), this.f965d);
    }

    public void removeILogger(ILogger iLogger) {
        this.f963b.m685c(iLogger);
    }

    public void setILogger(ILogger iLogger) {
        this.f963b.m682a(iLogger);
    }

    public void setLevel(LogLevel logLevel) {
        this.f966e.m678a(logLevel);
    }
}
