package com.huawei.hem;

import anet.channel.request.Request;
import com.huawei.hem.C1438yj;
import com.huawei.hem.OkHttpUrl;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import javax.annotation.Nullable;

/* compiled from: Request.java */
/* renamed from: com.huawei.hem.gk */
/* loaded from: classes.dex */
public final class OkHttpRequest {

    /* renamed from: a */
    public final OkHttpUrl f2785a;

    /* renamed from: b */
    public final String f2786b;

    /* renamed from: c */
    public final C1438yj f2787c;

    /* renamed from: d */
    @Nullable
    public final AbstractC1063jk f2788d;

    /* renamed from: e */
    public final Map<Class<?>, Object> f2789e;

    /* renamed from: f */
    @Nullable
    public volatile CacheControl f2790f;

    public OkHttpRequest(a aVar) {
        this.f2785a = aVar.f2791a;
        this.f2786b = aVar.f2792b;
        C1438yj.a aVar2 = aVar.f2793c;
        if (aVar2 == null) {
            throw null;
        }
        this.f2787c = new C1438yj(aVar2);
        this.f2788d = aVar.f2794d;
        this.f2789e = C1314tk.m2761p(aVar.f2795e);
    }

    /* renamed from: a */
    public CacheControl m1876a() {
        CacheControl c1062jj = this.f2790f;
        if (c1062jj != null) {
            return c1062jj;
        }
        CacheControl c1062jjM2133a = CacheControl.m2133a(this.f2787c);
        this.f2790f = c1062jjM2133a;
        return c1062jjM2133a;
    }

    public String toString() {
        StringBuilder sbM1765j = CompilerOutline.m1765j("Request{method=");
        sbM1765j.append(this.f2786b);
        sbM1765j.append(", url=");
        sbM1765j.append(this.f2785a);
        sbM1765j.append(", tags=");
        sbM1765j.append(this.f2789e);
        sbM1765j.append('}');
        return sbM1765j.toString();
    }

    /* compiled from: Request.java */
    /* renamed from: com.huawei.hem.gk$a */
    public static class a {

        /* renamed from: a */
        @Nullable
        public OkHttpUrl f2791a;

        /* renamed from: b */
        public String f2792b;

        /* renamed from: c */
        public C1438yj.a f2793c;

        /* renamed from: d */
        @Nullable
        public AbstractC1063jk f2794d;

        /* renamed from: e */
        public Map<Class<?>, Object> f2795e;

        public a() {
            this.f2795e = Collections.emptyMap();
            this.f2792b = "GET";
            this.f2793c = new C1438yj.a();
        }

        /* renamed from: a */
        public OkHttpRequest m1877a() {
            if (this.f2791a != null) {
                return new OkHttpRequest(this);
            }
            throw new IllegalStateException("url == null");
        }

        /* renamed from: b */
        public a m1878b(String str, String str2) {
            C1438yj.a aVar = this.f2793c;
            if (aVar == null) {
                throw null;
            }
            C1438yj.m3107a(str);
            C1438yj.m3108b(str2, str);
            aVar.m3116b(str);
            aVar.f4230a.add(str);
            aVar.f4230a.add(str2.trim());
            return this;
        }

        /* renamed from: c */
        public a m1879c(String str, @Nullable AbstractC1063jk abstractC1063jk) {
            if (str.length() == 0) {
                throw new IllegalArgumentException("method.length() == 0");
            }
            if (abstractC1063jk != null && !C1339uk.m2815a(str)) {
                throw new IllegalArgumentException(CompilerOutline.m1761f("method ", str, " must not have a request body."));
            }
            if (abstractC1063jk == null) {
                if (str.equals("POST") || str.equals(Request.Method.PUT) || str.equals("PATCH") || str.equals("PROPPATCH") || str.equals("REPORT")) {
                    throw new IllegalArgumentException(CompilerOutline.m1761f("method ", str, " must have a request body."));
                }
            }
            this.f2792b = str;
            this.f2794d = abstractC1063jk;
            return this;
        }

        /* renamed from: d */
        public a m1880d(@Nullable Object obj) {
            if (obj == null) {
                this.f2795e.remove(Object.class);
            } else {
                if (this.f2795e.isEmpty()) {
                    this.f2795e = new LinkedHashMap();
                }
                this.f2795e.put(Object.class, Object.class.cast(obj));
            }
            return this;
        }

        /* renamed from: e */
        public a m1881e(String str) {
            if (str == null) {
                throw new NullPointerException("url == null");
            }
            if (str.regionMatches(true, 0, "ws:", 0, 3)) {
                StringBuilder sbM1765j = CompilerOutline.m1765j("http:");
                sbM1765j.append(str.substring(3));
                str = sbM1765j.toString();
            } else if (str.regionMatches(true, 0, "wss:", 0, 4)) {
                StringBuilder sbM1765j2 = CompilerOutline.m1765j("https:");
                sbM1765j2.append(str.substring(4));
                str = sbM1765j2.toString();
            }
            OkHttpUrl.a aVar = new OkHttpUrl.a();
            aVar.m3168d(null, str);
            m1882f(aVar.m3166a());
            return this;
        }

        /* renamed from: f */
        public a m1882f(OkHttpUrl c1463zj) {
            if (c1463zj == null) {
                throw new NullPointerException("url == null");
            }
            this.f2791a = c1463zj;
            return this;
        }

        public a(OkHttpRequest c0988gk) {
            Map<Class<?>, Object> linkedHashMap;
            this.f2795e = Collections.emptyMap();
            this.f2791a = c0988gk.f2785a;
            this.f2792b = c0988gk.f2786b;
            this.f2794d = c0988gk.f2788d;
            if (c0988gk.f2789e.isEmpty()) {
                linkedHashMap = Collections.emptyMap();
            } else {
                linkedHashMap = new LinkedHashMap<>(c0988gk.f2789e);
            }
            this.f2795e = linkedHashMap;
            this.f2793c = c0988gk.f2787c.m3112e();
        }
    }
}
