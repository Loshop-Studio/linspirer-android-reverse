package com.huawei.hem;

import com.huawei.hem.C1438yj;
import java.io.Closeable;
import java.io.IOException;
import javax.annotation.Nullable;

/* compiled from: Response.java */
/* renamed from: com.huawei.hem.kk */
/* loaded from: classes.dex */
public final class OkHttpResponse implements Closeable {

    /* renamed from: a */
    public final OkHttpRequest f3091a;

    /* renamed from: b */
    public final Protocol f3092b;

    /* renamed from: c */
    public final int f3093c;

    /* renamed from: d */
    public final String f3094d;

    /* renamed from: e */
    @Nullable
    public final Handshake f3095e;

    /* renamed from: f */
    public final C1438yj f3096f;

    /* renamed from: g */
    @Nullable
    public final AbstractC1139mk f3097g;

    /* renamed from: h */
    @Nullable
    public final OkHttpResponse f3098h;

    /* renamed from: i */
    @Nullable
    public final OkHttpResponse f3099i;

    /* renamed from: j */
    @Nullable
    public final OkHttpResponse f3100j;

    /* renamed from: k */
    public final long f3101k;

    /* renamed from: l */
    public final long f3102l;

    /* renamed from: m */
    @Nullable
    public final Exchange f3103m;

    /* renamed from: n */
    @Nullable
    public volatile CacheControl f3104n;

    public OkHttpResponse(a aVar) {
        this.f3091a = aVar.f3105a;
        this.f3092b = aVar.f3106b;
        this.f3093c = aVar.f3107c;
        this.f3094d = aVar.f3108d;
        this.f3095e = aVar.f3109e;
        C1438yj.a aVar2 = aVar.f3110f;
        if (aVar2 == null) {
            throw null;
        }
        this.f3096f = new C1438yj(aVar2);
        this.f3097g = aVar.f3111g;
        this.f3098h = aVar.f3112h;
        this.f3099i = aVar.f3113i;
        this.f3100j = aVar.f3114j;
        this.f3101k = aVar.f3115k;
        this.f3102l = aVar.f3116l;
        this.f3103m = aVar.f3117m;
    }

    /* renamed from: a */
    public CacheControl m2198a() {
        CacheControl c1062jj = this.f3104n;
        if (c1062jj != null) {
            return c1062jj;
        }
        CacheControl c1062jjM2133a = CacheControl.m2133a(this.f3096f);
        this.f3104n = c1062jjM2133a;
        return c1062jjM2133a;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        AbstractC1139mk abstractC1139mk = this.f3097g;
        if (abstractC1139mk == null) {
            throw new IllegalStateException("response is not eligible for a body and must not be closed");
        }
        abstractC1139mk.close();
    }

    public String toString() {
        StringBuilder sbM1765j = CompilerOutline.m1765j("Response{protocol=");
        sbM1765j.append(this.f3092b);
        sbM1765j.append(", code=");
        sbM1765j.append(this.f3093c);
        sbM1765j.append(", message=");
        sbM1765j.append(this.f3094d);
        sbM1765j.append(", url=");
        sbM1765j.append(this.f3091a.f2785a);
        sbM1765j.append('}');
        return sbM1765j.toString();
    }

    /* compiled from: Response.java */
    /* renamed from: com.huawei.hem.kk$a */
    public static class a {

        /* renamed from: a */
        @Nullable
        public OkHttpRequest f3105a;

        /* renamed from: b */
        @Nullable
        public Protocol f3106b;

        /* renamed from: c */
        public int f3107c;

        /* renamed from: d */
        public String f3108d;

        /* renamed from: e */
        @Nullable
        public Handshake f3109e;

        /* renamed from: f */
        public C1438yj.a f3110f;

        /* renamed from: g */
        @Nullable
        public AbstractC1139mk f3111g;

        /* renamed from: h */
        @Nullable
        public OkHttpResponse f3112h;

        /* renamed from: i */
        @Nullable
        public OkHttpResponse f3113i;

        /* renamed from: j */
        @Nullable
        public OkHttpResponse f3114j;

        /* renamed from: k */
        public long f3115k;

        /* renamed from: l */
        public long f3116l;

        /* renamed from: m */
        @Nullable
        public Exchange f3117m;

        public a() {
            this.f3107c = -1;
            this.f3110f = new C1438yj.a();
        }

        /* renamed from: a */
        public a m2199a(String str, String str2) {
            C1438yj.a aVar = this.f3110f;
            if (aVar == null) {
                throw null;
            }
            C1438yj.m3107a(str);
            C1438yj.m3108b(str2, str);
            aVar.f4230a.add(str);
            aVar.f4230a.add(str2.trim());
            return this;
        }

        /* renamed from: b */
        public OkHttpResponse m2200b() {
            if (this.f3105a == null) {
                throw new IllegalStateException("request == null");
            }
            if (this.f3106b == null) {
                throw new IllegalStateException("protocol == null");
            }
            if (this.f3107c >= 0) {
                if (this.f3108d != null) {
                    return new OkHttpResponse(this);
                }
                throw new IllegalStateException("message == null");
            }
            StringBuilder sbM1765j = CompilerOutline.m1765j("code < 0: ");
            sbM1765j.append(this.f3107c);
            throw new IllegalStateException(sbM1765j.toString());
        }

        /* renamed from: c */
        public a m2201c(@Nullable OkHttpResponse c1088kk) {
            if (c1088kk != null) {
                m2202d("cacheResponse", c1088kk);
            }
            this.f3113i = c1088kk;
            return this;
        }

        /* renamed from: d */
        public final void m2202d(String str, OkHttpResponse c1088kk) {
            if (c1088kk.f3097g != null) {
                throw new IllegalArgumentException(CompilerOutline.m1760e(str, ".body != null"));
            }
            if (c1088kk.f3098h != null) {
                throw new IllegalArgumentException(CompilerOutline.m1760e(str, ".networkResponse != null"));
            }
            if (c1088kk.f3099i != null) {
                throw new IllegalArgumentException(CompilerOutline.m1760e(str, ".cacheResponse != null"));
            }
            if (c1088kk.f3100j != null) {
                throw new IllegalArgumentException(CompilerOutline.m1760e(str, ".priorResponse != null"));
            }
        }

        /* renamed from: e */
        public a m2203e(C1438yj c1438yj) {
            this.f3110f = c1438yj.m3112e();
            return this;
        }

        public a(OkHttpResponse c1088kk) {
            this.f3107c = -1;
            this.f3105a = c1088kk.f3091a;
            this.f3106b = c1088kk.f3092b;
            this.f3107c = c1088kk.f3093c;
            this.f3108d = c1088kk.f3094d;
            this.f3109e = c1088kk.f3095e;
            this.f3110f = c1088kk.f3096f.m3112e();
            this.f3111g = c1088kk.f3097g;
            this.f3112h = c1088kk.f3098h;
            this.f3113i = c1088kk.f3099i;
            this.f3114j = c1088kk.f3100j;
            this.f3115k = c1088kk.f3101k;
            this.f3116l = c1088kk.f3102l;
            this.f3117m = c1088kk.f3103m;
        }
    }
}
