package com.huawei.hem;

import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;

/* compiled from: OkHostnameVerifier.java */
/* renamed from: com.huawei.hem.bn */
/* loaded from: classes.dex */
public final class OkHostnameVerifier implements HostnameVerifier {

    /* renamed from: a */
    public static final OkHostnameVerifier f2311a = new OkHostnameVerifier();

    /* renamed from: a */
    public static List<String> m1423a(X509Certificate x509Certificate) throws CertificateParsingException {
        List<String> listM1424b = m1424b(x509Certificate, 7);
        List<String> listM1424b2 = m1424b(x509Certificate, 2);
        ArrayList arrayList = new ArrayList(listM1424b2.size() + listM1424b.size());
        arrayList.addAll(listM1424b);
        arrayList.addAll(listM1424b2);
        return arrayList;
    }

    /* renamed from: b */
    public static List<String> m1424b(X509Certificate x509Certificate, int i) throws CertificateParsingException {
        Integer num;
        String str;
        ArrayList arrayList = new ArrayList();
        try {
            Collection<List<?>> subjectAlternativeNames = x509Certificate.getSubjectAlternativeNames();
            if (subjectAlternativeNames == null) {
                return Collections.emptyList();
            }
            for (List<?> list : subjectAlternativeNames) {
                if (list != null && list.size() >= 2 && (num = (Integer) list.get(0)) != null && num.intValue() == i && (str = (String) list.get(1)) != null) {
                    arrayList.add(str);
                }
            }
            return arrayList;
        } catch (CertificateParsingException unused) {
            return Collections.emptyList();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:60:0x00fc  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m1425c(java.lang.String r10, java.security.cert.X509Certificate r11) throws java.security.cert.CertificateParsingException {
        /*
            Method dump skipped, instructions count: 258
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.C0861bn.m1425c(java.lang.String, java.security.cert.X509Certificate):boolean");
    }

    @Override // javax.net.ssl.HostnameVerifier
    public boolean verify(String str, SSLSession sSLSession) {
        try {
            return m1425c(str, (X509Certificate) sSLSession.getPeerCertificates()[0]);
        } catch (SSLException unused) {
            return false;
        }
    }
}
