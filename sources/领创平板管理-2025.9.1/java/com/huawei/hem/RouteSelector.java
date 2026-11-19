package com.huawei.hem;

import java.net.InetSocketAddress;
import java.net.Proxy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* compiled from: RouteSelector.java */
/* renamed from: com.huawei.hem.jl */
/* loaded from: classes.dex */
public final class RouteSelector {

    /* renamed from: a */
    public final OkHttpAddress f2975a;

    /* renamed from: b */
    public final RouteDatabase f2976b;

    /* renamed from: c */
    public final Call f2977c;

    /* renamed from: d */
    public final EventListener f2978d;

    /* renamed from: e */
    public List<Proxy> f2979e;

    /* renamed from: f */
    public int f2980f;

    /* renamed from: g */
    public List<InetSocketAddress> f2981g = Collections.emptyList();

    /* renamed from: h */
    public final List<Route> f2982h = new ArrayList();

    /* compiled from: RouteSelector.java */
    /* renamed from: com.huawei.hem.jl$a */
    public static final class a {

        /* renamed from: a */
        public final List<Route> f2983a;

        /* renamed from: b */
        public int f2984b = 0;

        public a(List<Route> list) {
            this.f2983a = list;
        }

        /* renamed from: a */
        public boolean m2138a() {
            return this.f2984b < this.f2983a.size();
        }
    }

    public RouteSelector(OkHttpAddress c0961fj, RouteDatabase c1014hl, Call interfaceC1087kj, EventListener abstractC1363vj) {
        this.f2979e = Collections.emptyList();
        this.f2975a = c0961fj;
        this.f2976b = c1014hl;
        this.f2977c = interfaceC1087kj;
        this.f2978d = abstractC1363vj;
        OkHttpUrl c1463zj = c0961fj.f2662a;
        Proxy proxy = c0961fj.f2669h;
        if (proxy != null) {
            this.f2979e = Collections.singletonList(proxy);
        } else {
            List<Proxy> listSelect = c0961fj.f2668g.select(c1463zj.m3164p());
            this.f2979e = (listSelect == null || listSelect.isEmpty()) ? C1314tk.m2760o(Proxy.NO_PROXY) : C1314tk.m2759n(listSelect);
        }
        this.f2980f = 0;
    }

    /* renamed from: a */
    public boolean m2136a() {
        return m2137b() || !this.f2982h.isEmpty();
    }

    /* renamed from: b */
    public final boolean m2137b() {
        return this.f2980f < this.f2979e.size();
    }
}
