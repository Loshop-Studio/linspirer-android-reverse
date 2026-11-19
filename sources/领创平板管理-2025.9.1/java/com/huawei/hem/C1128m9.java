package com.huawei.hem;

import android.text.TextUtils;

/* renamed from: com.huawei.hem.m9 */
/* loaded from: classes.dex */
public class C1128m9 {

    /* renamed from: c */
    public static C1128m9 f3245c;

    /* renamed from: a */
    public String f3246a;

    /* renamed from: b */
    public String f3247b;

    /* renamed from: e */
    public static C1128m9 m2352e() {
        if (f3245c == null) {
            synchronized (C1128m9.class) {
                if (f3245c == null) {
                    f3245c = new C1128m9();
                }
            }
        }
        return f3245c;
    }

    /* renamed from: a */
    public String m2353a() {
        String strM2430a;
        if (TextUtils.isEmpty(this.f3246a)) {
            String strM2283f = AbstractC1102l9.m2283f(LauncherMenuHelper.m2998s(), "Privacy_MY", "PrivacyData", "");
            if (TextUtils.isEmpty(strM2283f)) {
                strM2430a = C0927eb.m1674b(16);
                m2355c(m2354b(strM2430a));
            } else {
                String strM1578a = C0901db.m1578a("analytics_keystore", strM2283f);
                if (TextUtils.isEmpty(strM1578a)) {
                    C1404xa.m2937d("hmsSdk", "deCrypt work key first");
                    strM2430a = C1178o9.m2430a(strM2283f, m2356d());
                    if (TextUtils.isEmpty(strM2430a)) {
                        strM2430a = C0927eb.m1674b(16);
                    }
                    m2355c(m2354b(strM2430a));
                    C1052j9.m2121f();
                } else {
                    strM2430a = strM1578a;
                }
            }
            this.f3246a = strM2430a;
        }
        return this.f3246a;
    }

    /* renamed from: b */
    public final String m2354b(String str) {
        return C0901db.m1581d("analytics_keystore", str);
    }

    /* renamed from: c */
    public final boolean m2355c(String str) {
        C1404xa.m2937d("hmsSdk", "refresh sp aes key");
        if (TextUtils.isEmpty(str)) {
            C1404xa.m2937d("hmsSdk", "refreshLocalKey(): encrypted key is empty");
            return false;
        }
        AbstractC1102l9.m2263D(LauncherMenuHelper.m2998s(), "Privacy_MY", "PrivacyData", str);
        AbstractC1102l9.m2262C(LauncherMenuHelper.m2998s(), "Privacy_MY", "flashKeyTime", System.currentTimeMillis());
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00a5 A[LOOP:0: B:25:0x00a3->B:26:0x00a5, LOOP_END] */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m2356d() throws java.lang.Throwable {
        /*
            r10 = this;
            java.lang.String r0 = r10.f3247b
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 == 0) goto Lc8
            com.huawei.hem.j9 r0 = new com.huawei.hem.j9
            r0.<init>()
            android.content.Context r1 = com.huawei.hem.C1423y4.m2998s()
            r2 = -1
            java.lang.String r4 = "Privacy_MY"
            java.lang.String r5 = "assemblyFlash"
            long r6 = com.huawei.hem.AbstractC1102l9.m2278a(r1, r4, r5, r2)
            int r1 = (r2 > r6 ? 1 : (r2 == r6 ? 0 : -1))
            r2 = 0
            java.lang.String r3 = "hmsSdk"
            if (r1 != 0) goto L28
            java.lang.String r1 = "First init components"
            com.huawei.hem.C1404xa.m2937d(r3, r1)
            goto L36
        L28:
            long r8 = java.lang.System.currentTimeMillis()
            long r8 = r8 - r6
            r6 = 31536000000(0x757b12c00, double:1.55808542072E-313)
            int r1 = (r8 > r6 ? 1 : (r8 == r6 ? 0 : -1))
            if (r1 <= 0) goto L38
        L36:
            r1 = 1
            goto L39
        L38:
            r1 = r2
        L39:
            java.lang.String r6 = "maywnj"
            java.lang.String r7 = "marfil"
            java.lang.String r8 = "febdoc"
            java.lang.String r9 = "aprpap"
            if (r1 == 0) goto L72
            java.lang.String r1 = "refresh components"
            com.huawei.hem.C1404xa.m2937d(r3, r1)
            r1 = 128(0x80, float:1.8E-43)
            java.lang.String r3 = com.huawei.hem.C0927eb.m1674b(r1)
            r0.m2123b(r9, r3)
            java.lang.String r9 = com.huawei.hem.C0927eb.m1674b(r1)
            r0.m2123b(r8, r9)
            java.lang.String r8 = com.huawei.hem.C0927eb.m1674b(r1)
            r0.m2123b(r7, r8)
            java.lang.String r1 = com.huawei.hem.C0927eb.m1674b(r1)
            r0.m2123b(r6, r1)
            android.content.Context r0 = com.huawei.hem.C1423y4.m2998s()
            long r6 = java.lang.System.currentTimeMillis()
            com.huawei.hem.AbstractC1102l9.m2262C(r0, r4, r5, r6)
            goto L82
        L72:
            java.lang.String r3 = r0.m2125d(r9)
            java.lang.String r9 = r0.m2125d(r8)
            java.lang.String r8 = r0.m2125d(r7)
            java.lang.String r1 = r0.m2125d(r6)
        L82:
            byte[] r0 = com.huawei.hem.AbstractC1102l9.m2271L(r3)
            byte[] r3 = com.huawei.hem.AbstractC1102l9.m2271L(r9)
            byte[] r4 = com.huawei.hem.AbstractC1102l9.m2271L(r8)
            java.lang.String r5 = "f6040d0e807aaec325ecf44823765544e92905158169f694b282bf17388632cf95a83bae7d2d235c1f039b0df1dcca5fda619b6f7f459f2ff8d70ddb7b601592fe29fcae58c028f319b3b12495e67aa5390942a997a8cb572c8030b2df5c2b622608bea02b0c3e5d4dff3f72c9e3204049a45c0760cd3604af8d57f0e0c693cc"
            byte[] r5 = com.huawei.hem.AbstractC1102l9.m2271L(r5)
            int r6 = r0.length
            int r7 = r3.length
            if (r6 <= r7) goto L99
            int r6 = r3.length
        L99:
            int r7 = r4.length
            if (r6 <= r7) goto L9d
            int r6 = r4.length
        L9d:
            int r7 = r5.length
            if (r6 <= r7) goto La1
            int r6 = r5.length
        La1:
            char[] r7 = new char[r6]
        La3:
            if (r2 >= r6) goto Lb6
            r8 = r0[r2]
            r9 = r3[r2]
            r8 = r8 ^ r9
            r9 = r4[r2]
            r8 = r8 ^ r9
            r9 = r5[r2]
            r8 = r8 ^ r9
            char r8 = (char) r8
            r7[r2] = r8
            int r2 = r2 + 1
            goto La3
        Lb6:
            byte[] r0 = com.huawei.hem.AbstractC1102l9.m2271L(r1)
            r1 = 10000(0x2710, float:1.4013E-41)
            r2 = 16
            byte[] r0 = com.huawei.hem.AbstractC0849bb.m1389a(r7, r0, r1, r2)
            java.lang.String r0 = com.huawei.hem.AbstractC1102l9.m2265F(r0)
            r10.f3247b = r0
        Lc8:
            java.lang.String r0 = r10.f3247b
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.C1128m9.m2356d():java.lang.String");
    }
}
