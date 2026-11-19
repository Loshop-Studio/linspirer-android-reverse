package com.huawei.hem;

import com.huawei.hem.InterfaceC0832ak;
import java.io.IOException;

/* compiled from: ConnectInterceptor.java */
/* renamed from: com.huawei.hem.bl */
/* loaded from: classes.dex */
public final class C0859bl implements InterfaceC0832ak {
    public C0859bl(C0910dk c0910dk) {
    }

    @Override // com.huawei.hem.InterfaceC0832ak
    /* renamed from: a */
    public C1088kk mo1363a(InterfaceC0832ak.a aVar) {
        C1240ql c1240ql = (C1240ql) aVar;
        C0988gk c0988gk = c1240ql.f3581e;
        C1089kl c1089kl = c1240ql.f3578b;
        boolean z = !c0988gk.f2786b.equals("GET");
        synchronized (c1089kl.f3119b) {
            if (c1089kl.f3132o) {
                throw new IllegalStateException("released");
            }
            if (c1089kl.f3127j != null) {
                throw new IllegalStateException("cannot make a new request because the previous response is still open: please call response.close()");
            }
        }
        C0937el c0937el = c1089kl.f3125h;
        C0910dk c0910dk = c1089kl.f3118a;
        if (c0937el == null) {
            throw null;
        }
        try {
            C0911dl c0911dl = new C0911dl(c1089kl, c1089kl.f3120c, c1089kl.f3121d, c1089kl.f3125h, c0937el.m1685b(c1240ql.f3583g, c1240ql.f3584h, c1240ql.f3585i, c0910dk.f2416B, c0910dk.f2439w, z).m1832h(c0910dk, aVar));
            synchronized (c1089kl.f3119b) {
                c1089kl.f3127j = c0911dl;
                c1089kl.f3128k = false;
                c1089kl.f3129l = false;
            }
            return c1240ql.m2646b(c0988gk, c1089kl, c0911dl);
        } catch (C1039il e) {
            c0937el.m1688e();
            throw e;
        } catch (IOException e2) {
            c0937el.m1688e();
            throw new C1039il(e2);
        }
    }
}
