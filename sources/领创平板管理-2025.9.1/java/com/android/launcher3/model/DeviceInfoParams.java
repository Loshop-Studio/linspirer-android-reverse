package com.android.launcher3.model;

import android.content.Context;
import com.android.launcher3.network.params.Params;

/* loaded from: classes.dex */
public class DeviceInfoParams extends Params {
    public String android_id;
    public String brand;
    public String deviceid;
    public String romavailablesize;
    public String romtotalsize;
    public String romversion;
    public String simserialnumber;
    public String systemversion;
    public String token;
    public String wifimacaddress;

    public DeviceInfoParams(Context context) {
        super(context);
    }

    public String getAndroid_id() {
        return this.android_id;
    }

    public String getBrand() {
        return this.brand;
    }

    public String getDeviceid() {
        return this.deviceid;
    }

    public String getRomavailablesize() {
        return this.romavailablesize;
    }

    public String getRomtotalsize() {
        return this.romtotalsize;
    }

    public String getRomversion() {
        return this.romversion;
    }

    public String getSimserialnumber() {
        return this.simserialnumber;
    }

    public String getSystemversion() {
        return this.systemversion;
    }

    public String getToken() {
        return this.token;
    }

    public String getWifimacaddress() {
        return this.wifimacaddress;
    }

    public void setAndroid_id(String str) {
        this.android_id = str;
    }

    public void setBrand(String str) {
        this.brand = str;
    }

    public void setDeviceid(String str) {
        this.deviceid = str;
    }

    public void setRomavailablesize(String str) {
        this.romavailablesize = str;
    }

    public void setRomtotalsize(String str) {
        this.romtotalsize = str;
    }

    public void setRomversion(String str) {
        this.romversion = str;
    }

    public void setSimserialnumber(String str) {
        this.simserialnumber = str;
    }

    public void setSystemversion(String str) {
        this.systemversion = str;
    }

    public void setToken(String str) {
        this.token = str;
    }

    public void setWifimacaddress(String str) {
        this.wifimacaddress = str;
    }
}
