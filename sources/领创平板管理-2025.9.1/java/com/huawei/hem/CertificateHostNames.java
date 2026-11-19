package com.huawei.hem;

import java.util.Arrays;
import java.util.regex.Pattern;

/* renamed from: com.huawei.hem.lb */
/* loaded from: classes.dex */
public class CertificateHostNames {

    /* renamed from: a */
    public static final Pattern f3166a = Pattern.compile("^(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)(\\.(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)){3}$");

    /* renamed from: b */
    public static final String[] f3167b;

    static {
        String[] strArr = {"ac", "co", "com", "ed", "edu", "go", "gouv", "gov", "info", "lg", "ne", "net", "or", "org"};
        f3167b = strArr;
        Arrays.sort(strArr);
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0096, code lost:
    
        r7 = r0.f3070g;
        r8 = r0.f3067d;
        r6 = new java.lang.String(r7, r8, r0.f3068e - r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0142, code lost:
    
        r0.f3068e = r0.f3066c;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:181:0x0369  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x037a  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x037d  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x0399  */
    /* JADX WARN: Removed duplicated region for block: B:257:0x039f A[EDGE_INSN: B:257:0x039f->B:198:0x039f BREAK  A[LOOP:10: B:162:0x030a->B:263:?], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:263:? A[LOOP:10: B:162:0x030a->B:263:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r6v14 */
    /* JADX WARN: Type inference failed for: r6v15, types: [int] */
    /* JADX WARN: Type inference failed for: r6v60 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m2306a(java.lang.String r16, java.security.cert.X509Certificate r17, boolean r18) throws javax.net.ssl.SSLException, java.security.cert.CertificateParsingException {
        /*
            Method dump skipped, instructions count: 975
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.C1104lb.m2306a(java.lang.String, java.security.cert.X509Certificate, boolean):void");
    }

    /* renamed from: b */
    public static int m2307b(String str) {
        int i = 0;
        for (int i2 = 0; i2 < str.length(); i2++) {
            if (str.charAt(i2) == '.') {
                i++;
            }
        }
        return i;
    }
}
