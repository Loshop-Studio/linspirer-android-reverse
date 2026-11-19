package com.p061ta.p062a.p064b;

import android.net.SSLCertificateSocketFactory;
import android.os.Build;
import android.text.TextUtils;
import com.huawei.hem.CompilerOutline;
import com.p061ta.p062a.p065c.C1882f;
import com.taobao.accs.common.Constants;
import java.lang.reflect.Method;
import java.net.InetAddress;
import java.net.Socket;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;

/* renamed from: com.ta.a.b.f */
/* loaded from: classes.dex */
public class C1874f extends SSLSocketFactory {

    /* renamed from: c */
    public String f5993c;

    /* renamed from: a */
    public Method f5992a = null;
    public HostnameVerifier hostnameVerifier = HttpsURLConnection.getDefaultHostnameVerifier();

    public C1874f(String str) {
        this.f5993c = str;
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket() {
        return null;
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i) {
        return null;
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i, InetAddress inetAddress, int i2) {
        return null;
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i) {
        return null;
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i, InetAddress inetAddress2, int i2) {
        return null;
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public Socket createSocket(Socket socket, String str, int i, boolean z) throws SSLPeerUnverifiedException {
        C1882f.m5407b("", "peerHost", this.f5993c, Constants.KEY_HOST, str, "port", Integer.valueOf(i), "autoClose", Boolean.valueOf(z));
        SSLCertificateSocketFactory sSLCertificateSocketFactory = (SSLCertificateSocketFactory) SSLCertificateSocketFactory.getDefault(0);
        if (Build.VERSION.SDK_INT < 24) {
            sSLCertificateSocketFactory.setTrustManagers(C1875g.getTrustManagers());
        } else {
            sSLCertificateSocketFactory.setTrustManagers(C1871c.getTrustManagers());
        }
        C1882f.m5404a("", "createSocket");
        SSLSocket sSLSocket = (SSLSocket) sSLCertificateSocketFactory.createSocket(socket, this.f5993c, i, true);
        C1882f.m5404a("", "createSocket end");
        sSLSocket.setEnabledProtocols(sSLSocket.getSupportedProtocols());
        sSLCertificateSocketFactory.setHostname(sSLSocket, this.f5993c);
        SSLSession session = sSLSocket.getSession();
        if (this.hostnameVerifier.verify(this.f5993c, session)) {
            C1882f.m5407b("", "SSLSession PeerHost", session.getPeerHost());
            return sSLSocket;
        }
        StringBuilder sbM1765j = CompilerOutline.m1765j("Cannot verify hostname: ");
        sbM1765j.append(this.f5993c);
        throw new SSLPeerUnverifiedException(sbM1765j.toString());
    }

    public boolean equals(Object obj) {
        if (TextUtils.isEmpty(this.f5993c) || !(obj instanceof C1874f)) {
            return false;
        }
        String str = ((C1874f) obj).f5993c;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return this.f5993c.equals(str);
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getDefaultCipherSuites() {
        return new String[0];
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getSupportedCipherSuites() {
        return new String[0];
    }
}
