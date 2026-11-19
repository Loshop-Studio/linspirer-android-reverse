package com.alibaba.sdk.android.logger;

import com.alibaba.sdk.android.logger.interceptor.C0543a;
import com.alibaba.sdk.android.logger.interceptor.C0544b;
import com.alibaba.sdk.android.logger.interceptor.InterceptorManager;
import com.alibaba.sdk.android.logger.p013a.C0534a;
import com.alibaba.sdk.android.logger.p014b.C0535a;
import com.alibaba.sdk.android.logger.p014b.C0536b;
import com.alibaba.sdk.android.logger.p014b.C0537c;
import com.alibaba.sdk.android.logger.p014b.C0539e;
import com.alibaba.sdk.android.logger.p014b.C0540f;
import com.alibaba.sdk.android.logger.p014b.C0541g;
import com.alibaba.sdk.android.logger.p014b.C0542h;

/* loaded from: classes.dex */
public class BaseSdkLogApi {

    /* renamed from: a */
    public C0541g f962a;

    /* renamed from: d */
    public InterceptorManager f965d;

    /* renamed from: c */
    public C0534a f964c = new C0534a();

    /* renamed from: e */
    public C0536b f966e = new C0536b();

    /* renamed from: b */
    public C0539e f963b = new C0539e(this.f966e);

    public BaseSdkLogApi(String str, boolean z) {
        this.f962a = new C0541g(str);
        InterceptorManager interceptorManager = new InterceptorManager(new C0543a(new C0542h(this.f964c)), new C0544b(this.f963b));
        this.f965d = interceptorManager;
        interceptorManager.m692a(new C0537c(this.f963b));
        if (z) {
            this.f966e.m678a(LogLevel.DEBUG);
            this.f965d.m693a(new C0535a());
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
        return new C0540f(this.f962a.m686a(obj), this.f965d);
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
