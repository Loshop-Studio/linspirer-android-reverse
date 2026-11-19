package com.huawei.hms.common.api;

import com.huawei.hem.CompilerOutline;
import com.huawei.hms.api.Api;
import com.huawei.hms.api.ConnectionResult;
import com.huawei.hms.api.HuaweiApiAvailability;
import com.huawei.hms.common.HuaweiApi;
import com.huawei.hms.support.log.HMSLog;
import com.taobao.agoo.p074a.p075a.AgooCommandFields;

/* loaded from: classes.dex */
public class AvailabilityException extends Exception {
    public String TAG = "AvailabilityException";
    public String message = null;

    private ConnectionResult generateConnectionResult(int i) {
        CompilerOutline.m1777v("The availability check result is: ", i, this.TAG);
        setMessage(i);
        return new ConnectionResult(i);
    }

    private void setMessage(int i) {
        if (i == 21) {
            this.message = "ANDROID_VERSION_UNSUPPORT";
            return;
        }
        if (i == 0) {
            this.message = AgooCommandFields.JSON_SUCCESS;
            return;
        }
        if (i == 1) {
            this.message = "SERVICE_MISSING";
            return;
        }
        if (i == 2) {
            this.message = "SERVICE_VERSION_UPDATE_REQUIRED";
        } else if (i != 3) {
            this.message = "INTERNAL_ERROR";
        } else {
            this.message = "SERVICE_DISABLED";
        }
    }

    public ConnectionResult getConnectionResult(HuaweiApiCallable huaweiApiCallable) {
        if (huaweiApiCallable == null || huaweiApiCallable.getHuaweiApi() == null) {
            HMSLog.m3461e(this.TAG, "The huaweiApi is null.");
            return generateConnectionResult(8);
        }
        return generateConnectionResult(HuaweiApiAvailability.getInstance().isHuaweiMobileServicesAvailable(huaweiApiCallable.getHuaweiApi().getContext(), 30000000));
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return this.message;
    }

    public ConnectionResult getConnectionResult(HuaweiApi<? extends Api.ApiOptions> huaweiApi) {
        if (huaweiApi == null) {
            HMSLog.m3461e(this.TAG, "The huaweiApi is null.");
            return generateConnectionResult(8);
        }
        return generateConnectionResult(HuaweiApiAvailability.getInstance().isHuaweiMobileServicesAvailable(huaweiApi.getContext(), 30000000));
    }
}
