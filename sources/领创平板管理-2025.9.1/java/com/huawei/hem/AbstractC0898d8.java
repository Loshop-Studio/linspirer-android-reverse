package com.huawei.hem;

import android.content.Context;
import android.text.TextUtils;
import com.huawei.hms.framework.common.Logger;
import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import java.io.IOException;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.regex.Pattern;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.huawei.hem.d8 */
/* loaded from: classes.dex */
public abstract class AbstractC0898d8 {

    /* renamed from: a */
    public C0847b9 f2387a;

    /* renamed from: b */
    public List<C0873c9> f2388b;

    /* renamed from: c */
    public Map<String, String> f2389c = new ConcurrentHashMap(16);

    /* renamed from: d */
    public boolean f2390d = false;

    /* renamed from: e */
    public boolean f2391e = false;

    /* renamed from: f */
    public Set<String> f2392f = new HashSet(16);

    /* renamed from: a */
    public abstract int mo1568a(String str);

    /* renamed from: b */
    public int m1569b(String str, Context context, boolean z) throws IOException {
        int iMo1568a;
        boolean z2;
        String strM2981b = LauncherMenuHelper.m2981b(str, context);
        if (TextUtils.isEmpty(strM2981b)) {
            iMo1568a = -1;
        } else if ((!this.f2391e || (iMo1568a = mo1572e(strM2981b)) == 0) && (iMo1568a = mo1568a(strM2981b)) == 0) {
            iMo1568a = mo1575h(strM2981b);
        }
        if (iMo1568a == 0) {
            Logger.m3434i("AbstractLocalManager", "load APP_CONFIG_FILE success.");
            z2 = false;
        } else {
            z2 = -1;
        }
        if (z2 && z) {
            return -1;
        }
        try {
            String[] list = context.getAssets().list("");
            if (list != null && list.length > 0) {
                for (String str2 : list) {
                    if (Pattern.matches("^grs_sdk_global_route_config_[a-zA-Z]+\\.json$", str2) && m1576i(LauncherMenuHelper.m2981b(str2, context)) == 0) {
                        Logger.m3434i("AbstractLocalManager", "load SDK_CONFIG_FILE sucess.");
                    }
                }
            }
        } catch (IOException unused) {
            Logger.m3438w("AbstractLocalManager", "list assets files fail,please check if according to our standard config json files.");
        }
        return 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0068 A[Catch: JSONException -> 0x0083, LOOP:1: B:32:0x0062->B:34:0x0068, LOOP_END, TryCatch #0 {JSONException -> 0x0083, blocks: (B:7:0x000e, B:8:0x0017, B:10:0x001d, B:12:0x0028, B:14:0x0030, B:16:0x0035, B:22:0x0049, B:26:0x0053, B:28:0x005a, B:32:0x0062, B:34:0x0068, B:35:0x0074, B:36:0x007c, B:20:0x0043, B:25:0x0050), top: B:44:0x000e }] */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.huawei.hem.C0873c9> m1570c(org.json.JSONArray r12) throws org.json.JSONException {
        /*
            r11 = this;
            java.lang.String r0 = "countriesOrAreas"
            java.lang.String r1 = "AbstractLocalManager"
            if (r12 == 0) goto L8f
            int r2 = r12.length()
            if (r2 != 0) goto Le
            goto L8f
        Le:
            java.util.ArrayList r2 = new java.util.ArrayList     // Catch: org.json.JSONException -> L83
            r3 = 16
            r2.<init>(r3)     // Catch: org.json.JSONException -> L83
            r4 = 0
            r5 = r4
        L17:
            int r6 = r12.length()     // Catch: org.json.JSONException -> L83
            if (r5 >= r6) goto L82
            org.json.JSONObject r6 = r12.getJSONObject(r5)     // Catch: org.json.JSONException -> L83
            com.huawei.hem.c9 r7 = new com.huawei.hem.c9     // Catch: org.json.JSONException -> L83
            r7.<init>()     // Catch: org.json.JSONException -> L83
            java.lang.String r8 = "id"
            java.lang.String r8 = r6.getString(r8)     // Catch: org.json.JSONException -> L83
            r7.f2330a = r8     // Catch: org.json.JSONException -> L83
            java.lang.String r8 = "name"
            r6.getString(r8)     // Catch: org.json.JSONException -> L83
            java.lang.String r8 = "description"
            r6.getString(r8)     // Catch: org.json.JSONException -> L83
            r8 = 0
            boolean r9 = r6.has(r0)     // Catch: org.json.JSONException -> L83
            java.lang.String r10 = "countries"
            if (r9 == 0) goto L43
            r10 = r0
            goto L49
        L43:
            boolean r9 = r6.has(r10)     // Catch: org.json.JSONException -> L83
            if (r9 == 0) goto L4e
        L49:
            org.json.JSONArray r8 = r6.getJSONArray(r10)     // Catch: org.json.JSONException -> L83
            goto L53
        L4e:
            java.lang.String r6 = "current country or area group has not config countries or areas."
            com.huawei.hms.framework.common.Logger.m3438w(r1, r6)     // Catch: org.json.JSONException -> L83
        L53:
            java.util.HashSet r6 = new java.util.HashSet     // Catch: org.json.JSONException -> L83
            r6.<init>(r3)     // Catch: org.json.JSONException -> L83
            if (r8 == 0) goto L7c
            int r9 = r8.length()     // Catch: org.json.JSONException -> L83
            if (r9 != 0) goto L61
            goto L7c
        L61:
            r9 = r4
        L62:
            int r10 = r8.length()     // Catch: org.json.JSONException -> L83
            if (r9 >= r10) goto L74
            java.lang.Object r10 = r8.get(r9)     // Catch: org.json.JSONException -> L83
            java.lang.String r10 = (java.lang.String) r10     // Catch: org.json.JSONException -> L83
            r6.add(r10)     // Catch: org.json.JSONException -> L83
            int r9 = r9 + 1
            goto L62
        L74:
            r7.f2331b = r6     // Catch: org.json.JSONException -> L83
            r2.add(r7)     // Catch: org.json.JSONException -> L83
            int r5 = r5 + 1
            goto L17
        L7c:
            java.util.ArrayList r12 = new java.util.ArrayList     // Catch: org.json.JSONException -> L83
            r12.<init>()     // Catch: org.json.JSONException -> L83
            return r12
        L82:
            return r2
        L83:
            r12 = move-exception
            java.lang.String r0 = "parse countrygroup failed maybe json style is wrong."
            com.huawei.hms.framework.common.Logger.m3439w(r1, r0, r12)
            java.util.ArrayList r12 = new java.util.ArrayList
            r12.<init>()
            return r12
        L8f:
            java.util.ArrayList r12 = new java.util.ArrayList
            r12.<init>()
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.AbstractC0898d8.m1570c(org.json.JSONArray):java.util.List");
    }

    /* renamed from: d */
    public Map<String, String> m1571d(Context context, C0820a8 c0820a8, GrsBaseInfo grsBaseInfo, String str, boolean z) {
        Object obj;
        if (!this.f2390d) {
            return null;
        }
        C0847b9 c0847b9 = this.f2387a;
        if (c0847b9 == null) {
            Logger.m3438w("AbstractLocalManager", "application data is null.");
            return null;
        }
        C0899d9 c0899d9 = c0847b9.f2285b.get(str);
        if (c0899d9 == null) {
            Logger.m3440w("AbstractLocalManager", "service not found in local config{%s}", str);
            return null;
        }
        String strM1941a = C1001h8.m1941a(context, c0820a8, c0899d9.f2393a, grsBaseInfo, z);
        if (strM1941a == null) {
            Logger.m3440w("AbstractLocalManager", "country not found by routeby in local config{%s}", c0899d9.f2393a);
            return null;
        }
        List<C0873c9> list = c0899d9.f2395c;
        if (list == null || list.size() == 0) {
            obj = this.f2389c.get(strM1941a);
        } else {
            ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap(16);
            concurrentHashMap.put("no_route_country", "no-country");
            for (C0873c9 c0873c9 : list) {
                if (c0873c9.f2331b.contains(grsBaseInfo.getIssueCountry())) {
                    concurrentHashMap.put(grsBaseInfo.getIssueCountry(), c0873c9.f2330a);
                }
                if (c0873c9.f2331b.contains(grsBaseInfo.getRegCountry())) {
                    concurrentHashMap.put(grsBaseInfo.getRegCountry(), c0873c9.f2330a);
                }
                if (c0873c9.f2331b.contains(grsBaseInfo.getSerCountry())) {
                    concurrentHashMap.put(grsBaseInfo.getSerCountry(), c0873c9.f2330a);
                }
                if (c0873c9.f2331b.contains(strM1941a)) {
                    Logger.m3436v("AbstractLocalManager", "get countryGroupID from geoIp");
                    concurrentHashMap.put(strM1941a, c0873c9.f2330a);
                }
            }
            obj = concurrentHashMap.get(strM1941a);
        }
        C0925e9 c0925e9 = c0899d9.f2394b.get((String) obj);
        if (c0925e9 == null) {
            return null;
        }
        return c0925e9.f2519b;
    }

    /* renamed from: e */
    public abstract int mo1572e(String str);

    /* JADX WARN: Removed duplicated region for block: B:21:0x0065 A[PHI: r10
      0x0065: PHI (r10v1 java.lang.String) = (r10v0 java.lang.String), (r10v4 java.lang.String) binds: [B:17:0x005a, B:20:0x0063] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00b6 A[PHI: r6
      0x00b6: PHI (r6v3 java.lang.String) = (r6v2 java.lang.String), (r6v4 java.lang.String) binds: [B:29:0x00ab, B:32:0x00b4] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00ca  */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m1573f(org.json.JSONArray r14) throws org.json.JSONException {
        /*
            r13 = this;
            if (r14 == 0) goto Ldc
            int r0 = r14.length()
            if (r0 != 0) goto La
            goto Ldc
        La:
            r0 = 0
            r1 = r0
        Lc:
            int r2 = r14.length()
            if (r1 >= r2) goto Ldc
            org.json.JSONObject r2 = r14.getJSONObject(r1)
            com.huawei.hem.d9 r3 = new com.huawei.hem.d9
            r3.<init>()
            java.lang.String r4 = "name"
            java.lang.String r4 = r2.getString(r4)
            java.util.Set<java.lang.String> r5 = r13.f2392f
            boolean r5 = r5.contains(r4)
            if (r5 != 0) goto Ld8
            java.util.Set<java.lang.String> r5 = r13.f2392f
            r5.add(r4)
            boolean r5 = r13.f2391e
            if (r5 == 0) goto Ld8
            java.lang.String r5 = "routeBy"
            java.lang.String r5 = r2.getString(r5)
            r3.f2393a = r5
            java.lang.String r5 = "servings"
            org.json.JSONArray r5 = r2.getJSONArray(r5)
            r6 = r0
        L41:
            int r7 = r5.length()
            java.lang.String r8 = "AbstractLocalManager"
            if (r6 >= r7) goto La4
            java.lang.Object r7 = r5.get(r6)
            org.json.JSONObject r7 = (org.json.JSONObject) r7
            com.huawei.hem.e9 r9 = new com.huawei.hem.e9
            r9.<init>()
            java.lang.String r10 = "countryOrAreaGroup"
            boolean r11 = r7.has(r10)
            if (r11 == 0) goto L5d
            goto L65
        L5d:
            java.lang.String r10 = "countryGroup"
            boolean r11 = r7.has(r10)
            if (r11 == 0) goto L6a
        L65:
            java.lang.String r8 = r7.getString(r10)
            goto L71
        L6a:
            java.lang.String r10 = "maybe this service routeBy is unconditional."
            com.huawei.hms.framework.common.Logger.m3436v(r8, r10)
            java.lang.String r8 = "no-country"
        L71:
            r9.f2518a = r8
            java.lang.String r8 = "addresses"
            org.json.JSONObject r7 = r7.getJSONObject(r8)
            java.util.HashMap r8 = new java.util.HashMap
            r10 = 16
            r8.<init>(r10)
            java.util.Iterator r10 = r7.keys()
        L84:
            boolean r11 = r10.hasNext()
            if (r11 == 0) goto L98
            java.lang.Object r11 = r10.next()
            java.lang.String r11 = (java.lang.String) r11
            java.lang.String r12 = r7.getString(r11)
            r8.put(r11, r12)
            goto L84
        L98:
            r9.f2519b = r8
            java.lang.String r7 = r9.f2518a
            java.util.Map<java.lang.String, com.huawei.hem.e9> r8 = r3.f2394b
            r8.put(r7, r9)
            int r6 = r6 + 1
            goto L41
        La4:
            r5 = 0
            java.lang.String r6 = "countryOrAreaGroups"
            boolean r7 = r2.has(r6)
            if (r7 == 0) goto Lae
            goto Lb6
        Lae:
            java.lang.String r6 = "countryGroups"
            boolean r7 = r2.has(r6)
            if (r7 == 0) goto Lbf
        Lb6:
            org.json.JSONArray r2 = r2.getJSONArray(r6)
            java.util.List r5 = r13.m1570c(r2)
            goto Lc4
        Lbf:
            java.lang.String r2 = "service use default countryOrAreaGroup"
            com.huawei.hms.framework.common.Logger.m3434i(r8, r2)
        Lc4:
            r3.f2395c = r5
            com.huawei.hem.b9 r2 = r13.f2387a
            if (r2 != 0) goto Ld1
            com.huawei.hem.b9 r2 = new com.huawei.hem.b9
            r2.<init>()
            r13.f2387a = r2
        Ld1:
            com.huawei.hem.b9 r2 = r13.f2387a
            java.util.Map<java.lang.String, com.huawei.hem.d9> r2 = r2.f2285b
            r2.put(r4, r3)
        Ld8:
            int r1 = r1 + 1
            goto Lc
        Ldc:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.AbstractC0898d8.m1573f(org.json.JSONArray):void");
    }

    /* renamed from: g */
    public int m1574g(String str) {
        try {
            m1573f(new JSONObject(str).getJSONArray("services"));
            return 0;
        } catch (JSONException e) {
            Logger.m3439w("AbstractLocalManager", "parse 2.0 services failed maybe because of json style.please check!", e);
            return -1;
        }
    }

    /* renamed from: h */
    public abstract int mo1575h(String str);

    /* JADX WARN: Removed duplicated region for block: B:24:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0046 A[Catch: JSONException -> 0x0051, TRY_LEAVE, TryCatch #0 {JSONException -> 0x0051, blocks: (B:12:0x0023, B:16:0x0032, B:22:0x0040, B:25:0x0046, B:19:0x0039), top: B:33:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0059 A[RETURN] */
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m1576i(java.lang.String r8) throws org.json.JSONException {
        /*
            r7 = this;
            boolean r0 = android.text.TextUtils.isEmpty(r8)
            r1 = -1
            if (r0 == 0) goto L8
            return r1
        L8:
            boolean r0 = r7.f2391e
            if (r0 == 0) goto L5a
            java.util.List<com.huawei.hem.c9> r0 = r7.f2388b
            if (r0 == 0) goto L16
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L5a
        L16:
            java.lang.String r0 = "countryOrAreaGroups"
            java.lang.String r2 = "AbstractLocalManager"
            java.util.ArrayList r3 = new java.util.ArrayList
            r4 = 16
            r3.<init>(r4)
            r7.f2388b = r3
            org.json.JSONObject r3 = new org.json.JSONObject     // Catch: org.json.JSONException -> L51
            r3.<init>(r8)     // Catch: org.json.JSONException -> L51
            r4 = 0
            boolean r5 = r3.has(r0)     // Catch: org.json.JSONException -> L51
            java.lang.String r6 = "countryGroups"
            if (r5 == 0) goto L32
            goto L39
        L32:
            boolean r0 = r3.has(r6)     // Catch: org.json.JSONException -> L51
            if (r0 == 0) goto L3e
            r0 = r6
        L39:
            org.json.JSONArray r4 = r3.getJSONArray(r0)     // Catch: org.json.JSONException -> L51
            goto L43
        L3e:
            java.lang.String r0 = "maybe local config json is wrong because the default countryOrAreaGroups isn't config."
            com.huawei.hms.framework.common.Logger.m3431e(r2, r0)     // Catch: org.json.JSONException -> L51
        L43:
            if (r4 != 0) goto L46
            goto L57
        L46:
            java.util.List<com.huawei.hem.c9> r0 = r7.f2388b     // Catch: org.json.JSONException -> L51
            java.util.List r3 = r7.m1570c(r4)     // Catch: org.json.JSONException -> L51
            r0.addAll(r3)     // Catch: org.json.JSONException -> L51
            r1 = 0
            goto L57
        L51:
            r0 = move-exception
            java.lang.String r3 = "parse countrygroup failed maybe json style is wrong."
            com.huawei.hms.framework.common.Logger.m3439w(r2, r3, r0)
        L57:
            if (r1 == 0) goto L5a
            return r1
        L5a:
            int r8 = r7.m1574g(r8)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.AbstractC0898d8.m1576i(java.lang.String):int");
    }
}
