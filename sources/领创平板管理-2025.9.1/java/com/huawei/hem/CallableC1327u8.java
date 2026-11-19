package com.huawei.hem;

import android.content.Context;
import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import java.util.concurrent.Callable;

/* renamed from: com.huawei.hem.u8 */
/* loaded from: classes.dex */
public class CallableC1327u8 extends C1076k8 implements Callable<C1252r8> {
    public CallableC1327u8(String str, int i, InterfaceC1051j8 interfaceC1051j8, Context context, String str2, GrsBaseInfo grsBaseInfo, C0872c8 c0872c8) {
        super(str, i, interfaceC1051j8, context, str2, grsBaseInfo, c0872c8);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00c4  */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r8v6, types: [byte[]] */
    @Override // java.util.concurrent.Callable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.huawei.hem.C1252r8 call() throws java.io.IOException {
        /*
            r20 = this;
            r1 = r20
            java.lang.String r2 = "j"
            java.lang.String r0 = "Post call execute"
            com.huawei.hms.framework.common.Logger.m3434i(r2, r0)
            r3 = 0
            r5 = 0
            long r6 = android.os.SystemClock.elapsedRealtime()     // Catch: java.io.IOException -> L9c
            long r3 = java.lang.System.currentTimeMillis()     // Catch: java.io.IOException -> L95
            java.lang.String r0 = r1.f3042b     // Catch: java.io.IOException -> L95
            android.content.Context r8 = r1.f3045e     // Catch: java.io.IOException -> L95
            java.lang.String r9 = r1.f3046f     // Catch: java.io.IOException -> L95
            javax.net.ssl.HttpsURLConnection r0 = com.huawei.hem.C1423y4.m2985f(r0, r8, r9)     // Catch: java.io.IOException -> L95
            if (r0 != 0) goto L27
            java.lang.String r0 = "create HttpsURLConnection instance by url return null."
            com.huawei.hms.framework.common.Logger.m3438w(r2, r0)     // Catch: java.io.IOException -> L95
            goto Lcb
        L27:
            java.lang.String r8 = "Content-Type"
            java.lang.String r9 = "application/json; charset=UTF-8"
            r0.setRequestProperty(r8, r9)     // Catch: java.io.IOException -> L95
            java.lang.String r8 = "POST"
            r0.setRequestMethod(r8)     // Catch: java.io.IOException -> L95
            r8 = 1
            r0.setDoOutput(r8)     // Catch: java.io.IOException -> L95
            r0.setDoInput(r8)     // Catch: java.io.IOException -> L95
            r0.connect()     // Catch: java.io.IOException -> L95
            java.io.OutputStream r8 = r0.getOutputStream()     // Catch: java.io.IOException -> L95
            com.huawei.hem.c8 r9 = r1.f3048h     // Catch: java.io.IOException -> L95
            java.lang.String r10 = "services"
            java.lang.String r11 = ""
            com.huawei.hms.framework.common.PLSharedPreferences r9 = r9.f2329a     // Catch: java.io.IOException -> L95
            java.lang.String r9 = r9.getString(r10, r11)     // Catch: java.io.IOException -> L95
            java.lang.String r10 = "UTF-8"
            byte[] r9 = r9.getBytes(r10)     // Catch: java.io.IOException -> L95
            r8.write(r9)     // Catch: java.io.IOException -> L95
            r8.close()     // Catch: java.io.IOException -> L95
            int r11 = r0.getResponseCode()     // Catch: java.io.IOException -> L95
            r8 = 200(0xc8, float:2.8E-43)
            if (r11 != r8) goto L73
            java.io.InputStream r5 = r0.getInputStream()     // Catch: java.lang.Throwable -> L6e
            byte[] r8 = com.huawei.hms.framework.common.IoUtils.toByteArray(r5)     // Catch: java.lang.Throwable -> L6e
            com.huawei.hms.framework.common.IoUtils.closeSecure(r5)     // Catch: java.io.IOException -> L95
            r5 = r8
            goto L73
        L6e:
            r0 = move-exception
            com.huawei.hms.framework.common.IoUtils.closeSecure(r5)     // Catch: java.io.IOException -> L95
            throw r0     // Catch: java.io.IOException -> L95
        L73:
            java.util.Map r12 = r0.getHeaderFields()     // Catch: java.io.IOException -> L95
            r0.disconnect()     // Catch: java.io.IOException -> L95
            long r8 = android.os.SystemClock.elapsedRealtime()     // Catch: java.io.IOException -> L95
            long r16 = java.lang.System.currentTimeMillis()     // Catch: java.io.IOException -> L95
            if (r5 != 0) goto L89
            r0 = 0
            byte[] r0 = new byte[r0]     // Catch: java.io.IOException -> L95
            r13 = r0
            goto L8a
        L89:
            r13 = r5
        L8a:
            com.huawei.hem.r8 r0 = new com.huawei.hem.r8     // Catch: java.io.IOException -> L95
            long r14 = r8 - r6
            r10 = r0
            r10.<init>(r11, r12, r13, r14)     // Catch: java.io.IOException -> L95
            r1.f3041a = r0     // Catch: java.io.IOException -> L95
            goto Lb4
        L95:
            r0 = move-exception
            r18 = r3
            r3 = r6
            r5 = r18
            goto L9e
        L9c:
            r0 = move-exception
            r5 = r3
        L9e:
            long r7 = android.os.SystemClock.elapsedRealtime()
            long r16 = java.lang.System.currentTimeMillis()
            java.lang.String r9 = "RequestCallableV2 run task catch IOException"
            com.huawei.hms.framework.common.Logger.m3439w(r2, r9, r0)
            com.huawei.hem.r8 r2 = new com.huawei.hem.r8
            long r7 = r7 - r3
            r2.<init>(r0, r7)
            r1.f3041a = r2
            r3 = r5
        Lb4:
            r5 = r16
            com.huawei.hem.r8 r0 = r1.f3041a
            java.lang.String r2 = r1.f3042b
            r0.f3615m = r2
            r0.f3607e = r3
            r0.f3608f = r5
            com.huawei.hem.j8 r2 = r1.f3043c
            if (r2 == 0) goto Lc9
            com.huawei.hem.q8 r2 = (com.huawei.hem.C1227q8) r2
            r2.m2582b(r0)
        Lc9:
            com.huawei.hem.r8 r5 = r1.f3041a
        Lcb:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.CallableC1327u8.call():java.lang.Object");
    }
}
