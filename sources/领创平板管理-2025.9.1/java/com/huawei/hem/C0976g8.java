package com.huawei.hem;

import android.content.Context;
import android.text.TextUtils;
import com.huawei.hms.framework.common.Logger;
import com.huawei.hms.framework.network.grs.GrsApp;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.huawei.hem.g8 */
/* loaded from: classes.dex */
public class C0976g8 extends AbstractC0898d8 {
    public C0976g8(Context context, boolean z) {
        this.f2391e = z;
        String appConfigName = GrsApp.getInstance().getAppConfigName();
        Logger.m3434i("LocalManagerV2", "appConfigName is" + appConfigName);
        if (m1569b(TextUtils.isEmpty(appConfigName) ? "grs_app_global_route_config.json" : appConfigName, context, true) == 0) {
            this.f2390d = true;
        }
    }

    @Override // com.huawei.hem.AbstractC0898d8
    /* renamed from: a */
    public int mo1568a(String str) throws JSONException {
        this.f2387a = new C0847b9();
        try {
            JSONObject jSONObject = new JSONObject(str).getJSONArray("applications").getJSONObject(0);
            this.f2387a.f2284a = jSONObject.getString("name");
            JSONArray jSONArray = jSONObject.getJSONArray("services");
            if (jSONArray != null && jSONArray.length() != 0) {
                if (jSONObject.has("customservices")) {
                    m1573f(jSONObject.getJSONArray("customservices"));
                }
                return 0;
            }
            return -1;
        } catch (JSONException e) {
            Logger.m3439w("LocalManagerV2", "parse appbean failed maybe json style is wrong.", e);
            return -1;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x008d A[Catch: JSONException -> 0x00a5, LOOP:1: B:43:0x0087->B:45:0x008d, LOOP_END, TryCatch #0 {JSONException -> 0x00a5, blocks: (B:3:0x0010, B:7:0x001f, B:13:0x002d, B:16:0x0034, B:19:0x003c, B:21:0x0042, B:23:0x004d, B:25:0x0055, B:27:0x005a, B:33:0x006d, B:37:0x0078, B:39:0x007f, B:43:0x0087, B:45:0x008d, B:46:0x0099, B:31:0x0067, B:36:0x0074, B:10:0x0026), top: B:53:0x0010 }] */
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
            java.lang.String r2 = "LocalManagerV2"
            java.util.ArrayList r3 = new java.util.ArrayList
            r4 = 16
            r3.<init>(r4)
            r12.f2388b = r3
            r3 = -1
            org.json.JSONObject r5 = new org.json.JSONObject     // Catch: org.json.JSONException -> La5
            r5.<init>(r13)     // Catch: org.json.JSONException -> La5
            boolean r13 = r5.has(r1)     // Catch: org.json.JSONException -> La5
            java.lang.String r6 = "countryGroups"
            r7 = 0
            if (r13 == 0) goto L1f
            goto L26
        L1f:
            boolean r13 = r5.has(r6)     // Catch: org.json.JSONException -> La5
            if (r13 == 0) goto L2b
            r1 = r6
        L26:
            org.json.JSONArray r13 = r5.getJSONArray(r1)     // Catch: org.json.JSONException -> La5
            goto L31
        L2b:
            java.lang.String r13 = "maybe local config json is wrong because the default countryOrAreaGroups isn't config."
            com.huawei.hms.framework.common.Logger.m3431e(r2, r13)     // Catch: org.json.JSONException -> La5
            r13 = r7
        L31:
            if (r13 != 0) goto L34
            return r3
        L34:
            int r1 = r13.length()     // Catch: org.json.JSONException -> La5
            r5 = 0
            if (r1 == 0) goto La4
            r1 = r5
        L3c:
            int r6 = r13.length()     // Catch: org.json.JSONException -> La5
            if (r1 >= r6) goto La4
            org.json.JSONObject r6 = r13.getJSONObject(r1)     // Catch: org.json.JSONException -> La5
            com.huawei.hem.c9 r8 = new com.huawei.hem.c9     // Catch: org.json.JSONException -> La5
            r8.<init>()     // Catch: org.json.JSONException -> La5
            java.lang.String r9 = "id"
            java.lang.String r9 = r6.getString(r9)     // Catch: org.json.JSONException -> La5
            r8.f2330a = r9     // Catch: org.json.JSONException -> La5
            java.lang.String r9 = "name"
            r6.getString(r9)     // Catch: org.json.JSONException -> La5
            java.lang.String r9 = "description"
            r6.getString(r9)     // Catch: org.json.JSONException -> La5
            boolean r9 = r6.has(r0)     // Catch: org.json.JSONException -> La5
            java.lang.String r10 = "countries"
            if (r9 == 0) goto L67
            r10 = r0
            goto L6d
        L67:
            boolean r9 = r6.has(r10)     // Catch: org.json.JSONException -> La5
            if (r9 == 0) goto L72
        L6d:
            org.json.JSONArray r6 = r6.getJSONArray(r10)     // Catch: org.json.JSONException -> La5
            goto L78
        L72:
            java.lang.String r6 = "current country or area group has not config countries or areas."
            com.huawei.hms.framework.common.Logger.m3438w(r2, r6)     // Catch: org.json.JSONException -> La5
            r6 = r7
        L78:
            java.util.HashSet r9 = new java.util.HashSet     // Catch: org.json.JSONException -> La5
            r9.<init>(r4)     // Catch: org.json.JSONException -> La5
            if (r6 == 0) goto La3
            int r10 = r6.length()     // Catch: org.json.JSONException -> La5
            if (r10 != 0) goto L86
            goto La3
        L86:
            r10 = r5
        L87:
            int r11 = r6.length()     // Catch: org.json.JSONException -> La5
            if (r10 >= r11) goto L99
            java.lang.Object r11 = r6.get(r10)     // Catch: org.json.JSONException -> La5
            java.lang.String r11 = (java.lang.String) r11     // Catch: org.json.JSONException -> La5
            r9.add(r11)     // Catch: org.json.JSONException -> La5
            int r10 = r10 + 1
            goto L87
        L99:
            r8.f2331b = r9     // Catch: org.json.JSONException -> La5
            java.util.List<com.huawei.hem.c9> r6 = r12.f2388b     // Catch: org.json.JSONException -> La5
            r6.add(r8)     // Catch: org.json.JSONException -> La5
            int r1 = r1 + 1
            goto L3c
        La3:
            return r3
        La4:
            return r5
        La5:
            r13 = move-exception
            java.lang.String r0 = "parse countrygroup failed maybe json style is wrong."
            com.huawei.hms.framework.common.Logger.m3439w(r2, r0, r13)
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.C0976g8.mo1572e(java.lang.String):int");
    }

    @Override // com.huawei.hem.AbstractC0898d8
    /* renamed from: h */
    public int mo1575h(String str) {
        return m1574g(str);
    }
}
