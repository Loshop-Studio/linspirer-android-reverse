package com.huawei.hem;

import com.taobao.accs.common.Constants;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.huawei.hem.k9 */
/* loaded from: classes.dex */
public class AnalyticsDeviceIdentifiers implements AnalyticsJsonModel {

    /* renamed from: a */
    public String f3053a = "";

    /* renamed from: b */
    public String f3054b = "";

    /* renamed from: c */
    public String f3055c = "";

    /* renamed from: d */
    public String f3056d = "";

    /* renamed from: e */
    public String f3057e = "";

    /* renamed from: f */
    public String f3058f = "";

    /* renamed from: g */
    public String f3059g;

    @Override // com.huawei.hem.InterfaceC1154na
    /* renamed from: a */
    public JSONObject mo2189a() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("androidid", this.f3053a);
        jSONObject.put("oaid", this.f3059g);
        jSONObject.put("uuid", this.f3058f);
        jSONObject.put("upid", this.f3057e);
        jSONObject.put(Constants.KEY_IMEI, this.f3054b);
        jSONObject.put("sn", this.f3055c);
        jSONObject.put("udid", this.f3056d);
        return jSONObject;
    }
}
