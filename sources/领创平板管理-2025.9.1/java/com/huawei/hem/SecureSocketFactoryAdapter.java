package com.huawei.hem;

import android.content.Context;
import android.os.AsyncTask;
import java.io.IOException;
import java.io.InputStream;
import java.net.InetAddress;
import java.net.Socket;
import java.security.KeyManagementException;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;
import org.apache.http.conn.ssl.BrowserCompatHostnameVerifier;
import org.apache.http.conn.ssl.StrictHostnameVerifier;

/* renamed from: com.huawei.hem.gb */
/* loaded from: classes.dex */
public class SecureSocketFactoryAdapter extends SSLSocketFactory {

    /* renamed from: f */
    public static final String f2760f;

    /* renamed from: g */
    public static volatile SecureSocketFactoryAdapter f2761g;

    /* renamed from: a */
    public SSLContext f2762a;

    /* renamed from: b */
    public SSLSocket f2763b = null;

    /* renamed from: c */
    public Context f2764c;

    /* renamed from: d */
    public String[] f2765d;

    /* renamed from: e */
    public X509TrustManager f2766e;

    static {
        new BrowserCompatHostnameVerifier();
        new StrictHostnameVerifier();
        f2760f = SecureSocketFactoryAdapter.class.getSimpleName();
        f2761g = null;
    }

    public SecureSocketFactoryAdapter(Context context) throws KeyManagementException {
        this.f2762a = null;
        if (context == null) {
            MobileSdkPlatformUtilities.m2264E(f2760f, "SecureSSLSocketFactory: context is null");
            return;
        }
        this.f2764c = context.getApplicationContext();
        this.f2762a = TlsSocketOptions.m1789c();
        System.currentTimeMillis();
        MobileSdkPlatformUtilities.m2289l(context);
        if (SecureTrustManagerHolder.f2820a == null) {
            synchronized (SecureTrustManagerHolder.class) {
                if (SecureTrustManagerHolder.f2820a == null) {
                    InputStream inputStreamM2366j = SdkTrustStoreFiles.m2366j(context);
                    if (inputStreamM2366j == null) {
                        MobileSdkPlatformUtilities.m2267H("SecureX509SingleInstance", "get assets bks");
                        inputStreamM2366j = context.getAssets().open("hmsrootcas.bks");
                    } else {
                        MobileSdkPlatformUtilities.m2267H("SecureX509SingleInstance", "get files bks");
                    }
                    SecureTrustManagerHolder.f2820a = new SdkCertificateTrustManager(inputStreamM2366j, "");
                    new TrustStoreRefreshTask().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, context);
                }
            }
        }
        System.currentTimeMillis();
        SdkCertificateTrustManager c1029ib = SecureTrustManagerHolder.f2820a;
        this.f2766e = c1029ib;
        this.f2762a.init(null, new X509TrustManager[]{c1029ib}, null);
    }

    /* renamed from: b */
    public static SecureSocketFactoryAdapter m1856b(Context context) {
        System.currentTimeMillis();
        MobileSdkPlatformUtilities.m2289l(context);
        if (f2761g == null) {
            synchronized (SecureSocketFactoryAdapter.class) {
                if (f2761g == null) {
                    f2761g = new SecureSocketFactoryAdapter(context);
                }
            }
        }
        if (f2761g.f2764c == null && context != null) {
            SecureSocketFactoryAdapter c0979gb = f2761g;
            if (c0979gb == null) {
                throw null;
            }
            c0979gb.f2764c = context.getApplicationContext();
        }
        System.currentTimeMillis();
        return f2761g;
    }

    /* renamed from: a */
    public final void m1857a(Socket socket) {
        boolean z;
        boolean z2 = true;
        if (MobileSdkPlatformUtilities.m2299v(null)) {
            z = false;
        } else {
            MobileSdkPlatformUtilities.m2267H(f2760f, "set protocols");
            z = true;
        }
        if (MobileSdkPlatformUtilities.m2299v(null) && MobileSdkPlatformUtilities.m2299v(null)) {
            z2 = false;
        } else {
            MobileSdkPlatformUtilities.m2267H(f2760f, "set white cipher or black cipher");
            SSLSocket sSLSocket = (SSLSocket) socket;
            TlsSocketOptions.m1788b(sSLSocket);
            if (MobileSdkPlatformUtilities.m2299v(null)) {
                TlsSocketOptions.m1787a(sSLSocket, null);
            } else {
                TlsSocketOptions.m1790d(sSLSocket, null);
            }
        }
        if (!z) {
            MobileSdkPlatformUtilities.m2267H(f2760f, "set default protocols");
            TlsSocketOptions.m1788b((SSLSocket) socket);
        }
        if (z2) {
            return;
        }
        MobileSdkPlatformUtilities.m2267H(f2760f, "set default cipher suites");
        SSLSocket sSLSocket2 = (SSLSocket) socket;
        if (sSLSocket2 == null || TlsSocketOptions.m1790d(sSLSocket2, TlsSocketOptions.f2644b)) {
            return;
        }
        TlsSocketOptions.m1787a(sSLSocket2, TlsSocketOptions.f2645c);
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i) {
        MobileSdkPlatformUtilities.m2267H(f2760f, "createSocket: host , port");
        Socket socketCreateSocket = this.f2762a.getSocketFactory().createSocket(str, i);
        if (socketCreateSocket instanceof SSLSocket) {
            m1857a(socketCreateSocket);
            SSLSocket sSLSocket = (SSLSocket) socketCreateSocket;
            this.f2763b = sSLSocket;
            this.f2765d = (String[]) sSLSocket.getEnabledCipherSuites().clone();
        }
        return socketCreateSocket;
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getDefaultCipherSuites() {
        return new String[0];
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getSupportedCipherSuites() {
        String[] strArr = this.f2765d;
        return strArr != null ? strArr : new String[0];
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i) {
        return createSocket(inetAddress.getHostAddress(), i);
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i, InetAddress inetAddress, int i2) {
        return createSocket(str, i);
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i, InetAddress inetAddress2, int i2) {
        return createSocket(inetAddress.getHostAddress(), i);
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public Socket createSocket(Socket socket, String str, int i, boolean z) throws IOException {
        MobileSdkPlatformUtilities.m2267H(f2760f, "createSocket s host port autoClose");
        Socket socketCreateSocket = this.f2762a.getSocketFactory().createSocket(socket, str, i, z);
        if (socketCreateSocket instanceof SSLSocket) {
            m1857a(socketCreateSocket);
            SSLSocket sSLSocket = (SSLSocket) socketCreateSocket;
            this.f2763b = sSLSocket;
            this.f2765d = (String[]) sSLSocket.getEnabledCipherSuites().clone();
        }
        return socketCreateSocket;
    }

    public SecureSocketFactoryAdapter(X509TrustManager x509TrustManager) throws KeyManagementException {
        this.f2762a = null;
        SSLContext sSLContextM1789c = TlsSocketOptions.m1789c();
        this.f2762a = sSLContextM1789c;
        this.f2766e = x509TrustManager;
        sSLContextM1789c.init(null, new X509TrustManager[]{x509TrustManager}, null);
    }
}
