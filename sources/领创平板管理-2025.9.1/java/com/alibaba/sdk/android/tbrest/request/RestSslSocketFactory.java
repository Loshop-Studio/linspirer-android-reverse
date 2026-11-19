package com.alibaba.sdk.android.tbrest.request;

import android.net.SSLCertificateSocketFactory;
import com.alibaba.sdk.android.tbrest.utils.LogUtil;
import com.huawei.hem.CompilerOutline;
import com.taobao.accs.common.Constants;
import java.io.IOException;
import java.lang.reflect.Method;
import java.net.InetAddress;
import java.net.Socket;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;

/* compiled from: RestSslSocketFactory.java */
/* renamed from: com.alibaba.sdk.android.tbrest.request.a */
/* loaded from: classes.dex */
public class RestSslSocketFactory extends SSLSocketFactory {

    /* renamed from: a */
    public Method f1371a = null;

    /* renamed from: j */
    public String f1372j;

    public RestSslSocketFactory(String str) {
        this.f1372j = str;
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
        if (this.f1372j == null) {
            this.f1372j = str;
        }
        StringBuilder sbM1765j = CompilerOutline.m1765j(Constants.KEY_HOST);
        sbM1765j.append(this.f1372j);
        sbM1765j.append("port");
        sbM1765j.append(i);
        sbM1765j.append("autoClose");
        sbM1765j.append(z);
        LogUtil.m996d(sbM1765j.toString());
        InetAddress inetAddress = socket.getInetAddress();
        if (z) {
            socket.close();
        }
        SSLCertificateSocketFactory sSLCertificateSocketFactory = (SSLCertificateSocketFactory) SSLCertificateSocketFactory.getDefault(0);
        SSLSocket sSLSocket = (SSLSocket) sSLCertificateSocketFactory.createSocket(inetAddress, i);
        sSLSocket.setEnabledProtocols(sSLSocket.getSupportedProtocols());
        sSLCertificateSocketFactory.setHostname(sSLSocket, this.f1372j);
        sSLSocket.getSession();
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
