package com.Lcmdm.mdm;

import android.content.Context;
import java.util.List;

/* loaded from: classes.dex */
public interface IMdmInterface {
    boolean addAppInstallWhiteList(List<String> list);

    boolean addAppUninstallBlackList(Context context, List<String> list);

    boolean addPersistentApp(List<String> list);

    boolean allowAppDisplayOverOtherAppsPermission(String str);

    boolean allowAppModifySystemSettingsPermission(String str);

    boolean allowAppPermission(String str);

    boolean clearAppInstallWhiteList();

    boolean clearLockScreen();

    void clearNetworkWhiteList();

    void clearUidAppList();

    boolean delAppInstallWhiteList(List<String> list);

    boolean delAppUninstallBlackList(Context context, List<String> list);

    boolean forceStopApp(String str);

    List<String> getAppInstallWhiteList();

    List<String> getAppRulePackageList();

    List<String> getAppUnInstallBlackList(Context context);

    List<String> getForbidenAppList();

    List<String> getKeepAliveList();

    String getMAC();

    String getSN();

    List<String> getSuperWhiteListForHwSystemManger();

    List<String> getWebWhiteList(int i);

    void hideBackButton(boolean z);

    void hideHomeButton(boolean z);

    void hideTaskButton(boolean z);

    boolean isBluetoothDataTransferDisable();

    boolean isBluetoothDisabled();

    boolean isSMSDisabled();

    boolean isUSBDataDisabled();

    boolean isUSBOtgDisabled();

    boolean isVoiceIncomingDisabled();

    boolean isVoiceOutgoingDisabled();

    boolean removePersistentApp(List<String> list);

    boolean removeSuperWhiteListForHwSystemManger(List<String> list);

    void removeUidAppList(List<String> list);

    void resetFactory();

    boolean setAppDisable(List<String> list);

    boolean setAppEnable(List<String> list);

    boolean setBackButtonDisabled(boolean z);

    void setBluetoothDataTransferDisable(boolean z);

    boolean setBluetoothDisable();

    boolean setBluetoothEnable();

    boolean setCameraDisable();

    boolean setCameraEnable();

    boolean setCustomSettingsMenu(boolean z);

    boolean setDataDisabled(boolean z);

    boolean setDeviceShutDown();

    boolean setExitMdm();

    boolean setGpsDisable();

    boolean setGpsEnable();

    boolean setHomeButtonDisabled(boolean z);

    boolean setKeepAliveList(List<String> list);

    boolean setLongPowerKeyDisable();

    boolean setLongPowerKeyEnable();

    boolean setNetFirwall(boolean z);

    boolean setNetworkWhiteList(List<String> list, int i);

    boolean setNfcDisabled(boolean z);

    boolean setPowerKeyDisable();

    boolean setPowerKeyEnable();

    boolean setSDOTGDisable();

    boolean setSDOTGEnable();

    boolean setSMSDisabled(boolean z);

    boolean setSdcardDisabled(boolean z);

    boolean setSuperWhiteListForHwSystemManger(List<String> list);

    boolean setSysTime(long j);

    boolean setTaskButtonDisabled(boolean z);

    void setUSBDataDisabled(boolean z);

    boolean setUSBDisabled(boolean z);

    void setUSBOtgDisabled(boolean z);

    boolean setUidToAppList(List<String> list);

    boolean setVoiceDisabled(boolean z);

    boolean setVoiceIncomingDisabled(boolean z);

    boolean setVoiceOutgoingDisabled(boolean z);

    boolean setVolAddDisable();

    boolean setVolAddEnable();

    boolean setVolSubDisable();

    boolean setVolSubEnable();

    boolean setWifiAdvanceDisable();

    boolean setWifiAdvanceEnable();

    boolean silentInstall(String str, boolean z);

    boolean silentScreenShot(String str);

    boolean silentUninstall(String str);
}
