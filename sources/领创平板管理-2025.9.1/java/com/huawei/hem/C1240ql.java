package com.huawei.hem;

import com.huawei.hem.InterfaceC0832ak;
import java.util.List;
import javax.annotation.Nullable;

/* compiled from: RealInterceptorChain.java */
/* renamed from: com.huawei.hem.ql */
/* loaded from: classes.dex */
public final class C1240ql implements InterfaceC0832ak.a {

    /* renamed from: a */
    public final List<InterfaceC0832ak> f3577a;

    /* renamed from: b */
    public final C1089kl f3578b;

    /* renamed from: c */
    @Nullable
    public final C0911dl f3579c;

    /* renamed from: d */
    public final int f3580d;

    /* renamed from: e */
    public final C0988gk f3581e;

    /* renamed from: f */
    public final InterfaceC1087kj f3582f;

    /* renamed from: g */
    public final int f3583g;

    /* renamed from: h */
    public final int f3584h;

    /* renamed from: i */
    public final int f3585i;

    /* renamed from: j */
    public int f3586j;

    public C1240ql(List<InterfaceC0832ak> list, C1089kl c1089kl, @Nullable C0911dl c0911dl, int i, C0988gk c0988gk, InterfaceC1087kj interfaceC1087kj, int i2, int i3, int i4) {
        this.f3577a = list;
        this.f3578b = c1089kl;
        this.f3579c = c0911dl;
        this.f3580d = i;
        this.f3581e = c0988gk;
        this.f3582f = interfaceC1087kj;
        this.f3583g = i2;
        this.f3584h = i3;
        this.f3585i = i4;
    }

    /* renamed from: a */
    public C1088kk m2645a(C0988gk c0988gk) {
        return m2646b(c0988gk, this.f3578b, this.f3579c);
    }

    /* renamed from: b */
    public C1088kk m2646b(C0988gk c0988gk, C1089kl c1089kl, @Nullable C0911dl c0911dl) {
        if (this.f3580d >= this.f3577a.size()) {
            throw new AssertionError();
        }
        this.f3586j++;
        C0911dl c0911dl2 = this.f3579c;
        if (c0911dl2 != null && !c0911dl2.m1614b().m1835k(c0988gk.f2785a)) {
            StringBuilder sbM1765j = C0948f6.m1765j("network interceptor ");
            sbM1765j.append(this.f3577a.get(this.f3580d - 1));
            sbM1765j.append(" must retain the same host and port");
            throw new IllegalStateException(sbM1765j.toString());
        }
        if (this.f3579c != null && this.f3586j > 1) {
            StringBuilder sbM1765j2 = C0948f6.m1765j("network interceptor ");
            sbM1765j2.append(this.f3577a.get(this.f3580d - 1));
            sbM1765j2.append(" must call proceed() exactly once");
            throw new IllegalStateException(sbM1765j2.toString());
        }
        C1240ql c1240ql = new C1240ql(this.f3577a, c1089kl, c0911dl, this.f3580d + 1, c0988gk, this.f3582f, this.f3583g, this.f3584h, this.f3585i);
        InterfaceC0832ak interfaceC0832ak = this.f3577a.get(this.f3580d);
        C1088kk c1088kkMo1363a = interfaceC0832ak.mo1363a(c1240ql);
        if (c0911dl != null && this.f3580d + 1 < this.f3577a.size() && c1240ql.f3586j != 1) {
            throw new IllegalStateException("network interceptor " + interfaceC0832ak + " must call proceed() exactly once");
        }
        if (c1088kkMo1363a == null) {
            throw new NullPointerException("interceptor " + interfaceC0832ak + " returned null");
        }
        if (c1088kkMo1363a.f3097g != null) {
            return c1088kkMo1363a;
        }
        throw new IllegalStateException("interceptor " + interfaceC0832ak + " returned a response with no body");
    }
}
