package anet.channel.strategy.dispatch;

import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSession;

/* compiled from: Taobao */
/* renamed from: anet.channel.strategy.dispatch.c */
/* loaded from: classes.dex */
public final class C0397c implements HostnameVerifier {
    @Override // javax.net.ssl.HostnameVerifier
    public boolean verify(String str, SSLSession sSLSession) {
        return HttpsURLConnection.getDefaultHostnameVerifier().verify(DispatchConstants.getAmdcServerDomain(), sSLSession);
    }
}
