package com.huawei.hem;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.List;
import javax.annotation.Nullable;
import javax.net.ssl.SSLSocket;

/* compiled from: Jdk8WithJettyBootPlatform.java */
/* renamed from: com.huawei.hem.um */
/* loaded from: classes.dex */
public class Jdk8WithJettyBootPlatform extends Platform {

    /* renamed from: c */
    public final Method f3898c;

    /* renamed from: d */
    public final Method f3899d;

    /* renamed from: e */
    public final Method f3900e;

    /* renamed from: f */
    public final Class<?> f3901f;

    /* renamed from: g */
    public final Class<?> f3902g;

    /* compiled from: Jdk8WithJettyBootPlatform.java */
    /* renamed from: com.huawei.hem.um$a */
    public static class a implements InvocationHandler {

        /* renamed from: a */
        public final List<String> f3903a;

        /* renamed from: b */
        public boolean f3904b;

        /* renamed from: c */
        public String f3905c;

        public a(List<String> list) {
            this.f3903a = list;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) {
            String name = method.getName();
            Class<?> returnType = method.getReturnType();
            if (objArr == null) {
                objArr = C1314tk.f3816b;
            }
            if (name.equals("supports") && Boolean.TYPE == returnType) {
                return Boolean.TRUE;
            }
            if (name.equals("unsupported") && Void.TYPE == returnType) {
                this.f3904b = true;
                return null;
            }
            if (name.equals("protocols") && objArr.length == 0) {
                return this.f3903a;
            }
            if ((!name.equals("selectProtocol") && !name.equals("select")) || String.class != returnType || objArr.length != 1 || !(objArr[0] instanceof List)) {
                if ((!name.equals("protocolSelected") && !name.equals("selected")) || objArr.length != 1) {
                    return method.invoke(this, objArr);
                }
                this.f3905c = (String) objArr[0];
                return null;
            }
            List list = (List) objArr[0];
            int size = list.size();
            for (int i = 0; i < size; i++) {
                String str = (String) list.get(i);
                if (this.f3903a.contains(str)) {
                    this.f3905c = str;
                    return str;
                }
            }
            String str2 = this.f3903a.get(0);
            this.f3905c = str2;
            return str2;
        }
    }

    public Jdk8WithJettyBootPlatform(Method method, Method method2, Method method3, Class<?> cls, Class<?> cls2) {
        this.f3898c = method;
        this.f3899d = method2;
        this.f3900e = method3;
        this.f3901f = cls;
        this.f3902g = cls2;
    }

    /* renamed from: p */
    public static Platform m2823p() throws ClassNotFoundException {
        try {
            Class<?> cls = Class.forName("org.eclipse.jetty.alpn.ALPN", true, null);
            Class<?> cls2 = Class.forName("org.eclipse.jetty.alpn.ALPN$Provider", true, null);
            return new Jdk8WithJettyBootPlatform(cls.getMethod("put", SSLSocket.class, cls2), cls.getMethod("get", SSLSocket.class), cls.getMethod("remove", SSLSocket.class), Class.forName("org.eclipse.jetty.alpn.ALPN$ClientProvider", true, null), Class.forName("org.eclipse.jetty.alpn.ALPN$ServerProvider", true, null));
        } catch (ClassNotFoundException | NoSuchMethodException unused) {
            return null;
        }
    }

    @Override // com.huawei.hem.C1391wm
    /* renamed from: a */
    public void mo2824a(SSLSocket sSLSocket) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        try {
            this.f3900e.invoke(null, sSLSocket);
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new AssertionError("failed to remove ALPN", e);
        }
    }

    @Override // com.huawei.hem.C1391wm
    /* renamed from: g */
    public void mo2667g(SSLSocket sSLSocket, String str, List<Protocol> list) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        try {
            this.f3898c.invoke(null, sSLSocket, Proxy.newProxyInstance(Platform.class.getClassLoader(), new Class[]{this.f3901f, this.f3902g}, new a(Platform.m2913b(list))));
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new AssertionError("failed to set ALPN", e);
        }
    }

    @Override // com.huawei.hem.C1391wm
    @Nullable
    /* renamed from: j */
    public String mo2668j(SSLSocket sSLSocket) {
        try {
            a aVar = (a) Proxy.getInvocationHandler(this.f3899d.invoke(null, sSLSocket));
            if (!aVar.f3904b && aVar.f3905c == null) {
                Platform.f4029a.mo2707n(4, "ALPN callback dropped: HTTP/2 is disabled. Is alpn-boot on the boot class path?", null);
                return null;
            }
            if (aVar.f3904b) {
                return null;
            }
            return aVar.f3905c;
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new AssertionError("failed to get ALPN selected protocol", e);
        }
    }
}
