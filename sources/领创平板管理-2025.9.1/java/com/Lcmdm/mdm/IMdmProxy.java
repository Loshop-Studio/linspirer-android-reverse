package com.Lcmdm.mdm;

import android.content.Context;
import java.util.List;

/* loaded from: classes.dex */
public class IMdmProxy implements IMdmInterface {
    public static IMdmInterface basemdm;
    public static IMdmProxy mInstance;

    public static void init(IMdmInterface iMdmInterface) {
        basemdm = iMdmInterface;
    }

    public static IMdmProxy obtain() {
        if (mInstance == null) {
            synchronized (IMdmProxy.class) {
                if (mInstance == null) {
                    mInstance = new IMdmProxy();
                }
            }
        }
        return mInstance;
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean addAppInstallWhiteList(List<String> list) {
        return basemdm.addAppInstallWhiteList(list);
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean addAppUninstallBlackList(Context context, List<String> list) {
        return basemdm.addAppUninstallBlackList(context, list);
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean addPersistentApp(List<String> list) {
        return basemdm.addPersistentApp(list);
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean allowAppDisplayOverOtherAppsPermission(String str) {
        return basemdm.allowAppDisplayOverOtherAppsPermission(str);
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean allowAppModifySystemSettingsPermission(String str) {
        return basemdm.allowAppModifySystemSettingsPermission(str);
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean allowAppPermission(String str) {
        return basemdm.allowAppPermission(str);
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean clearAppInstallWhiteList() {
        return basemdm.clearAppInstallWhiteList();
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean clearLockScreen() {
        return basemdm.clearLockScreen();
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public void clearNetworkWhiteList() {
        basemdm.clearNetworkWhiteList();
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public void clearUidAppList() {
        basemdm.clearUidAppList();
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean delAppInstallWhiteList(List<String> list) {
        return basemdm.delAppInstallWhiteList(list);
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean delAppUninstallBlackList(Context context, List<String> list) {
        return basemdm.delAppUninstallBlackList(context, list);
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean forceStopApp(String str) {
        return basemdm.forceStopApp(str);
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public List<String> getAppInstallWhiteList() {
        return basemdm.getAppInstallWhiteList();
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public List<String> getAppRulePackageList() {
        return basemdm.getAppRulePackageList();
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public List<String> getAppUnInstallBlackList(Context context) {
        return basemdm.getAppUnInstallBlackList(context);
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public List<String> getForbidenAppList() {
        return basemdm.getForbidenAppList();
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public List<String> getKeepAliveList() {
        return basemdm.getKeepAliveList();
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public String getMAC() {
        return basemdm.getMAC();
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public String getSN() {
        return basemdm.getSN();
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public List<String> getSuperWhiteListForHwSystemManger() {
        return basemdm.getSuperWhiteListForHwSystemManger();
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public List<String> getWebWhiteList(int i) {
        return basemdm.getWebWhiteList(i);
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public void hideBackButton(boolean z) {
        basemdm.hideBackButton(z);
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public void hideHomeButton(boolean z) {
        basemdm.hideHomeButton(z);
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public void hideTaskButton(boolean z) {
        basemdm.hideTaskButton(z);
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean isBluetoothDataTransferDisable() {
        return basemdm.isBluetoothDataTransferDisable();
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean isBluetoothDisabled() {
        return basemdm.isBluetoothDisabled();
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean isSMSDisabled() {
        return basemdm.isSMSDisabled();
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean isUSBDataDisabled() {
        return basemdm.isUSBDataDisabled();
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean isUSBOtgDisabled() {
        return basemdm.isUSBOtgDisabled();
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean isVoiceIncomingDisabled() {
        return basemdm.isVoiceIncomingDisabled();
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean isVoiceOutgoingDisabled() {
        return basemdm.isVoiceOutgoingDisabled();
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean removePersistentApp(List<String> list) {
        return basemdm.removePersistentApp(list);
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean removeSuperWhiteListForHwSystemManger(List<String> list) {
        return basemdm.removeSuperWhiteListForHwSystemManger(list);
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public void removeUidAppList(List<String> list) {
        basemdm.removeUidAppList(list);
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public void resetFactory() {
        basemdm.resetFactory();
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean setAppDisable(List<String> list) {
        return basemdm.setAppDisable(list);
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean setAppEnable(List<String> list) {
        return basemdm.setAppEnable(list);
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean setBackButtonDisabled(boolean z) {
        return basemdm.setBackButtonDisabled(z);
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public void setBluetoothDataTransferDisable(boolean z) {
        basemdm.setBluetoothDataTransferDisable(z);
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean setBluetoothDisable() {
        return basemdm.setBluetoothDisable();
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean setBluetoothEnable() {
        return basemdm.setBluetoothEnable();
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean setCameraDisable() {
        return basemdm.setCameraDisable();
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean setCameraEnable() {
        return basemdm.setCameraEnable();
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean setCustomSettingsMenu(boolean z) {
        return basemdm.setCustomSettingsMenu(z);
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean setDataDisabled(boolean z) {
        return basemdm.setDataDisabled(z);
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean setDeviceShutDown() {
        return basemdm.setDeviceShutDown();
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean setExitMdm() {
        return basemdm.setExitMdm();
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean setGpsDisable() {
        return basemdm.setGpsDisable();
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean setGpsEnable() {
        return basemdm.setGpsEnable();
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean setHomeButtonDisabled(boolean z) {
        return basemdm.setHomeButtonDisabled(z);
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean setKeepAliveList(List<String> list) {
        return basemdm.setKeepAliveList(list);
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean setLongPowerKeyDisable() {
        return basemdm.setLongPowerKeyDisable();
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean setLongPowerKeyEnable() {
        return basemdm.setLongPowerKeyEnable();
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean setNetFirwall(boolean z) {
        return basemdm.setNetFirwall(z);
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean setNetworkWhiteList(List<String> list, int i) {
        return basemdm.setNetworkWhiteList(list, i);
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean setNfcDisabled(boolean z) {
        return basemdm.setNfcDisabled(z);
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean setPowerKeyDisable() {
        return basemdm.setPowerKeyDisable();
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean setPowerKeyEnable() {
        return basemdm.setPowerKeyEnable();
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean setSDOTGDisable() {
        return basemdm.setSDOTGDisable();
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean setSDOTGEnable() {
        return basemdm.setSDOTGEnable();
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean setSMSDisabled(boolean z) {
        return basemdm.setSMSDisabled(z);
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean setSdcardDisabled(boolean z) {
        return basemdm.setSdcardDisabled(z);
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean setSuperWhiteListForHwSystemManger(List<String> list) {
        return basemdm.setSuperWhiteListForHwSystemManger(list);
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean setSysTime(long j) {
        return basemdm.setSysTime(j);
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean setTaskButtonDisabled(boolean z) {
        return basemdm.setTaskButtonDisabled(z);
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public void setUSBDataDisabled(boolean z) {
        basemdm.setUSBDataDisabled(z);
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean setUSBDisabled(boolean z) {
        return basemdm.setUSBDisabled(z);
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public void setUSBOtgDisabled(boolean z) {
        basemdm.setUSBOtgDisabled(z);
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean setUidToAppList(List<String> list) {
        return basemdm.setUidToAppList(list);
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean setVoiceDisabled(boolean z) {
        return basemdm.setVoiceDisabled(z);
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean setVoiceIncomingDisabled(boolean z) {
        return basemdm.setVoiceIncomingDisabled(z);
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean setVoiceOutgoingDisabled(boolean z) {
        return basemdm.setVoiceOutgoingDisabled(z);
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean setVolAddDisable() {
        return basemdm.setVolAddDisable();
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean setVolAddEnable() {
        return basemdm.setVolAddEnable();
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean setVolSubDisable() {
        return basemdm.setVolSubDisable();
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean setVolSubEnable() {
        return basemdm.setVolSubEnable();
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean setWifiAdvanceDisable() {
        return basemdm.setWifiAdvanceDisable();
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean setWifiAdvanceEnable() {
        return basemdm.setWifiAdvanceEnable();
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean silentInstall(String str, boolean z) {
        return basemdm.silentInstall(str, z);
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean silentScreenShot(String str) {
        return basemdm.silentScreenShot(str);
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean silentUninstall(String str) {
        return basemdm.silentUninstall(str);
    }
}
