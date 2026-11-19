package com.huawei.hem;

import java.security.GeneralSecurityException;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;

/* compiled from: BasicCertificateChainCleaner.java */
/* renamed from: com.huawei.hem.ym */
/* loaded from: classes.dex */
public final class BasicCertificateChainCleaner extends CertificateChainCleaner {

    /* renamed from: a */
    public final TrustRootIndex f4252a;

    public BasicCertificateChainCleaner(TrustRootIndex interfaceC0887cn) {
        this.f4252a = interfaceC0887cn;
    }

    @Override // com.huawei.hem.AbstractC0835an
    /* renamed from: a */
    public List<Certificate> mo1379a(List<Certificate> list, String str) throws SSLPeerUnverifiedException {
        ArrayDeque arrayDeque = new ArrayDeque(list);
        ArrayList arrayList = new ArrayList();
        arrayList.add((Certificate) arrayDeque.removeFirst());
        boolean z = false;
        for (int i = 0; i < 9; i++) {
            X509Certificate x509Certificate = (X509Certificate) arrayList.get(arrayList.size() - 1);
            X509Certificate x509CertificateMo1541a = this.f4252a.mo1541a(x509Certificate);
            if (x509CertificateMo1541a == null) {
                Iterator it = arrayDeque.iterator();
                while (it.hasNext()) {
                    X509Certificate x509Certificate2 = (X509Certificate) it.next();
                    if (m3132b(x509Certificate, x509Certificate2)) {
                        it.remove();
                        arrayList.add(x509Certificate2);
                    }
                }
                if (z) {
                    return arrayList;
                }
                throw new SSLPeerUnverifiedException("Failed to find a trusted cert that signed " + x509Certificate);
            }
            if (arrayList.size() > 1 || !x509Certificate.equals(x509CertificateMo1541a)) {
                arrayList.add(x509CertificateMo1541a);
            }
            if (m3132b(x509CertificateMo1541a, x509CertificateMo1541a)) {
                return arrayList;
            }
            z = true;
        }
        throw new SSLPeerUnverifiedException("Certificate chain too long: " + arrayList);
    }

    /* renamed from: b */
    public final boolean m3132b(X509Certificate x509Certificate, X509Certificate x509Certificate2) {
        if (!x509Certificate.getIssuerDN().equals(x509Certificate2.getSubjectDN())) {
            return false;
        }
        try {
            x509Certificate.verify(x509Certificate2.getPublicKey());
            return true;
        } catch (GeneralSecurityException unused) {
            return false;
        }
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof BasicCertificateChainCleaner) && ((BasicCertificateChainCleaner) obj).f4252a.equals(this.f4252a);
    }

    public int hashCode() {
        return this.f4252a.hashCode();
    }
}
