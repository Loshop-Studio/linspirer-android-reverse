package com.huawei.hem;

import com.huawei.hem.OkHttpInterceptor;
import java.io.IOException;

/* compiled from: ConnectInterceptor.java */
/* renamed from: com.huawei.hem.bl */
/* loaded from: classes.dex */
public final class ConnectInterceptor implements OkHttpInterceptor {
    public ConnectInterceptor(OkHttpClient c0910dk) {
    }

    @Override // com.huawei.hem.InterfaceC0832ak
    /* renamed from: a */
    public OkHttpResponse mo1363a(OkHttpInterceptor.a aVar) {
        RealInterceptorChain c1240ql = (RealInterceptorChain) aVar;
        OkHttpRequest c0988gk = c1240ql.f3581e;
        Transmitter c1089kl = c1240ql.f3578b;
        boolean z = !c0988gk.f2786b.equals("GET");
        synchronized (c1089kl.f3119b) {
            if (c1089kl.f3132o) {
                throw new IllegalStateException("released");
            }
            if (c1089kl.f3127j != null) {
                throw new IllegalStateException("cannot make a new request because the previous response is still open: please call response.close()");
            }
        }
        ExchangeFinder c0937el = c1089kl.f3125h;
        OkHttpClient c0910dk = c1089kl.f3118a;
        if (c0937el == null) {
            throw null;
        }
        try {
            Exchange c0911dl = new Exchange(c1089kl, c1089kl.f3120c, c1089kl.f3121d, c1089kl.f3125h, c0937el.m1685b(c1240ql.f3583g, c1240ql.f3584h, c1240ql.f3585i, c0910dk.f2416B, c0910dk.f2439w, z).m1832h(c0910dk, aVar));
            synchronized (c1089kl.f3119b) {
                c1089kl.f3127j = c0911dl;
                c1089kl.f3128k = false;
                c1089kl.f3129l = false;
            }
            return c1240ql.m2646b(c0988gk, c1089kl, c0911dl);
        } catch (RouteException e) {
            c0937el.m1688e();
            throw e;
        } catch (IOException e2) {
            c0937el.m1688e();
            throw new RouteException(e2);
        }
    }
}
