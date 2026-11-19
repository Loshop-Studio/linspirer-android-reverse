package com.huawei.hem;

import java.security.cert.X509Certificate;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import javax.security.auth.x500.X500Principal;

/* compiled from: BasicTrustRootIndex.java */
/* renamed from: com.huawei.hem.zm */
/* loaded from: classes.dex */
public final class C1466zm implements InterfaceC0887cn {

    /* renamed from: a */
    public final Map<X500Principal, Set<X509Certificate>> f4331a = new LinkedHashMap();

    public C1466zm(X509Certificate... x509CertificateArr) {
        for (X509Certificate x509Certificate : x509CertificateArr) {
            X500Principal subjectX500Principal = x509Certificate.getSubjectX500Principal();
            Set<X509Certificate> linkedHashSet = this.f4331a.get(subjectX500Principal);
            if (linkedHashSet == null) {
                linkedHashSet = new LinkedHashSet<>(1);
                this.f4331a.put(subjectX500Principal, linkedHashSet);
            }
            linkedHashSet.add(x509Certificate);
        }
    }

    @Override // com.huawei.hem.InterfaceC0887cn
    /* renamed from: a */
    public X509Certificate mo1541a(X509Certificate x509Certificate) {
        Set<X509Certificate> set = this.f4331a.get(x509Certificate.getIssuerX500Principal());
        if (set == null) {
            return null;
        }
        for (X509Certificate x509Certificate2 : set) {
            try {
                x509Certificate.verify(x509Certificate2.getPublicKey());
                return x509Certificate2;
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof C1466zm) && ((C1466zm) obj).f4331a.equals(this.f4331a);
    }

    public int hashCode() {
        return this.f4331a.hashCode();
    }
}
