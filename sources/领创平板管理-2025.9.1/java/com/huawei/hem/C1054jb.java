package com.huawei.hem;

import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;

/* renamed from: com.huawei.hem.jb */
/* loaded from: classes.dex */
public class C1054jb implements HostnameVerifier {
    @Override // javax.net.ssl.HostnameVerifier
    public final boolean verify(String str, SSLSession sSLSession) throws CertificateParsingException {
        try {
            X509Certificate x509Certificate = (X509Certificate) sSLSession.getPeerCertificates()[0];
            x509Certificate.getSubjectDN().getName();
            C1104lb.m2306a(str, x509Certificate, true);
            return true;
        } catch (SSLException e) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("SSLException : ");
            sbM1765j.append(e.getMessage());
            AbstractC1102l9.m2264E("", sbM1765j.toString());
            return false;
        }
    }
}
