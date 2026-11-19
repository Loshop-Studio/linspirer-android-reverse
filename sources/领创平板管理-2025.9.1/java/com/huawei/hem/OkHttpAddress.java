package com.huawei.hem;

import anet.channel.util.HttpConstant;
import com.huawei.hem.OkHttpUrl;
import java.net.Proxy;
import java.net.ProxySelector;
import java.util.List;
import java.util.Objects;
import javax.annotation.Nullable;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;

/* compiled from: Address.java */
/* renamed from: com.huawei.hem.fj */
/* loaded from: classes.dex */
public final class OkHttpAddress {

    /* renamed from: a */
    public final OkHttpUrl f2662a;

    /* renamed from: b */
    public final InterfaceC1338uj f2663b;

    /* renamed from: c */
    public final SocketFactory f2664c;

    /* renamed from: d */
    public final InterfaceC1012hj f2665d;

    /* renamed from: e */
    public final List<Protocol> f2666e;

    /* renamed from: f */
    public final List<ConnectionSpec> f2667f;

    /* renamed from: g */
    public final ProxySelector f2668g;

    /* renamed from: h */
    @Nullable
    public final Proxy f2669h;

    /* renamed from: i */
    @Nullable
    public final SSLSocketFactory f2670i;

    /* renamed from: j */
    @Nullable
    public final HostnameVerifier f2671j;

    /* renamed from: k */
    @Nullable
    public final CertificatePinner f2672k;

    public OkHttpAddress(String str, int i, InterfaceC1338uj interfaceC1338uj, SocketFactory socketFactory, @Nullable SSLSocketFactory sSLSocketFactory, @Nullable HostnameVerifier hostnameVerifier, @Nullable CertificatePinner c1138mj, InterfaceC1012hj interfaceC1012hj, @Nullable Proxy proxy, List<Protocol> list, List<ConnectionSpec> list2, ProxySelector proxySelector) {
        OkHttpUrl.a aVar = new OkHttpUrl.a();
        String str2 = sSLSocketFactory != null ? HttpConstant.HTTPS : HttpConstant.HTTP;
        if (str2.equalsIgnoreCase(HttpConstant.HTTP)) {
            aVar.f4319a = HttpConstant.HTTP;
        } else {
            if (!str2.equalsIgnoreCase(HttpConstant.HTTPS)) {
                throw new IllegalArgumentException(CompilerOutline.m1760e("unexpected scheme: ", str2));
            }
            aVar.f4319a = HttpConstant.HTTPS;
        }
        if (str == null) {
            throw new NullPointerException("host == null");
        }
        String strM3165b = OkHttpUrl.a.m3165b(str, 0, str.length());
        if (strM3165b == null) {
            throw new IllegalArgumentException(CompilerOutline.m1760e("unexpected host: ", str));
        }
        aVar.f4322d = strM3165b;
        if (i <= 0 || i > 65535) {
            throw new IllegalArgumentException(CompilerOutline.m1754L("unexpected port: ", i));
        }
        aVar.f4323e = i;
        this.f2662a = aVar.m3166a();
        if (interfaceC1338uj == null) {
            throw new NullPointerException("dns == null");
        }
        this.f2663b = interfaceC1338uj;
        if (socketFactory == null) {
            throw new NullPointerException("socketFactory == null");
        }
        this.f2664c = socketFactory;
        if (interfaceC1012hj == null) {
            throw new NullPointerException("proxyAuthenticator == null");
        }
        this.f2665d = interfaceC1012hj;
        if (list == null) {
            throw new NullPointerException("protocols == null");
        }
        this.f2666e = C1314tk.m2759n(list);
        if (list2 == null) {
            throw new NullPointerException("connectionSpecs == null");
        }
        this.f2667f = C1314tk.m2759n(list2);
        if (proxySelector == null) {
            throw new NullPointerException("proxySelector == null");
        }
        this.f2668g = proxySelector;
        this.f2669h = proxy;
        this.f2670i = sSLSocketFactory;
        this.f2671j = hostnameVerifier;
        this.f2672k = c1138mj;
    }

    /* renamed from: a */
    public boolean m1822a(OkHttpAddress c0961fj) {
        return this.f2663b.equals(c0961fj.f2663b) && this.f2665d.equals(c0961fj.f2665d) && this.f2666e.equals(c0961fj.f2666e) && this.f2667f.equals(c0961fj.f2667f) && this.f2668g.equals(c0961fj.f2668g) && Objects.equals(this.f2669h, c0961fj.f2669h) && Objects.equals(this.f2670i, c0961fj.f2670i) && Objects.equals(this.f2671j, c0961fj.f2671j) && Objects.equals(this.f2672k, c0961fj.f2672k) && this.f2662a.f4315e == c0961fj.f2662a.f4315e;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof OkHttpAddress) {
            OkHttpAddress c0961fj = (OkHttpAddress) obj;
            if (this.f2662a.equals(c0961fj.f2662a) && m1822a(c0961fj)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return Objects.hashCode(this.f2672k) + ((Objects.hashCode(this.f2671j) + ((Objects.hashCode(this.f2670i) + ((Objects.hashCode(this.f2669h) + ((this.f2668g.hashCode() + ((this.f2667f.hashCode() + ((this.f2666e.hashCode() + ((this.f2665d.hashCode() + ((this.f2663b.hashCode() + ((this.f2662a.hashCode() + 527) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31);
    }

    public String toString() {
        StringBuilder sbM1765j = CompilerOutline.m1765j("Address{");
        sbM1765j.append(this.f2662a.f4314d);
        sbM1765j.append(":");
        sbM1765j.append(this.f2662a.f4315e);
        if (this.f2669h != null) {
            sbM1765j.append(", proxy=");
            sbM1765j.append(this.f2669h);
        } else {
            sbM1765j.append(", proxySelector=");
            sbM1765j.append(this.f2668g);
        }
        sbM1765j.append("}");
        return sbM1765j.toString();
    }
}
