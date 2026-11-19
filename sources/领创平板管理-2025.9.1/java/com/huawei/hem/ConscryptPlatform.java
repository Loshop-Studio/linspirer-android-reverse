package com.huawei.hem;

import java.security.NoSuchAlgorithmException;
import java.security.Provider;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.Nullable;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import org.conscrypt.Conscrypt;

/* compiled from: ConscryptPlatform.java */
/* renamed from: com.huawei.hem.tm */
/* loaded from: classes.dex */
public class ConscryptPlatform extends Platform {
    /* renamed from: p */
    public static ConscryptPlatform m2773p() throws ClassNotFoundException {
        try {
            Class.forName("org.conscrypt.Conscrypt");
            if (Conscrypt.isAvailable()) {
                return new ConscryptPlatform();
            }
            return null;
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    @Override // com.huawei.hem.C1391wm
    /* renamed from: f */
    public void mo2774f(SSLSocketFactory sSLSocketFactory) {
        if (Conscrypt.isConscrypt(sSLSocketFactory)) {
            Conscrypt.setUseEngineSocket(sSLSocketFactory, true);
        }
    }

    @Override // com.huawei.hem.C1391wm
    /* renamed from: g */
    public void mo2667g(SSLSocket sSLSocket, String str, List<Protocol> list) {
        if (Conscrypt.isConscrypt(sSLSocket)) {
            if (str != null) {
                Conscrypt.setUseSessionTickets(sSLSocket, true);
                Conscrypt.setHostname(sSLSocket, str);
            }
            Conscrypt.setApplicationProtocols(sSLSocket, (String[]) ((ArrayList) Platform.m2913b(list)).toArray(new String[0]));
        }
    }

    @Override // com.huawei.hem.C1391wm
    /* renamed from: i */
    public SSLContext mo2704i() {
        try {
            return SSLContext.getInstance("TLSv1.3", m2775q());
        } catch (NoSuchAlgorithmException e) {
            try {
                return SSLContext.getInstance("TLS", m2775q());
            } catch (NoSuchAlgorithmException unused) {
                throw new IllegalStateException("No TLS provider", e);
            }
        }
    }

    @Override // com.huawei.hem.C1391wm
    @Nullable
    /* renamed from: j */
    public String mo2668j(SSLSocket sSLSocket) {
        if (Conscrypt.isConscrypt(sSLSocket)) {
            return Conscrypt.getApplicationProtocol(sSLSocket);
        }
        return null;
    }

    /* renamed from: q */
    public final Provider m2775q() {
        return Conscrypt.newProviderBuilder().provideTrustManager().build();
    }
}
