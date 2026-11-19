package com.huawei.hem;

import java.io.IOException;
import java.util.concurrent.TimeUnit;

/* compiled from: CacheInterceptor.java */
/* renamed from: com.huawei.hem.vk */
/* loaded from: classes.dex */
public class OkHttpCacheWritingSource implements Source {

    /* renamed from: a */
    public boolean f3970a;

    /* renamed from: b */
    public final /* synthetic */ BufferedSource f3971b;

    /* renamed from: c */
    public final /* synthetic */ CacheRequest f3972c;

    /* renamed from: d */
    public final /* synthetic */ BufferedSink f3973d;

    public OkHttpCacheWritingSource(OkHttpCacheInterceptor c1389wk, BufferedSource interfaceC1066jn, CacheRequest interfaceC1414xk, BufferedSink interfaceC1041in) {
        this.f3971b = interfaceC1066jn;
        this.f3972c = interfaceC1414xk;
        this.f3973d = interfaceC1041in;
    }

    @Override // com.huawei.hem.InterfaceC0836ao, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (!this.f3970a && !OkHttpCommonUtilities.m2755j(this, 100, TimeUnit.MILLISECONDS)) {
            this.f3970a = true;
            this.f3972c.m2950b();
        }
        this.f3971b.close();
    }

    @Override // com.huawei.hem.InterfaceC0836ao
    /* renamed from: e */
    public long mo1380e(OkioBuffer c1016hn, long j) throws IOException {
        try {
            long jMo1380e = this.f3971b.mo1380e(c1016hn, j);
            if (jMo1380e != -1) {
                c1016hn.m1998c(this.f3973d.mo2007m(), c1016hn.f2884b - jMo1380e, jMo1380e);
                this.f3973d.mo1975E();
                return jMo1380e;
            }
            if (!this.f3970a) {
                this.f3970a = true;
                this.f3973d.close();
            }
            return -1L;
        } catch (IOException e) {
            if (!this.f3970a) {
                this.f3970a = true;
                this.f3972c.m2950b();
            }
            throw e;
        }
    }

    @Override // com.huawei.hem.InterfaceC0836ao
    /* renamed from: n */
    public Timeout mo1381n() {
        return this.f3971b.mo1381n();
    }
}
