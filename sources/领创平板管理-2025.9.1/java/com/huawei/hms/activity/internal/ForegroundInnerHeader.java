package com.huawei.hms.activity.internal;

import com.huawei.hem.C0948f6;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.utils.JsonUtil;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ForegroundInnerHeader {
    public final String TAG = "ForegroundInnerHeader";
    public String action;
    public int apkVersion;
    public String responseCallbackKey;

    public void fromJson(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            this.apkVersion = JsonUtil.getIntValue(jSONObject, "apkVersion");
            this.action = JsonUtil.getStringValue(jSONObject, "action");
            this.responseCallbackKey = JsonUtil.getStringValue(jSONObject, "responseCallbackKey");
        } catch (JSONException e) {
            StringBuilder sbM1765j = C0948f6.m1765j("fromJson failed: ");
            sbM1765j.append(e.getMessage());
            HMSLog.m3461e("ForegroundInnerHeader", sbM1765j.toString());
        }
    }

    public String getAction() {
        return this.action;
    }

    public int getApkVersion() {
        return this.apkVersion;
    }

    public String getResponseCallbackKey() {
        return this.responseCallbackKey;
    }

    public void setAction(String str) {
        this.action = str;
    }

    public void setApkVersion(int i) {
        this.apkVersion = i;
    }

    public void setResponseCallbackKey(String str) {
        this.responseCallbackKey = str;
    }

    public String toJson() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("apkVersion", this.apkVersion);
            jSONObject.put("action", this.action);
            jSONObject.put("responseCallbackKey", this.responseCallbackKey);
        } catch (JSONException e) {
            StringBuilder sbM1765j = C0948f6.m1765j("ForegroundInnerHeader toJson failed: ");
            sbM1765j.append(e.getMessage());
            HMSLog.m3461e("ForegroundInnerHeader", sbM1765j.toString());
        }
        return jSONObject.toString();
    }

    public String toString() {
        StringBuilder sbM1765j = C0948f6.m1765j("apkVersion:");
        sbM1765j.append(this.apkVersion);
        sbM1765j.append(", action:");
        sbM1765j.append(this.action);
        sbM1765j.append(", responseCallbackKey:");
        sbM1765j.append(this.responseCallbackKey);
        return sbM1765j.toString();
    }
}
