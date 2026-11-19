package com.huawei.hem;

import java.net.InetSocketAddress;
import java.net.Proxy;
import javax.annotation.Nullable;

/* compiled from: Route.java */
/* renamed from: com.huawei.hem.nk */
/* loaded from: classes.dex */
public final class Route {

    /* renamed from: a */
    public final OkHttpAddress f3353a;

    /* renamed from: b */
    public final Proxy f3354b;

    /* renamed from: c */
    public final InetSocketAddress f3355c;

    public Route(OkHttpAddress c0961fj, Proxy proxy, InetSocketAddress inetSocketAddress) {
        if (c0961fj == null) {
            throw new NullPointerException("address == null");
        }
        if (inetSocketAddress == null) {
            throw new NullPointerException("inetSocketAddress == null");
        }
        this.f3353a = c0961fj;
        this.f3354b = proxy;
        this.f3355c = inetSocketAddress;
    }

    /* renamed from: a */
    public boolean m2418a() {
        return this.f3353a.f2670i != null && this.f3354b.type() == Proxy.Type.HTTP;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof Route) {
            Route c1164nk = (Route) obj;
            if (c1164nk.f3353a.equals(this.f3353a) && c1164nk.f3354b.equals(this.f3354b) && c1164nk.f3355c.equals(this.f3355c)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return this.f3355c.hashCode() + ((this.f3354b.hashCode() + ((this.f3353a.hashCode() + 527) * 31)) * 31);
    }

    public String toString() {
        StringBuilder sbM1765j = CompilerOutline.m1765j("Route{");
        sbM1765j.append(this.f3355c);
        sbM1765j.append("}");
        return sbM1765j.toString();
    }
}
