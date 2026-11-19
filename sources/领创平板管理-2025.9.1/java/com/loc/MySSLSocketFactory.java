package com.loc;

import android.content.Context;
import android.net.SSLSessionCache;
import android.os.Build;
import com.huawei.hem.AuthConfigManager;
import com.huawei.hem.C1094l1;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.net.InetAddress;
import java.net.Socket;
import java.net.UnknownHostException;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSessionContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;

/* compiled from: MySSLSocketFactory.java */
/* renamed from: com.loc.aq */
/* loaded from: classes.dex */
public final class MySSLSocketFactory extends SSLSocketFactory {

    /* renamed from: a */
    public SSLSocketFactory f5013a;

    /* renamed from: b */
    public Context f5014b;

    /* renamed from: c */
    public SSLContext f5015c;

    public MySSLSocketFactory(Context context, SSLContext sSLContext) {
        if (context != null) {
            try {
                this.f5014b = context.getApplicationContext();
            } catch (Throwable th) {
                try {
                    SDKLogHandler.m5333b(th, "myssl", "<init>");
                    try {
                        if (this.f5015c == null) {
                            this.f5015c = SSLContext.getDefault();
                        }
                    } catch (Throwable th2) {
                        SDKLogHandler.m5333b(th2, "myssl", "<init2>");
                    }
                    try {
                        if (this.f5013a == null) {
                            this.f5013a = (SSLSocketFactory) SSLSocketFactory.getDefault();
                            return;
                        }
                        return;
                    } catch (Throwable th3) {
                        SDKLogHandler.m5333b(th3, "myssl", "<init3>");
                        return;
                    }
                } catch (Throwable th4) {
                    try {
                        if (this.f5015c == null) {
                            this.f5015c = SSLContext.getDefault();
                        }
                    } catch (Throwable th5) {
                        SDKLogHandler.m5333b(th5, "myssl", "<init2>");
                    }
                    try {
                        if (this.f5013a != null) {
                            throw th4;
                        }
                        this.f5013a = (SSLSocketFactory) SSLSocketFactory.getDefault();
                        throw th4;
                    } catch (Throwable th6) {
                        SDKLogHandler.m5333b(th6, "myssl", "<init3>");
                        throw th4;
                    }
                }
            }
        }
        this.f5015c = sSLContext;
        if (sSLContext != null) {
            this.f5013a = sSLContext.getSocketFactory();
        }
        try {
            if (this.f5015c == null) {
                this.f5015c = SSLContext.getDefault();
            }
        } catch (Throwable th7) {
            SDKLogHandler.m5333b(th7, "myssl", "<init2>");
        }
        try {
            if (this.f5013a == null) {
                this.f5013a = (SSLSocketFactory) SSLSocketFactory.getDefault();
            }
        } catch (Throwable th8) {
            SDKLogHandler.m5333b(th8, "myssl", "<init3>");
        }
    }

    /* renamed from: a */
    public static Socket m4128a(Socket socket) {
        try {
            if (AuthConfigManager.g.f2631b && (socket instanceof SSLSocket)) {
                ((SSLSocket) socket).setEnabledProtocols(new String[]{"TLSv1.2"});
            }
        } catch (Throwable th) {
            SDKLogHandler.m5333b(th, "myssl", "stlv2");
        }
        return socket;
    }

    /* renamed from: a */
    private void m4129a(SSLSessionCache sSLSessionCache) {
        SSLContext sSLContext = this.f5015c;
        if (sSLContext == null) {
            return;
        }
        try {
            SSLSessionContext clientSessionContext = sSLContext.getClientSessionContext();
            Field declaredField = sSLSessionCache.getClass().getDeclaredField(C1094l1.m2251t("UbVNlc3Npb25DYWNoZQ"));
            declaredField.setAccessible(true);
            Object obj = declaredField.get(sSLSessionCache);
            Method[] methods = clientSessionContext.getClass().getMethods();
            String strM2251t = C1094l1.m2251t("Yc2V0UGVyc2lzdGVudENhY2hl");
            for (Method method : methods) {
                if (method.getName().equals(strM2251t)) {
                    method.invoke(clientSessionContext, obj);
                    return;
                }
            }
        } catch (Throwable th) {
            SDKLogHandler.m5333b(th, "myssl", "isc2");
        }
    }

    /* renamed from: b */
    public static void m4130b(Socket socket) {
        if (AuthConfigManager.g.f2632c && AuthConfigManager.g.f2634e && (socket instanceof SSLSocket)) {
            int i = AuthConfigManager.g.f2635f;
            int i2 = AuthConfigManager.g.f2633d;
            if (i <= i2) {
                i2 = AuthConfigManager.g.f2635f;
            }
            if (i2 <= 17 || Build.VERSION.SDK_INT <= i2) {
                try {
                    socket.getClass().getMethod(C1094l1.m2251t("Cc2V0VXNlU2Vzc2lvblRpY2tldHM"), Boolean.TYPE).invoke(socket, Boolean.TRUE);
                } catch (Throwable th) {
                    SDKLogHandler.m5333b(th, "myssl", "sust");
                }
            }
        }
    }

    /* renamed from: a */
    public final void m4131a() {
        if (!AuthConfigManager.g.f2632c || this.f5014b == null || this.f5015c == null) {
            return;
        }
        int i = AuthConfigManager.g.f2633d;
        if (i <= 17 || Build.VERSION.SDK_INT <= i) {
            SSLSessionCache sSLSessionCache = new SSLSessionCache(this.f5014b);
            if (Build.VERSION.SDK_INT >= 28) {
                m4129a(sSLSessionCache);
                return;
            }
            try {
                sSLSessionCache.getClass().getMethod(C1094l1.m2251t("MaW5zdGFsbA"), SSLSessionCache.class, SSLContext.class).invoke(sSLSessionCache, sSLSessionCache, this.f5015c);
            } catch (Throwable th) {
                SDKLogHandler.m5333b(th, "myssl", "isc1");
                m4129a(sSLSessionCache);
            }
        }
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket() {
        boolean z;
        IOException iOException;
        try {
            if (this.f5013a == null) {
                return null;
            }
            Socket socketM4128a = m4128a(this.f5013a.createSocket());
            m4130b(socketM4128a);
            return socketM4128a;
        } finally {
            if (!z) {
            }
        }
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(String str, int i) throws UnknownHostException {
        try {
            if (this.f5013a == null) {
                return null;
            }
            Socket socketM4128a = m4128a(this.f5013a.createSocket(str, i));
            m4130b(socketM4128a);
            return socketM4128a;
        } catch (Throwable th) {
            SDKLogHandler.m5333b(th, "myssl", "cs3");
            if (th instanceof UnknownHostException) {
                throw th;
            }
            if (th instanceof IOException) {
                throw th;
            }
            return null;
        }
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(String str, int i, InetAddress inetAddress, int i2) throws UnknownHostException {
        try {
            if (this.f5013a == null) {
                return null;
            }
            Socket socketM4128a = m4128a(this.f5013a.createSocket(str, i, inetAddress, i2));
            m4130b(socketM4128a);
            return socketM4128a;
        } catch (Throwable th) {
            SDKLogHandler.m5333b(th, "myssl", "cs4");
            if (th instanceof UnknownHostException) {
                throw th;
            }
            if (th instanceof IOException) {
                throw th;
            }
            return null;
        }
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(InetAddress inetAddress, int i) {
        boolean z;
        IOException iOException;
        try {
            if (this.f5013a == null) {
                return null;
            }
            Socket socketM4128a = m4128a(this.f5013a.createSocket(inetAddress, i));
            m4130b(socketM4128a);
            return socketM4128a;
        } finally {
            if (!z) {
            }
        }
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(InetAddress inetAddress, int i, InetAddress inetAddress2, int i2) {
        boolean z;
        IOException iOException;
        try {
            if (this.f5013a == null) {
                return null;
            }
            Socket socketM4128a = m4128a(this.f5013a.createSocket(inetAddress, i, inetAddress2, i2));
            m4130b(socketM4128a);
            return socketM4128a;
        } finally {
            if (!z) {
            }
        }
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final Socket createSocket(Socket socket, String str, int i, boolean z) {
        boolean z2;
        IOException iOException;
        try {
            if (this.f5013a == null) {
                return null;
            }
            Socket socketM4128a = m4128a(this.f5013a.createSocket(socket, str, i, z));
            m4130b(socketM4128a);
            return socketM4128a;
        } finally {
            if (!z2) {
            }
        }
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final String[] getDefaultCipherSuites() {
        try {
            if (this.f5013a != null) {
                return this.f5013a.getDefaultCipherSuites();
            }
        } catch (Throwable th) {
            SDKLogHandler.m5333b(th, "myssl", "gdcs");
        }
        return new String[0];
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final String[] getSupportedCipherSuites() {
        try {
            if (this.f5013a != null) {
                return this.f5013a.getSupportedCipherSuites();
            }
        } catch (Throwable th) {
            SDKLogHandler.m5333b(th, "myssl", "gscs");
        }
        return new String[0];
    }
}
