package com.huawei.android.app.admin;

import android.content.ComponentName;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class HwDevicePolicyManager {
    public static final String TAG = "HwDevicePolicyManager";
    public Context mContext;

    public HwDevicePolicyManager(Context context) {
        this.mContext = null;
        this.mContext = context;
    }

    public void addAllowNotificationApps(ComponentName componentName, List<String> list) {
    }

    public void addAllowRunningApp(ComponentName componentName, List<String> list) {
    }

    public String addApn(ComponentName componentName, Map map) {
        return null;
    }

    public void addAppNetworkFilter(ComponentName componentName, String str) {
    }

    public void addBrowserWhiteList(ComponentName componentName, String str) {
    }

    public void addDisallowedRunningApp(ComponentName componentName, List<String> list) {
    }

    public void addDisallowedUninstallPackages(ComponentName componentName, List<String> list) {
    }

    public void addIPWhiteList(ComponentName componentName, List<String> list) {
    }

    public void addInstallPackages(ComponentName componentName, List<String> list) {
    }

    public void addNetworkAccessAppWhiteList(ComponentName componentName, List<String> list) {
    }

    public void addNetworkAccessWhiteList(ComponentName componentName, List<String> list) {
    }

    public void addPersistentApp(ComponentName componentName, List<String> list) {
    }

    public Bitmap captureScreen(ComponentName componentName) {
        return null;
    }

    public void cleanAppNetworkFilter(ComponentName componentName) {
    }

    public void cleanBrowserWhiteList(ComponentName componentName) {
    }

    public void cleanForbidCancelDeviceAdminWhitelist(ComponentName componentName) {
    }

    public void cleanForbidKillAppWhitelist(ComponentName componentName) {
    }

    public void cleanLockScreen(ComponentName componentName) {
    }

    public void cleanNetFilter(ComponentName componentName) {
    }

    public void cleanNetworkAccessAppWhiteList(ComponentName componentName) {
    }

    public void cleanNetworkAccessWhiteList(ComponentName componentName) {
    }

    public void clearCustomLauncher(ComponentName componentName) {
    }

    public void clearPackageData(ComponentName componentName, String str) {
    }

    public void clearTopSingleApplication(ComponentName componentName) {
    }

    public void configExchangeMailProvider(ComponentName componentName, Bundle bundle) {
    }

    public boolean deleteApn(ComponentName componentName, String str) {
        return false;
    }

    public void disInternetPermission(ComponentName componentName, String str, boolean z) {
    }

    public void disInternetPermissionByMobile(ComponentName componentName, String str, boolean z) {
    }

    public void disInternetPermissionByWifi(ComponentName componentName, String str, boolean z) {
    }

    public void disableInstallSource(ComponentName componentName, List<String> list) {
    }

    public void enableInstallPackage(ComponentName componentName) {
    }

    public List<String> getAccessibilityWhiteList(ComponentName componentName) {
        return null;
    }

    public List<String> getAllowNotificationApps(ComponentName componentName) {
        return null;
    }

    public List<String> getAllowRunningApp(ComponentName componentName) {
        return null;
    }

    public Map getApnParameter(ComponentName componentName, String str) {
        return null;
    }

    public List<String> getBluetoothMacAddressWhiteList(ComponentName componentName) {
        return null;
    }

    public List<String> getBluetoothPairingWhitelist(ComponentName componentName) {
        return null;
    }

    public int getControlMode(ComponentName componentName) {
        return 0;
    }

    public boolean getCustomSettings(ComponentName componentName) {
        return false;
    }

    public List<String> getDialerNumWhiteList(ComponentName componentName) {
        return null;
    }

    public List<String> getDisallowedRunningApp(ComponentName componentName) {
        return null;
    }

    public List<String> getDisallowedUninstallPackageList(ComponentName componentName) {
        return null;
    }

    public List<String> getForbidCancelDeviceAdminWhitelist(ComponentName componentName) {
        return null;
    }

    public List<String> getForbidDeactivateDeviceAdminPackageList(ComponentName componentName) {
        return null;
    }

    public List<String> getForbidKillAppWhitelist(ComponentName componentName) {
        return null;
    }

    public boolean getGpsStatus(ComponentName componentName) {
        return false;
    }

    public List<String> getIPWhiteList(ComponentName componentName) {
        return null;
    }

    public List<String> getInstallPackageBlackList(ComponentName componentName) {
        return null;
    }

    public List<String> getInstallPackageSourceWhiteList(ComponentName componentName) {
        return null;
    }

    public List<String> getInstallPackageWhiteList(ComponentName componentName) {
        return null;
    }

    public Bundle getMailProviderForDomain(ComponentName componentName, String str) {
        return null;
    }

    public List<String> getMobileBlockList(ComponentName componentName) {
        return null;
    }

    public String getNetFilter(ComponentName componentName, String str) {
        return null;
    }

    public List<String> getNetworkAccessAppWhiteList(ComponentName componentName) {
        return null;
    }

    public List<String> getNetworkAccessWhiteList(ComponentName componentName) {
        return null;
    }

    public List<String> getPersistentApp(ComponentName componentName) {
        return null;
    }

    public List<String> getPfwWhitePackageList(ComponentName componentName) {
        return null;
    }

    public List<String> getWiFiConnectWhiteList(ComponentName componentName) {
        return null;
    }

    public List<String> getWifiBlockList(ComponentName componentName) {
        return null;
    }

    public String get_NetFilterString(ComponentName componentName) {
        return null;
    }

    public void hangupCalling(ComponentName componentName) {
    }

    public void installApk(ComponentName componentName, String str) {
    }

    public void installFirmware(ComponentName componentName) {
    }

    public void installPackage(ComponentName componentName, String str) {
    }

    public boolean isAdbDisabled(ComponentName componentName) {
        return false;
    }

    public boolean isAppInstallDisabled(ComponentName componentName) {
        return false;
    }

    public boolean isBackButtonDisabled(ComponentName componentName) {
        return false;
    }

    public boolean isBackgroundProcessLimitDisabled(ComponentName componentName) {
        return false;
    }

    public boolean isBluetoothDisabled(ComponentName componentName) {
        return false;
    }

    public boolean isBluetoothSendFileDisabled(ComponentName componentName) {
        return false;
    }

    public boolean isBluetoothTransferFileDisabled(ComponentName componentName) {
        return false;
    }

    public boolean isBootLoaderDisabled(ComponentName componentName) {
        return false;
    }

    public boolean isCameraDisabled(ComponentName componentName) {
        return false;
    }

    public boolean isDataConnectivityDisabled(ComponentName componentName) {
        return false;
    }

    public boolean isDevelopmentSettingsDisabled(ComponentName componentName) {
        return false;
    }

    public boolean isDisallowedCloseGps(ComponentName componentName) {
        return false;
    }

    public boolean isDisallowedRunningApp(ComponentName componentName, String str) {
        return false;
    }

    public boolean isExpandDeviceReadOnlyMode(ComponentName componentName) {
        return false;
    }

    public boolean isExternalStorageDisabled(ComponentName componentName) {
        return false;
    }

    public boolean isEyesProtectionDisabled(ComponentName componentName) {
        return false;
    }

    public boolean isFactoryResetDisabled(ComponentName componentName) {
        return false;
    }

    public boolean isFastbootDisabled(ComponentName componentName) {
        return false;
    }

    public boolean isGpsDisabled(ComponentName componentName) {
        return false;
    }

    public boolean isHomeButtonDisabled(ComponentName componentName) {
        return false;
    }

    public boolean isInstallSourceDisabled(ComponentName componentName) {
        return false;
    }

    public boolean isLockScreenDisabled(ComponentName componentName) {
        return false;
    }

    public boolean isMtpDisabled(ComponentName componentName) {
        return false;
    }

    public boolean isNFCDisabled(ComponentName componentName) {
        return false;
    }

    public boolean isNavigationbarDisable(ComponentName componentName) {
        return false;
    }

    public boolean isNotificationBlockForApp(ComponentName componentName, String str) {
        return false;
    }

    public boolean isNotificationDisabled(ComponentName componentName) {
        return false;
    }

    public boolean isOTGUSBDiskDisabled(ComponentName componentName) {
        return false;
    }

    public boolean isOpenSourceLicencesDisabled(ComponentName componentName) {
        return false;
    }

    public boolean isOrdinaryPowerSavingMode(ComponentName componentName) {
        return false;
    }

    public boolean isPersistentApp(ComponentName componentName, String str) {
        return false;
    }

    public boolean isPirvacyProtectionDisabled(ComponentName componentName) {
        return false;
    }

    public boolean isPowerKeyDisabled(ComponentName componentName) {
        return false;
    }

    public boolean isRecentTaskButtonDisabled(ComponentName componentName) {
        return false;
    }

    public boolean isRooted(ComponentName componentName) {
        return false;
    }

    public boolean isSMSDisabled(ComponentName componentName) {
        return false;
    }

    public boolean isSafeModeDisabled(ComponentName componentName) {
        return false;
    }

    public boolean isScreenOffDisabled(ComponentName componentName) {
        return false;
    }

    public boolean isSelectDebugAppDisabled(ComponentName componentName) {
        return false;
    }

    public boolean isShareInterfaceDisabled(ComponentName componentName) {
        return false;
    }

    public boolean isSmsNotificationVibrateDisabled(ComponentName componentName) {
        return false;
    }

    public boolean isStatusBarExpandPanelDisabled(ComponentName componentName) {
        return false;
    }

    public boolean isStatusbarDisabled(ComponentName componentName) {
        return false;
    }

    public boolean isTelephonyDisabled(ComponentName componentName) {
        return false;
    }

    public boolean isTimeModifyDisabled(ComponentName componentName) {
        return false;
    }

    public boolean isTopSingleApplicationMode(ComponentName componentName) {
        return false;
    }

    public boolean isUSBDataDisabled(ComponentName componentName) {
        return false;
    }

    public boolean isUSBShareDisabled(ComponentName componentName) {
        return false;
    }

    public boolean isUnknownSourceDisabled(ComponentName componentName) {
        return false;
    }

    public boolean isUpdateSettingsDisabled(ComponentName componentName) {
        return false;
    }

    public boolean isUserTimeoutBroadcastDisabled(ComponentName componentName) {
        return false;
    }

    public boolean isVoiceDisabled(ComponentName componentName) {
        return false;
    }

    public boolean isVolumeKeyDisabled(ComponentName componentName) {
        return false;
    }

    public boolean isWifiAdvancedMenuHidden(ComponentName componentName) {
        return false;
    }

    public boolean isWifiApDisabled(ComponentName componentName) {
        return false;
    }

    public boolean isWifiDisabled(ComponentName componentName) {
        return false;
    }

    public void killApplicationProcess(ComponentName componentName, String str) {
    }

    public void openMobileData(ComponentName componentName, boolean z) {
    }

    public List<String> queryApn(ComponentName componentName, Map map) {
        return null;
    }

    public void rebootDevice(ComponentName componentName) {
    }

    public void removeAccessibilityWhiteList(ComponentName componentName, List<String> list) {
    }

    public void removeAllowNotificationApps(ComponentName componentName, List<String> list) {
    }

    public void removeAllowRunningApp(ComponentName componentName, List<String> list) {
    }

    public void removeDialerNumWhiteList(ComponentName componentName, List<String> list) {
    }

    public void removeDisallowedRunningApp(ComponentName componentName, List<String> list) {
    }

    public void removeDisallowedUninstallPackages(ComponentName componentName, List<String> list) {
    }

    public void removeForbidDeactivateDeviceAdminPackageList(ComponentName componentName, List<String> list) {
    }

    public void removeIPWhiteList(ComponentName componentName, List<String> list) {
    }

    public void removeInstallPackageBlackList(ComponentName componentName, List<String> list) {
    }

    public void removeInstallPackages(ComponentName componentName, List<String> list) {
    }

    public void removePersistentApp(ComponentName componentName, List<String> list) {
    }

    public void removePfwWhitePackageList(ComponentName componentName, List<String> list) {
    }

    public void removeWiFiConnectWhiteList(ComponentName componentName, List<String> list) {
    }

    public void run_NetFilter_Iptables(ComponentName componentName, String str) {
    }

    public void sendKeyDownEvent(ComponentName componentName, int i) {
    }

    public void setAccessibilityWhiteList(ComponentName componentName, List<String> list) {
    }

    public void setAdbDisabled(ComponentName componentName, boolean z) {
    }

    public void setAppBlockByMobile(ComponentName componentName, String str, boolean z) {
    }

    public void setAppBlockByWifi(ComponentName componentName, String str, boolean z) {
    }

    public void setAppInstallDisabled(ComponentName componentName, boolean z) {
    }

    public void setAppWhite(ComponentName componentName, boolean z, List list) {
    }

    public void setApplicationDisabled(ComponentName componentName, String str, boolean z) {
    }

    public void setAutoRotationEnabled(ComponentName componentName, boolean z) {
    }

    public void setBackButtonDisabled(ComponentName componentName, boolean z) {
    }

    public void setBackgroundProcessLimitDisabled(ComponentName componentName, boolean z) {
    }

    public void setBluetoothDisabled(ComponentName componentName, boolean z) {
    }

    public void setBluetoothMacAddressWhiteList(ComponentName componentName, List<String> list) {
    }

    public void setBluetoothPairingWhitelist(ComponentName componentName, List<String> list) {
    }

    public void setBluetoothSendFileDisabled(ComponentName componentName, boolean z) {
    }

    public void setBluetoothTransferFileDisabled(ComponentName componentName, boolean z) {
    }

    public void setBootLoaderDisabled(ComponentName componentName, boolean z) {
    }

    public void setCameraDisabled(ComponentName componentName, boolean z) {
    }

    public void setControlMode(ComponentName componentName, int i) {
    }

    public void setCustomLauncher(ComponentName componentName, String str, String str2) {
    }

    public void setCustomSettings(ComponentName componentName, boolean z) {
    }

    public void setDataConnectivityDisabled(ComponentName componentName, boolean z) {
    }

    public void setDevelopmentSettingsDisabled(ComponentName componentName, boolean z) {
    }

    public void setDeviceAdminActivate(ComponentName componentName, String str, boolean z) {
    }

    public void setDialerNumWhiteList(ComponentName componentName, List<String> list) {
    }

    public void setDisallowedCloseGps(ComponentName componentName, boolean z) {
    }

    public void setDisallowedUninstallPackages(ComponentName componentName, List<String> list) {
    }

    public void setExpandDeviceReadOnlyMode(ComponentName componentName, boolean z) {
    }

    public void setExternalStorageDisabled(ComponentName componentName, boolean z) {
    }

    public void setEyesProtectionDisabled(ComponentName componentName, boolean z) {
    }

    public void setFactoryReset(ComponentName componentName) {
    }

    public void setFactoryReset(ComponentName componentName, boolean z) {
    }

    public void setFactoryResetDisabled(ComponentName componentName, boolean z) {
    }

    public void setFastbootDisabled(ComponentName componentName, boolean z) {
    }

    public void setForbidCancelDeviceAdminWhitelist(ComponentName componentName, List<String> list) {
    }

    public void setForbidDeactivateDeviceAdminPackageList(ComponentName componentName, List<String> list) {
    }

    public void setForbidKillAppWhitelist(ComponentName componentName, List<String> list) {
    }

    public void setGpsDisabled(ComponentName componentName, boolean z) {
    }

    public void setGpsStatus(ComponentName componentName, boolean z) {
    }

    public void setHomeButtonDisabled(ComponentName componentName, boolean z) {
    }

    public void setIPWhiteList(ComponentName componentName, List<String> list) {
    }

    public void setInstallPackageBlackList(ComponentName componentName, List<String> list) {
    }

    public void setInstallPackages(ComponentName componentName, List<String> list) {
    }

    public void setLockScreenDisabled(ComponentName componentName, boolean z) {
    }

    public void setMtpDisabled(ComponentName componentName, boolean z) {
    }

    public void setNFCDisabled(ComponentName componentName, boolean z) {
    }

    public void setNavigationbarDisable(ComponentName componentName, boolean z) {
    }

    public void setNotificationBlockForApp(ComponentName componentName, String str, boolean z) {
    }

    public void setNotificationDisabled(ComponentName componentName, boolean z) {
    }

    public void setOTGUSBDiskDisabled(ComponentName componentName, boolean z) {
    }

    public void setOpenSourceLicencesDisabled(ComponentName componentName, boolean z) {
    }

    public void setOrdinaryPowerSavingMode(ComponentName componentName, boolean z) {
    }

    public void setPfwWhitePackageList(ComponentName componentName, List<String> list) {
    }

    public void setPirvacyProtectionDisabled(ComponentName componentName, boolean z) {
    }

    public void setPowerKeyDisabled(ComponentName componentName, boolean z) {
    }

    public boolean setPreferApn(ComponentName componentName, String str) {
        return false;
    }

    public void setRecentTaskButtonDisabled(ComponentName componentName, boolean z) {
    }

    public void setSMSDisabled(ComponentName componentName, boolean z) {
    }

    public void setSafeModeDisabled(ComponentName componentName, boolean z) {
    }

    public void setScreenOffDisabled(ComponentName componentName, boolean z) {
    }

    public void setScreenState(ComponentName componentName, boolean z) {
    }

    public void setSelectDebugAppDisabled(ComponentName componentName, boolean z) {
    }

    public void setShareInterfaceDisabled(ComponentName componentName, boolean z) {
    }

    public void setSingleAppMode(ComponentName componentName, boolean z) {
    }

    public void setSmsNotificationVibrateDisabled(ComponentName componentName, boolean z) {
    }

    public void setStatusBarExpandPanelDisabled(ComponentName componentName, boolean z) {
    }

    public void setStatusbarDisabled(ComponentName componentName, boolean z) {
    }

    public void setSysTime(ComponentName componentName, long j) {
    }

    public void setTelephonyDisabled(ComponentName componentName, boolean z) {
    }

    public void setTimeModifyDisabled(ComponentName componentName, boolean z) {
    }

    public void setTopSingleApplication(ComponentName componentName, String str, String str2) {
    }

    public void setUSBDataDisabled(ComponentName componentName, boolean z) {
    }

    public void setUSBShareDisabled(ComponentName componentName, boolean z) {
    }

    public void setUnknownSourceDisabled(ComponentName componentName, boolean z) {
    }

    public void setUpdateSettingsDisabled(ComponentName componentName, boolean z) {
    }

    public void setUserTimeoutBroadcastDisabled(ComponentName componentName, boolean z) {
    }

    public void setVoiceDisabled(ComponentName componentName, boolean z) {
    }

    public void setVolumeKeyDisabled(ComponentName componentName, boolean z) {
    }

    public void setWiFiConnectWhiteList(ComponentName componentName, List<String> list) {
    }

    public void setWifiAdvancedMenuHidden(ComponentName componentName, boolean z) {
    }

    public void setWifiApDisabled(ComponentName componentName, boolean z) {
    }

    public void setWifiDisabled(ComponentName componentName, boolean z) {
    }

    public void shutdownDevice(ComponentName componentName) {
    }

    public void unInstallApk(ComponentName componentName, String str) {
    }

    public void uninstallPackage(ComponentName componentName, String str, boolean z) {
    }

    public boolean updateApn(ComponentName componentName, Map map, String str) {
        return false;
    }

    public HwDevicePolicyManager() {
        this.mContext = null;
    }
}
