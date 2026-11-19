package com.huawei.hem;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.Nullable;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSocket;

/* compiled from: Jdk9Platform.java */
/* renamed from: com.huawei.hem.vm */
/* loaded from: classes.dex */
public final class C1366vm extends C1391wm {

    /* renamed from: c */
    public final Method f3974c;

    /* renamed from: d */
    public final Method f3975d;

    public C1366vm(Method method, Method method2) {
        this.f3974c = method;
        this.f3975d = method2;
    }

    /* renamed from: p */
    public static C1366vm m2879p() {
        try {
            return new C1366vm(SSLParameters.class.getMethod("setApplicationProtocols", String[].class), SSLSocket.class.getMethod("getApplicationProtocol", new Class[0]));
        } catch (NoSuchMethodException unused) {
            return null;
        }
    }

    @Override // com.huawei.hem.C1391wm
    /* renamed from: g */
    public void mo2667g(SSLSocket sSLSocket, String str, List<EnumC0936ek> list) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        try {
            SSLParameters sSLParameters = sSLSocket.getSSLParameters();
            List<String> listM2913b = C1391wm.m2913b(list);
            Method method = this.f3974c;
            Object[] objArr = new Object[1];
            ArrayList arrayList = (ArrayList) listM2913b;
            objArr[0] = arrayList.toArray(new String[arrayList.size()]);
            method.invoke(sSLParameters, objArr);
            sSLSocket.setSSLParameters(sSLParameters);
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new AssertionError("failed to set SSL parameters", e);
        }
    }

    @Override // com.huawei.hem.C1391wm
    @Nullable
    /* renamed from: j */
    public String mo2668j(SSLSocket sSLSocket) {
        try {
            String str = (String) this.f3975d.invoke(sSLSocket, new Object[0]);
            if (str != null) {
                if (!str.equals("")) {
                    return str;
                }
            }
            return null;
        } catch (IllegalAccessException e) {
            throw new AssertionError("failed to get ALPN selected protocol", e);
        } catch (InvocationTargetException e2) {
            if (e2.getCause() instanceof UnsupportedOperationException) {
                return null;
            }
            throw new AssertionError("failed to get ALPN selected protocol", e2);
        }
    }
}
