package com.loc;

import android.content.Context;
import anet.channel.util.HttpConstant;
import com.bumptech.glide.load.model.LazyHeaders;
import com.huawei.hem.AppInfo;
import com.huawei.hem.HttpsDecisionUtil;
import com.huawei.hem.AgooNotificationHandler;
import com.loc.AMapNetworkRequest;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/* compiled from: LocNetManager.java */
/* renamed from: com.loc.ek */
/* loaded from: classes.dex */
public final class LocNetManager {

    /* renamed from: b */
    public static LocNetManager f5649b;

    /* renamed from: a */
    public BaseNetManager f5650a;

    /* renamed from: c */
    public Context f5651c;

    /* renamed from: d */
    public int f5652d = CoreUtil.f5762i;

    /* renamed from: e */
    public boolean f5653e = false;

    /* renamed from: f */
    public int f5654f = 0;

    public LocNetManager(Context context) {
        this.f5650a = null;
        this.f5651c = null;
        try {
            HttpsDecisionUtil.a.f2886a.m2020a(context);
        } catch (Throwable unused) {
        }
        this.f5651c = context;
        this.f5650a = BaseNetManager.m4058a();
    }

    /* renamed from: a */
    public static LocNetManager m4940a(Context context) {
        if (f5649b == null) {
            f5649b = new LocNetManager(context);
        }
        return f5649b;
    }

    /* renamed from: a */
    public final ResponseEntity m4941a(LocationRequest c1830el) {
        if (this.f5653e) {
            c1830el.m4138a(AMapNetworkRequest.c.HTTPS);
        }
        return BaseNetManager.m4059a(c1830el);
    }

    /* renamed from: a */
    public final LocationRequest m4942a(Context context, byte[] bArr, String str, String str2, boolean z) {
        String str3;
        try {
            HashMap map = new HashMap(16);
            LocationRequest c1830el = new LocationRequest(context, CoreUtil.m5023c());
            try {
                map.put(HttpConstant.CONTENT_TYPE, "application/octet-stream");
                map.put("Accept-Encoding", HttpConstant.GZIP);
                map.put("gzipped", "1");
                map.put("Connection", "Keep-Alive");
                map.put(LazyHeaders.Builder.USER_AGENT_HEADER, "AMAP_Location_SDK_Android 5.5.1");
                map.put("KEY", AppInfo.m1641g(context));
                map.put("enginever", CoreUtil.f5754a);
                String strM2505a = AgooNotificationHandler.m2505a();
                String strM2506b = AgooNotificationHandler.m2506b(context, strM2505a, "key=" + AppInfo.m1641g(context));
                map.put("ts", strM2505a);
                map.put("scode", strM2506b);
                if (Double.valueOf(CoreUtil.f5754a).doubleValue() >= 5.3d) {
                    map.put("aps_s_src", "openapi");
                }
                map.put("encr", "1");
                c1830el.m4947b(map);
                String str4 = z ? "loc" : "locf";
                c1830el.m4951c(true);
                c1830el.m4946b(String.format(Locale.US, "platform=Android&sdkversion=%s&product=%s&loc_channel=%s", "5.5.1", str4, 3));
                c1830el.m4948b(z);
                c1830el.m4950c(str);
                c1830el.m4953d(str2);
                c1830el.m4952c(AMapLocationUtilities.m5123a(bArr));
                c1830el.m4140a(AgooNotificationHandler.m2509e(context));
                HashMap map2 = new HashMap(16);
                map2.put("output", "bin");
                map2.put("policy", "3103");
                int i = this.f5654f;
                if (i == 0) {
                    map2.remove("custom");
                } else {
                    if (i != 1) {
                        str3 = i == 2 ? "language:en" : "language:cn";
                        map2.remove("custom");
                    }
                    map2.put("custom", str3);
                }
                c1830el.m4945a((Map<String, String>) map2);
                c1830el.m4135a(this.f5652d);
                c1830el.m4142b(this.f5652d);
                if (!this.f5653e) {
                    return c1830el;
                }
                c1830el.m4138a(AMapNetworkRequest.c.HTTPS);
                return c1830el;
            } catch (Throwable unused) {
                return c1830el;
            }
        } catch (Throwable unused2) {
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x00d3 A[Catch: all -> 0x00e6, TryCatch #0 {all -> 0x00e6, blocks: (B:12:0x00c5, B:14:0x00d3, B:15:0x00d8), top: B:22:0x00c5, outer: #1 }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m4943a(android.content.Context r9, double r10, double r12) {
        /*
            r8 = this;
            java.util.HashMap r0 = new java.util.HashMap     // Catch: java.lang.Throwable -> Lee
            r1 = 16
            r0.<init>(r1)     // Catch: java.lang.Throwable -> Lee
            com.loc.el r2 = new com.loc.el     // Catch: java.lang.Throwable -> Lee
            com.huawei.hem.k1 r3 = com.loc.C1834ep.m5023c()     // Catch: java.lang.Throwable -> Lee
            r2.<init>(r9, r3)     // Catch: java.lang.Throwable -> Lee
            r0.clear()     // Catch: java.lang.Throwable -> Lee
            java.lang.String r3 = "Content-Type"
            java.lang.String r4 = "application/x-www-form-urlencoded"
            r0.put(r3, r4)     // Catch: java.lang.Throwable -> Lee
            java.lang.String r3 = "Connection"
            java.lang.String r4 = "Keep-Alive"
            r0.put(r3, r4)     // Catch: java.lang.Throwable -> Lee
            java.lang.String r3 = "User-Agent"
            java.lang.String r4 = "AMAP_Location_SDK_Android 5.5.1"
            r0.put(r3, r4)     // Catch: java.lang.Throwable -> Lee
            java.util.HashMap r3 = new java.util.HashMap     // Catch: java.lang.Throwable -> Lee
            r3.<init>(r1)     // Catch: java.lang.Throwable -> Lee
            java.lang.String r1 = "custom"
            java.lang.String r4 = "26260A1F00020002"
            r3.put(r1, r4)     // Catch: java.lang.Throwable -> Lee
            java.lang.String r1 = "key"
            java.lang.String r4 = com.huawei.hem.C0917e1.m1641g(r9)     // Catch: java.lang.Throwable -> Lee
            r3.put(r1, r4)     // Catch: java.lang.Throwable -> Lee
            int r1 = r8.f5654f     // Catch: java.lang.Throwable -> Lee
            r4 = 2
            r5 = 1
            java.lang.String r6 = "language"
            if (r1 == 0) goto L49
            if (r1 == r5) goto L53
            if (r1 == r4) goto L4d
        L49:
            r3.remove(r6)     // Catch: java.lang.Throwable -> Lee
            goto L56
        L4d:
            java.lang.String r1 = "en"
        L4f:
            r3.put(r6, r1)     // Catch: java.lang.Throwable -> Lee
            goto L56
        L53:
            java.lang.String r1 = "zh-CN"
            goto L4f
        L56:
            java.lang.String r1 = com.huawei.hem.C1219q0.m2505a()     // Catch: java.lang.Throwable -> Lee
            java.lang.String r6 = com.huawei.hem.C1094l1.m2248q(r3)     // Catch: java.lang.Throwable -> Lee
            java.lang.String r6 = com.huawei.hem.C1219q0.m2506b(r9, r1, r6)     // Catch: java.lang.Throwable -> Lee
            java.lang.String r7 = "ts"
            r3.put(r7, r1)     // Catch: java.lang.Throwable -> Lee
            java.lang.String r1 = "scode"
            r3.put(r1, r6)     // Catch: java.lang.Throwable -> Lee
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lee
            java.lang.String r6 = "output=json&radius=1000&extensions=all&location="
            r1.<init>(r6)     // Catch: java.lang.Throwable -> Lee
            r1.append(r12)     // Catch: java.lang.Throwable -> Lee
            java.lang.String r12 = ","
            r1.append(r12)     // Catch: java.lang.Throwable -> Lee
            r1.append(r10)     // Catch: java.lang.Throwable -> Lee
            java.lang.String r10 = r1.toString()     // Catch: java.lang.Throwable -> Lee
            java.lang.String r11 = "UTF-8"
            byte[] r10 = r10.getBytes(r11)     // Catch: java.lang.Throwable -> Lee
            r2.m4949b(r10)     // Catch: java.lang.Throwable -> Lee
            r10 = 0
            r2.m4951c(r10)     // Catch: java.lang.Throwable -> Lee
            r2.m4948b(r5)     // Catch: java.lang.Throwable -> Lee
            java.util.Locale r11 = java.util.Locale.US     // Catch: java.lang.Throwable -> Lee
            java.lang.String r12 = "platform=Android&sdkversion=%s&product=%s&loc_channel=%s"
            r13 = 3
            java.lang.Object[] r1 = new java.lang.Object[r13]     // Catch: java.lang.Throwable -> Lee
            java.lang.String r6 = "5.5.1"
            r1[r10] = r6     // Catch: java.lang.Throwable -> Lee
            java.lang.String r10 = "loc"
            r1[r5] = r10     // Catch: java.lang.Throwable -> Lee
            java.lang.Integer r10 = java.lang.Integer.valueOf(r13)     // Catch: java.lang.Throwable -> Lee
            r1[r4] = r10     // Catch: java.lang.Throwable -> Lee
            java.lang.String r10 = java.lang.String.format(r11, r12, r1)     // Catch: java.lang.Throwable -> Lee
            r2.m4946b(r10)     // Catch: java.lang.Throwable -> Lee
            r2.m4945a(r3)     // Catch: java.lang.Throwable -> Lee
            r2.m4947b(r0)     // Catch: java.lang.Throwable -> Lee
            java.net.Proxy r9 = com.huawei.hem.C1219q0.m2509e(r9)     // Catch: java.lang.Throwable -> Lee
            r2.m4140a(r9)     // Catch: java.lang.Throwable -> Lee
            int r9 = com.loc.C1834ep.f5762i     // Catch: java.lang.Throwable -> Lee
            r2.m4135a(r9)     // Catch: java.lang.Throwable -> Lee
            int r9 = com.loc.C1834ep.f5762i     // Catch: java.lang.Throwable -> Lee
            r2.m4142b(r9)     // Catch: java.lang.Throwable -> Lee
            java.lang.String r9 = "http://restsdk.amap.com/v3/geocode/regeo"
            java.lang.String r10 = "http://dualstack-arestapi.amap.com/v3/geocode/regeo"
            r2.m4953d(r10)     // Catch: java.lang.Throwable -> Le6
            r2.m4950c(r9)     // Catch: java.lang.Throwable -> Le6
            boolean r9 = r8.f5653e     // Catch: java.lang.Throwable -> Le6
            if (r9 == 0) goto Ld8
            com.loc.ar$c r9 = com.loc.AbstractC1728ar.c.HTTPS     // Catch: java.lang.Throwable -> Le6
            r2.m4138a(r9)     // Catch: java.lang.Throwable -> Le6
        Ld8:
            com.loc.as r9 = com.loc.C1723am.m4059a(r2)     // Catch: java.lang.Throwable -> Le6
            java.lang.String r10 = new java.lang.String     // Catch: java.lang.Throwable -> Le6
            byte[] r9 = r9.f5048a     // Catch: java.lang.Throwable -> Le6
            java.lang.String r11 = "utf-8"
            r10.<init>(r9, r11)     // Catch: java.lang.Throwable -> Le6
            goto Lef
        Le6:
            r9 = move-exception
            java.lang.String r10 = "LocNetManager"
            java.lang.String r11 = "post"
            com.loc.C1834ep.m5014a(r9, r10, r11)     // Catch: java.lang.Throwable -> Lee
        Lee:
            r10 = 0
        Lef:
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.loc.C1829ek.m4943a(android.content.Context, double, double):java.lang.String");
    }

    /* renamed from: a */
    public final void m4944a(long j, boolean z, int i) {
        try {
            this.f5653e = z;
            this.f5652d = Long.valueOf(j).intValue();
            this.f5654f = i;
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "LocNetManager", "setOption");
        }
    }
}
