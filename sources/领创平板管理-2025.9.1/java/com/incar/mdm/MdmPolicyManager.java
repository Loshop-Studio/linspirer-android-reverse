package com.incar.mdm;

import android.annotation.SuppressLint;
import android.content.Context;
import android.hardware.ApiManager;
import java.util.List;

/* loaded from: classes.dex */
public class MdmPolicyManager {
    public static final String API = "api";
    public final ApiManager mApiManager;
    public boolean sMdmEnableFlag = true;

    @SuppressLint({"WrongConstant"})
    public MdmPolicyManager(Context context) {
        this.mApiManager = (ApiManager) context.getSystemService(API);
    }

    public int clearAppInstallWhiteList() {
        ApiManager apiManager = this.mApiManager;
        if (apiManager == null) {
            return -1;
        }
        return apiManager.clearAppInstallWhiteList();
    }

    public String getApiVersion() {
        ApiManager apiManager = this.mApiManager;
        return apiManager == null ? "" : apiManager.getApiVersion();
    }

    public List<String> getAppInstallWhiteList() {
        ApiManager apiManager = this.mApiManager;
        if (apiManager == null) {
            return null;
        }
        return apiManager.getAppInstallWhiteList();
    }

    public String getDDRSize() {
        ApiManager apiManager = this.mApiManager;
        return apiManager == null ? "" : apiManager.getDDRSize();
    }

    public String getFlashSize() {
        ApiManager apiManager = this.mApiManager;
        return apiManager == null ? "" : apiManager.getFlashSize();
    }

    public String getGpsLocation() {
        ApiManager apiManager = this.mApiManager;
        return apiManager == null ? "" : apiManager.getGpsLocation();
    }

    public String getManufacturer() {
        ApiManager apiManager = this.mApiManager;
        return apiManager == null ? "" : apiManager.getManufacturer();
    }

    public String getModel() {
        ApiManager apiManager = this.mApiManager;
        return apiManager == null ? "" : apiManager.getModel();
    }

    public String getOsVersion() {
        ApiManager apiManager = this.mApiManager;
        return apiManager == null ? "" : apiManager.getOsVersion();
    }

    public String getPhoneImei(int i) {
        ApiManager apiManager = this.mApiManager;
        return apiManager == null ? "" : apiManager.getPhoneImei(i);
    }

    public String getSdkVersion() {
        ApiManager apiManager = this.mApiManager;
        return apiManager == null ? "" : apiManager.getSdkVersion();
    }

    public String getSerialNumber() {
        ApiManager apiManager = this.mApiManager;
        return apiManager == null ? "" : apiManager.getSerialNumber();
    }

    public String getWifiConnectedSSID() {
        ApiManager apiManager = this.mApiManager;
        return apiManager == null ? "" : apiManager.getWifiConnectedSSID();
    }

    public String getWifiMacAddress() {
        ApiManager apiManager = this.mApiManager;
        return apiManager == null ? "" : apiManager.getWifiMacAddress();
    }

    public boolean isBluetoothEnable() {
        ApiManager apiManager = this.mApiManager;
        if (apiManager == null) {
            return false;
        }
        return apiManager.isBluetoothEnable();
    }

    public int setAdbEnable(boolean z) {
        ApiManager apiManager = this.mApiManager;
        if (apiManager == null) {
            return -1;
        }
        return apiManager.setAdbEnable(z);
    }

    public int setAppFreeze(String str) {
        ApiManager apiManager = this.mApiManager;
        if (apiManager == null) {
            return -1;
        }
        return apiManager.setAppFreeze(str);
    }

    public int setAppInstallWhiteList(List<String> list) {
        ApiManager apiManager = this.mApiManager;
        if (apiManager == null) {
            return -1;
        }
        return apiManager.setAppInstallWhiteList(list);
    }

    public int setAppUnFreeze(String str) {
        ApiManager apiManager = this.mApiManager;
        if (apiManager == null) {
            return -1;
        }
        return apiManager.setAppUnFreeze(str);
    }

    public int setBackButtonEnable(boolean z) {
        ApiManager apiManager = this.mApiManager;
        if (apiManager == null) {
            return -1;
        }
        return apiManager.setBackButtonEnable(z);
    }

    public int setBluetoothEnable(boolean z) {
        ApiManager apiManager = this.mApiManager;
        if (apiManager == null) {
            return -1;
        }
        return apiManager.setBluetoothEnable(z);
    }

    public int setFactoryRest() {
        ApiManager apiManager = this.mApiManager;
        if (apiManager == null) {
            return -1;
        }
        return apiManager.setFactoryRest();
    }

    public int setHomeButtonEnable(boolean z) {
        ApiManager apiManager = this.mApiManager;
        if (apiManager == null) {
            return -1;
        }
        return apiManager.setHomeButtonEnable(z);
    }

    public int setMtpEnable(boolean z) {
        ApiManager apiManager = this.mApiManager;
        if (apiManager == null) {
            return -1;
        }
        return apiManager.setMtpEnable(z);
    }

    public int setNetworkAccessRule(String str) {
        ApiManager apiManager = this.mApiManager;
        if (apiManager == null) {
            return -1;
        }
        return apiManager.setNetworkAccessRule(str);
    }

    public int setPowerKeyEnable(boolean z) {
        ApiManager apiManager = this.mApiManager;
        if (apiManager == null) {
            return -1;
        }
        return apiManager.setPowerKeyEnable(z);
    }

    public int setRecentButtonEnable(boolean z) {
        ApiManager apiManager = this.mApiManager;
        if (apiManager == null) {
            return -1;
        }
        return apiManager.setRecentButtonEnable(z);
    }

    public int setSdcardStorageEnable(boolean z) {
        ApiManager apiManager = this.mApiManager;
        if (apiManager == null) {
            return -1;
        }
        return apiManager.setSdcardStorageEnable(z);
    }

    public int setSysTime(long j) {
        ApiManager apiManager = this.mApiManager;
        if (apiManager == null) {
            return -1;
        }
        return apiManager.setSysTime(j);
    }

    public int setUsbStorageEnable(boolean z) {
        ApiManager apiManager = this.mApiManager;
        if (apiManager == null) {
            return -1;
        }
        return apiManager.setUsbStorageEnable(z);
    }

    public int setVolumeDownKeyEnable(boolean z) {
        ApiManager apiManager = this.mApiManager;
        if (apiManager == null) {
            return -1;
        }
        return apiManager.setVolumeDownKeyEnable(z);
    }

    public int setVolumeUpKeyEnable(boolean z) {
        ApiManager apiManager = this.mApiManager;
        if (apiManager == null) {
            return -1;
        }
        return apiManager.setVolumeUpKeyEnable(z);
    }

    public int silentInstall(String str) {
        ApiManager apiManager = this.mApiManager;
        if (apiManager == null) {
            return -1;
        }
        return apiManager.silentInstall(str, false);
    }

    public int silentUninstall(String str) {
        ApiManager apiManager = this.mApiManager;
        if (apiManager == null) {
            return -1;
        }
        return apiManager.silentUninstall(str, false);
    }
}
