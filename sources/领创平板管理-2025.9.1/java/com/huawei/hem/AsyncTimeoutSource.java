package com.huawei.hem;

import java.io.IOException;

/* compiled from: AsyncTimeout.java */
/* renamed from: com.huawei.hem.en */
/* loaded from: classes.dex */
public class AsyncTimeoutSource implements Source {

    /* renamed from: a */
    public final /* synthetic */ Source f2566a;

    /* renamed from: b */
    public final /* synthetic */ OkioAsyncTimeout f2567b;

    public AsyncTimeoutSource(OkioAsyncTimeout c0965fn, Source interfaceC0836ao) {
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
                OkioAsyncTimeout c0965fn = this.f2567b;
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
    public long mo1380e(OkioBuffer c1016hn, long j) throws IOException {
        this.f2567b.m1837i();
        try {
            try {
                long jMo1380e = this.f2566a.mo1380e(c1016hn, j);
                this.f2567b.m1838j(true);
                return jMo1380e;
            } catch (IOException e) {
                OkioAsyncTimeout c0965fn = this.f2567b;
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
    public Timeout mo1381n() {
        return this.f2567b;
    }

    public String toString() {
        StringBuilder sbM1765j = CompilerOutline.m1765j("AsyncTimeout.source(");
        sbM1765j.append(this.f2566a);
        sbM1765j.append(")");
        return sbM1765j.toString();
    }
}
