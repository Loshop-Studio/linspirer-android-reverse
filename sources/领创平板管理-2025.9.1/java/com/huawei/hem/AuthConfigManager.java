package com.huawei.hem;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Build;
import android.os.SystemClock;
import android.text.TextUtils;
import anet.channel.strategy.dispatch.DispatchConstants;
import com.amap.apis.utils.core.DeviceInfo;
import com.huawei.hem.AppInfo;
import com.huawei.hem.HttpsDecisionUtil;
import com.huawei.hms.framework.common.ContainerUtils;
import com.huawei.hms.framework.network.grs.GrsManager;
import com.loc.BinaryRequest;
import com.loc.AMapNetworkRequest;
import com.loc.ThreadTask;
import com.loc.HttpLimitUtil;
import com.loc.HttpUrlUtil;
import com.loc.StatisticsEntity;
import com.loc.StatisticsManager;
import com.loc.ThreadPool;
import com.loc.BasicLogHandler;
import com.loc.AMapLog;
import com.loc.SDKLogHandler;
import com.taobao.accs.common.Constants;
import java.net.InetAddress;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.Vector;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
import org.android.agoo.common.AgooConstants;
import org.android.agoo.message.MessageService;
import org.json.JSONObject;

/* compiled from: AuthConfigManager.java */
/* renamed from: com.huawei.hem.f1 */
/* loaded from: classes.dex */
public final class AuthConfigManager {

    /* renamed from: a */
    public static int f2584a = -1;

    /* renamed from: b */
    public static String f2585b = "";

    /* renamed from: c */
    public static Context f2586c = null;

    /* renamed from: d */
    public static volatile boolean f2587d = true;

    /* renamed from: y */
    public static volatile boolean f2608y;

    /* renamed from: e */
    public static Vector<f> f2588e = new Vector<>();

    /* renamed from: f */
    public static Map<String, Integer> f2589f = new HashMap();

    /* renamed from: g */
    public static String f2590g = null;

    /* renamed from: h */
    public static long f2591h = 0;

    /* renamed from: i */
    public static volatile boolean f2592i = false;

    /* renamed from: j */
    public static volatile ConcurrentHashMap<String, Long> f2593j = new ConcurrentHashMap<>(8);

    /* renamed from: k */
    public static volatile ConcurrentHashMap<String, Long> f2594k = new ConcurrentHashMap<>(8);

    /* renamed from: l */
    public static volatile ConcurrentHashMap<String, e> f2595l = new ConcurrentHashMap<>(8);

    /* renamed from: m */
    public static boolean f2596m = false;

    /* renamed from: n */
    public static int f2597n = 5000;

    /* renamed from: o */
    public static boolean f2598o = true;

    /* renamed from: p */
    public static boolean f2599p = false;

    /* renamed from: q */
    public static int f2600q = 3;

    /* renamed from: r */
    public static boolean f2601r = true;

    /* renamed from: s */
    public static boolean f2602s = false;

    /* renamed from: t */
    public static int f2603t = 3;

    /* renamed from: u */
    public static boolean f2604u = false;

    /* renamed from: v */
    public static ConcurrentHashMap<String, Boolean> f2605v = new ConcurrentHashMap<>();

    /* renamed from: w */
    public static ConcurrentHashMap<String, Boolean> f2606w = new ConcurrentHashMap<>();

    /* renamed from: x */
    public static ArrayList<HttpUrlUtil.a> f2607x = new ArrayList<>();

    /* renamed from: z */
    public static Queue<HttpUrlUtil.c> f2609z = new LinkedList();

    /* compiled from: AuthConfigManager.java */
    /* renamed from: com.huawei.hem.f1$a */
    public static class a extends ThreadTask {

        /* renamed from: a */
        public final /* synthetic */ String f2610a;

        /* renamed from: b */
        public final /* synthetic */ String f2611b;

        /* renamed from: c */
        public final /* synthetic */ String f2612c;

        /* renamed from: d */
        public final /* synthetic */ String f2613d;

        public a(String str, String str2, String str3, String str4) {
            this.f2610a = str;
            this.f2611b = str2;
            this.f2612c = str3;
            this.f2613d = str4;
        }

        /* JADX WARN: Removed duplicated region for block: B:143:0x02b5  */
        /* JADX WARN: Removed duplicated region for block: B:171:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:28:0x00ad  */
        /* JADX WARN: Removed duplicated region for block: B:96:0x01d8  */
        @Override // com.loc.AbstractRunnableC1754bq
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void mo1093a() throws com.huawei.hem.AMapCoreException {
            /*
                Method dump skipped, instructions count: 699
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.C0943f1.a.mo1093a():void");
        }
    }

    /* compiled from: AuthConfigManager.java */
    /* renamed from: com.huawei.hem.f1$b */
    public interface b {
        /* renamed from: a */
        void mo1733a(c cVar);
    }

    /* compiled from: AuthConfigManager.java */
    /* renamed from: com.huawei.hem.f1$c */
    public static class c {

        /* renamed from: a */
        public long f2614a = 0;

        /* renamed from: b */
        public JSONObject f2615b;

        /* renamed from: c */
        public a f2616c;

        /* compiled from: AuthConfigManager.java */
        /* renamed from: com.huawei.hem.f1$c$a */
        public static class a {

            /* renamed from: a */
            public boolean f2617a;

            /* renamed from: b */
            public JSONObject f2618b;
        }
    }

    /* compiled from: AuthConfigManager.java */
    /* renamed from: com.huawei.hem.f1$d */
    public static class d extends BinaryRequest {

        /* renamed from: m */
        public String f2619m;

        /* renamed from: n */
        public Map<String, String> f2620n;

        /* renamed from: o */
        public String f2621o;

        /* renamed from: p */
        public String f2622p;

        /* renamed from: q */
        public String f2623q;

        public d(Context context, SDKInfo c1069k1, String str, String str2, String str3, String str4) {
            super(context, c1069k1);
            this.f2619m = str;
            this.f2620n = null;
            this.f2621o = str2;
            this.f2622p = str3;
            this.f2623q = str4;
            m4138a(AMapNetworkRequest.c.HTTPS);
            m4136a(AMapNetworkRequest.a.FIX);
        }

        /* renamed from: E */
        public static String m1734E(String str, String str2) {
            try {
                return !TextUtils.isEmpty(str2) ? Uri.parse(str).buildUpon().encodedAuthority(str2).build().toString() : str;
            } catch (Throwable unused) {
                return str;
            }
        }

        @Override // com.loc.AbstractC1728ar
        /* renamed from: a */
        public final Map<String, String> mo1735a() {
            if (TextUtils.isEmpty(this.f2623q)) {
                return null;
            }
            HashMap map = new HashMap();
            map.put(Constants.KEY_HOST, this.f2623q);
            return map;
        }

        @Override // com.loc.AbstractC1724an
        /* renamed from: a_ */
        public final byte[] mo1736a_() {
            return null;
        }

        @Override // com.loc.AbstractC1728ar
        /* renamed from: b */
        public final String mo1737b() {
            return m1734E("https://restsdk.amap.com/v3/iasdkauth", this.f2621o);
        }

        @Override // com.loc.AbstractC1724an
        /* renamed from: b_ */
        public final byte[] mo1738b_() {
            String string;
            String strM1090x = DeviceInfo.m1090x(((BinaryRequest) this).f4939a);
            if (!TextUtils.isEmpty(strM1090x)) {
                strM1090x = AgooNotificationHandler.m2507c(new StringBuilder(strM1090x).reverse().toString());
            }
            HashMap map = new HashMap();
            map.put("authkey", TextUtils.isEmpty(this.f2619m) ? "" : this.f2619m);
            map.put("plattype", DispatchConstants.ANDROID);
            map.put("product", ((BinaryRequest) this).f4940b.m2156a());
            map.put("version", ((BinaryRequest) this).f4940b.f3007f);
            map.put("output", "json");
            StringBuilder sb = new StringBuilder();
            sb.append(Build.VERSION.SDK_INT);
            map.put("androidversion", sb.toString());
            map.put("deviceId", strM1090x);
            map.put("manufacture", Build.MANUFACTURER);
            Map<String, String> map2 = this.f2620n;
            if (map2 != null && !map2.isEmpty()) {
                map.putAll(this.f2620n);
            }
            map.put("abitype", AMapCoreUtilities.m2234c(((BinaryRequest) this).f4939a));
            map.put("ext", ((BinaryRequest) this).f4940b.m2158c());
            if (map.size() == 0) {
                string = null;
            } else {
                StringBuffer stringBuffer = new StringBuffer();
                boolean z = true;
                try {
                    for (Map.Entry entry : map.entrySet()) {
                        if (z) {
                            z = false;
                            stringBuffer.append((String) entry.getKey());
                            stringBuffer.append(ContainerUtils.KEY_VALUE_DELIMITER);
                        } else {
                            stringBuffer.append("&");
                            stringBuffer.append((String) entry.getKey());
                            stringBuffer.append(ContainerUtils.KEY_VALUE_DELIMITER);
                        }
                        stringBuffer.append((String) entry.getValue());
                    }
                } catch (Throwable th) {
                    BasicLogHandler.m5312a(th, "ut", "abP");
                }
                string = stringBuffer.toString();
            }
            return AMapCoreUtilities.m2245n(string);
        }

        @Override // com.huawei.hem.AbstractC1044j1, com.loc.AbstractC1728ar
        /* renamed from: c */
        public final String mo1739c() {
            return m1734E("https://dualstack-arestapi.amap.com/v3/iasdkauth", this.f2622p);
        }

        @Override // com.loc.AbstractC1724an
        /* renamed from: f */
        public final String mo1740f() {
            return "3.0";
        }

        @Override // com.loc.AbstractC1728ar
        /* renamed from: g */
        public final String mo1741g() {
            return !TextUtils.isEmpty(this.f2623q) ? this.f2623q : super.mo1741g();
        }
    }

    /* compiled from: AuthConfigManager.java */
    /* renamed from: com.huawei.hem.f1$e */
    public static class e {

        /* renamed from: a */
        public SDKInfo f2624a;

        /* renamed from: b */
        public String f2625b;

        /* renamed from: c */
        public b f2626c;

        public e() {
        }

        public e(byte b) {
        }
    }

    /* compiled from: AuthConfigManager.java */
    /* renamed from: com.huawei.hem.f1$f */
    public static class f {

        /* renamed from: a */
        public String f2627a;

        /* renamed from: b */
        public String f2628b;

        /* renamed from: c */
        public AtomicInteger f2629c;

        public f(String str, String str2, int i) {
            this.f2627a = str;
            this.f2628b = str2;
            this.f2629c = new AtomicInteger(i);
        }

        /* renamed from: a */
        public final int m1742a() {
            AtomicInteger atomicInteger = this.f2629c;
            if (atomicInteger == null) {
                return 0;
            }
            return atomicInteger.get();
        }
    }

    /* compiled from: AuthConfigManager.java */
    /* renamed from: com.huawei.hem.f1$g */
    public static class g {

        /* renamed from: a */
        public static boolean f2630a = true;

        /* renamed from: b */
        public static boolean f2631b = false;

        /* renamed from: c */
        public static boolean f2632c = true;

        /* renamed from: d */
        public static int f2633d = 0;

        /* renamed from: e */
        public static boolean f2634e = false;

        /* renamed from: f */
        public static int f2635f;
    }

    /* renamed from: A */
    public static void m1698A(Context context) {
        f2598o = AMapSharedPreferences.m2424f(context, "open_common", "a13", true);
        f2601r = AMapSharedPreferences.m2424f(context, "open_common", "a6", true);
        f2599p = AMapSharedPreferences.m2424f(context, "open_common", "a7", false);
        f2597n = AMapSharedPreferences.m2419a(context, "open_common", "a8", 5000);
        f2600q = AMapSharedPreferences.m2419a(context, "open_common", "a9", 3);
        f2602s = AMapSharedPreferences.m2424f(context, "open_common", "a10", false);
        f2603t = AMapSharedPreferences.m2419a(context, "open_common", "a11", 3);
        f2604u = AMapSharedPreferences.m2424f(context, "open_common", "a12", false);
    }

    /* renamed from: B */
    public static void m1699B(HttpUrlUtil.c cVar) {
        if (cVar != null && f2604u) {
            synchronized (f2609z) {
                f2609z.offer(cVar);
                HttpUrlUtil.m4099a();
            }
        }
    }

    /* renamed from: C */
    public static boolean m1700C() {
        Integer num;
        Context context = f2586c;
        if (context == null) {
            return false;
        }
        String strM1089w = DeviceInfo.m1089w(context);
        return (TextUtils.isEmpty(strM1089w) || (num = f2589f.get(strM1089w.toUpperCase())) == null || num.intValue() < 2) ? false : true;
    }

    /* renamed from: D */
    public static void m1701D() {
        try {
            f fVarM1707a = m1707a(f2586c, "IPV6_CONFIG_NAME", "open_common");
            String strM2233b = AMapCoreUtilities.m2233b(System.currentTimeMillis(), "yyyyMMdd");
            if (!strM2233b.equals(fVarM1707a.f2628b)) {
                fVarM1707a.f2628b = strM2233b;
                fVarM1707a.f2629c.set(0);
            }
            fVarM1707a.f2629c.incrementAndGet();
            m1713g(f2586c, "IPV6_CONFIG_NAME", "open_common", fVarM1707a);
        } catch (Throwable unused) {
        }
    }

    /* renamed from: E */
    public static void m1702E(Context context) {
        try {
            if (f2596m) {
                return;
            }
            ConstConfig.f3231d = AMapSharedPreferences.m2424f(context, "open_common", "a4", true);
            ConstConfig.f3232e = AMapSharedPreferences.m2424f(context, "open_common", "a5", true);
            f2596m = true;
        } catch (Throwable unused) {
        }
    }

    /* renamed from: F */
    public static boolean m1703F(String str) {
        f fVarM1707a;
        try {
            if (TextUtils.isEmpty(str)) {
                return true;
            }
            if (!f2598o) {
                return false;
            }
            if (!(f2605v.get(str) == null)) {
                return false;
            }
            if (f2586c == null || (fVarM1707a = m1707a(f2586c, m1725s(str, "a14"), "open_common")) == null) {
                return true;
            }
            return fVarM1707a.m1742a() < f2600q;
        } catch (Throwable unused) {
            return true;
        }
    }

    /* renamed from: G */
    public static void m1704G() {
        if (f2592i) {
            return;
        }
        try {
            Context context = f2586c;
            if (context == null) {
                return;
            }
            f2592i = true;
            HttpsDecisionUtil.a.f2886a.m2020a(context);
            f2587d = AMapSharedPreferences.m2424f(context, "open_common", "a2", true);
            m1698A(context);
            g.f2630a = AMapSharedPreferences.m2424f(context, "open_common", "ucf", g.f2630a);
            g.f2631b = AMapSharedPreferences.m2424f(context, "open_common", "fsv2", g.f2631b);
            g.f2632c = AMapSharedPreferences.m2424f(context, "open_common", "usc", g.f2632c);
            g.f2633d = AMapSharedPreferences.m2419a(context, "open_common", "umv", g.f2633d);
            g.f2634e = AMapSharedPreferences.m2424f(context, "open_common", "ust", g.f2634e);
            g.f2635f = AMapSharedPreferences.m2419a(context, "open_common", "ustv", g.f2635f);
        } catch (Throwable unused) {
        }
    }

    /* renamed from: H */
    public static boolean m1705H(String str) {
        f fVarM1707a;
        if (TextUtils.isEmpty(str) || !f2602s) {
            return false;
        }
        if (!(f2606w.get(str) == null)) {
            return false;
        }
        if (f2586c == null || (fVarM1707a = m1707a(f2586c, m1725s(str, "a15"), "open_common")) == null) {
            return true;
        }
        return fVarM1707a.m1742a() < f2603t;
    }

    /* renamed from: I */
    public static HttpUrlUtil.a m1706I() {
        if (f2608y) {
            return null;
        }
        synchronized (f2607x) {
            if (f2608y) {
                return null;
            }
            Collections.sort(f2607x);
            if (f2607x.size() <= 0) {
                return null;
            }
            HttpUrlUtil.a aVarClone = f2607x.get(0).clone();
            f2608y = true;
            return aVarClone;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x002d A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x002f  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static synchronized com.huawei.hem.AuthConfigManager.f m1707a(android.content.Context r6, java.lang.String r7, java.lang.String r8) {
        /*
            java.lang.Class<com.huawei.hem.f1> r0 = com.huawei.hem.C0943f1.class
            monitor-enter(r0)
            boolean r1 = android.text.TextUtils.isEmpty(r7)     // Catch: java.lang.Throwable -> L84
            r2 = 0
            r3 = 0
            if (r1 != 0) goto L2a
            r1 = r2
        Lc:
            java.util.Vector<com.huawei.hem.f1$f> r4 = com.huawei.hem.C0943f1.f2588e     // Catch: java.lang.Throwable -> L84
            int r4 = r4.size()     // Catch: java.lang.Throwable -> L84
            if (r1 >= r4) goto L2a
            java.util.Vector<com.huawei.hem.f1$f> r4 = com.huawei.hem.C0943f1.f2588e     // Catch: java.lang.Throwable -> L84
            java.lang.Object r4 = r4.get(r1)     // Catch: java.lang.Throwable -> L84
            com.huawei.hem.f1$f r4 = (com.huawei.hem.C0943f1.f) r4     // Catch: java.lang.Throwable -> L84
            if (r4 == 0) goto L27
            java.lang.String r5 = r4.f2627a     // Catch: java.lang.Throwable -> L84
            boolean r5 = r7.equals(r5)     // Catch: java.lang.Throwable -> L84
            if (r5 == 0) goto L27
            goto L2b
        L27:
            int r1 = r1 + 1
            goto Lc
        L2a:
            r4 = r3
        L2b:
            if (r4 == 0) goto L2f
            monitor-exit(r0)
            return r4
        L2f:
            if (r6 != 0) goto L33
            monitor-exit(r0)
            return r3
        L33:
            java.lang.String r1 = ""
            java.lang.String r6 = com.huawei.hem.C1170o1.m2426h(r6, r8, r7, r1)     // Catch: java.lang.Throwable -> L84
            boolean r8 = android.text.TextUtils.isEmpty(r6)     // Catch: java.lang.Throwable -> L84
            if (r8 == 0) goto L40
            goto L5d
        L40:
            org.json.JSONObject r8 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L5d
            r8.<init>(r6)     // Catch: java.lang.Throwable -> L5d
            com.huawei.hem.f1$f r6 = new com.huawei.hem.f1$f     // Catch: java.lang.Throwable -> L5d
            java.lang.String r1 = "a"
            java.lang.String r1 = r8.optString(r1)     // Catch: java.lang.Throwable -> L5d
            java.lang.String r4 = "f"
            java.lang.String r4 = r8.optString(r4)     // Catch: java.lang.Throwable -> L5d
            java.lang.String r5 = "h"
            int r8 = r8.optInt(r5)     // Catch: java.lang.Throwable -> L5d
            r6.<init>(r1, r4, r8)     // Catch: java.lang.Throwable -> L5d
            r3 = r6
        L5d:
            long r4 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L84
            java.lang.String r6 = "yyyyMMdd"
            java.lang.String r6 = com.huawei.hem.C1094l1.m2233b(r4, r6)     // Catch: java.lang.Throwable -> L84
            if (r3 != 0) goto L6e
            com.huawei.hem.f1$f r3 = new com.huawei.hem.f1$f     // Catch: java.lang.Throwable -> L84
            r3.<init>(r7, r6, r2)     // Catch: java.lang.Throwable -> L84
        L6e:
            java.lang.String r7 = r3.f2628b     // Catch: java.lang.Throwable -> L84
            boolean r7 = r6.equals(r7)     // Catch: java.lang.Throwable -> L84
            if (r7 != 0) goto L7d
            r3.f2628b = r6     // Catch: java.lang.Throwable -> L84
            java.util.concurrent.atomic.AtomicInteger r6 = r3.f2629c     // Catch: java.lang.Throwable -> L84
            r6.set(r2)     // Catch: java.lang.Throwable -> L84
        L7d:
            java.util.Vector<com.huawei.hem.f1$f> r6 = com.huawei.hem.C0943f1.f2588e     // Catch: java.lang.Throwable -> L84
            r6.add(r3)     // Catch: java.lang.Throwable -> L84
            monitor-exit(r0)
            return r3
        L84:
            r6 = move-exception
            monitor-exit(r0)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.C0943f1.m1707a(android.content.Context, java.lang.String, java.lang.String):com.huawei.hem.f1$f");
    }

    /* renamed from: b */
    public static void m1708b(Context context) {
        if (context != null) {
            f2586c = context.getApplicationContext();
        }
    }

    /* renamed from: c */
    public static void m1709c(Context context, SDKInfo c1069k1, String str) {
        HashMap map = new HashMap();
        map.put("amap_sdk_auth_fail", "1");
        map.put("amap_sdk_auth_fail_type", str);
        map.put("amap_sdk_name", c1069k1.m2156a());
        map.put("amap_sdk_version", c1069k1.m2157b());
        String string = new JSONObject(map).toString();
        if (TextUtils.isEmpty(string)) {
            return;
        }
        try {
            StatisticsEntity c1734ax = new StatisticsEntity(context, "core", "2.0", "O001");
            c1734ax.m4180a(string);
            StatisticsManager.m4185a(c1734ax, context);
        } catch (AMapCoreException unused) {
        }
    }

    /* renamed from: d */
    public static synchronized void m1710d(Context context, SDKInfo c1069k1, String str, b bVar) {
        if (context == null || c1069k1 == null) {
            return;
        }
        try {
            if (f2586c == null) {
                f2586c = context.getApplicationContext();
            }
            String strM2156a = c1069k1.m2156a();
            if (TextUtils.isEmpty(strM2156a)) {
                return;
            }
            m1714h(c1069k1);
            if (f2595l == null) {
                f2595l = new ConcurrentHashMap<>(8);
            }
            if (f2594k == null) {
                f2594k = new ConcurrentHashMap<>(8);
            }
            if (f2593j == null) {
                f2593j = new ConcurrentHashMap<>(8);
            }
            if (!f2595l.containsKey(strM2156a)) {
                e eVar = new e((byte) 0);
                eVar.f2624a = c1069k1;
                eVar.f2625b = str;
                eVar.f2626c = bVar;
                f2595l.put(strM2156a, eVar);
                long j = 0;
                try {
                    j = f2586c.getSharedPreferences("open_common", 0).getLong(strM2156a, 0L);
                } catch (Throwable th) {
                    SDKLogHandler.m5333b(th, "csp", "glv");
                }
                f2593j.put(strM2156a, Long.valueOf(j));
                m1702E(f2586c);
            }
        } catch (Throwable th2) {
            BasicLogHandler.m5312a(th2, "at", "rglc");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:118:0x02c1  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x02e3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:155:0x02cb A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:159:0x022c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:164:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x021e  */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m1711e(android.content.Context r20, com.huawei.hem.SDKInfo r21, java.lang.String r22, com.huawei.hem.AuthConfigManager.c r23, org.json.JSONObject r24) {
        /*
            Method dump skipped, instructions count: 793
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.C0943f1.m1711e(android.content.Context, com.huawei.hem.k1, java.lang.String, com.huawei.hem.f1$c, org.json.JSONObject):void");
    }

    /* renamed from: f */
    public static void m1712f(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        AppInfo.f2505d = str;
        if (context != null) {
            ThreadPool.m4236a().m4242b(new AppInfo.a(context, str));
        }
    }

    /* renamed from: g */
    public static void m1713g(Context context, String str, String str2, f fVar) {
        String string;
        if (TextUtils.isEmpty(fVar.f2627a)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("a", fVar.f2627a);
            jSONObject.put("f", fVar.f2628b);
            jSONObject.put(AMapLog.f5947g, fVar.f2629c.get());
            string = jSONObject.toString();
        } catch (Throwable unused) {
            string = "";
        }
        if (TextUtils.isEmpty(string) || context == null) {
            return;
        }
        SharedPreferences.Editor editorM2420b = AMapSharedPreferences.m2420b(context, str2);
        editorM2420b.putString(str, string);
        AMapSharedPreferences.m2421c(editorM2420b);
    }

    /* renamed from: h */
    public static void m1714h(SDKInfo c1069k1) {
        if (c1069k1 != null) {
            try {
                if (TextUtils.isEmpty(c1069k1.m2156a())) {
                    return;
                }
                String strM2157b = c1069k1.m2157b();
                if (TextUtils.isEmpty(strM2157b)) {
                    strM2157b = c1069k1.f3007f;
                }
                if (TextUtils.isEmpty(strM2157b)) {
                    return;
                }
                ConstConfig.m2345b(c1069k1.m2156a(), strM2157b);
            } catch (Throwable unused) {
            }
        }
    }

    /* renamed from: i */
    public static void m1715i(String str, String str2) {
        f fVarM1707a = m1707a(f2586c, str, str2);
        String strM2233b = AMapCoreUtilities.m2233b(System.currentTimeMillis(), "yyyyMMdd");
        if (!strM2233b.equals(fVarM1707a.f2628b)) {
            fVarM1707a.f2628b = strM2233b;
            fVarM1707a.f2629c.set(0);
        }
        fVarM1707a.f2629c.incrementAndGet();
        m1713g(f2586c, str, str2, fVarM1707a);
    }

    /* renamed from: j */
    public static synchronized void m1716j(String str, boolean z, String str2, String str3, String str4) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            if (f2594k == null) {
                f2594k = new ConcurrentHashMap<>(8);
            }
            f2594k.put(str, Long.valueOf(SystemClock.elapsedRealtime()));
            if (f2595l == null) {
                return;
            }
            if (f2595l.containsKey(str)) {
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                if (z) {
                    HttpLimitUtil.m4086a(true, str);
                }
                ThreadPool.m4236a().m4242b(new a(str, str2, str3, str4));
            }
        } catch (Throwable th) {
            BasicLogHandler.m5312a(th, "at", "lca");
        }
    }

    /* renamed from: k */
    public static void m1717k(String str, boolean z, boolean z2, boolean z3) {
        if (TextUtils.isEmpty(str) || f2586c == null) {
            return;
        }
        HashMap map = new HashMap();
        map.put(AgooConstants.OPEN_URL, str);
        map.put("downLevel", String.valueOf(z));
        int iM1087u = DeviceInfo.m1087u(f2586c);
        String str2 = MessageService.MSG_DB_READY_REPORT;
        map.put("ant", iM1087u == 0 ? MessageService.MSG_DB_READY_REPORT : "1");
        map.put("type", z3 ? z ? MessageService.MSG_ACCS_NOTIFY_DISMISS : MessageService.MSG_ACCS_NOTIFY_CLICK : z ? "6" : "4");
        if (!z2) {
            str2 = "1";
        }
        map.put("status", str2);
        String string = new JSONObject(map).toString();
        if (TextUtils.isEmpty(string)) {
            return;
        }
        try {
            StatisticsEntity c1734ax = new StatisticsEntity(f2586c, "core", "2.0", "O002");
            c1734ax.m4180a(string);
            StatisticsManager.m4185a(c1734ax, f2586c);
        } catch (AMapCoreException unused) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x006b A[Catch: all -> 0x009c, LOOP:0: B:24:0x0062->B:26:0x006b, LOOP_END, TryCatch #0 {, blocks: (B:9:0x000d, B:10:0x0013, B:12:0x0019, B:14:0x0029, B:16:0x0033, B:18:0x0039, B:20:0x003f, B:21:0x0042, B:22:0x0046, B:23:0x0059, B:24:0x0062, B:26:0x006b, B:27:0x0097, B:28:0x009a), top: B:34:0x000d }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0097 A[SYNTHETIC] */
    /* renamed from: l */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m1718l(boolean r4, com.loc.HttpUrlUtil.a r5) {
        /*
            boolean r0 = com.huawei.hem.C0943f1.f2608y
            if (r0 == 0) goto L9f
            if (r5 != 0) goto L8
            goto L9f
        L8:
            java.util.ArrayList<com.loc.ap$a> r0 = com.huawei.hem.C0943f1.f2607x
            monitor-enter(r0)
            if (r4 == 0) goto L59
            java.util.ArrayList<com.loc.ap$a> r4 = com.huawei.hem.C0943f1.f2607x     // Catch: java.lang.Throwable -> L9c
            java.util.Iterator r4 = r4.iterator()     // Catch: java.lang.Throwable -> L9c
        L13:
            boolean r1 = r4.hasNext()     // Catch: java.lang.Throwable -> L9c
            if (r1 == 0) goto L59
            java.lang.Object r1 = r4.next()     // Catch: java.lang.Throwable -> L9c
            com.loc.ap$a r1 = (com.loc.C1726ap.a) r1     // Catch: java.lang.Throwable -> L9c
            java.lang.String r2 = r1.f4976b     // Catch: java.lang.Throwable -> L9c
            java.lang.String r3 = r5.f4976b     // Catch: java.lang.Throwable -> L9c
            boolean r2 = r2.equals(r3)     // Catch: java.lang.Throwable -> L9c
            if (r2 == 0) goto L13
            java.lang.String r2 = r1.f4979e     // Catch: java.lang.Throwable -> L9c
            java.lang.String r3 = r5.f4979e     // Catch: java.lang.Throwable -> L9c
            boolean r2 = r2.equals(r3)     // Catch: java.lang.Throwable -> L9c
            if (r2 == 0) goto L13
            int r2 = r1.f4980f     // Catch: java.lang.Throwable -> L9c
            int r3 = r5.f4980f     // Catch: java.lang.Throwable -> L9c
            if (r2 != r3) goto L13
            java.util.concurrent.atomic.AtomicInteger r2 = r1.f4984j     // Catch: java.lang.Throwable -> L9c
            java.util.concurrent.atomic.AtomicInteger r3 = r5.f4984j     // Catch: java.lang.Throwable -> L9c
            if (r2 != r3) goto L46
            r4.remove()     // Catch: java.lang.Throwable -> L9c
        L42:
            com.loc.C1726ap.m4099a()     // Catch: java.lang.Throwable -> L9c
            goto L13
        L46:
            java.util.concurrent.atomic.AtomicInteger r2 = r1.f4984j     // Catch: java.lang.Throwable -> L9c
            java.util.concurrent.atomic.AtomicInteger r1 = r1.f4984j     // Catch: java.lang.Throwable -> L9c
            int r1 = r1.get()     // Catch: java.lang.Throwable -> L9c
            java.util.concurrent.atomic.AtomicInteger r3 = r5.f4984j     // Catch: java.lang.Throwable -> L9c
            int r3 = r3.get()     // Catch: java.lang.Throwable -> L9c
            int r1 = r1 - r3
            r2.set(r1)     // Catch: java.lang.Throwable -> L9c
            goto L42
        L59:
            r4 = 0
            com.huawei.hem.C0943f1.f2608y = r4     // Catch: java.lang.Throwable -> L9c
            java.util.ArrayList<com.loc.ap$a> r4 = com.huawei.hem.C0943f1.f2607x     // Catch: java.lang.Throwable -> L9c
            java.util.Iterator r4 = r4.iterator()     // Catch: java.lang.Throwable -> L9c
        L62:
            com.loc.C1726ap.m4099a()     // Catch: java.lang.Throwable -> L9c
            boolean r5 = r4.hasNext()     // Catch: java.lang.Throwable -> L9c
            if (r5 == 0) goto L97
            java.lang.Object r5 = r4.next()     // Catch: java.lang.Throwable -> L9c
            com.loc.ap$a r5 = (com.loc.C1726ap.a) r5     // Catch: java.lang.Throwable -> L9c
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L9c
            java.lang.String r2 = "----path="
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L9c
            java.lang.String r2 = r5.f4979e     // Catch: java.lang.Throwable -> L9c
            r1.append(r2)     // Catch: java.lang.Throwable -> L9c
            java.lang.String r2 = "-counts="
            r1.append(r2)     // Catch: java.lang.Throwable -> L9c
            java.util.concurrent.atomic.AtomicInteger r2 = r5.f4984j     // Catch: java.lang.Throwable -> L9c
            r1.append(r2)     // Catch: java.lang.Throwable -> L9c
            java.lang.String r2 = "-code="
            r1.append(r2)     // Catch: java.lang.Throwable -> L9c
            int r5 = r5.f4980f     // Catch: java.lang.Throwable -> L9c
            r1.append(r5)     // Catch: java.lang.Throwable -> L9c
            java.lang.String r5 = "----"
            r1.append(r5)     // Catch: java.lang.Throwable -> L9c
            goto L62
        L97:
            com.loc.C1726ap.m4099a()     // Catch: java.lang.Throwable -> L9c
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L9c
            return
        L9c:
            r4 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L9c
            throw r4
        L9f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.C0943f1.m1718l(boolean, com.loc.ap$a):void");
    }

    /* renamed from: m */
    public static void m1719m(boolean z, String str) {
        try {
            "--markHostNameFailed---hostname=".concat(String.valueOf(str));
            HttpUrlUtil.m4099a();
            if (f2598o || z) {
                if ((f2602s || !z) && !TextUtils.isEmpty(str)) {
                    if (z) {
                        if (f2606w.get(str) != null) {
                            return;
                        }
                        f2606w.put(str, Boolean.TRUE);
                        m1715i(m1725s(str, "a15"), "open_common");
                        return;
                    }
                    if (f2605v.get(str) != null) {
                        return;
                    }
                    f2605v.put(str, Boolean.TRUE);
                    m1715i(m1725s(str, "a14"), "open_common");
                }
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0067 A[Catch: all -> 0x00eb, TryCatch #0 {all -> 0x00eb, blocks: (B:5:0x0008, B:7:0x0014, B:9:0x001a, B:11:0x0022, B:14:0x0032, B:16:0x0038, B:20:0x004a, B:21:0x0061, B:23:0x0067, B:25:0x0077, B:26:0x0084, B:28:0x008a, B:30:0x0098, B:32:0x00a0, B:33:0x00a3, B:35:0x00a7, B:37:0x00af, B:39:0x00bf, B:42:0x00c6, B:44:0x00ce, B:45:0x00d2, B:50:0x00e6, B:47:0x00d9, B:49:0x00e1, B:17:0x003b), top: B:70:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00f9 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00fa  */
    /* renamed from: n */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m1720n() {
        /*
            Method dump skipped, instructions count: 284
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.C0943f1.m1720n():boolean");
    }

    /* renamed from: o */
    public static synchronized boolean m1721o(String str) {
        try {
        } finally {
            return false;
        }
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if (f2595l == null) {
            return false;
        }
        if (f2594k == null) {
            f2594k = new ConcurrentHashMap<>(8);
        }
        if (f2595l.containsKey(str) && !f2594k.containsKey(str)) {
            f2594k.put(str, Long.valueOf(SystemClock.elapsedRealtime()));
            return true;
        }
        return false;
    }

    /* renamed from: p */
    public static synchronized boolean m1722p(String str, long j) {
        boolean z = false;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if (j > m1732z(str)) {
            long jLongValue = 0;
            if (f2594k != null && f2594k.containsKey(str)) {
                jLongValue = f2594k.get(str).longValue();
            }
            if (SystemClock.elapsedRealtime() - jLongValue > 30000) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: q */
    public static boolean m1723q(String str, boolean z) {
        try {
            if (TextUtils.isEmpty(str)) {
                return z;
            }
            String[] strArrSplit = URLDecoder.decode(str).split(GrsManager.SEPARATOR);
            return strArrSplit[strArrSplit.length - 1].charAt(4) % 2 == 1;
        } catch (Throwable unused) {
            return z;
        }
    }

    /* renamed from: r */
    public static boolean m1724r(InetAddress inetAddress) {
        return inetAddress.isLoopbackAddress() || inetAddress.isLinkLocalAddress() || inetAddress.isAnyLocalAddress();
    }

    /* renamed from: s */
    public static String m1725s(String str, String str2) {
        return CompilerOutline.m1761f(str2, "_", AgooNotificationHandler.m2508d(str.getBytes()));
    }

    /* renamed from: t */
    public static void m1726t(Context context) {
        if (context == null) {
            return;
        }
        f2587d = AMapSharedPreferences.m2424f(context, "open_common", "a2", true);
    }

    /* renamed from: u */
    public static void m1727u(HttpUrlUtil.c cVar) {
        synchronized (f2607x) {
            boolean z = false;
            for (int i = 0; i < f2607x.size(); i++) {
                HttpUrlUtil.a aVar = f2607x.get(i);
                if (cVar.f4989c.equals(aVar.f4976b) && cVar.f4990d.equals(aVar.f4979e) && cVar.f4999m == aVar.f4980f) {
                    if (aVar.f4980f == 1) {
                        aVar.f4983i = ((aVar.f4984j.get() * aVar.f4983i) + cVar.f4992f) / (aVar.f4984j.get() + 1);
                    }
                    aVar.f4984j.getAndIncrement();
                    z = true;
                }
            }
            if (!z) {
                f2607x.add(new HttpUrlUtil.a(cVar));
            }
            HttpUrlUtil.m4099a();
        }
    }

    /* renamed from: v */
    public static synchronized void m1728v(String str) {
        if (f2594k == null) {
            return;
        }
        if (f2594k.containsKey(str)) {
            f2594k.remove(str);
        }
    }

    /* renamed from: w */
    public static synchronized void m1729w(String str, long j) {
        try {
            if (f2595l != null && f2595l.containsKey(str)) {
                if (f2593j == null) {
                    f2593j = new ConcurrentHashMap<>(8);
                }
                f2593j.put(str, Long.valueOf(j));
                if (f2586c != null) {
                    SharedPreferences.Editor editorM2420b = AMapSharedPreferences.m2420b(f2586c, "open_common");
                    if (editorM2420b != null && !TextUtils.isEmpty(str)) {
                        try {
                            editorM2420b.putLong(str, j);
                        } catch (Throwable th) {
                            SDKLogHandler.m5333b(th, "csp", "plv");
                        }
                    }
                    AMapSharedPreferences.m2421c(editorM2420b);
                }
            }
        } catch (Throwable th2) {
            BasicLogHandler.m5312a(th2, "at", "ucut");
        }
    }

    /* renamed from: x */
    public static synchronized void m1730x(String str, boolean z) {
        m1716j(str, z, null, null, null);
    }

    /* renamed from: y */
    public static boolean m1731y() {
        Integer num;
        Context context = f2586c;
        if (context == null) {
            return false;
        }
        String strM1089w = DeviceInfo.m1089w(context);
        return (TextUtils.isEmpty(strM1089w) || (num = f2589f.get(strM1089w.toUpperCase())) == null || num.intValue() != 2) ? false : true;
    }

    /* renamed from: z */
    public static synchronized long m1732z(String str) {
        try {
            if (f2593j == null) {
                f2593j = new ConcurrentHashMap<>(8);
            }
            if (f2593j.containsKey(str)) {
                return f2593j.get(str).longValue();
            }
        } finally {
            return 0L;
        }
        return 0L;
    }
}
