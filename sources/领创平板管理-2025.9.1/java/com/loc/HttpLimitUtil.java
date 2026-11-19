package com.loc;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.SystemClock;
import android.support.v4.app.NotificationCompat;
import android.text.TextUtils;
import com.huawei.hem.AMapCoreException;
import com.huawei.hem.AuthConfigManager;
import com.huawei.hem.C0994h1;
import com.huawei.hem.SDKInfo;
import com.huawei.hem.C1094l1;
import com.huawei.hem.ConstConfig;
import com.huawei.hem.C1170o1;
import com.huawei.hms.framework.network.grs.GrsManager;
import com.incar.mdm.MdmPolicyManager;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONObject;

/* compiled from: HttpLimitUtil.java */
/* renamed from: com.loc.ao */
/* loaded from: classes.dex */
public final class HttpLimitUtil {

    /* renamed from: a */
    public static volatile ConcurrentHashMap<String, c> f4941a = new ConcurrentHashMap<>(8);

    /* renamed from: b */
    public static volatile List<String> f4942b = Collections.synchronizedList(new ArrayList(8));

    /* renamed from: c */
    public static volatile ConcurrentHashMap<String, b> f4943c = new ConcurrentHashMap<>(8);

    /* renamed from: d */
    public static Random f4944d = new Random();

    /* renamed from: e */
    public static ConcurrentHashMap<String, String> f4945e = new ConcurrentHashMap<>(8);

    /* renamed from: f */
    public static List<StatisticsEntity> f4946f = Collections.synchronizedList(new ArrayList(16));

    /* compiled from: HttpLimitUtil.java */
    /* renamed from: com.loc.ao$a */
    public static class a {

        /* renamed from: a */
        public String f4947a;

        /* renamed from: b */
        public int f4948b;

        /* renamed from: c */
        public double f4949c;

        public a() {
        }

        public /* synthetic */ a(byte b) {
            this();
        }
    }

    /* compiled from: HttpLimitUtil.java */
    /* renamed from: com.loc.ao$b */
    public static class b {

        /* renamed from: a */
        public ResponseEntity f4950a;

        /* renamed from: b */
        public long f4951b;

        public b() {
        }

        public /* synthetic */ b(byte b) {
            this();
        }
    }

    /* compiled from: HttpLimitUtil.java */
    /* renamed from: com.loc.ao$c */
    public static class c {

        /* renamed from: a */
        public Map<String, List<a>> f4952a;

        /* renamed from: b */
        public Map<String, String> f4953b;

        public c() {
            this.f4952a = new HashMap(8);
            this.f4953b = new HashMap(8);
        }

        public /* synthetic */ c(byte b) {
            this();
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && c.class == obj.getClass()) {
                c cVar = (c) obj;
                if (this.f4952a.equals(cVar.f4952a) && this.f4953b.equals(cVar.f4953b)) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            Map<String, List<a>> map = this.f4952a;
            int iHashCode = map != null ? map.hashCode() : 0;
            Map<String, String> map2 = this.f4953b;
            return iHashCode + (map2 != null ? map2.hashCode() : 0);
        }
    }

    /* renamed from: a */
    public static synchronized String m4077a(String str, String str2) {
        byte[] bArrM1932c;
        try {
            try {
                System.currentTimeMillis();
                if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str)) {
                    Context context = AuthConfigManager.f2586c;
                    try {
                        if (f4942b == null) {
                            f4942b = Collections.synchronizedList(new ArrayList(8));
                        }
                        if (context != null && !f4942b.contains(str2)) {
                            f4942b.add(str2);
                            String strM2236e = "";
                            try {
                                try {
                                    bArrM1932c = C0994h1.m1932c(C1170o1.m2425g(context), C1094l1.m2255x(context.getSharedPreferences("Yb3Blbl9odHRwX2NvbnRyb2w", 0).getString(str2, "")), C1170o1.m2427i(context));
                                } catch (Exception unused) {
                                    bArrM1932c = new byte[0];
                                }
                                strM2236e = C1094l1.m2236e(bArrM1932c);
                            } catch (Throwable unused2) {
                            }
                            if (!TextUtils.isEmpty(strM2236e)) {
                                m4084a(str2, new JSONObject(strM2236e));
                            }
                        }
                    } catch (Throwable th) {
                        BasicLogHandler.m5312a(th, "hlUtil", "llhl");
                    }
                    if (f4941a != null && f4941a.size() > 0) {
                        if (!f4941a.containsKey(str2)) {
                            return str;
                        }
                        c cVar = f4941a.get(str2);
                        if (cVar == null) {
                            return str;
                        }
                        if (m4089a(str, cVar, str2)) {
                            throw new AMapCoreException("服务QPS超限");
                        }
                        return m4092b(str, cVar, str2);
                    }
                    return str;
                }
                return str;
            } catch (Throwable th2) {
                throw th2;
            }
        } catch (AMapCoreException e) {
            throw e;
        } catch (Throwable th3) {
            BasicLogHandler.m5312a(th3, "hlUtil", "pcr");
            return str;
        }
    }

    /* renamed from: a */
    public static void m4078a() {
        try {
            Context context = AuthConfigManager.f2586c;
            if (context == null) {
                return;
            }
            StatisticsManager.m4186a(m4093b(), context);
        } catch (Throwable unused) {
        }
    }

    /* renamed from: a */
    public static void m4080a(c cVar, JSONObject jSONObject) {
        try {
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("block");
            if (jSONArrayOptJSONArray == null) {
                return;
            }
            HashMap map = new HashMap(8);
            byte b2 = 0;
            for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i);
                if (jSONObjectOptJSONObject != null) {
                    String strOptString = jSONObjectOptJSONObject.optString(MdmPolicyManager.API);
                    if (!TextUtils.isEmpty(strOptString)) {
                        if (!strOptString.startsWith(GrsManager.SEPARATOR)) {
                            strOptString = GrsManager.SEPARATOR.concat(strOptString);
                        }
                        if (strOptString.endsWith(GrsManager.SEPARATOR)) {
                            strOptString = strOptString.substring(0, strOptString.length() - 1);
                        }
                        JSONArray jSONArrayOptJSONArray2 = jSONObjectOptJSONObject.optJSONArray("periods");
                        ArrayList arrayList = new ArrayList();
                        for (int i2 = 0; i2 < jSONArrayOptJSONArray2.length(); i2++) {
                            JSONObject jSONObjectOptJSONObject2 = jSONArrayOptJSONArray2.optJSONObject(i2);
                            if (jSONObjectOptJSONObject2 != null) {
                                a aVar = new a(b2);
                                aVar.f4947a = jSONObjectOptJSONObject2.optString("begin");
                                aVar.f4948b = jSONObjectOptJSONObject2.optInt("duration");
                                aVar.f4949c = jSONObjectOptJSONObject2.optDouble("percent");
                                arrayList.add(aVar);
                            }
                        }
                        map.put(strOptString, arrayList);
                    }
                }
            }
            cVar.f4952a = map;
        } catch (Throwable th) {
            BasicLogHandler.m5312a(th, "hlUtil", "pbr");
        }
    }

    /* renamed from: a */
    public static void m4082a(String str, c cVar) {
        try {
            if (f4941a == null) {
                f4941a = new ConcurrentHashMap<>(8);
            }
            f4941a.put(str, cVar);
        } catch (Throwable th) {
            BasicLogHandler.m5312a(th, "hlUtil", "ucr");
        }
    }

    /* renamed from: a */
    public static void m4083a(String str, String str2, String str3) {
        try {
            Context context = AuthConfigManager.f2586c;
            if (context != null && !TextUtils.isEmpty(str)) {
                if (f4945e == null) {
                    f4945e = new ConcurrentHashMap<>(8);
                }
                synchronized (f4945e) {
                    if (f4945e.containsKey(str2)) {
                        return;
                    }
                    f4945e.put(str2, str3);
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put(NotificationCompat.CarExtender.KEY_TIMESTAMP, System.currentTimeMillis());
                    jSONObject.put("type", ConstConfig.f3238k);
                    jSONObject.put("name", str);
                    jSONObject.put("version", ConstConfig.m2344a(str));
                    jSONObject.put("hostname", str2 + "#" + str3);
                    String string = jSONObject.toString();
                    if (TextUtils.isEmpty(string)) {
                        return;
                    }
                    StatisticsEntity c1734ax = new StatisticsEntity(context, "core", "2.0", "O005");
                    c1734ax.m4180a(string);
                    StatisticsManager.m4185a(c1734ax, context);
                }
            }
        } catch (Throwable unused) {
        }
    }

    /* renamed from: a */
    public static void m4084a(String str, JSONObject jSONObject) {
        try {
            c cVar = new c((byte) 0);
            m4080a(cVar, jSONObject);
            m4094b(cVar, jSONObject);
            if (cVar.f4953b == null && cVar.f4952a == null) {
                m4081a(str);
            } else {
                m4082a(str, cVar);
            }
        } catch (Throwable unused) {
        }
    }

    /* renamed from: a */
    public static void m4085a(URL url, ResponseEntity c1729as) {
        List<String> list;
        try {
            if (f4943c == null) {
                f4943c = new ConcurrentHashMap<>(8);
            }
            if (c1729as.f5049b != null && c1729as.f5049b.containsKey("nb") && (list = c1729as.f5049b.get("nb")) != null && list.size() > 0) {
                byte b2 = 0;
                String[] strArrSplit = list.get(0).split("#");
                if (strArrSplit.length < 2) {
                    return;
                }
                int i = Integer.parseInt(strArrSplit[0]);
                long j = Integer.parseInt(strArrSplit[1]);
                b bVar = new b(b2);
                bVar.f4950a = c1729as;
                if (j <= 0) {
                    j = 30;
                }
                bVar.f4951b = (j * 1000) + SystemClock.elapsedRealtime();
                if (i == 1) {
                    f4943c.put("app", bVar);
                } else {
                    if (i != 2 || url == null) {
                        return;
                    }
                    f4943c.put(url.getPath(), bVar);
                }
            }
        } catch (Throwable unused) {
        }
    }

    /* renamed from: a */
    public static void m4086a(boolean z, String str) {
        try {
            Context context = AuthConfigManager.f2586c;
            if (context != null && !TextUtils.isEmpty(str)) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(NotificationCompat.CarExtender.KEY_TIMESTAMP, Long.valueOf(System.currentTimeMillis()));
                jSONObject.put("type", z ? ConstConfig.f3235h : ConstConfig.f3234g);
                jSONObject.put("name", str);
                jSONObject.put("version", ConstConfig.m2344a(str));
                String string = jSONObject.toString();
                StatisticsEntity c1734ax = new StatisticsEntity(context, "core", "2.0", "O005");
                c1734ax.m4180a(string);
                StatisticsManager.m4185a(c1734ax, context);
            }
        } catch (Throwable unused) {
        }
    }

    /* renamed from: a */
    public static void m4087a(boolean z, String str, String str2, int i) {
        String str3;
        Integer num;
        try {
            Context context = AuthConfigManager.f2586c;
            if (context != null && !TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(NotificationCompat.CarExtender.KEY_TIMESTAMP, System.currentTimeMillis());
                String strM2344a = ConstConfig.m2344a(str);
                if (z) {
                    str3 = "type";
                    num = ConstConfig.f3237j;
                } else {
                    str3 = "type";
                    num = ConstConfig.f3236i;
                }
                jSONObject.put(str3, num);
                jSONObject.put("name", str);
                jSONObject.put("version", strM2344a);
                jSONObject.put("uri", Uri.parse(str2).getPath());
                jSONObject.put("blockLevel", i);
                String string = jSONObject.toString();
                if (TextUtils.isEmpty(string)) {
                    return;
                }
                StatisticsEntity c1734ax = new StatisticsEntity(context, "core", "2.0", "O005");
                c1734ax.m4180a(string);
                if (f4946f == null) {
                    f4946f = Collections.synchronizedList(new ArrayList(16));
                }
                synchronized (f4946f) {
                    f4946f.add(c1734ax);
                    if (f4946f.size() >= 15) {
                        m4078a();
                    }
                }
            }
        } catch (Throwable unused) {
        }
    }

    /* renamed from: a */
    public static boolean m4088a(a aVar) {
        if (aVar == null || aVar.f4949c == 1.0d) {
            return false;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (!TextUtils.isEmpty(aVar.f4947a) && aVar.f4948b > 0) {
            long timeInMillis = jCurrentTimeMillis - C1094l1.m2238g(aVar.f4947a, "HH:mm:ss").getTimeInMillis();
            if (timeInMillis > 0 && timeInMillis < aVar.f4948b * 1000) {
                if (aVar.f4949c == 0.0d) {
                    return true;
                }
                if (f4944d == null) {
                    f4944d = new Random();
                }
                f4944d.setSeed(UUID.randomUUID().hashCode() + jCurrentTimeMillis);
                if (f4944d.nextDouble() > aVar.f4949c) {
                    return true;
                }
            }
        }
        return false;
    }

    /* renamed from: a */
    public static boolean m4089a(String str, c cVar, String str2) {
        Map<String, List<a>> map;
        try {
            map = cVar.f4952a;
        } catch (Throwable th) {
            BasicLogHandler.m5312a(th, "hlUtil", "inb");
        }
        if (map != null && map.size() > 0) {
            if (map.containsKey("*")) {
                Iterator<Map.Entry<String, List<a>>> it = map.entrySet().iterator();
                while (it.hasNext()) {
                    if (m4090a(it.next().getValue())) {
                        m4087a(false, str2, str, 1);
                        return true;
                    }
                }
            } else {
                String path = Uri.parse(str).getPath();
                if (map.containsKey(path) && m4090a(map.get(path))) {
                    m4087a(false, str2, str, 2);
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    /* renamed from: a */
    public static boolean m4090a(List<a> list) {
        if (list != null && list.size() > 0) {
            Iterator<a> it = list.iterator();
            while (it.hasNext()) {
                if (m4088a(it.next())) {
                    return true;
                }
            }
        }
        return false;
    }

    /* renamed from: b */
    public static ResponseEntity m4091b(String str, String str2) {
        Uri uri;
        String path = "app";
        if (f4943c == null) {
            return null;
        }
        if (!f4943c.containsKey("app")) {
            if (!TextUtils.isEmpty(str) && (uri = Uri.parse(str)) != null) {
                path = uri.getPath();
                if (f4943c.containsKey(path)) {
                    b bVar = f4943c.get(path);
                    if (SystemClock.elapsedRealtime() <= bVar.f4951b) {
                        ResponseEntity c1729as = bVar.f4950a;
                        if (c1729as != null) {
                            c1729as.f5052e = false;
                        }
                        m4087a(true, str2, str, 2);
                        return c1729as;
                    }
                }
            }
            return null;
        }
        b bVar2 = f4943c.get("app");
        if (SystemClock.elapsedRealtime() <= bVar2.f4951b) {
            ResponseEntity c1729as2 = bVar2.f4950a;
            if (c1729as2 != null) {
                c1729as2.f5052e = false;
            }
            m4087a(true, str2, str, 1);
            return c1729as2;
        }
        f4943c.remove(path);
        return null;
    }

    /* renamed from: b */
    public static String m4092b(String str, c cVar, String str2) {
        try {
            Map<String, String> map = cVar.f4953b;
            if (map != null && map.size() > 0) {
                Uri uri = Uri.parse(str);
                String authority = uri.getAuthority();
                if (!map.containsKey(authority)) {
                    return str;
                }
                String str3 = map.get(authority);
                str = uri.buildUpon().authority(str3).toString();
                m4083a(str2, authority, str3);
                return str;
            }
            return str;
        } catch (Throwable th) {
            BasicLogHandler.m5312a(th, "hlUtil", "pdr");
            return str;
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:19:0x002a
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1178)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.collectHandlerRegions(ExcHandlersRegionMaker.java:53)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.process(ExcHandlersRegionMaker.java:38)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:27)
        */
    /* renamed from: b */
    public static java.util.List<com.loc.StatisticsEntity> m4093b() {
        /*
            r0 = 0
            java.util.List<com.loc.ax> r1 = com.loc.C1725ao.f4946f     // Catch: java.lang.Throwable -> L2c
            monitor-enter(r1)     // Catch: java.lang.Throwable -> L2c
            java.util.List<com.loc.ax> r2 = com.loc.C1725ao.f4946f     // Catch: java.lang.Throwable -> L22
            if (r2 == 0) goto L20
            java.util.List<com.loc.ax> r2 = com.loc.C1725ao.f4946f     // Catch: java.lang.Throwable -> L22
            int r2 = r2.size()     // Catch: java.lang.Throwable -> L22
            if (r2 <= 0) goto L20
            java.util.ArrayList r2 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L22
            r2.<init>()     // Catch: java.lang.Throwable -> L22
            java.util.List<com.loc.ax> r0 = com.loc.C1725ao.f4946f     // Catch: java.lang.Throwable -> L2a
            r2.addAll(r0)     // Catch: java.lang.Throwable -> L2a
            java.util.List<com.loc.ax> r0 = com.loc.C1725ao.f4946f     // Catch: java.lang.Throwable -> L2a
            r0.clear()     // Catch: java.lang.Throwable -> L2a
            r0 = r2
        L20:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L22
            goto L2c
        L22:
            r2 = move-exception
            r3 = r2
            r2 = r0
            r0 = r3
        L26:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L2a
            throw r0     // Catch: java.lang.Throwable -> L28
        L28:
            r0 = r2
            goto L2c
        L2a:
            r0 = move-exception
            goto L26
        L2c:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.loc.C1725ao.m4093b():java.util.List");
    }

    /* renamed from: b */
    public static void m4094b(c cVar, JSONObject jSONObject) {
        JSONArray jSONArrayNames;
        try {
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("domainMap");
            if (jSONObjectOptJSONObject == null || (jSONArrayNames = jSONObjectOptJSONObject.names()) == null) {
                return;
            }
            HashMap map = new HashMap(8);
            int length = jSONArrayNames.length();
            for (int i = 0; i < length; i++) {
                String strOptString = jSONArrayNames.optString(i);
                map.put(strOptString, jSONObjectOptJSONObject.optString(strOptString));
            }
            cVar.f4953b = map;
        } catch (Throwable th) {
            BasicLogHandler.m5312a(th, "hlUtil", "pdr");
        }
    }

    /* renamed from: a */
    public static synchronized void m4079a(SDKInfo c1069k1, JSONObject jSONObject) {
        byte[] bArrM1936g;
        if (c1069k1 == null) {
            return;
        }
        try {
            String strM2156a = c1069k1.m2156a();
            if (TextUtils.isEmpty(strM2156a)) {
                return;
            }
            if (jSONObject == null) {
                m4081a(strM2156a);
            }
            if (!AuthConfigManager.m1723q(jSONObject.optString("able", null), false)) {
                m4081a(strM2156a);
                return;
            }
            Context context = AuthConfigManager.f2586c;
            String string = jSONObject.toString();
            if (context != null && !TextUtils.isEmpty(strM2156a) && !TextUtils.isEmpty(string)) {
                try {
                    SharedPreferences.Editor editorEdit = context.getSharedPreferences("Yb3Blbl9odHRwX2NvbnRyb2w", 0).edit();
                    try {
                        bArrM1936g = C0994h1.m1936g(C1170o1.m2425g(context), C1094l1.m2245n(string), C1170o1.m2427i(context));
                    } catch (Throwable unused) {
                        bArrM1936g = new byte[0];
                    }
                    editorEdit.putString(strM2156a, C1094l1.m2230C(bArrM1936g));
                    C1170o1.m2421c(editorEdit);
                } catch (Throwable unused2) {
                }
            }
            m4084a(strM2156a, jSONObject);
        } catch (Throwable th) {
            BasicLogHandler.m5312a(th, "hlUtil", "par");
        }
    }

    /* renamed from: a */
    public static synchronized void m4081a(String str) {
        try {
            if (f4941a.containsKey(str)) {
                f4941a.remove(str);
            }
            SharedPreferences.Editor editorM2420b = C1170o1.m2420b(AuthConfigManager.f2586c, "Yb3Blbl9odHRwX2NvbnRyb2w");
            if (editorM2420b != null) {
                try {
                    if (!TextUtils.isEmpty(str)) {
                        editorM2420b.remove(str);
                    }
                } catch (Throwable th) {
                    BasicLogHandler.m5312a(th, "sp", "rk");
                }
            }
            C1170o1.m2421c(editorM2420b);
        } catch (Throwable th2) {
            BasicLogHandler.m5312a(th2, "hlUtil", "rc");
        }
    }
}
