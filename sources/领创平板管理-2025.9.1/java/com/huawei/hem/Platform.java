package com.huawei.hem;

import android.os.Build;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.security.NoSuchAlgorithmException;
import java.security.Security;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Nullable;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;

/* compiled from: Platform.java */
/* renamed from: com.huawei.hem.wm */
/* loaded from: classes.dex */
public class Platform {

    /* renamed from: a */
    public static final Platform f4029a;

    /* renamed from: b */
    public static final Logger f4030b;

    static {
        Platform c1391wmM2879p;
        AndroidPlatform c1291sm = null;
        if (m2915l()) {
            c1391wmM2879p = Android10Platform.m2666q();
            if (c1391wmM2879p == null) {
                if (m2915l()) {
                    try {
                        Class<?> cls = Class.forName("com.android.org.conscrypt.SSLParametersImpl");
                        Class<?> cls2 = Class.forName("com.android.org.conscrypt.OpenSSLSocketImpl");
                        try {
                            c1291sm = new AndroidPlatform(cls, cls2, cls2.getDeclaredMethod("setUseSessionTickets", Boolean.TYPE), cls2.getMethod("setHostname", String.class), cls2.getMethod("getAlpnSelectedProtocol", new Class[0]), cls2.getMethod("setAlpnProtocols", byte[].class));
                        } catch (NoSuchMethodException unused) {
                            StringBuilder sbM1765j = CompilerOutline.m1765j("Expected Android API level 21+ but was ");
                            sbM1765j.append(Build.VERSION.SDK_INT);
                            throw new IllegalStateException(sbM1765j.toString());
                        }
                    } catch (ClassNotFoundException unused2) {
                    }
                }
                if (c1291sm == null) {
                    throw new NullPointerException("No platform found on Android");
                }
                c1391wmM2879p = c1291sm;
            }
        } else {
            if ((!("conscrypt".equals(OkHttpCommonUtilities.m2757l("okhttp.platform", null)) ? true : "Conscrypt".equals(Security.getProviders()[0].getName())) || (c1391wmM2879p = ConscryptPlatform.m2773p()) == null) && (c1391wmM2879p = Jdk9Platform.m2879p()) == null && (c1391wmM2879p = Jdk8WithJettyBootPlatform.m2823p()) == null) {
                c1391wmM2879p = new Platform();
            }
        }
        f4029a = c1391wmM2879p;
        f4030b = Logger.getLogger(OkHttpClient.class.getName());
    }

    /* renamed from: b */
    public static List<String> m2913b(List<Protocol> list) {
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Protocol enumC0936ek = list.get(i);
            if (enumC0936ek != Protocol.HTTP_1_0) {
                arrayList.add(enumC0936ek.toString());
            }
        }
        return arrayList;
    }

    /* renamed from: e */
    public static byte[] m2914e(List<Protocol> list) {
        OkioBuffer c1016hn = new OkioBuffer();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Protocol enumC0936ek = list.get(i);
            if (enumC0936ek != Protocol.HTTP_1_0) {
                c1016hn.m1988R(enumC0936ek.toString().length());
                c1016hn.m1993W(enumC0936ek.toString());
            }
        }
        return c1016hn.mo2014v();
    }

    /* renamed from: l */
    public static boolean m2915l() {
        return "Dalvik".equals(System.getProperty("java.vm.name"));
    }

    /* renamed from: a */
    public void mo2824a(SSLSocket sSLSocket) {
    }

    /* renamed from: c */
    public CertificateChainCleaner mo2701c(X509TrustManager x509TrustManager) {
        return new BasicCertificateChainCleaner(mo2702d(x509TrustManager));
    }

    /* renamed from: d */
    public TrustRootIndex mo2702d(X509TrustManager x509TrustManager) {
        return new BasicTrustRootIndex(x509TrustManager.getAcceptedIssuers());
    }

    /* renamed from: f */
    public void mo2774f(SSLSocketFactory sSLSocketFactory) {
    }

    /* renamed from: g */
    public void mo2667g(SSLSocket sSLSocket, @Nullable String str, List<Protocol> list) {
    }

    /* renamed from: h */
    public void mo2703h(Socket socket, InetSocketAddress inetSocketAddress, int i) {
        socket.connect(inetSocketAddress, i);
    }

    /* renamed from: i */
    public SSLContext mo2704i() {
        try {
            return SSLContext.getInstance("TLS");
        } catch (NoSuchAlgorithmException e) {
            throw new IllegalStateException("No TLS provider", e);
        }
    }

    @Nullable
    /* renamed from: j */
    public String mo2668j(SSLSocket sSLSocket) {
        return null;
    }

    @Nullable
    /* renamed from: k */
    public Object mo2705k(String str) {
        if (f4030b.isLoggable(Level.FINE)) {
            return new Throwable(str);
        }
        return null;
    }

    /* renamed from: m */
    public boolean mo2706m(String str) {
        return true;
    }

    /* renamed from: n */
    public void mo2707n(int i, String str, @Nullable Throwable th) {
        f4030b.log(i == 5 ? Level.WARNING : Level.INFO, str, th);
    }

    /* renamed from: o */
    public void mo2708o(String str, Object obj) {
        if (obj == null) {
            str = CompilerOutline.m1760e(str, " To see where this was allocated, set the OkHttpClient logger level to FINE: Logger.getLogger(OkHttpClient.class.getName()).setLevel(Level.FINE);");
        }
        mo2707n(5, str, (Throwable) obj);
    }

    public String toString() {
        return getClass().getSimpleName();
    }
}
