package com.huawei.hem;

import android.os.Build;
import android.util.Log;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.nio.charset.StandardCharsets;
import java.security.NoSuchAlgorithmException;
import java.security.cert.Certificate;
import java.security.cert.TrustAnchor;
import java.security.cert.X509Certificate;
import java.util.List;
import javax.annotation.Nullable;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.X509TrustManager;

/* compiled from: AndroidPlatform.java */
/* renamed from: com.huawei.hem.sm */
/* loaded from: classes.dex */
public class AndroidPlatform extends Platform {

    /* renamed from: c */
    public final Class<?> f3723c;

    /* renamed from: d */
    public final Method f3724d;

    /* renamed from: e */
    public final Method f3725e;

    /* renamed from: f */
    public final Method f3726f;

    /* renamed from: g */
    public final Method f3727g;

    /* renamed from: h */
    public final b f3728h;

    /* compiled from: AndroidPlatform.java */
    /* renamed from: com.huawei.hem.sm$a */
    public static final class a extends CertificateChainCleaner {

        /* renamed from: a */
        public final Object f3729a;

        /* renamed from: b */
        public final Method f3730b;

        public a(Object obj, Method method) {
            this.f3729a = obj;
            this.f3730b = method;
        }

        @Override // com.huawei.hem.AbstractC0835an
        /* renamed from: a */
        public List<Certificate> mo1379a(List<Certificate> list, String str) throws SSLPeerUnverifiedException {
            try {
                return (List) this.f3730b.invoke(this.f3729a, (X509Certificate[]) list.toArray(new X509Certificate[list.size()]), "RSA", str);
            } catch (IllegalAccessException e) {
                throw new AssertionError(e);
            } catch (InvocationTargetException e2) {
                SSLPeerUnverifiedException sSLPeerUnverifiedException = new SSLPeerUnverifiedException(e2.getMessage());
                sSLPeerUnverifiedException.initCause(e2);
                throw sSLPeerUnverifiedException;
            }
        }

        public boolean equals(Object obj) {
            return obj instanceof a;
        }

        public int hashCode() {
            return 0;
        }
    }

    /* compiled from: AndroidPlatform.java */
    /* renamed from: com.huawei.hem.sm$b */
    public static final class b {

        /* renamed from: a */
        public final Method f3731a;

        /* renamed from: b */
        public final Method f3732b;

        /* renamed from: c */
        public final Method f3733c;

        public b(Method method, Method method2, Method method3) {
            this.f3731a = method;
            this.f3732b = method2;
            this.f3733c = method3;
        }
    }

    /* compiled from: AndroidPlatform.java */
    /* renamed from: com.huawei.hem.sm$c */
    public static final class c implements TrustRootIndex {

        /* renamed from: a */
        public final X509TrustManager f3734a;

        /* renamed from: b */
        public final Method f3735b;

        public c(X509TrustManager x509TrustManager, Method method) {
            this.f3735b = method;
            this.f3734a = x509TrustManager;
        }

        @Override // com.huawei.hem.InterfaceC0887cn
        /* renamed from: a */
        public X509Certificate mo1541a(X509Certificate x509Certificate) {
            try {
                TrustAnchor trustAnchor = (TrustAnchor) this.f3735b.invoke(this.f3734a, x509Certificate);
                if (trustAnchor != null) {
                    return trustAnchor.getTrustedCert();
                }
                return null;
            } catch (IllegalAccessException e) {
                throw new AssertionError("unable to get issues and signature", e);
            } catch (InvocationTargetException unused) {
                return null;
            }
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return this.f3734a.equals(cVar.f3734a) && this.f3735b.equals(cVar.f3735b);
        }

        public int hashCode() {
            return (this.f3735b.hashCode() * 31) + this.f3734a.hashCode();
        }
    }

    public AndroidPlatform(Class<?> cls, Class<?> cls2, Method method, Method method2, Method method3, Method method4) throws NoSuchMethodException, ClassNotFoundException, SecurityException {
        Method method5;
        Method method6;
        Method method7 = null;
        try {
            Class<?> cls3 = Class.forName("dalvik.system.CloseGuard");
            Method method8 = cls3.getMethod("get", new Class[0]);
            method6 = cls3.getMethod("open", String.class);
            method5 = cls3.getMethod("warnIfOpen", new Class[0]);
            method7 = method8;
        } catch (Exception unused) {
            method5 = null;
            method6 = null;
        }
        this.f3728h = new b(method7, method6, method5);
        this.f3723c = cls2;
        this.f3724d = method;
        this.f3725e = method2;
        this.f3726f = method3;
        this.f3727g = method4;
    }

    @Override // com.huawei.hem.C1391wm
    /* renamed from: c */
    public CertificateChainCleaner mo2701c(X509TrustManager x509TrustManager) throws ClassNotFoundException {
        try {
            Class<?> cls = Class.forName("android.net.http.X509TrustManagerExtensions");
            return new a(cls.getConstructor(X509TrustManager.class).newInstance(x509TrustManager), cls.getMethod("checkServerTrusted", X509Certificate[].class, String.class, String.class));
        } catch (Exception unused) {
            return new BasicCertificateChainCleaner(mo2702d(x509TrustManager));
        }
    }

    @Override // com.huawei.hem.C1391wm
    /* renamed from: d */
    public TrustRootIndex mo2702d(X509TrustManager x509TrustManager) throws NoSuchMethodException, SecurityException {
        try {
            Method declaredMethod = x509TrustManager.getClass().getDeclaredMethod("findTrustAnchorByIssuerAndSignature", X509Certificate.class);
            declaredMethod.setAccessible(true);
            return new c(x509TrustManager, declaredMethod);
        } catch (NoSuchMethodException unused) {
            return new BasicTrustRootIndex(x509TrustManager.getAcceptedIssuers());
        }
    }

    @Override // com.huawei.hem.C1391wm
    /* renamed from: g */
    public void mo2667g(SSLSocket sSLSocket, String str, List<Protocol> list) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (this.f3723c.isInstance(sSLSocket)) {
            if (str != null) {
                try {
                    this.f3724d.invoke(sSLSocket, Boolean.TRUE);
                    this.f3725e.invoke(sSLSocket, str);
                } catch (IllegalAccessException | InvocationTargetException e) {
                    throw new AssertionError(e);
                }
            }
            this.f3727g.invoke(sSLSocket, Platform.m2914e(list));
        }
    }

    @Override // com.huawei.hem.C1391wm
    /* renamed from: h */
    public void mo2703h(Socket socket, InetSocketAddress inetSocketAddress, int i) throws IOException {
        try {
            socket.connect(inetSocketAddress, i);
        } catch (AssertionError e) {
            if (!OkHttpCommonUtilities.m2765t(e)) {
                throw e;
            }
            throw new IOException(e);
        } catch (ClassCastException e2) {
            if (Build.VERSION.SDK_INT != 26) {
                throw e2;
            }
            throw new IOException("Exception in connect", e2);
        }
    }

    @Override // com.huawei.hem.C1391wm
    /* renamed from: i */
    public SSLContext mo2704i() {
        if (0 != 0) {
            try {
                return SSLContext.getInstance("TLSv1.2");
            } catch (NoSuchAlgorithmException unused) {
            }
        }
        try {
            return SSLContext.getInstance("TLS");
        } catch (NoSuchAlgorithmException e) {
            throw new IllegalStateException("No TLS provider", e);
        }
    }

    @Override // com.huawei.hem.C1391wm
    @Nullable
    /* renamed from: j */
    public String mo2668j(SSLSocket sSLSocket) {
        if (!this.f3723c.isInstance(sSLSocket)) {
            return null;
        }
        try {
            byte[] bArr = (byte[]) this.f3726f.invoke(sSLSocket, new Object[0]);
            if (bArr != null) {
                return new String(bArr, StandardCharsets.UTF_8);
            }
            return null;
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new AssertionError(e);
        }
    }

    @Override // com.huawei.hem.C1391wm
    @Nullable
    /* renamed from: k */
    public Object mo2705k(String str) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        b bVar = this.f3728h;
        Method method = bVar.f3731a;
        if (method == null) {
            return null;
        }
        try {
            Object objInvoke = method.invoke(null, new Object[0]);
            bVar.f3732b.invoke(objInvoke, str);
            return objInvoke;
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // com.huawei.hem.C1391wm
    /* renamed from: m */
    public boolean mo2706m(String str) throws ClassNotFoundException {
        try {
            Class<?> cls = Class.forName("android.security.NetworkSecurityPolicy");
            return m2709p(str, cls, cls.getMethod("getInstance", new Class[0]).invoke(null, new Object[0]));
        } catch (ClassNotFoundException | NoSuchMethodException unused) {
            return true;
        } catch (IllegalAccessException e) {
            e = e;
            throw new AssertionError("unable to determine cleartext support", e);
        } catch (IllegalArgumentException e2) {
            e = e2;
            throw new AssertionError("unable to determine cleartext support", e);
        } catch (InvocationTargetException e3) {
            e = e3;
            throw new AssertionError("unable to determine cleartext support", e);
        }
    }

    @Override // com.huawei.hem.C1391wm
    /* renamed from: n */
    public void mo2707n(int i, String str, @Nullable Throwable th) {
        int iMin;
        int i2 = i != 5 ? 3 : 5;
        if (th != null) {
            str = str + '\n' + Log.getStackTraceString(th);
        }
        int i3 = 0;
        int length = str.length();
        while (i3 < length) {
            int iIndexOf = str.indexOf(10, i3);
            if (iIndexOf == -1) {
                iIndexOf = length;
            }
            while (true) {
                iMin = Math.min(iIndexOf, i3 + 4000);
                Log.println(i2, "OkHttp", str.substring(i3, iMin));
                if (iMin >= iIndexOf) {
                    break;
                } else {
                    i3 = iMin;
                }
            }
            i3 = iMin + 1;
        }
    }

    @Override // com.huawei.hem.C1391wm
    /* renamed from: o */
    public void mo2708o(String str, Object obj) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        b bVar = this.f3728h;
        if (bVar == null) {
            throw null;
        }
        boolean z = false;
        if (obj != null) {
            try {
                bVar.f3733c.invoke(obj, new Object[0]);
                z = true;
            } catch (Exception unused) {
            }
        }
        if (z) {
            return;
        }
        mo2707n(5, str, null);
    }

    /* renamed from: p */
    public final boolean m2709p(String str, Class<?> cls, Object obj) {
        try {
            try {
                return ((Boolean) cls.getMethod("isCleartextTrafficPermitted", String.class).invoke(obj, str)).booleanValue();
            } catch (NoSuchMethodException unused) {
                return ((Boolean) cls.getMethod("isCleartextTrafficPermitted", new Class[0]).invoke(obj, new Object[0])).booleanValue();
            }
        } catch (NoSuchMethodException unused2) {
            return true;
        }
    }
}
