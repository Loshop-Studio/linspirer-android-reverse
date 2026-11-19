package com.android.launcher3.network.params;

import android.content.Context;

/* loaded from: classes.dex */
public class LicenseParmas extends Params {
    public String deviceid;
    public String devicesn;
    public String licenseserial;

    public LicenseParmas(Context context) {
        super(context);
    }

    public String getDeviceid() {
        return this.deviceid;
    }

    public String getDevicesn() {
        return this.devicesn;
    }

    public String getLicenseserial() {
        return this.licenseserial;
    }

    public void setDeviceid(String str) {
        this.deviceid = str;
    }

    public void setDevicesn(String str) {
        this.devicesn = str;
    }

    public void setLicenseserial(String str) {
        this.licenseserial = str;
    }
}
