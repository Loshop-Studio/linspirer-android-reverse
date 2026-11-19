package anet.channel.session;

import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSession;

/* compiled from: Taobao */
/* renamed from: anet.channel.session.c */
/* loaded from: classes.dex */
public final class C0377c implements HostnameVerifier {

    /* renamed from: a */
    public final /* synthetic */ String f398a;

    public C0377c(String str) {
        this.f398a = str;
    }

    @Override // javax.net.ssl.HostnameVerifier
    public boolean verify(String str, SSLSession sSLSession) {
        return HttpsURLConnection.getDefaultHostnameVerifier().verify(this.f398a, sSLSession);
    }
}
