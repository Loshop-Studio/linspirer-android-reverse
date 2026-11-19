package anet.channel.util;

import android.util.Base64;
import java.net.InetSocketAddress;
import java.net.Proxy;

/* compiled from: Taobao */
/* renamed from: anet.channel.util.g */
/* loaded from: classes.dex */
public class HttpBasicCredentialEncoder {

    /* renamed from: a */
    public static HttpBasicCredentialEncoder f595a;

    /* renamed from: b */
    public final Proxy f596b;

    /* renamed from: c */
    public final String f597c;

    /* renamed from: d */
    public final String f598d;

    public HttpBasicCredentialEncoder(String str, int i, String str2, String str3) {
        this.f596b = new Proxy(Proxy.Type.HTTP, new InetSocketAddress(str, i));
        this.f597c = str2;
        this.f598d = str3;
    }

    /* renamed from: a */
    public static HttpBasicCredentialEncoder m360a() {
        return f595a;
    }

    /* renamed from: b */
    public Proxy m361b() {
        return this.f596b;
    }

    /* renamed from: c */
    public String m362c() {
        StringBuilder sb = new StringBuilder(32);
        sb.append(this.f597c);
        sb.append(":");
        sb.append(this.f598d);
        String strEncodeToString = Base64.encodeToString(sb.toString().getBytes(), 0);
        StringBuilder sb2 = new StringBuilder(64);
        sb2.append("Basic ");
        sb2.append(strEncodeToString);
        return sb2.toString();
    }
}
