package com.huawei.hem;

import anet.channel.util.HttpConstant;
import com.huawei.hem.C1088kk;
import javax.annotation.Nullable;

/* compiled from: CacheInterceptor.java */
/* renamed from: com.huawei.hem.wk */
/* loaded from: classes.dex */
public final class C1389wk implements InterfaceC0832ak {

    /* renamed from: a */
    @Nullable
    public final InterfaceC1464zk f4027a;

    public C1389wk(@Nullable InterfaceC1464zk interfaceC1464zk) {
        this.f4027a = interfaceC1464zk;
    }

    /* renamed from: b */
    public static boolean m2910b(String str) {
        return HttpConstant.CONTENT_LENGTH.equalsIgnoreCase(str) || HttpConstant.CONTENT_ENCODING.equalsIgnoreCase(str) || HttpConstant.CONTENT_TYPE.equalsIgnoreCase(str);
    }

    /* renamed from: c */
    public static boolean m2911c(String str) {
        return ("Connection".equalsIgnoreCase(str) || "Keep-Alive".equalsIgnoreCase(str) || "Proxy-Authenticate".equalsIgnoreCase(str) || "Proxy-Authorization".equalsIgnoreCase(str) || "TE".equalsIgnoreCase(str) || "Trailers".equalsIgnoreCase(str) || "Transfer-Encoding".equalsIgnoreCase(str) || "Upgrade".equalsIgnoreCase(str)) ? false : true;
    }

    /* renamed from: d */
    public static C1088kk m2912d(C1088kk c1088kk) {
        if (c1088kk == null || c1088kk.f3097g == null) {
            return c1088kk;
        }
        C1088kk.a aVar = new C1088kk.a(c1088kk);
        aVar.f3111g = null;
        return aVar.m2200b();
    }

    /* JADX WARN: Code restructure failed: missing block: B:66:0x014c, code lost:
    
        if (r4 > 0) goto L67;
     */
    /* JADX WARN: Removed duplicated region for block: B:110:0x01f6  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0255  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0279  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x02b7  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x02cc  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x018c  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x019b  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x01a3  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x01a8  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x01b7  */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v13, types: [com.huawei.hem.gk, com.huawei.hem.kk] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v29 */
    @Override // com.huawei.hem.InterfaceC0832ak
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.huawei.hem.C1088kk mo1363a(com.huawei.hem.InterfaceC0832ak.a r27) throws java.lang.NumberFormatException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 1105
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.C1389wk.mo1363a(com.huawei.hem.ak$a):com.huawei.hem.kk");
    }
}
