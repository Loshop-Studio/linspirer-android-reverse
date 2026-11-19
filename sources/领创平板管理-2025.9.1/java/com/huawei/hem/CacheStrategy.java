package com.huawei.hem;

import javax.annotation.Nullable;

/* compiled from: CacheStrategy.java */
/* renamed from: com.huawei.hem.yk */
/* loaded from: classes.dex */
public final class CacheStrategy {

    /* renamed from: a */
    @Nullable
    public final OkHttpRequest f4231a;

    /* renamed from: b */
    @Nullable
    public final OkHttpResponse f4232b;

    public CacheStrategy(OkHttpRequest c0988gk, OkHttpResponse c1088kk) {
        this.f4231a = c0988gk;
        this.f4232b = c1088kk;
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x0054, code lost:
    
        if (r3.m2198a().f2961e == false) goto L36;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m3117a(com.huawei.hem.OkHttpResponse r3, com.huawei.hem.OkHttpRequest r4) {
        /*
            int r0 = r3.f3093c
            r1 = 200(0xc8, float:2.8E-43)
            r2 = 0
            if (r0 == r1) goto L58
            r1 = 410(0x19a, float:5.75E-43)
            if (r0 == r1) goto L58
            r1 = 414(0x19e, float:5.8E-43)
            if (r0 == r1) goto L58
            r1 = 501(0x1f5, float:7.02E-43)
            if (r0 == r1) goto L58
            r1 = 203(0xcb, float:2.84E-43)
            if (r0 == r1) goto L58
            r1 = 204(0xcc, float:2.86E-43)
            if (r0 == r1) goto L58
            r1 = 307(0x133, float:4.3E-43)
            if (r0 == r1) goto L2f
            r1 = 308(0x134, float:4.32E-43)
            if (r0 == r1) goto L58
            r1 = 404(0x194, float:5.66E-43)
            if (r0 == r1) goto L58
            r1 = 405(0x195, float:5.68E-43)
            if (r0 == r1) goto L58
            switch(r0) {
                case 300: goto L58;
                case 301: goto L58;
                case 302: goto L2f;
                default: goto L2e;
            }
        L2e:
            goto L57
        L2f:
            com.huawei.hem.yj r0 = r3.f3096f
            java.lang.String r1 = "Expires"
            java.lang.String r0 = r0.m3110c(r1)
            if (r0 == 0) goto L3a
            goto L3b
        L3a:
            r0 = 0
        L3b:
            if (r0 != 0) goto L58
            com.huawei.hem.jj r0 = r3.m2198a()
            int r0 = r0.f2959c
            r1 = -1
            if (r0 != r1) goto L58
            com.huawei.hem.jj r0 = r3.m2198a()
            boolean r0 = r0.f2962f
            if (r0 != 0) goto L58
            com.huawei.hem.jj r0 = r3.m2198a()
            boolean r0 = r0.f2961e
            if (r0 == 0) goto L57
            goto L58
        L57:
            return r2
        L58:
            com.huawei.hem.jj r3 = r3.m2198a()
            boolean r3 = r3.f2958b
            if (r3 != 0) goto L69
            com.huawei.hem.jj r3 = r4.m1876a()
            boolean r3 = r3.f2958b
            if (r3 != 0) goto L69
            r2 = 1
        L69:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.C1439yk.m3117a(com.huawei.hem.kk, com.huawei.hem.gk):boolean");
    }
}
