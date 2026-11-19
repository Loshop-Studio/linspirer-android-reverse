package com.huawei.hem;

import android.support.v4.app.NotificationCompat;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.huawei.hem.n9 */
/* loaded from: classes.dex */
public class C1153n9 implements InterfaceC1154na {

    /* renamed from: a */
    public String f3292a;

    /* renamed from: b */
    public String f3293b;

    /* renamed from: c */
    public String f3294c;

    /* renamed from: d */
    public String f3295d;

    /* renamed from: e */
    public String f3296e;

    /* renamed from: f */
    public String f3297f;

    /* renamed from: g */
    public String f3298g = "";

    @Override // com.huawei.hem.InterfaceC1154na
    /* renamed from: a */
    public JSONObject mo2189a() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("protocol_version", "1");
        jSONObject.put("compress_mode", "1");
        jSONObject.put("serviceid", this.f3295d);
        jSONObject.put(HiAnalyticsConstant.HaKey.BI_KEY_APPID, this.f3292a);
        jSONObject.put("hmac", this.f3298g);
        jSONObject.put("chifer", this.f3297f);
        jSONObject.put(NotificationCompat.CarExtender.KEY_TIMESTAMP, this.f3293b);
        jSONObject.put("servicetag", this.f3294c);
        jSONObject.put("requestid", this.f3296e);
        return jSONObject;
    }
}
