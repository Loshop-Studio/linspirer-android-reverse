package com.alibaba.sdk.android.logger.interceptor;

import com.alibaba.sdk.android.logger.LogLevel;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class InterceptorManager {

    /* renamed from: a */
    public ArrayList<ILogInterceptor> f984a = new ArrayList<>();

    /* renamed from: b */
    public ArrayList<LogMessageStage> f985b = new ArrayList<>();

    /* renamed from: c */
    public LogOutputInterceptor f986c;

    /* renamed from: d */
    public LogPrintAdapter f987d;

    public InterceptorManager(LogOutputInterceptor c0543a, LogPrintAdapter c0544b) {
        this.f986c = c0543a;
        this.f987d = c0544b;
    }

    /* renamed from: a */
    public InterceptorManager m690a() {
        InterceptorManager interceptorManager = new InterceptorManager(this.f986c, this.f987d);
        interceptorManager.f984a.addAll(this.f984a);
        interceptorManager.f985b.addAll(this.f985b);
        return interceptorManager;
    }

    /* renamed from: a */
    public void m691a(LogLevel logLevel, String str, Object[] objArr) {
        toNextLogInterceptor(-1, logLevel, str, objArr);
    }

    /* renamed from: a */
    public void m692a(ILogInterceptor iLogInterceptor) {
        this.f984a.add(iLogInterceptor);
    }

    /* renamed from: a */
    public void m693a(LogMessageStage interfaceC0545c) {
        this.f985b.add(interfaceC0545c);
    }

    public void toNextLogInterceptor(int i, LogLevel logLevel, String str, Object[] objArr) {
        int i2 = i + 1;
        if (i2 >= this.f984a.size()) {
            this.f986c.handle(this, i2, logLevel, str, objArr);
        } else {
            this.f984a.get(i2).handle(this, i2, logLevel, str, objArr);
        }
    }

    public void toNextLoggerInterceptor(int i, LogLevel logLevel, String str, String str2) {
        int i2 = i + 1;
        if (i2 >= this.f985b.size()) {
            this.f987d.mo677a(this, i2, logLevel, str, str2);
        } else {
            this.f985b.get(i2).mo677a(this, i2, logLevel, str, str2);
        }
    }
}
