package com.alibaba.sdk.android.logger.p014b;

import com.alibaba.sdk.android.logger.LogLevel;
import com.alibaba.sdk.android.logger.interceptor.InterceptorManager;
import com.alibaba.sdk.android.logger.interceptor.InterfaceC0545c;
import com.huawei.hem.CompilerOutline;

/* renamed from: com.alibaba.sdk.android.logger.b.a */
/* loaded from: classes.dex */
public class C0535a implements InterfaceC0545c {
    /* renamed from: a */
    private String m676a() {
        StackTraceElement[] stackTrace = new Throwable().getStackTrace();
        for (int i = 1; i < stackTrace.length; i++) {
            if (!stackTrace[i].getClassName().startsWith("com.alibaba.sdk.android.logger")) {
                StringBuilder sbM1765j = CompilerOutline.m1765j("(");
                sbM1765j.append(stackTrace[i].getFileName());
                sbM1765j.append(":");
                sbM1765j.append(stackTrace[i].getLineNumber());
                sbM1765j.append(")");
                return sbM1765j.toString();
            }
        }
        return "";
    }

    @Override // com.alibaba.sdk.android.logger.interceptor.InterfaceC0545c
    /* renamed from: a */
    public void mo677a(InterceptorManager interceptorManager, int i, LogLevel logLevel, String str, String str2) {
        StringBuilder sbM1765j = CompilerOutline.m1765j(str2);
        sbM1765j.append(m676a());
        interceptorManager.toNextLoggerInterceptor(i, logLevel, str, sbM1765j.toString());
    }
}
