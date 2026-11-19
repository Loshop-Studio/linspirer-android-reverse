package com.huawei.hem;

import java.io.IOException;
import java.io.OutputStream;

/* compiled from: Okio.java */
/* renamed from: com.huawei.hem.qn */
/* loaded from: classes.dex */
public final class C1242qn implements Sink {

    /* renamed from: a */
    public final /* synthetic */ Timeout f3587a;

    /* renamed from: b */
    public final /* synthetic */ OutputStream f3588b;

    public C1242qn(Timeout c0862bo, OutputStream outputStream) {
        this.f3587a = c0862bo;
        this.f3588b = outputStream;
    }

    @Override // com.huawei.hem.InterfaceC1467zn, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f3588b.close();
    }

    @Override // com.huawei.hem.InterfaceC1467zn, java.io.Flushable
    public void flush() throws IOException {
        this.f3588b.flush();
    }

    @Override // com.huawei.hem.InterfaceC1467zn
    /* renamed from: n */
    public Timeout mo1621n() {
        return this.f3587a;
    }

    @Override // com.huawei.hem.InterfaceC1467zn
    /* renamed from: p */
    public void mo1619p(OkioBuffer c1016hn, long j) throws IOException {
        C0888co.m1543b(c1016hn.f2884b, 0L, j);
        while (j > 0) {
            this.f3587a.mo1431f();
            OkioSegment c1392wn = c1016hn.f2883a;
            int iMin = (int) Math.min(j, c1392wn.f4033c - c1392wn.f4032b);
            this.f3588b.write(c1392wn.f4031a, c1392wn.f4032b, iMin);
            int i = c1392wn.f4032b + iMin;
            c1392wn.f4032b = i;
            long j2 = iMin;
            j -= j2;
            c1016hn.f2884b -= j2;
            if (i == c1392wn.f4033c) {
                c1016hn.f2883a = c1392wn.m2916a();
                SegmentPool.m2951a(c1392wn);
            }
        }
    }

    public String toString() {
        StringBuilder sbM1765j = CompilerOutline.m1765j("sink(");
        sbM1765j.append(this.f3588b);
        sbM1765j.append(")");
        return sbM1765j.toString();
    }
}
