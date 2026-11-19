package com.huawei.hem;

/* renamed from: com.huawei.hem.wa */
/* loaded from: classes.dex */
public abstract class TelephonyDeviceIdentifiers {
    /* JADX WARN: Removed duplicated region for block: B:12:0x002d  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m2904a(android.content.Context r3) {
        /*
            r2 = this;
            com.huawei.hem.z9 r0 = com.huawei.hem.C1453z9.m3144b()
            com.huawei.hem.ga r0 = r0.f4293a
            java.lang.String r1 = r0.f2748b
            boolean r1 = android.text.TextUtils.isEmpty(r1)
            if (r1 == 0) goto L31
            java.lang.String r1 = "android.permission.READ_PHONE_STATE"
            boolean r1 = com.huawei.hem.AbstractC1102l9.m2296s(r3, r1)
            if (r1 == 0) goto L17
            goto L2d
        L17:
            java.lang.String r1 = "phone"
            java.lang.Object r3 = r3.getSystemService(r1)     // Catch: java.lang.SecurityException -> L26
            android.telephony.TelephonyManager r3 = (android.telephony.TelephonyManager) r3     // Catch: java.lang.SecurityException -> L26
            if (r3 == 0) goto L2d
            java.lang.String r3 = r3.getDeviceId()     // Catch: java.lang.SecurityException -> L26
            goto L2f
        L26:
            java.lang.String r3 = "hmsSdk"
            java.lang.String r1 = "getDeviceID Incorrect permissions!"
            com.huawei.hem.C1404xa.m2936c(r3, r1)
        L2d:
            java.lang.String r3 = ""
        L2f:
            r0.f2748b = r3
        L31:
            java.lang.String r3 = r0.f2748b
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.AbstractC1379wa.m2904a(android.content.Context):java.lang.String");
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0041  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m2905b(android.content.Context r4) {
        /*
            r3 = this;
            com.huawei.hem.z9 r0 = com.huawei.hem.C1453z9.m3144b()
            com.huawei.hem.ga r0 = r0.f4293a
            java.lang.String r1 = r0.f2750d
            boolean r1 = android.text.TextUtils.isEmpty(r1)
            if (r1 == 0) goto L46
            java.lang.String r1 = android.os.Build.SERIAL
            boolean r2 = android.text.TextUtils.isEmpty(r1)
            if (r2 != 0) goto L1e
            java.lang.String r2 = "unknown"
            boolean r2 = r1.equalsIgnoreCase(r2)
            if (r2 == 0) goto L44
        L1e:
            java.lang.String r1 = "hmsSdk"
            java.lang.String r2 = "getSerial : is executed."
            com.huawei.hem.C1404xa.m2934a(r1, r2)
            if (r4 != 0) goto L28
            goto L41
        L28:
            java.lang.String r2 = "android.permission.READ_PHONE_STATE"
            boolean r4 = com.huawei.hem.AbstractC1102l9.m2296s(r4, r2)
            if (r4 == 0) goto L31
            goto L41
        L31:
            int r4 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.SecurityException -> L3c
            r2 = 26
            if (r4 < r2) goto L41
            java.lang.String r4 = android.os.Build.getSerial()     // Catch: java.lang.SecurityException -> L3c
            goto L43
        L3c:
            java.lang.String r4 = "getSerial() Incorrect permissions!"
            com.huawei.hem.C1404xa.m2940g(r1, r4)
        L41:
            java.lang.String r4 = ""
        L43:
            r1 = r4
        L44:
            r0.f2750d = r1
        L46:
            java.lang.String r4 = r0.f2750d
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.AbstractC1379wa.m2905b(android.content.Context):java.lang.String");
    }

    /* renamed from: c */
    public abstract int mo2868c();
}
