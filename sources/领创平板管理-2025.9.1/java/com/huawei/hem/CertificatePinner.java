package com.huawei.hem;

import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import javax.annotation.Nullable;
import javax.net.ssl.SSLPeerUnverifiedException;

/* compiled from: CertificatePinner.java */
/* renamed from: com.huawei.hem.mj */
/* loaded from: classes.dex */
public final class CertificatePinner {

    /* renamed from: c */
    public static final CertificatePinner f3269c = new CertificatePinner(new LinkedHashSet(new ArrayList()), null);

    /* renamed from: a */
    public final Set<a> f3270a;

    /* renamed from: b */
    @Nullable
    public final CertificateChainCleaner f3271b;

    /* compiled from: CertificatePinner.java */
    /* renamed from: com.huawei.hem.mj$a */
    public static final class a {

        /* renamed from: a */
        public final String f3272a;

        /* renamed from: b */
        public final String f3273b;

        /* renamed from: c */
        public final ByteString f3274c;

        public boolean equals(Object obj) {
            if (!(obj instanceof a)) {
                return false;
            }
            String str = ((a) obj).f3272a;
            throw null;
        }

        public int hashCode() {
            throw null;
        }

        public String toString() {
            new StringBuilder().append((String) null);
            throw null;
        }
    }

    public CertificatePinner(Set<a> set, @Nullable CertificateChainCleaner abstractC0835an) {
        this.f3270a = set;
        this.f3271b = abstractC0835an;
    }

    /* renamed from: b */
    public static String m2391b(Certificate certificate) {
        if (!(certificate instanceof X509Certificate)) {
            throw new IllegalArgumentException("Certificate pinning requires X509 certificates");
        }
        StringBuilder sbM1765j = CompilerOutline.m1765j("sha256/");
        sbM1765j.append(ByteString.m2224of(((X509Certificate) certificate).getPublicKey().getEncoded()).sha256().base64());
        return sbM1765j.toString();
    }

    /* renamed from: a */
    public void m2392a(String str, List<Certificate> list) throws SSLPeerUnverifiedException {
        List listEmptyList = Collections.emptyList();
        Iterator<a> it = this.f3270a.iterator();
        if (it.hasNext()) {
            if (it.next() == null) {
                throw null;
            }
            throw null;
        }
        if (listEmptyList.isEmpty()) {
            return;
        }
        CertificateChainCleaner abstractC0835an = this.f3271b;
        if (abstractC0835an != null) {
            list = abstractC0835an.mo1379a(list, str);
        }
        int size = list.size();
        for (int i = 0; i < size; i++) {
            X509Certificate x509Certificate = (X509Certificate) list.get(i);
            int size2 = listEmptyList.size();
            ByteString c1091knSha256 = null;
            ByteString c1091knSha1 = null;
            for (int i2 = 0; i2 < size2; i2++) {
                a aVar = (a) listEmptyList.get(i2);
                if (aVar.f3273b.equals("sha256/")) {
                    if (c1091knSha256 == null) {
                        c1091knSha256 = ByteString.m2224of(x509Certificate.getPublicKey().getEncoded()).sha256();
                    }
                    if (aVar.f3274c.equals(c1091knSha256)) {
                        return;
                    }
                } else {
                    if (!aVar.f3273b.equals("sha1/")) {
                        StringBuilder sbM1765j = CompilerOutline.m1765j("unsupported hashAlgorithm: ");
                        sbM1765j.append(aVar.f3273b);
                        throw new AssertionError(sbM1765j.toString());
                    }
                    if (c1091knSha1 == null) {
                        c1091knSha1 = ByteString.m2224of(x509Certificate.getPublicKey().getEncoded()).sha1();
                    }
                    if (aVar.f3274c.equals(c1091knSha1)) {
                        return;
                    }
                }
            }
        }
        StringBuilder sbM1767l = CompilerOutline.m1767l("Certificate pinning failure!", "\n  Peer certificate chain:");
        int size3 = list.size();
        for (int i3 = 0; i3 < size3; i3++) {
            X509Certificate x509Certificate2 = (X509Certificate) list.get(i3);
            sbM1767l.append("\n    ");
            sbM1767l.append(m2391b(x509Certificate2));
            sbM1767l.append(": ");
            sbM1767l.append(x509Certificate2.getSubjectDN().getName());
        }
        sbM1767l.append("\n  Pinned certificates for ");
        sbM1767l.append(str);
        sbM1767l.append(":");
        int size4 = listEmptyList.size();
        for (int i4 = 0; i4 < size4; i4++) {
            a aVar2 = (a) listEmptyList.get(i4);
            sbM1767l.append("\n    ");
            sbM1767l.append(aVar2);
        }
        throw new SSLPeerUnverifiedException(sbM1767l.toString());
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof CertificatePinner) {
            CertificatePinner c1138mj = (CertificatePinner) obj;
            if (Objects.equals(this.f3271b, c1138mj.f3271b) && this.f3270a.equals(c1138mj.f3270a)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return this.f3270a.hashCode() + (Objects.hashCode(this.f3271b) * 31);
    }
}
