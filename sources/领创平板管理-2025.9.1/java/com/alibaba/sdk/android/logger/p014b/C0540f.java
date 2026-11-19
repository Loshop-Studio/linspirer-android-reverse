package com.alibaba.sdk.android.logger.p014b;

import com.alibaba.sdk.android.logger.ILog;
import com.alibaba.sdk.android.logger.LogLevel;
import com.alibaba.sdk.android.logger.interceptor.InterceptorManager;

/* renamed from: com.alibaba.sdk.android.logger.b.f */
/* loaded from: classes.dex */
public class C0540f implements ILog {

    /* renamed from: a */
    public String f978a;

    /* renamed from: b */
    public InterceptorManager f979b;

    public C0540f(String str, InterceptorManager interceptorManager) {
        this.f978a = str;
        this.f979b = interceptorManager;
    }

    @Override // com.alibaba.sdk.android.logger.ILog
    /* renamed from: d */
    public void mo664d(String str) {
        mo665d(str);
    }

    @Override // com.alibaba.sdk.android.logger.ILog
    /* renamed from: d */
    public void mo665d(Object... objArr) {
        this.f979b.m691a(LogLevel.DEBUG, this.f978a, objArr);
    }

    @Override // com.alibaba.sdk.android.logger.ILog
    /* renamed from: e */
    public void mo666e(String str) {
        mo668e(str);
    }

    @Override // com.alibaba.sdk.android.logger.ILog
    /* renamed from: e */
    public void mo667e(String str, Throwable th) {
        mo668e(str, th);
    }

    @Override // com.alibaba.sdk.android.logger.ILog
    /* renamed from: e */
    public void mo668e(Object... objArr) {
        this.f979b.m691a(LogLevel.ERROR, this.f978a, objArr);
    }

    @Override // com.alibaba.sdk.android.logger.ILog
    /* renamed from: i */
    public void mo669i(String str) {
        mo670i(str);
    }

    @Override // com.alibaba.sdk.android.logger.ILog
    /* renamed from: i */
    public void mo670i(Object... objArr) {
        this.f979b.m691a(LogLevel.INFO, this.f978a, objArr);
    }

    @Override // com.alibaba.sdk.android.logger.ILog
    /* renamed from: w */
    public void mo671w(String str) {
        mo673w(str);
    }

    @Override // com.alibaba.sdk.android.logger.ILog
    /* renamed from: w */
    public void mo672w(String str, Throwable th) {
        mo673w(str, th);
    }

    @Override // com.alibaba.sdk.android.logger.ILog
    /* renamed from: w */
    public void mo673w(Object... objArr) {
        this.f979b.m691a(LogLevel.WARN, this.f978a, objArr);
    }
}
