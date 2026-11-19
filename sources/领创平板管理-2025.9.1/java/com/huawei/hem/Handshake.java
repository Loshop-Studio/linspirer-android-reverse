package com.huawei.hem;

import java.io.IOException;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.annotation.Nullable;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;

/* compiled from: Handshake.java */
/* renamed from: com.huawei.hem.xj */
/* loaded from: classes.dex */
public final class Handshake {

    /* renamed from: a */
    public final TlsVersion f4081a;

    /* renamed from: b */
    public final CipherSuite f4082b;

    /* renamed from: c */
    public final List<Certificate> f4083c;

    /* renamed from: d */
    public final List<Certificate> f4084d;

    public Handshake(TlsVersion enumC1189ok, CipherSuite c1163nj, List<Certificate> list, List<Certificate> list2) {
        this.f4081a = enumC1189ok;
        this.f4082b = c1163nj;
        this.f4083c = list;
        this.f4084d = list2;
    }

    /* renamed from: a */
    public static Handshake m2947a(SSLSession sSLSession) throws IOException {
        Certificate[] peerCertificates;
        String cipherSuite = sSLSession.getCipherSuite();
        if (cipherSuite == null) {
            throw new IllegalStateException("cipherSuite == null");
        }
        if ("SSL_NULL_WITH_NULL_NULL".equals(cipherSuite)) {
            throw new IOException("cipherSuite == SSL_NULL_WITH_NULL_NULL");
        }
        CipherSuite c1163njM2414a = CipherSuite.m2414a(cipherSuite);
        String protocol = sSLSession.getProtocol();
        if (protocol == null) {
            throw new IllegalStateException("tlsVersion == null");
        }
        if ("NONE".equals(protocol)) {
            throw new IOException("tlsVersion == NONE");
        }
        TlsVersion enumC1189okForJavaName = TlsVersion.forJavaName(protocol);
        try {
            peerCertificates = sSLSession.getPeerCertificates();
        } catch (SSLPeerUnverifiedException unused) {
            peerCertificates = null;
        }
        List listM2760o = peerCertificates != null ? OkHttpCommonUtilities.m2760o(peerCertificates) : Collections.emptyList();
        Certificate[] localCertificates = sSLSession.getLocalCertificates();
        return new Handshake(enumC1189okForJavaName, c1163njM2414a, listM2760o, localCertificates != null ? OkHttpCommonUtilities.m2760o(localCertificates) : Collections.emptyList());
    }

    /* renamed from: b */
    public final List<String> m2948b(List<Certificate> list) {
        ArrayList arrayList = new ArrayList();
        for (Certificate certificate : list) {
            if (certificate instanceof X509Certificate) {
                arrayList.add(String.valueOf(((X509Certificate) certificate).getSubjectDN()));
            } else {
                arrayList.add(certificate.getType());
            }
        }
        return arrayList;
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof Handshake)) {
            return false;
        }
        Handshake c1413xj = (Handshake) obj;
        return this.f4081a.equals(c1413xj.f4081a) && this.f4082b.equals(c1413xj.f4082b) && this.f4083c.equals(c1413xj.f4083c) && this.f4084d.equals(c1413xj.f4084d);
    }

    public int hashCode() {
        return this.f4084d.hashCode() + ((this.f4083c.hashCode() + ((this.f4082b.hashCode() + ((this.f4081a.hashCode() + 527) * 31)) * 31)) * 31);
    }

    public String toString() {
        StringBuilder sbM1765j = CompilerOutline.m1765j("Handshake{tlsVersion=");
        sbM1765j.append(this.f4081a);
        sbM1765j.append(" cipherSuite=");
        sbM1765j.append(this.f4082b);
        sbM1765j.append(" peerCertificates=");
        sbM1765j.append(m2948b(this.f4083c));
        sbM1765j.append(" localCertificates=");
        sbM1765j.append(m2948b(this.f4084d));
        sbM1765j.append('}');
        return sbM1765j.toString();
    }
}
