package com.huawei.hem;

import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.huawei.hem.la */
/* loaded from: classes.dex */
public class AnalyticsEventRecord implements AnalyticsJsonModel {

    /* renamed from: a */
    public String f3160a;

    /* renamed from: b */
    public String f3161b;

    /* renamed from: c */
    public String f3162c;

    /* renamed from: d */
    public String f3163d;

    /* renamed from: e */
    public String f3164e;

    /* renamed from: f */
    public String f3165f;

    @Override // com.huawei.hem.InterfaceC1154na
    /* renamed from: a */
    public JSONObject mo2189a() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("type", this.f3160a);
        jSONObject.put("eventtime", this.f3163d);
        jSONObject.put("event", this.f3161b);
        jSONObject.put("event_session_name", this.f3164e);
        jSONObject.put("first_session_event", this.f3165f);
        if (TextUtils.isEmpty(this.f3162c)) {
            return null;
        }
        jSONObject.put("properties", new JSONObject(this.f3162c));
        return jSONObject;
    }

    /* renamed from: b */
    public void m2304b(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        this.f3161b = jSONObject.optString("event");
        this.f3162c = jSONObject.optString("properties");
        this.f3162c = AnalyticsTextDecryption.m2430a(this.f3162c, AnalyticsPrivacyData.m2352e().m2353a());
        this.f3160a = jSONObject.optString("type");
        this.f3163d = jSONObject.optString("eventtime");
        this.f3164e = jSONObject.optString("event_session_name");
        this.f3165f = jSONObject.optString("first_session_event");
    }

    /* renamed from: c */
    public JSONObject m2305c() throws JSONException {
        JSONObject jSONObjectMo2189a = mo2189a();
        jSONObjectMo2189a.put("properties", MobileSdkPlatformUtilities.m2265F(AnalyticsBlockCipher.m1303b(this.f3162c.getBytes(AnalyticsTextDecryption.f3378a), MobileSdkPlatformUtilities.m2271L(AnalyticsPrivacyData.m2352e().m2353a()))));
        return jSONObjectMo2189a;
    }
}
