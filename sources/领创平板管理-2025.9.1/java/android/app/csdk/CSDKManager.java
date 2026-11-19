package android.app.csdk;

import android.content.ComponentName;
import android.content.Context;
import android.graphics.Bitmap;
import java.util.List;

/* loaded from: classes.dex */
public class CSDKManager {
    public static final String TAG = "CSDKManager";
    public Context mContext;

    public CSDKManager(Context context) {
    }

    public static String getLauncherPackageName(Context context, int i) {
        return null;
    }

    public boolean AddAppBlackRule(String str) {
        return false;
    }

    public boolean AddAppWhiteRule(String str) {
        return false;
    }

    public boolean ClearAppRules() {
        return false;
    }

    public boolean ClearIpHostRules() {
        return false;
    }

    public boolean ClearRules() {
        return false;
    }

    public boolean SetEnable(boolean z) {
        return false;
    }

    public boolean WriteToFile() {
        return false;
    }

    public boolean aCLK(String str) {
        return false;
    }

    public void activateLicense(String str) {
    }

    public void addAppManageBlackList_v3(List<String> list) {
    }

    public void addAppManageWhiteList_v3(List<String> list) {
    }

    public void addAutostartPackageWhiteList(List<String> list) {
    }

    public void addInstallPackageBlackList(List<String> list) {
    }

    public void addInstallPackageWhiteList(List<String> list) {
    }

    public void addNetworkAccessBlacklist(List<String> list) {
    }

    public void addNetworkAccessWhitelist(List<String> list) {
    }

    public void addPersistentAppList(List<String> list) {
    }

    public boolean addSSID(String str, String str2, int i, boolean z) {
        return false;
    }

    public void addUninstallPackageBlackList(List<String> list) {
    }

    public void addUninstallPackageWhiteList(List<String> list) {
    }

    public void addWifiBlackList(List<String> list) {
    }

    public void addWifiWhiteList(List<String> list) {
    }

    public void allowDialer(boolean z) {
    }

    public void allowInstallNonMarketApp(String str) {
    }

    public void allowMMS(boolean z) {
    }

    public void allowScreenCaptureKey(boolean z) {
    }

    public void allowSystemAccess(String str) {
    }

    public boolean allowWifi(boolean z) {
        return false;
    }

    public Bitmap captureScreen() {
        return null;
    }

    public boolean clearCustomLauncher() {
        return false;
    }

    public void clipSettingsAppInfo(boolean z) {
    }

    public void clipSystemHotspot(boolean z) {
    }

    public void clipSystemSettings(boolean z) {
    }

    public boolean deactivateLicense(String str) {
        return false;
    }

    public void disableApplicationManage_v3(boolean z) {
    }

    public void disableAutostart(boolean z) {
    }

    public boolean disableBluetooth(boolean z) {
        return false;
    }

    public void disableBluetoothShare(boolean z) {
    }

    public boolean disableCamera(boolean z) {
        return false;
    }

    public void disableFactoryReset(boolean z) {
    }

    public boolean disableHiddenGame(boolean z) {
        return false;
    }

    public void disableIncomingCall(boolean z) {
    }

    public void disableInstallation(boolean z) {
    }

    public void disableLocation(boolean z) {
    }

    public boolean disableLockScreenNotification(boolean z) {
        return false;
    }

    public void disableMultiUser(boolean z) {
    }

    public void disableMultiUser_v3(boolean z) {
    }

    public void disableOtaUpdate(boolean z) {
    }

    public void disableOutgoingCall(boolean z) {
    }

    public void disablePowerKey(boolean z) {
    }

    public void disablePowerSaveMode(boolean z) {
    }

    public void disableSMS(boolean z) {
    }

    public void disableStatusBarNotification(boolean z) {
    }

    public boolean disableStatusBarPanel(boolean z) {
        return false;
    }

    public void disableTabletMasterAutostart(boolean z) {
    }

    public void disableUnInstallation(boolean z) {
    }

    public void disableVolumeKey(boolean z) {
    }

    public boolean disableWifi(boolean z) {
        return false;
    }

    public void disableWifiAdvanced(boolean z) {
    }

    public boolean disableWifiDirect(boolean z) {
        return false;
    }

    public boolean disallowAPN_v3(boolean z) {
        return false;
    }

    public boolean disallowAirplaneModeV3(boolean z) {
        return false;
    }

    public boolean disallowAirplaneMode_v3(boolean z) {
        return false;
    }

    public boolean disallowBluetoothShareV3(boolean z) {
        return false;
    }

    public boolean disallowBluetoothShare_v3(boolean z) {
        return false;
    }

    public boolean disallowBluetoothV3(boolean z) {
        return false;
    }

    public boolean disallowBluetooth_v3(boolean z) {
        return false;
    }

    public boolean disallowData_v3(boolean z) {
        return false;
    }

    public boolean disallowDevModeV3(boolean z) {
        return false;
    }

    public boolean disallowDevMode_v3(boolean z) {
        return enableDevMode(z);
    }

    public void disallowFactoryResetV3(boolean z) {
    }

    public void disallowFactoryReset_v3(boolean z) {
    }

    public boolean disallowLocationV3(boolean z) {
        return false;
    }

    public boolean disallowLocation_v3(boolean z) {
        return false;
    }

    public boolean disallowLockScreenMode_v3(boolean z) {
        return false;
    }

    public boolean disallowLockScreenNotificationV3(boolean z) {
        return false;
    }

    public boolean disallowLockScreenNotification_v3(boolean z) {
        return false;
    }

    public void disallowMultiUserV3(boolean z) {
    }

    public void disallowMultiWindow(boolean z) {
    }

    public void disallowPowerSaveMode(boolean z) {
    }

    public boolean disallowSIMcard_v3(boolean z) {
        return false;
    }

    public void disallowSetAlarmVolume_v3(boolean z) {
    }

    public void disallowSetBootTime_V3(boolean z) {
    }

    public void disallowSetBrightness_v3(boolean z) {
    }

    public void disallowSetMediaVolume_v3(boolean z) {
    }

    public void disallowSetNotificationVolumV3(boolean z) {
    }

    public void disallowSetNotificationVolume_v3(boolean z) {
    }

    public void disallowSetShutDownTime_V3(boolean z) {
    }

    public void disallowSetSleepTimeout_V3(boolean z) {
    }

    public void disallowSetSysDate_v3(boolean z) {
    }

    public void disallowSetSysTimeV3(boolean z) {
    }

    public void disallowSetSysTimeZone_v3(boolean z) {
    }

    public void disallowSetSysTime_v3(boolean z) {
    }

    public void disallowSwitchLauncherV3(boolean z) {
    }

    public void disallowSwitchLauncher_v3(boolean z) {
    }

    public boolean disallowUsbDebugging_v3(boolean z) {
        return false;
    }

    public boolean disallowUsbMode_v3(boolean z) {
        return false;
    }

    public boolean disallowWIFIAccessPoint_v3(boolean z) {
        return false;
    }

    public boolean disallowWifiAdvanceSettingsV3(boolean z) {
        return false;
    }

    public boolean disallowWifiDirectV3(boolean z) {
        return false;
    }

    public boolean disallowWifiDirect_v3(boolean z) {
        return false;
    }

    public boolean disallowWifiHotspot_v3(boolean z) {
        return false;
    }

    public boolean disallowWifi_v3(boolean z) {
        return false;
    }

    public boolean disallowWifiadvancesettings_v3(boolean z) {
        return false;
    }

    public boolean disallowedBluetoothtethering_v3(boolean z) {
        return false;
    }

    public boolean disallowedUSBtethering_v3(boolean z) {
        return false;
    }

    public void enableAirplaneMode(boolean z) {
    }

    public void enableAllUnkownsouresV3(boolean z) {
    }

    public boolean enableAutoBrightness(boolean z) {
        return false;
    }

    public boolean enableBluetoothV3(boolean z) {
        return false;
    }

    public boolean enableBluetooth_v3(boolean z) {
        return false;
    }

    public boolean enableBluetoothtethering_v3(boolean z) {
        return false;
    }

    public void enableCaptureScreenV3(boolean z) {
    }

    public void enableCaptureScreen_v3(boolean z) {
    }

    public boolean enableData(boolean z) {
        return false;
    }

    public boolean enableData_v3(boolean z) {
        return false;
    }

    public boolean enableDevMode(boolean z) {
        return false;
    }

    public void enableDevModeV3(boolean z) {
    }

    public void enableDevMode_v3(boolean z) {
    }

    public boolean enableLocationV3(boolean z) {
        return false;
    }

    public boolean enableLocation_v3(boolean z) {
        return false;
    }

    public boolean enableMassStorage(boolean z) {
        return false;
    }

    public void enableNetworkAccess(boolean z) {
    }

    public boolean enableSIM(boolean z) {
        return false;
    }

    public void enableSearch_v3(boolean z) {
    }

    public void enableSmartAutoRotation(boolean z) {
    }

    public boolean enableSystemAutoUpdate(boolean z) {
        return false;
    }

    public boolean enableUSBtethering_v3(boolean z) {
        return false;
    }

    public void enableUnkownSouresV3(String str, boolean z) {
    }

    public void enableUnkownsources_v3(String str, boolean z) {
    }

    public void enableUpdateIface(String str, boolean z) {
    }

    public boolean enableUsbDebugging(boolean z) {
        return false;
    }

    public boolean enableWIFIcaptive_v3(boolean z) {
        return false;
    }

    public boolean enableWifiCaptiveV3(boolean z) {
        return false;
    }

    public boolean enableWifiCaptive_v3(boolean z) {
        return false;
    }

    public boolean enableWifiHotspot_v3(boolean z) {
        return false;
    }

    public boolean enableWifi_v3(boolean z) {
        return false;
    }

    public void forgetAllConfiguredWiFi() {
    }

    public void forgetConfiguredWiFi(String str) {
    }

    public void fullScreenForever(boolean z) {
    }

    public List<String> getAppBlackRules() {
        return null;
    }

    public List<String> getAppManageBlackList_v3() {
        return null;
    }

    public List<String> getAppManageWhiteList_v3() {
        return null;
    }

    public List<String> getAppWhiteRules() {
        return null;
    }

    public List<String> getAutostartPackageWhiteList() {
        return null;
    }

    public int getBrightness() {
        return 46;
    }

    public boolean getCustomCHARGE() {
        return false;
    }

    public boolean getCustomFASTBOOT() {
        return false;
    }

    public boolean getCustomHARDRST() {
        return false;
    }

    public boolean getCustomOTG() {
        return false;
    }

    public boolean getCustomRecovery_v3() {
        return false;
    }

    public boolean getCustomSDUPDATE() {
        return false;
    }

    public boolean getCustomSplashPath() {
        return false;
    }

    public String getDeviceInfo(int i) {
        return null;
    }

    public List<String> getDisplayBlacklist_v3() {
        return null;
    }

    public int getDisplaySize() {
        return 0;
    }

    public int getFontSize() {
        return 1;
    }

    public List<String> getInstallPackageBlackList() {
        return null;
    }

    public List<String> getInstallPackageWhiteList() {
        return null;
    }

    public List<String> getNetworkAccessBlacklist() {
        return null;
    }

    public List<String> getNetworkAccessWhitelist() {
        return null;
    }

    public List<String> getPersistentAppList() {
        return null;
    }

    public int getScreenTimeOut() {
        return -1;
    }

    public String getSsid() {
        return null;
    }

    public String getTimeUsageInfo() {
        return null;
    }

    public List<String> getUninstallPackageBlackList() {
        return null;
    }

    public List<String> getUninstallPackageWhiteList() {
        return null;
    }

    public String getUsbCurrentFunctions() {
        return null;
    }

    public List<String> getWifiBlackList() {
        return null;
    }

    public List<String> getWifiWhiteList() {
        return null;
    }

    public boolean hideBackSoftKey(boolean z) {
        return false;
    }

    public boolean hideHomeSoftKey(boolean z) {
        return false;
    }

    public boolean hideMenuSoftKey(boolean z) {
        return false;
    }

    public void hideNavigationBar(boolean z) {
    }

    public boolean hideStatusBar(boolean z) {
        return false;
    }

    public boolean hideUsbMenu(boolean z) {
        return false;
    }

    public void installPackage(String str) {
    }

    public boolean isEnable() {
        return false;
    }

    public boolean isEnabledEyeMode() {
        return false;
    }

    public boolean isIncomingCallDisabled() {
        return false;
    }

    public boolean isLicenseKeyEnabled(String str) {
        return false;
    }

    public boolean isLocationOpend() {
        return false;
    }

    public boolean isNetworkRulesEnabled() {
        return false;
    }

    public boolean isOutgoingCallDisabled() {
        return false;
    }

    public boolean isPowerKeyDisable() {
        return false;
    }

    public boolean isSMSDisabled() {
        return false;
    }

    public void isSetDatetimeAllowed(boolean z) {
    }

    public boolean isUsbDebuggingEnabled() {
        return false;
    }

    public boolean isUsbOnlyCharging() {
        return false;
    }

    public boolean isVolumeKeyDisable() {
        return false;
    }

    public boolean isWifiAllowed() {
        return false;
    }

    public void killApplicationProcess(String str) {
    }

    public boolean launchFactoryReset() {
        return false;
    }

    public void openLocation(boolean z) {
    }

    public boolean rebootDevice() {
        return false;
    }

    public boolean releaseKeyControl() {
        return false;
    }

    public void removeAppManageBlackList_v3(List<String> list) {
    }

    public void removeAppManageWhiteList_v3(List<String> list) {
    }

    public void removeAutostartPackageWhiteList(List<String> list) {
    }

    public void removeDisplayBlacklist_v3(List<String> list) {
    }

    public void removeInstallPackageBlackList(List<String> list) {
    }

    public void removeInstallPackageWhiteList(List<String> list) {
    }

    public void removeNetworkAccessWhitelist(List<String> list) {
    }

    public void removePersistentAppList(List<String> list) {
    }

    public void removeUninstallPackageBlackList(List<String> list) {
    }

    public void removeUninstallPackageWhiteList(List<String> list) {
    }

    public void removeWiFiConfiguration(String str) {
    }

    public void removeWifiBlackList(List<String> list) {
    }

    public void removeWifiWhiteList(List<String> list) {
    }

    public boolean requestKeyControl(int i) {
        return false;
    }

    public boolean requestKeyControl_V3(int i, boolean z) {
        return false;
    }

    public void setAlarmVolumeValue_v3(int i) {
    }

    public void setAppOpsPermissions(boolean z) {
    }

    public void setAppWhiteWithHash(List<String> list) {
    }

    public void setBootTime(boolean z, int i, int i2, int i3, long j) {
    }

    public boolean setBrightness(int i) {
        return false;
    }

    public void setComponentEnabled(ComponentName componentName, int i, int i2) {
    }

    public void setCurrentUsbMode(int i) {
    }

    public boolean setCustomBootAnim(String str) {
        return false;
    }

    public void setCustomCHARGE(boolean z) {
    }

    public void setCustomFASTBOOT(boolean z) {
    }

    public void setCustomHARDRST(boolean z) {
    }

    public void setCustomLauncher(String str, String str2) {
    }

    public boolean setCustomLogo(String str) {
        return false;
    }

    public void setCustomOTG(boolean z) {
    }

    public void setCustomRecovery_v3(boolean z) {
    }

    public void setCustomSDUPDATE(boolean z) {
    }

    public boolean setCustomShutAnim(String str) {
        return false;
    }

    public void setCustomSplashPath(String str) {
    }

    public boolean setDefaultAPN_v3(String str) {
        return false;
    }

    public boolean setDefaultInputMethod(String str) {
        return false;
    }

    public void setDefaultUsbMode(int i) {
    }

    public boolean setDeviceOwner(String str) {
        return false;
    }

    public boolean setDisplayBlacklist(List<String> list, boolean z) {
        return false;
    }

    public void setDisplayBlacklist_v3(List<String> list) {
    }

    public void setDisplaySize(int i) {
    }

    public void setEnabledEyeMode(boolean z) {
    }

    public void setFontSize(int i) {
    }

    public boolean setHttpProxy(String str, int i, List<String> list) {
        return false;
    }

    public boolean setLauncher(String str) {
        return false;
    }

    public boolean setLocationMode(int i) {
        return false;
    }

    public boolean setLockPassword(String str) {
        throw new Error("Unresolved compilation problem: \n");
    }

    public void setLockScreenMode(int i) {
    }

    public void setMediaVolumeValue_v3(int i) {
    }

    public void setNotificationVolumeValue_v3(int i) {
    }

    public void setPackageEnabled(String str, boolean z) {
    }

    public void setRuntimePermissions(boolean z) {
    }

    public void setSafeModeDisabled(boolean z) {
    }

    public void setScreenTimeOut(int i) {
    }

    public void setShutDownTime(boolean z, int i, int i2, int i3, long j) {
    }

    public void setSleepTimeout_V3(int i) {
    }

    public void setSysDate(int i, int i2, int i3) {
    }

    public void setSysTime(long j) {
    }

    public void setTimeZone_v3(String str) {
    }

    public void setUsbOnlyCharging(boolean z) {
    }

    public void setUserRestriction(String str, boolean z) {
    }

    public void setWifiBlackList(List<String> list) {
    }

    public void setWifiWhiteList(List<String> list) {
    }

    public boolean setlockInputMethod(String str) {
        return false;
    }

    public boolean shutdownDevice() {
        return false;
    }

    public boolean sleepDevice() {
        return false;
    }

    public void uninstallPackage(String str, boolean z) {
    }

    public boolean unlockScreen() {
        return false;
    }

    public List<String> urlBlackListRead() {
        return null;
    }

    public boolean urlBlackListWrite(List<String> list) {
        return false;
    }

    public List<String> urlWhiteListRead() {
        return null;
    }

    public boolean urlWhiteListWrite(List<String> list) {
        return false;
    }

    public boolean wakeupDevice() {
        return false;
    }
}
