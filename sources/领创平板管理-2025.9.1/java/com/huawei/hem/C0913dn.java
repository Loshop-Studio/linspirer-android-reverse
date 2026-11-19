package com.huawei.hem;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.IOException;

/* compiled from: AsyncTimeout.java */
/* renamed from: com.huawei.hem.dn */
/* loaded from: classes.dex */
public class C0913dn implements InterfaceC1467zn {

    /* renamed from: a */
    public final /* synthetic */ InterfaceC1467zn f2486a;

    /* renamed from: b */
    public final /* synthetic */ C0965fn f2487b;

    public C0913dn(C0965fn c0965fn, InterfaceC1467zn interfaceC1467zn) {
        this.f2487b = c0965fn;
        this.f2486a = interfaceC1467zn;
    }

    @Override // com.huawei.hem.InterfaceC1467zn, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f2487b.m1837i();
        try {
            try {
                this.f2486a.close();
                this.f2487b.m1838j(true);
            } catch (IOException e) {
                C0965fn c0965fn = this.f2487b;
                if (!c0965fn.m1839k()) {
                    throw e;
                }
                throw c0965fn.mo1840l(e);
            }
        } catch (Throwable th) {
            this.f2487b.m1838j(false);
            throw th;
        }
    }

    @Override // com.huawei.hem.InterfaceC1467zn, java.io.Flushable
    public void flush() throws IOException {
        this.f2487b.m1837i();
        try {
            try {
                this.f2486a.flush();
                this.f2487b.m1838j(true);
            } catch (IOException e) {
                C0965fn c0965fn = this.f2487b;
                if (!c0965fn.m1839k()) {
                    throw e;
                }
                throw c0965fn.mo1840l(e);
            }
        } catch (Throwable th) {
            this.f2487b.m1838j(false);
            throw th;
        }
    }

    @Override // com.huawei.hem.InterfaceC1467zn
    /* renamed from: n */
    public C0862bo mo1621n() {
        return this.f2487b;
    }

    @Override // com.huawei.hem.InterfaceC1467zn
    /* renamed from: p */
    public void mo1619p(C1016hn c1016hn, long j) throws IOException {
        C0888co.m1543b(c1016hn.f2884b, 0L, j);
        while (true) {
            long j2 = 0;
            if (j <= 0) {
                return;
            }
            C1392wn c1392wn = c1016hn.f2883a;
            while (true) {
                if (j2 >= PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH) {
                    break;
                }
                j2 += c1392wn.f4033c - c1392wn.f4032b;
                if (j2 >= j) {
                    j2 = j;
                    break;
                }
                c1392wn = c1392wn.f4036f;
            }
            this.f2487b.m1837i();
            try {
                try {
                    this.f2486a.mo1619p(c1016hn, j2);
                    j -= j2;
                    this.f2487b.m1838j(true);
                } catch (IOException e) {
                    C0965fn c0965fn = this.f2487b;
                    if (!c0965fn.m1839k()) {
                        throw e;
                    }
                    throw c0965fn.mo1840l(e);
                }
            } catch (Throwable th) {
                this.f2487b.m1838j(false);
                throw th;
            }
        }
    }

    public String toString() {
        StringBuilder sbM1765j = C0948f6.m1765j("AsyncTimeout.sink(");
        sbM1765j.append(this.f2486a);
        sbM1765j.append(")");
        return sbM1765j.toString();
    }
}
