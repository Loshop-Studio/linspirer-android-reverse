package com.huawei.hem;

import android.os.Build;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.huawei.hem.q9 */
/* loaded from: classes.dex */
public class C1228q9 implements InterfaceC1154na {

    /* renamed from: a */
    public String f3505a;

    /* renamed from: b */
    public String f3506b;

    /* renamed from: c */
    public String f3507c;

    /* renamed from: d */
    public String f3508d;

    /* renamed from: e */
    public String f3509e;

    /* renamed from: f */
    public String f3510f;

    /* renamed from: g */
    public String f3511g;

    /* renamed from: h */
    public String f3512h;

    @Override // com.huawei.hem.InterfaceC1154na
    /* renamed from: a */
    public JSONObject mo2189a() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("_rom_ver", this.f3512h);
        jSONObject.put("_emui_ver", this.f3505a);
        jSONObject.put("_model", Build.MODEL);
        jSONObject.put("_mcc", this.f3510f);
        jSONObject.put("_mnc", this.f3511g);
        jSONObject.put("_package_name", this.f3506b);
        jSONObject.put("_app_ver", this.f3507c);
        jSONObject.put("_lib_ver", "2.2.0.308");
        jSONObject.put("_channel", this.f3508d);
        jSONObject.put("_lib_name", "hianalytics");
        jSONObject.put("_oaid_tracking_flag", this.f3509e);
        return jSONObject;
    }
}
