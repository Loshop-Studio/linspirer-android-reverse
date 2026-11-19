package com.p061ta.utdid2.device;

import com.p061ta.p062a.p064b.UtdidFileLocations;
import com.p061ta.p062a.p065c.UtCallsiteLogger;
import com.taobao.accs.common.Constants;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.ta.utdid2.device.b */
/* loaded from: classes.dex */
public class UtdidBusinessResponse {

    /* renamed from: d */
    public int f6025d = -1;

    /* renamed from: a */
    public static UtdidBusinessResponse m5427a(String str) throws JSONException {
        JSONObject jSONObject;
        UtdidBusinessResponse c1890b = new UtdidBusinessResponse();
        try {
            JSONObject jSONObject2 = new JSONObject(str);
            if (jSONObject2.has("code")) {
                c1890b.f6025d = jSONObject2.getInt("code");
            }
            if (jSONObject2.has(Constants.KEY_DATA) && (jSONObject = jSONObject2.getJSONObject(Constants.KEY_DATA)) != null && jSONObject.has("utdid")) {
                String string = jSONObject.getString("utdid");
                if (UtdidValueGenerator.m5440c(string)) {
                    UtdidFileLocations.m5376a(string);
                }
            }
            UtCallsiteLogger.m5404a("BizResponse", "content", str);
        } catch (JSONException e) {
            UtCallsiteLogger.m5404a("", e.toString());
        }
        return c1890b;
    }

    /* renamed from: a */
    public static boolean m5428a(int i) {
        return i >= 0 && i != 10012;
    }
}
