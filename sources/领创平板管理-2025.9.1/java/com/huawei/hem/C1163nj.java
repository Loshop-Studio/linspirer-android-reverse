package com.huawei.hem;

import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.Map;

/* compiled from: CipherSuite.java */
/* renamed from: com.huawei.hem.nj */
/* loaded from: classes.dex */
public final class C1163nj {

    /* renamed from: b */
    public static final Comparator<String> f3334b = new Comparator() { // from class: com.huawei.hem.cj
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return C1163nj.m2416c((String) obj, (String) obj2);
        }
    };

    /* renamed from: c */
    public static final Map<String, C1163nj> f3335c = new LinkedHashMap();

    /* renamed from: d */
    public static final C1163nj f3336d;

    /* renamed from: e */
    public static final C1163nj f3337e;

    /* renamed from: f */
    public static final C1163nj f3338f;

    /* renamed from: g */
    public static final C1163nj f3339g;

    /* renamed from: h */
    public static final C1163nj f3340h;

    /* renamed from: i */
    public static final C1163nj f3341i;

    /* renamed from: j */
    public static final C1163nj f3342j;

    /* renamed from: k */
    public static final C1163nj f3343k;

    /* renamed from: l */
    public static final C1163nj f3344l;

    /* renamed from: m */
    public static final C1163nj f3345m;

    /* renamed from: n */
    public static final C1163nj f3346n;

    /* renamed from: o */
    public static final C1163nj f3347o;

    /* renamed from: p */
    public static final C1163nj f3348p;

    /* renamed from: q */
    public static final C1163nj f3349q;

    /* renamed from: r */
    public static final C1163nj f3350r;

    /* renamed from: s */
    public static final C1163nj f3351s;

    /* renamed from: a */
    public final String f3352a;

    static {
        m2415b("SSL_RSA_WITH_NULL_MD5");
        m2415b("SSL_RSA_WITH_NULL_SHA");
        m2415b("SSL_RSA_EXPORT_WITH_RC4_40_MD5");
        m2415b("SSL_RSA_WITH_RC4_128_MD5");
        m2415b("SSL_RSA_WITH_RC4_128_SHA");
        m2415b("SSL_RSA_EXPORT_WITH_DES40_CBC_SHA");
        m2415b("SSL_RSA_WITH_DES_CBC_SHA");
        f3336d = m2415b("SSL_RSA_WITH_3DES_EDE_CBC_SHA");
        m2415b("SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA");
        m2415b("SSL_DHE_DSS_WITH_DES_CBC_SHA");
        m2415b("SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA");
        m2415b("SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA");
        m2415b("SSL_DHE_RSA_WITH_DES_CBC_SHA");
        m2415b("SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA");
        m2415b("SSL_DH_anon_EXPORT_WITH_RC4_40_MD5");
        m2415b("SSL_DH_anon_WITH_RC4_128_MD5");
        m2415b("SSL_DH_anon_EXPORT_WITH_DES40_CBC_SHA");
        m2415b("SSL_DH_anon_WITH_DES_CBC_SHA");
        m2415b("SSL_DH_anon_WITH_3DES_EDE_CBC_SHA");
        m2415b("TLS_KRB5_WITH_DES_CBC_SHA");
        m2415b("TLS_KRB5_WITH_3DES_EDE_CBC_SHA");
        m2415b("TLS_KRB5_WITH_RC4_128_SHA");
        m2415b("TLS_KRB5_WITH_DES_CBC_MD5");
        m2415b("TLS_KRB5_WITH_3DES_EDE_CBC_MD5");
        m2415b("TLS_KRB5_WITH_RC4_128_MD5");
        m2415b("TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA");
        m2415b("TLS_KRB5_EXPORT_WITH_RC4_40_SHA");
        m2415b("TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5");
        m2415b("TLS_KRB5_EXPORT_WITH_RC4_40_MD5");
        f3337e = m2415b("TLS_RSA_WITH_AES_128_CBC_SHA");
        m2415b("TLS_DHE_DSS_WITH_AES_128_CBC_SHA");
        m2415b("TLS_DHE_RSA_WITH_AES_128_CBC_SHA");
        m2415b("TLS_DH_anon_WITH_AES_128_CBC_SHA");
        f3338f = m2415b("TLS_RSA_WITH_AES_256_CBC_SHA");
        m2415b("TLS_DHE_DSS_WITH_AES_256_CBC_SHA");
        m2415b("TLS_DHE_RSA_WITH_AES_256_CBC_SHA");
        m2415b("TLS_DH_anon_WITH_AES_256_CBC_SHA");
        m2415b("TLS_RSA_WITH_NULL_SHA256");
        m2415b("TLS_RSA_WITH_AES_128_CBC_SHA256");
        m2415b("TLS_RSA_WITH_AES_256_CBC_SHA256");
        m2415b("TLS_DHE_DSS_WITH_AES_128_CBC_SHA256");
        m2415b("TLS_RSA_WITH_CAMELLIA_128_CBC_SHA");
        m2415b("TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA");
        m2415b("TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA");
        m2415b("TLS_DHE_RSA_WITH_AES_128_CBC_SHA256");
        m2415b("TLS_DHE_DSS_WITH_AES_256_CBC_SHA256");
        m2415b("TLS_DHE_RSA_WITH_AES_256_CBC_SHA256");
        m2415b("TLS_DH_anon_WITH_AES_128_CBC_SHA256");
        m2415b("TLS_DH_anon_WITH_AES_256_CBC_SHA256");
        m2415b("TLS_RSA_WITH_CAMELLIA_256_CBC_SHA");
        m2415b("TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA");
        m2415b("TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA");
        m2415b("TLS_PSK_WITH_RC4_128_SHA");
        m2415b("TLS_PSK_WITH_3DES_EDE_CBC_SHA");
        m2415b("TLS_PSK_WITH_AES_128_CBC_SHA");
        m2415b("TLS_PSK_WITH_AES_256_CBC_SHA");
        m2415b("TLS_RSA_WITH_SEED_CBC_SHA");
        f3339g = m2415b("TLS_RSA_WITH_AES_128_GCM_SHA256");
        f3340h = m2415b("TLS_RSA_WITH_AES_256_GCM_SHA384");
        m2415b("TLS_DHE_RSA_WITH_AES_128_GCM_SHA256");
        m2415b("TLS_DHE_RSA_WITH_AES_256_GCM_SHA384");
        m2415b("TLS_DHE_DSS_WITH_AES_128_GCM_SHA256");
        m2415b("TLS_DHE_DSS_WITH_AES_256_GCM_SHA384");
        m2415b("TLS_DH_anon_WITH_AES_128_GCM_SHA256");
        m2415b("TLS_DH_anon_WITH_AES_256_GCM_SHA384");
        m2415b("TLS_EMPTY_RENEGOTIATION_INFO_SCSV");
        m2415b("TLS_FALLBACK_SCSV");
        m2415b("TLS_ECDH_ECDSA_WITH_NULL_SHA");
        m2415b("TLS_ECDH_ECDSA_WITH_RC4_128_SHA");
        m2415b("TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA");
        m2415b("TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA");
        m2415b("TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA");
        m2415b("TLS_ECDHE_ECDSA_WITH_NULL_SHA");
        m2415b("TLS_ECDHE_ECDSA_WITH_RC4_128_SHA");
        m2415b("TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA");
        m2415b("TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA");
        m2415b("TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA");
        m2415b("TLS_ECDH_RSA_WITH_NULL_SHA");
        m2415b("TLS_ECDH_RSA_WITH_RC4_128_SHA");
        m2415b("TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA");
        m2415b("TLS_ECDH_RSA_WITH_AES_128_CBC_SHA");
        m2415b("TLS_ECDH_RSA_WITH_AES_256_CBC_SHA");
        m2415b("TLS_ECDHE_RSA_WITH_NULL_SHA");
        m2415b("TLS_ECDHE_RSA_WITH_RC4_128_SHA");
        m2415b("TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA");
        f3341i = m2415b("TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA");
        f3342j = m2415b("TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA");
        m2415b("TLS_ECDH_anon_WITH_NULL_SHA");
        m2415b("TLS_ECDH_anon_WITH_RC4_128_SHA");
        m2415b("TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA");
        m2415b("TLS_ECDH_anon_WITH_AES_128_CBC_SHA");
        m2415b("TLS_ECDH_anon_WITH_AES_256_CBC_SHA");
        m2415b("TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256");
        m2415b("TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384");
        m2415b("TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256");
        m2415b("TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384");
        m2415b("TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256");
        m2415b("TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384");
        m2415b("TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256");
        m2415b("TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384");
        f3343k = m2415b("TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256");
        f3344l = m2415b("TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384");
        m2415b("TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256");
        m2415b("TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384");
        f3345m = m2415b("TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256");
        f3346n = m2415b("TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384");
        m2415b("TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256");
        m2415b("TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384");
        m2415b("TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA");
        m2415b("TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA");
        f3347o = m2415b("TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256");
        f3348p = m2415b("TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256");
        m2415b("TLS_DHE_RSA_WITH_CHACHA20_POLY1305_SHA256");
        m2415b("TLS_ECDHE_PSK_WITH_CHACHA20_POLY1305_SHA256");
        f3349q = m2415b("TLS_AES_128_GCM_SHA256");
        f3350r = m2415b("TLS_AES_256_GCM_SHA384");
        f3351s = m2415b("TLS_CHACHA20_POLY1305_SHA256");
        m2415b("TLS_AES_128_CCM_SHA256");
        m2415b("TLS_AES_128_CCM_8_SHA256");
    }

    public C1163nj(String str) {
        if (str == null) {
            throw null;
        }
        this.f3352a = str;
    }

    /* renamed from: a */
    public static synchronized C1163nj m2414a(String str) {
        C1163nj c1163nj;
        c1163nj = f3335c.get(str);
        if (c1163nj == null) {
            c1163nj = f3335c.get(m2417d(str));
            if (c1163nj == null) {
                c1163nj = new C1163nj(str);
            }
            f3335c.put(str, c1163nj);
        }
        return c1163nj;
    }

    /* renamed from: b */
    public static C1163nj m2415b(String str) {
        C1163nj c1163nj = new C1163nj(str);
        f3335c.put(str, c1163nj);
        return c1163nj;
    }

    /* renamed from: c */
    public static /* synthetic */ int m2416c(String str, String str2) {
        int iMin = Math.min(str.length(), str2.length());
        for (int i = 4; i < iMin; i++) {
            char cCharAt = str.charAt(i);
            char cCharAt2 = str2.charAt(i);
            if (cCharAt != cCharAt2) {
                return cCharAt < cCharAt2 ? -1 : 1;
            }
        }
        int length = str.length();
        int length2 = str2.length();
        if (length != length2) {
            return length < length2 ? -1 : 1;
        }
        return 0;
    }

    /* renamed from: d */
    public static String m2417d(String str) {
        if (str.startsWith("TLS_")) {
            StringBuilder sbM1765j = C0948f6.m1765j("SSL_");
            sbM1765j.append(str.substring(4));
            return sbM1765j.toString();
        }
        if (!str.startsWith("SSL_")) {
            return str;
        }
        StringBuilder sbM1765j2 = C0948f6.m1765j("TLS_");
        sbM1765j2.append(str.substring(4));
        return sbM1765j2.toString();
    }

    public String toString() {
        return this.f3352a;
    }
}
