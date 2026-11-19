package com.alibaba.sdk.android.logger;

import com.alibaba.sdk.android.logger.interceptor.ILogInterceptor;
import com.alibaba.sdk.android.logger.interceptor.InterceptorManager;
import com.alibaba.sdk.android.logger.interceptor.InterfaceC0545c;
import com.alibaba.sdk.android.logger.p014b.C0540f;
import com.alibaba.sdk.android.logger.p014b.C0541g;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class LogBuilder {
    public Object instanceObject;
    public ArrayList<ILogInterceptor> logInterceptors = new ArrayList<>();
    public ArrayList<InterfaceC0545c> loggerInterceptors = new ArrayList<>();
    public InterceptorManager originInterceptorManager;
    public C0541g tagGenerator;

    public LogBuilder(InterceptorManager interceptorManager, Object obj, C0541g c0541g) {
        this.originInterceptorManager = interceptorManager;
        this.instanceObject = obj;
        this.tagGenerator = c0541g;
    }

    public LogBuilder addLogInterceptor(ILogInterceptor iLogInterceptor) {
        this.logInterceptors.add(iLogInterceptor);
        return this;
    }

    public LogBuilder addLoggerInterceptor(InterfaceC0545c interfaceC0545c) {
        this.loggerInterceptors.add(interfaceC0545c);
        return this;
    }

    public ILog build() {
        InterceptorManager interceptorManagerM690a = this.originInterceptorManager.m690a();
        Iterator<ILogInterceptor> it = this.logInterceptors.iterator();
        while (it.hasNext()) {
            interceptorManagerM690a.m692a(it.next());
        }
        Iterator<InterfaceC0545c> it2 = this.loggerInterceptors.iterator();
        while (it2.hasNext()) {
            interceptorManagerM690a.m693a(it2.next());
        }
        return new C0540f(this.tagGenerator.m686a(this.instanceObject), interceptorManagerM690a);
    }
}
