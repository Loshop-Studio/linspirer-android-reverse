package com.huawei.hem;

import android.content.Context;
import com.huawei.hms.framework.common.Logger;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.huawei.hem.f8 */
/* loaded from: classes.dex */
public class GrsLocalManagerV1 extends PushLocalRecordManager {
    public GrsLocalManagerV1(Context context, boolean z) {
        this.f2391e = z;
        if (m1569b("grs_sdk_global_route_config.json", context, false) == 0) {
            this.f2390d = true;
        }
    }

    @Override // com.huawei.hem.AbstractC0898d8
    /* renamed from: a */
    public int mo1568a(String str) throws JSONException {
        this.f2387a = new GrsLocalApplication();
        try {
            JSONObject jSONObject = new JSONObject(str).getJSONObject("application");
            String string = jSONObject.getString("name");
            jSONObject.getLong("cacheControl");
            JSONArray jSONArray = jSONObject.getJSONArray("services");
            this.f2387a.f2284a = string;
            if (this.f2387a != null) {
                return (jSONArray == null || jSONArray.length() == 0) ? -1 : 0;
            }
            throw null;
        } catch (JSONException e) {
            Logger.m3439w("LocalManagerV1", "parse appbean failed maybe json style is wrong.", e);
            return -1;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x0090 A[Catch: JSONException -> 0x00a6, LOOP:1: B:41:0x008a->B:43:0x0090, LOOP_END, TryCatch #0 {JSONException -> 0x00a6, blocks: (B:3:0x0010, B:7:0x001f, B:13:0x002d, B:16:0x0034, B:18:0x003b, B:19:0x003f, B:21:0x0045, B:23:0x0058, B:25:0x005d, B:31:0x0070, B:35:0x007b, B:37:0x0082, B:41:0x008a, B:43:0x0090, B:44:0x009c, B:29:0x006a, B:34:0x0077, B:10:0x0026), top: B:51:0x0010 }] */
    @Override // com.huawei.hem.AbstractC0898d8
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int mo1572e(java.lang.String r13) throws org.json.JSONException {
        /*
            r12 = this;
            java.lang.String r0 = "countriesOrAreas"
            java.lang.String r1 = "countryOrAreaGroups"
            java.lang.String r2 = "LocalManagerV1"
            java.util.ArrayList r3 = new java.util.ArrayList
            r4 = 16
            r3.<init>(r4)
            r12.f2388b = r3
            r3 = -1
            org.json.JSONObject r5 = new org.json.JSONObject     // Catch: org.json.JSONException -> La6
            r5.<init>(r13)     // Catch: org.json.JSONException -> La6
            boolean r13 = r5.has(r1)     // Catch: org.json.JSONException -> La6
            java.lang.String r6 = "countryGroups"
            r7 = 0
            if (r13 == 0) goto L1f
            goto L26
        L1f:
            boolean r13 = r5.has(r6)     // Catch: org.json.JSONException -> La6
            if (r13 == 0) goto L2b
            r1 = r6
        L26:
            org.json.JSONObject r13 = r5.getJSONObject(r1)     // Catch: org.json.JSONException -> La6
            goto L31
        L2b:
            java.lang.String r13 = "maybe local config json is wrong because the default countryOrAreaGroups isn't config."
            com.huawei.hms.framework.common.Logger.m3431e(r2, r13)     // Catch: org.json.JSONException -> La6
            r13 = r7
        L31:
            if (r13 != 0) goto L34
            return r3
        L34:
            int r1 = r13.length()     // Catch: org.json.JSONException -> La6
            r5 = 0
            if (r1 == 0) goto La5
            java.util.Iterator r1 = r13.keys()     // Catch: org.json.JSONException -> La6
        L3f:
            boolean r6 = r1.hasNext()     // Catch: org.json.JSONException -> La6
            if (r6 == 0) goto La5
            java.lang.Object r6 = r1.next()     // Catch: org.json.JSONException -> La6
            java.lang.String r6 = (java.lang.String) r6     // Catch: org.json.JSONException -> La6
            com.huawei.hem.c9 r8 = new com.huawei.hem.c9     // Catch: org.json.JSONException -> La6
            r8.<init>()     // Catch: org.json.JSONException -> La6
            r8.f2330a = r6     // Catch: org.json.JSONException -> La6
            org.json.JSONObject r6 = r13.getJSONObject(r6)     // Catch: org.json.JSONException -> La6
            java.lang.String r9 = "name"
            r6.getString(r9)     // Catch: org.json.JSONException -> La6
            java.lang.String r9 = "description"
            r6.getString(r9)     // Catch: org.json.JSONException -> La6
            boolean r9 = r6.has(r0)     // Catch: org.json.JSONException -> La6
            java.lang.String r10 = "countries"
            if (r9 == 0) goto L6a
            r10 = r0
            goto L70
        L6a:
            boolean r9 = r6.has(r10)     // Catch: org.json.JSONException -> La6
            if (r9 == 0) goto L75
        L70:
            org.json.JSONArray r6 = r6.getJSONArray(r10)     // Catch: org.json.JSONException -> La6
            goto L7b
        L75:
            java.lang.String r6 = "current country or area group has not config countries or areas."
            com.huawei.hms.framework.common.Logger.m3438w(r2, r6)     // Catch: org.json.JSONException -> La6
            r6 = r7
        L7b:
            java.util.HashSet r9 = new java.util.HashSet     // Catch: org.json.JSONException -> La6
            r9.<init>(r4)     // Catch: org.json.JSONException -> La6
            if (r6 == 0) goto La4
            int r10 = r6.length()     // Catch: org.json.JSONException -> La6
            if (r10 != 0) goto L89
            goto La4
        L89:
            r10 = r5
        L8a:
            int r11 = r6.length()     // Catch: org.json.JSONException -> La6
            if (r10 >= r11) goto L9c
            java.lang.Object r11 = r6.get(r10)     // Catch: org.json.JSONException -> La6
            java.lang.String r11 = (java.lang.String) r11     // Catch: org.json.JSONException -> La6
            r9.add(r11)     // Catch: org.json.JSONException -> La6
            int r10 = r10 + 1
            goto L8a
        L9c:
            r8.f2331b = r9     // Catch: org.json.JSONException -> La6
            java.util.List<com.huawei.hem.c9> r6 = r12.f2388b     // Catch: org.json.JSONException -> La6
            r6.add(r8)     // Catch: org.json.JSONException -> La6
            goto L3f
        La4:
            return r3
        La5:
            return r5
        La6:
            r13 = move-exception
            java.lang.String r0 = "parse countrygroup failed maybe json style is wrong."
            com.huawei.hms.framework.common.Logger.m3439w(r2, r0, r13)
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.C0950f8.mo1572e(java.lang.String):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0096 A[Catch: JSONException -> 0x0101, LOOP:2: B:33:0x0090->B:35:0x0096, LOOP_END, TryCatch #0 {JSONException -> 0x0101, blocks: (B:3:0x000a, B:5:0x0013, B:6:0x001b, B:8:0x0022, B:10:0x0035, B:12:0x003e, B:14:0x0044, B:16:0x004c, B:17:0x0050, B:19:0x0056, B:25:0x0071, B:30:0x007d, B:32:0x0081, B:33:0x0090, B:35:0x0096, B:36:0x00ae, B:23:0x006b, B:28:0x0078, B:37:0x00c2, B:39:0x00cd, B:43:0x00dc, B:47:0x00e6, B:49:0x00ec, B:50:0x00f3, B:40:0x00d2, B:42:0x00d8, B:46:0x00e3), top: B:56:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00ec A[Catch: JSONException -> 0x0101, TryCatch #0 {JSONException -> 0x0101, blocks: (B:3:0x000a, B:5:0x0013, B:6:0x001b, B:8:0x0022, B:10:0x0035, B:12:0x003e, B:14:0x0044, B:16:0x004c, B:17:0x0050, B:19:0x0056, B:25:0x0071, B:30:0x007d, B:32:0x0081, B:33:0x0090, B:35:0x0096, B:36:0x00ae, B:23:0x006b, B:28:0x0078, B:37:0x00c2, B:39:0x00cd, B:43:0x00dc, B:47:0x00e6, B:49:0x00ec, B:50:0x00f3, B:40:0x00d2, B:42:0x00d8, B:46:0x00e3), top: B:56:0x000a }] */
    @Override // com.huawei.hem.AbstractC0898d8
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int mo1575h(java.lang.String r19) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 265
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.C0950f8.mo1575h(java.lang.String):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x006a A[Catch: JSONException -> 0x0083, LOOP:1: B:30:0x0064->B:32:0x006a, LOOP_END, TryCatch #0 {JSONException -> 0x0083, blocks: (B:7:0x000e, B:8:0x0019, B:10:0x001f, B:12:0x0032, B:14:0x0037, B:20:0x004b, B:24:0x0055, B:26:0x005c, B:30:0x0064, B:32:0x006a, B:33:0x0076, B:34:0x007c, B:18:0x0045, B:23:0x0052), top: B:42:0x000e }] */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.huawei.hem.GrsCountryGroup> m1782j(org.json.JSONArray r10, org.json.JSONObject r11) throws org.json.JSONException {
        /*
            r9 = this;
            java.lang.String r10 = "countriesOrAreas"
            java.lang.String r0 = "LocalManagerV1"
            if (r11 == 0) goto L8f
            int r1 = r11.length()
            if (r1 != 0) goto Le
            goto L8f
        Le:
            java.util.ArrayList r1 = new java.util.ArrayList     // Catch: org.json.JSONException -> L83
            r2 = 16
            r1.<init>(r2)     // Catch: org.json.JSONException -> L83
            java.util.Iterator r3 = r11.keys()     // Catch: org.json.JSONException -> L83
        L19:
            boolean r4 = r3.hasNext()     // Catch: org.json.JSONException -> L83
            if (r4 == 0) goto L82
            java.lang.Object r4 = r3.next()     // Catch: org.json.JSONException -> L83
            java.lang.String r4 = (java.lang.String) r4     // Catch: org.json.JSONException -> L83
            com.huawei.hem.c9 r5 = new com.huawei.hem.c9     // Catch: org.json.JSONException -> L83
            r5.<init>()     // Catch: org.json.JSONException -> L83
            r5.f2330a = r4     // Catch: org.json.JSONException -> L83
            org.json.JSONObject r4 = r11.getJSONObject(r4)     // Catch: org.json.JSONException -> L83
            java.lang.String r6 = "name"
            r4.getString(r6)     // Catch: org.json.JSONException -> L83
            java.lang.String r6 = "description"
            r4.getString(r6)     // Catch: org.json.JSONException -> L83
            r6 = 0
            boolean r7 = r4.has(r10)     // Catch: org.json.JSONException -> L83
            java.lang.String r8 = "countries"
            if (r7 == 0) goto L45
            r8 = r10
            goto L4b
        L45:
            boolean r7 = r4.has(r8)     // Catch: org.json.JSONException -> L83
            if (r7 == 0) goto L50
        L4b:
            org.json.JSONArray r6 = r4.getJSONArray(r8)     // Catch: org.json.JSONException -> L83
            goto L55
        L50:
            java.lang.String r4 = "current country or area group has not config countries or areas."
            com.huawei.hms.framework.common.Logger.m3438w(r0, r4)     // Catch: org.json.JSONException -> L83
        L55:
            java.util.HashSet r4 = new java.util.HashSet     // Catch: org.json.JSONException -> L83
            r4.<init>(r2)     // Catch: org.json.JSONException -> L83
            if (r6 == 0) goto L7c
            int r7 = r6.length()     // Catch: org.json.JSONException -> L83
            if (r7 != 0) goto L63
            goto L7c
        L63:
            r7 = 0
        L64:
            int r8 = r6.length()     // Catch: org.json.JSONException -> L83
            if (r7 >= r8) goto L76
            java.lang.Object r8 = r6.get(r7)     // Catch: org.json.JSONException -> L83
            java.lang.String r8 = (java.lang.String) r8     // Catch: org.json.JSONException -> L83
            r4.add(r8)     // Catch: org.json.JSONException -> L83
            int r7 = r7 + 1
            goto L64
        L76:
            r5.f2331b = r4     // Catch: org.json.JSONException -> L83
            r1.add(r5)     // Catch: org.json.JSONException -> L83
            goto L19
        L7c:
            java.util.ArrayList r10 = new java.util.ArrayList     // Catch: org.json.JSONException -> L83
            r10.<init>()     // Catch: org.json.JSONException -> L83
            return r10
        L82:
            return r1
        L83:
            r10 = move-exception
            java.lang.String r11 = "parse countryGroups failed maybe json style is wrong."
            com.huawei.hms.framework.common.Logger.m3439w(r0, r11, r10)
            java.util.ArrayList r10 = new java.util.ArrayList
            r10.<init>()
            return r10
        L8f:
            java.util.ArrayList r10 = new java.util.ArrayList
            r10.<init>()
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.C0950f8.m1782j(org.json.JSONArray, org.json.JSONObject):java.util.List");
    }
}
