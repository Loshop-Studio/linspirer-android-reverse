package com.huawei.hem;

import java.io.IOException;
import java.io.InputStream;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;

/* renamed from: com.huawei.hem.ib */
/* loaded from: classes.dex */
public class SdkCertificateTrustManager implements X509TrustManager {

    /* renamed from: b */
    public static final String f2909b = SdkCertificateTrustManager.class.getSimpleName();

    /* renamed from: a */
    public List<X509TrustManager> f2910a = new ArrayList();

    public SdkCertificateTrustManager(InputStream inputStream, String str) throws IOException {
        if (inputStream == null) {
            throw new IllegalArgumentException("inputstream or trustPwd is null");
        }
        System.currentTimeMillis();
        try {
            try {
                TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance("X509");
                KeyStore keyStore = KeyStore.getInstance("bks");
                keyStore.load(inputStream, str.toCharArray());
                trustManagerFactory.init(keyStore);
                TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
                for (int i = 0; i < trustManagers.length; i++) {
                    if (trustManagers[i] instanceof X509TrustManager) {
                        this.f2910a.add((X509TrustManager) trustManagers[i]);
                    }
                }
                MobileSdkPlatformUtilities.m2294q(inputStream);
            } finally {
                MobileSdkPlatformUtilities.m2294q(inputStream);
            }
        } catch (IOException | KeyStoreException | NoSuchAlgorithmException | CertificateException e) {
            MobileSdkPlatformUtilities.m2264E(f2909b, "loadInputStream: exception : " + e.getMessage());
        }
        System.currentTimeMillis();
    }

    @Override // javax.net.ssl.X509TrustManager
    public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
        MobileSdkPlatformUtilities.m2267H(f2909b, "checkClientTrusted: ");
        Iterator<X509TrustManager> it = this.f2910a.iterator();
        while (it.hasNext()) {
            try {
                it.next().checkServerTrusted(x509CertificateArr, str);
                return;
            } catch (CertificateException e) {
                String str2 = f2909b;
                StringBuilder sbM1765j = CompilerOutline.m1765j("checkServerTrusted CertificateException");
                sbM1765j.append(e.getMessage());
                MobileSdkPlatformUtilities.m2264E(str2, sbM1765j.toString());
            }
        }
        throw new CertificateException("checkServerTrusted CertificateException");
    }

    @Override // javax.net.ssl.X509TrustManager
    public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
        String str2 = f2909b;
        StringBuilder sbM1765j = CompilerOutline.m1765j("checkServerTrusted begin ,server ca chain size is : ");
        sbM1765j.append(x509CertificateArr.length);
        sbM1765j.append(" ,auth type is : ");
        sbM1765j.append(str);
        MobileSdkPlatformUtilities.m2267H(str2, sbM1765j.toString());
        System.currentTimeMillis();
        for (X509Certificate x509Certificate : x509CertificateArr) {
            StringBuilder sbM1765j2 = CompilerOutline.m1765j("server ca chain: getSubjectDN is :");
            sbM1765j2.append(x509Certificate.getSubjectDN());
            sbM1765j2.toString();
            String str3 = "IssuerDN :" + x509Certificate.getIssuerDN();
            String str4 = "SerialNumber : " + x509Certificate.getSerialNumber();
        }
        int size = this.f2910a.size();
        for (int i = 0; i < size; i++) {
            try {
                MobileSdkPlatformUtilities.m2267H(f2909b, "check server i : " + i);
                X509TrustManager x509TrustManager = this.f2910a.get(i);
                X509Certificate[] acceptedIssuers = x509TrustManager.getAcceptedIssuers();
                if (acceptedIssuers != null) {
                    MobileSdkPlatformUtilities.m2267H(f2909b, "client root ca size is : " + acceptedIssuers.length);
                    for (int i2 = 0; i2 < acceptedIssuers.length; i2++) {
                        String str5 = "client root ca getIssuerDN :" + acceptedIssuers[i2].getIssuerDN();
                    }
                }
                x509TrustManager.checkServerTrusted(x509CertificateArr, str);
                MobileSdkPlatformUtilities.m2267H(f2909b, "checkServerTrusted succeed ,root ca issuer is : " + x509CertificateArr[x509CertificateArr.length - 1].getIssuerDN());
                return;
            } catch (CertificateException e) {
                String str6 = f2909b;
                StringBuilder sbM1765j3 = CompilerOutline.m1765j("checkServerTrusted error :");
                sbM1765j3.append(e.getMessage());
                sbM1765j3.append(" , time : ");
                sbM1765j3.append(i);
                MobileSdkPlatformUtilities.m2264E(str6, sbM1765j3.toString());
                if (i == size - 1) {
                    if (x509CertificateArr.length > 0) {
                        String str7 = f2909b;
                        StringBuilder sbM1765j4 = CompilerOutline.m1765j("root ca issuer : ");
                        sbM1765j4.append(x509CertificateArr[x509CertificateArr.length - 1].getIssuerDN());
                        MobileSdkPlatformUtilities.m2264E(str7, sbM1765j4.toString());
                    }
                    throw e;
                }
            }
        }
        System.currentTimeMillis();
    }

    @Override // javax.net.ssl.X509TrustManager
    public X509Certificate[] getAcceptedIssuers() {
        try {
            ArrayList arrayList = new ArrayList();
            Iterator<X509TrustManager> it = this.f2910a.iterator();
            while (it.hasNext()) {
                arrayList.addAll(Arrays.asList(it.next().getAcceptedIssuers()));
            }
            return (X509Certificate[]) arrayList.toArray(new X509Certificate[arrayList.size()]);
        } catch (Exception e) {
            String str = f2909b;
            StringBuilder sbM1765j = CompilerOutline.m1765j("getAcceptedIssuers exception : ");
            sbM1765j.append(e.getMessage());
            MobileSdkPlatformUtilities.m2264E(str, sbM1765j.toString());
            return new X509Certificate[0];
        }
    }
}
