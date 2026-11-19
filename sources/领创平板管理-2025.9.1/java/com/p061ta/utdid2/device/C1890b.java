package com.p061ta.utdid2.device;

import com.p061ta.p062a.p064b.C1873e;
import com.p061ta.p062a.p065c.C1882f;
import com.taobao.accs.common.Constants;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.ta.utdid2.device.b */
/* loaded from: classes.dex */
public class C1890b {

    /* renamed from: d */
    public int f6025d = -1;

    /* renamed from: a */
    public static C1890b m5427a(String str) throws JSONException {
        JSONObject jSONObject;
        C1890b c1890b = new C1890b();
        try {
            JSONObject jSONObject2 = new JSONObject(str);
            if (jSONObject2.has("code")) {
                c1890b.f6025d = jSONObject2.getInt("code");
            }
            if (jSONObject2.has(Constants.KEY_DATA) && (jSONObject = jSONObject2.getJSONObject(Constants.KEY_DATA)) != null && jSONObject.has("utdid")) {
                String string = jSONObject.getString("utdid");
                if (C1892d.m5440c(string)) {
                    C1873e.m5376a(string);
                }
            }
            C1882f.m5404a("BizResponse", "content", str);
        } catch (JSONException e) {
            C1882f.m5404a("", e.toString());
        }
        return c1890b;
    }

    /* renamed from: a */
    public static boolean m5428a(int i) {
        return i >= 0 && i != 10012;
    }
}
