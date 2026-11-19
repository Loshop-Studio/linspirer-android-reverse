package anet.channel.util;

import android.net.SSLCertificateSocketFactory;
import com.taobao.accs.common.Constants;
import java.io.IOException;
import java.lang.reflect.Method;
import java.net.InetAddress;
import java.net.Socket;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;

/* compiled from: Taobao */
/* renamed from: anet.channel.util.j */
/* loaded from: classes.dex */
public class TlsSniSocketFactory extends SSLSocketFactory {

    /* renamed from: a */
    public final String f601a = "awcn.TlsSniSocketFactory";

    /* renamed from: b */
    public Method f602b = null;

    /* renamed from: c */
    public String f603c;

    public TlsSniSocketFactory(String str) {
        this.f603c = str;
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
    public Socket createSocket(Socket socket, String str, int i, boolean z) throws IOException {
        if (this.f603c == null) {
            this.f603c = str;
        }
        if (ALog.isPrintLog(1)) {
            ALog.m340i("awcn.TlsSniSocketFactory", "customized createSocket", null, Constants.KEY_HOST, this.f603c);
        }
        InetAddress inetAddress = socket.getInetAddress();
        if (z) {
            socket.close();
        }
        SSLCertificateSocketFactory sSLCertificateSocketFactory = (SSLCertificateSocketFactory) SSLCertificateSocketFactory.getDefault(0);
        SSLSocket sSLSocket = (SSLSocket) sSLCertificateSocketFactory.createSocket(inetAddress, i);
        sSLSocket.setEnabledProtocols(sSLSocket.getSupportedProtocols());
        sSLCertificateSocketFactory.setHostname(sSLSocket, this.f603c);
        SSLSession session = sSLSocket.getSession();
        if (ALog.isPrintLog(1)) {
            ALog.m337d("awcn.TlsSniSocketFactory", null, null, "SSLSession PeerHost", session.getPeerHost());
        }
        return sSLSocket;
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
