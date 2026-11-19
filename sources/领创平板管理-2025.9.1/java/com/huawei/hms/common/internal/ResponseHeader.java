package com.huawei.hms.common.internal;

import android.os.Parcelable;
import android.text.TextUtils;
import com.huawei.hem.CompilerOutline;
import com.huawei.hms.adapter.internal.CommonCode;
import com.huawei.hms.core.aidl.IMessageEntity;
import com.huawei.hms.core.aidl.annotation.Packed;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.utils.JsonUtil;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ResponseHeader implements IMessageEntity, ResponseErrorCode {
    public static final String TAG = "ResponseHeader";

    @Packed
    public String api_name;

    @Packed
    public String app_id = "";

    @Packed
    public int error_code;

    @Packed
    public String error_reason;
    public Parcelable parcelable;

    @Packed
    public String pkg_name;

    @Packed
    public String resolution;

    @Packed
    public String session_id;

    @Packed
    public String srv_name;

    @Packed
    public int status_code;

    @Packed
    public String transaction_id;

    public ResponseHeader() {
    }

    public boolean fromJson(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            this.status_code = JsonUtil.getIntValue(jSONObject, "status_code");
            this.error_code = JsonUtil.getIntValue(jSONObject, "error_code");
            this.error_reason = JsonUtil.getStringValue(jSONObject, "error_reason");
            this.srv_name = JsonUtil.getStringValue(jSONObject, "srv_name");
            this.api_name = JsonUtil.getStringValue(jSONObject, "api_name");
            this.app_id = JsonUtil.getStringValue(jSONObject, HiAnalyticsConstant.BI_KEY_APP_ID);
            this.pkg_name = JsonUtil.getStringValue(jSONObject, "pkg_name");
            this.session_id = JsonUtil.getStringValue(jSONObject, "session_id");
            this.transaction_id = JsonUtil.getStringValue(jSONObject, CommonCode.MapKey.TRANSACTION_ID);
            this.resolution = JsonUtil.getStringValue(jSONObject, CommonCode.MapKey.HAS_RESOLUTION);
            return true;
        } catch (JSONException e) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("fromJson failed: ");
            sbM1765j.append(e.getMessage());
            HMSLog.m3461e(TAG, sbM1765j.toString());
            return false;
        }
    }

    public String getActualAppID() {
        if (TextUtils.isEmpty(this.app_id)) {
            return "";
        }
        String[] strArrSplit = this.app_id.split("\\|");
        return strArrSplit.length == 0 ? "" : strArrSplit.length == 1 ? strArrSplit[0] : strArrSplit[1];
    }

    public String getApiName() {
        return this.api_name;
    }

    public String getAppID() {
        return this.app_id;
    }

    @Override // com.huawei.hms.common.internal.ResponseErrorCode
    public int getErrorCode() {
        return this.error_code;
    }

    @Override // com.huawei.hms.common.internal.ResponseErrorCode
    public String getErrorReason() {
        return this.error_reason;
    }

    @Override // com.huawei.hms.common.internal.ResponseErrorCode
    public Parcelable getParcelable() {
        return this.parcelable;
    }

    public String getPkgName() {
        return this.pkg_name;
    }

    @Override // com.huawei.hms.common.internal.ResponseErrorCode
    public String getResolution() {
        return this.resolution;
    }

    public String getSessionId() {
        return this.session_id;
    }

    public String getSrvName() {
        return this.srv_name;
    }

    @Override // com.huawei.hms.common.internal.ResponseErrorCode
    public int getStatusCode() {
        return this.status_code;
    }

    @Override // com.huawei.hms.common.internal.ResponseErrorCode
    public String getTransactionId() {
        return this.transaction_id;
    }

    @Override // com.huawei.hms.common.internal.ResponseErrorCode
    public boolean hasResolution() {
        return this.parcelable != null;
    }

    public boolean isSuccess() {
        return this.status_code == 0;
    }

    public void setApiName(String str) {
        this.api_name = str;
    }

    public void setAppID(String str) {
        this.app_id = str;
    }

    public void setErrorCode(int i) {
        this.error_code = i;
    }

    public void setErrorReason(String str) {
        this.error_reason = str;
    }

    public void setParcelable(Parcelable parcelable) {
        this.parcelable = parcelable;
    }

    public void setPkgName(String str) {
        this.pkg_name = str;
    }

    public void setResolution(String str) {
        this.resolution = str;
    }

    public void setSessionId(String str) {
        this.session_id = str;
    }

    public void setSrvName(String str) {
        this.srv_name = str;
    }

    public void setStatusCode(int i) {
        this.status_code = i;
    }

    public void setTransactionId(String str) {
        this.transaction_id = str;
    }

    public String toJson() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("status_code", this.status_code);
            jSONObject.put("error_code", this.error_code);
            jSONObject.put("error_reason", this.error_reason);
            jSONObject.put("srv_name", this.srv_name);
            jSONObject.put("api_name", this.api_name);
            jSONObject.put(HiAnalyticsConstant.BI_KEY_APP_ID, this.app_id);
            jSONObject.put("pkg_name", this.pkg_name);
            if (!TextUtils.isEmpty(this.session_id)) {
                jSONObject.put("session_id", this.session_id);
            }
            jSONObject.put(CommonCode.MapKey.TRANSACTION_ID, this.transaction_id);
            jSONObject.put(CommonCode.MapKey.HAS_RESOLUTION, this.resolution);
        } catch (JSONException e) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("toJson failed: ");
            sbM1765j.append(e.getMessage());
            HMSLog.m3461e(TAG, sbM1765j.toString());
        }
        return jSONObject.toString();
    }

    public String toString() {
        StringBuilder sbM1765j = CompilerOutline.m1765j("status_code:");
        sbM1765j.append(this.status_code);
        sbM1765j.append(", error_code");
        sbM1765j.append(this.error_code);
        sbM1765j.append(", api_name:");
        sbM1765j.append(this.api_name);
        sbM1765j.append(", app_id:");
        sbM1765j.append(this.app_id);
        sbM1765j.append(", pkg_name:");
        sbM1765j.append(this.pkg_name);
        sbM1765j.append(", session_id:*, transaction_id:");
        sbM1765j.append(this.transaction_id);
        sbM1765j.append(", resolution:");
        sbM1765j.append(this.resolution);
        return sbM1765j.toString();
    }

    public ResponseHeader(int i, int i2, String str) {
        this.status_code = i;
        this.error_code = i2;
        this.error_reason = str;
    }
}
