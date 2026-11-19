package com.huawei.hem;

import java.io.IOException;

/* compiled from: AsyncTimeout.java */
/* renamed from: com.huawei.hem.en */
/* loaded from: classes.dex */
public class C0939en implements InterfaceC0836ao {

    /* renamed from: a */
    public final /* synthetic */ InterfaceC0836ao f2566a;

    /* renamed from: b */
    public final /* synthetic */ C0965fn f2567b;

    public C0939en(C0965fn c0965fn, InterfaceC0836ao interfaceC0836ao) {
        this.f2567b = c0965fn;
        this.f2566a = interfaceC0836ao;
    }

    @Override // com.huawei.hem.InterfaceC0836ao, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f2567b.m1837i();
        try {
            try {
                this.f2566a.close();
                this.f2567b.m1838j(true);
            } catch (IOException e) {
                C0965fn c0965fn = this.f2567b;
                if (!c0965fn.m1839k()) {
                    throw e;
                }
                throw c0965fn.mo1840l(e);
            }
        } catch (Throwable th) {
            this.f2567b.m1838j(false);
            throw th;
        }
    }

    @Override // com.huawei.hem.InterfaceC0836ao
    /* renamed from: e */
    public long mo1380e(C1016hn c1016hn, long j) throws IOException {
        this.f2567b.m1837i();
        try {
            try {
                long jMo1380e = this.f2566a.mo1380e(c1016hn, j);
                this.f2567b.m1838j(true);
                return jMo1380e;
            } catch (IOException e) {
                C0965fn c0965fn = this.f2567b;
                if (c0965fn.m1839k()) {
                    throw c0965fn.mo1840l(e);
                }
                throw e;
            }
        } catch (Throwable th) {
            this.f2567b.m1838j(false);
            throw th;
        }
    }

    @Override // com.huawei.hem.InterfaceC0836ao
    /* renamed from: n */
    public C0862bo mo1381n() {
        return this.f2567b;
    }

    public String toString() {
        StringBuilder sbM1765j = C0948f6.m1765j("AsyncTimeout.source(");
        sbM1765j.append(this.f2566a);
        sbM1765j.append(")");
        return sbM1765j.toString();
    }
}
