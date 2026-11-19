package com.huawei.hem;

import android.text.TextUtils;
import java.io.UnsupportedEncodingException;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.huawei.hem.ma */
/* loaded from: classes.dex */
public class AnalyticsUploadEnvelope implements AnalyticsJsonModel {

    /* renamed from: a */
    public List<AnalyticsEventRecord> f3248a;

    /* renamed from: b */
    public AnalyticsRequestHeader f3249b;

    /* renamed from: c */
    public AnalyticsCommonProperties f3250c;

    /* renamed from: d */
    public AnalyticsJsonModel f3251d;

    /* renamed from: e */
    public String f3252e = "";

    /* renamed from: f */
    public String f3253f;

    public AnalyticsUploadEnvelope(String str) {
        this.f3253f = str;
    }

    @Override // com.huawei.hem.InterfaceC1154na
    /* renamed from: a */
    public JSONObject mo2189a() throws JSONException {
        String str;
        List<AnalyticsEventRecord> list = this.f3248a;
        if (list == null || list.size() == 0) {
            str = "Not have actionEvent to send";
        } else if (this.f3249b == null || this.f3250c == null || this.f3251d == null) {
            str = "model in wrong format";
        } else {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("header", this.f3249b.mo2189a());
            JSONObject jSONObject2 = new JSONObject();
            JSONObject jSONObjectMo2189a = this.f3251d.mo2189a();
            jSONObjectMo2189a.put("properties", this.f3250c.mo2189a());
            try {
                jSONObjectMo2189a.put("events_global_properties", new JSONObject(this.f3252e));
            } catch (JSONException unused) {
                jSONObjectMo2189a.put("events_global_properties", this.f3252e);
            }
            jSONObject2.put("events_common", jSONObjectMo2189a);
            JSONArray jSONArray = new JSONArray();
            Iterator<AnalyticsEventRecord> it = this.f3248a.iterator();
            while (it.hasNext()) {
                JSONObject jSONObjectMo2189a2 = it.next().mo2189a();
                if (jSONObjectMo2189a2 != null) {
                    jSONArray.put(jSONObjectMo2189a2);
                } else {
                    HiAnalyticsSdkState.m2939f("hmsSdk", "custom event is empty,delete this event");
                }
            }
            jSONObject2.put("events", jSONArray);
            try {
                String strM2265F = MobileSdkPlatformUtilities.m2265F(AnalyticsBlockCipher.m1303b(MobileSdkPlatformUtilities.m2300w(jSONObject2.toString().getBytes("UTF-8")), MobileSdkPlatformUtilities.m2271L(this.f3253f)));
                if (TextUtils.isEmpty(strM2265F)) {
                    HiAnalyticsSdkState.m2939f("hmsSdk", "eventInfo encrypt failed,report over!");
                    return null;
                }
                jSONObject.put("event", strM2265F);
                return jSONObject;
            } catch (UnsupportedEncodingException unused2) {
                str = "getBitZip(): Unsupported coding : utf-8";
            }
        }
        HiAnalyticsSdkState.m2939f("hmsSdk", str);
        return null;
    }
}
