package com.alibaba.sdk.android.emas;

import android.support.v4.app.NotificationCompat;
import android.text.TextUtils;
import java.nio.charset.Charset;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: EmasSingleLog.java */
/* renamed from: com.alibaba.sdk.android.emas.g */
/* loaded from: classes.dex */
public class EmasSingleLog {

    /* renamed from: h */
    public String f944h;

    /* renamed from: i */
    public String f945i;
    public long timestamp;

    public EmasSingleLog(String str, String str2, long j) {
        this.f945i = str;
        this.f944h = str2;
        this.timestamp = j;
    }

    /* renamed from: a */
    public JSONObject m638a() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("eventId", this.f945i);
            jSONObject.put("rawLog", this.f944h);
            jSONObject.put(NotificationCompat.CarExtender.KEY_TIMESTAMP, this.timestamp);
            return jSONObject;
        } catch (JSONException unused) {
            return null;
        }
    }

    public int length() {
        return this.f944h.getBytes(Charset.forName("UTF-8")).length;
    }

    /* renamed from: a */
    public static EmasSingleLog m637a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        String strOptString = jSONObject.optString("eventId");
        String strOptString2 = jSONObject.optString("rawLog");
        long jOptLong = jSONObject.optLong(NotificationCompat.CarExtender.KEY_TIMESTAMP);
        if (TextUtils.isEmpty(strOptString) || TextUtils.isEmpty(strOptString2) || jOptLong == 0) {
            return null;
        }
        return new EmasSingleLog(strOptString, strOptString2, jOptLong);
    }
}
