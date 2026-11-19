package com.huawei.hem;

import android.content.Context;
import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import java.util.concurrent.Callable;

/* renamed from: com.huawei.hem.t8 */
/* loaded from: classes.dex */
public class CallableC1302t8 extends C1076k8 implements Callable<C1252r8> {
    public CallableC1302t8(String str, int i, InterfaceC1051j8 interfaceC1051j8, Context context, String str2, GrsBaseInfo grsBaseInfo) {
        super(str, i, interfaceC1051j8, context, str2, grsBaseInfo, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0099  */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r8v3, types: [byte[]] */
    @Override // java.util.concurrent.Callable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.huawei.hem.C1252r8 call() {
        /*
            r19 = this;
            r1 = r19
            java.lang.String r2 = "i"
            java.lang.String r0 = "Get call execute"
            com.huawei.hms.framework.common.Logger.m3434i(r2, r0)
            r3 = 0
            r5 = 0
            long r6 = android.os.SystemClock.elapsedRealtime()     // Catch: java.io.IOException -> L72
            long r3 = java.lang.System.currentTimeMillis()     // Catch: java.io.IOException -> L6b
            java.lang.String r0 = r1.f3042b     // Catch: java.io.IOException -> L6b
            android.content.Context r8 = r1.f3045e     // Catch: java.io.IOException -> L6b
            java.lang.String r9 = r1.f3046f     // Catch: java.io.IOException -> L6b
            javax.net.ssl.HttpsURLConnection r0 = com.huawei.hem.C1423y4.m2985f(r0, r8, r9)     // Catch: java.io.IOException -> L6b
            if (r0 != 0) goto L27
            java.lang.String r0 = "create HttpsURLConnection instance by url return null."
            com.huawei.hms.framework.common.Logger.m3438w(r2, r0)     // Catch: java.io.IOException -> L6b
            goto La0
        L27:
            java.lang.String r8 = "GET"
            r0.setRequestMethod(r8)     // Catch: java.io.IOException -> L6b
            r0.connect()     // Catch: java.io.IOException -> L6b
            int r10 = r0.getResponseCode()     // Catch: java.io.IOException -> L6b
            r8 = 200(0xc8, float:2.8E-43)
            if (r10 != r8) goto L49
            java.io.InputStream r5 = r0.getInputStream()     // Catch: java.lang.Throwable -> L44
            byte[] r8 = com.huawei.hms.framework.common.IoUtils.toByteArray(r5)     // Catch: java.lang.Throwable -> L44
            com.huawei.hms.framework.common.IoUtils.closeSecure(r5)     // Catch: java.io.IOException -> L6b
            r5 = r8
            goto L49
        L44:
            r0 = move-exception
            com.huawei.hms.framework.common.IoUtils.closeSecure(r5)     // Catch: java.io.IOException -> L6b
            throw r0     // Catch: java.io.IOException -> L6b
        L49:
            java.util.Map r11 = r0.getHeaderFields()     // Catch: java.io.IOException -> L6b
            r0.disconnect()     // Catch: java.io.IOException -> L6b
            long r8 = android.os.SystemClock.elapsedRealtime()     // Catch: java.io.IOException -> L6b
            long r15 = java.lang.System.currentTimeMillis()     // Catch: java.io.IOException -> L6b
            if (r5 != 0) goto L5f
            r0 = 0
            byte[] r0 = new byte[r0]     // Catch: java.io.IOException -> L6b
            r12 = r0
            goto L60
        L5f:
            r12 = r5
        L60:
            com.huawei.hem.r8 r0 = new com.huawei.hem.r8     // Catch: java.io.IOException -> L6b
            long r13 = r8 - r6
            r9 = r0
            r9.<init>(r10, r11, r12, r13)     // Catch: java.io.IOException -> L6b
            r1.f3041a = r0     // Catch: java.io.IOException -> L6b
            goto L8a
        L6b:
            r0 = move-exception
            r17 = r3
            r3 = r6
            r5 = r17
            goto L74
        L72:
            r0 = move-exception
            r5 = r3
        L74:
            long r7 = android.os.SystemClock.elapsedRealtime()
            long r15 = java.lang.System.currentTimeMillis()
            java.lang.String r9 = "RequestCallable run task catch IOException"
            com.huawei.hms.framework.common.Logger.m3439w(r2, r9, r0)
            com.huawei.hem.r8 r2 = new com.huawei.hem.r8
            long r7 = r7 - r3
            r2.<init>(r0, r7)
            r1.f3041a = r2
            r3 = r5
        L8a:
            r5 = r15
            com.huawei.hem.r8 r0 = r1.f3041a
            java.lang.String r2 = r1.f3042b
            r0.f3615m = r2
            r0.f3607e = r3
            r0.f3608f = r5
            com.huawei.hem.j8 r2 = r1.f3043c
            if (r2 == 0) goto L9e
            com.huawei.hem.q8 r2 = (com.huawei.hem.C1227q8) r2
            r2.m2582b(r0)
        L9e:
            com.huawei.hem.r8 r5 = r1.f3041a
        La0:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.CallableC1302t8.call():java.lang.Object");
    }
}
