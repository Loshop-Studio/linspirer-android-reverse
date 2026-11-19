package com.Lcmdm.mdm;

import android.content.Context;
import android.os.IBinder;
import android.os.ITctModule;
import android.os.RemoteException;
import android.os.ServiceManager;
import java.util.List;

/* loaded from: classes.dex */
public class LcmdmModel implements IMdmInterface {
    public ITctModule mTctmodule;

    public LcmdmModel() {
        IBinder service = ServiceManager.getService("tctmodule");
        if (service == null) {
            throw new IllegalStateException("tctmodule binder can not be null");
        }
        this.mTctmodule = ITctModule.Stub.asInterface(service);
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean addAppInstallWhiteList(List<String> list) {
        ITctModule iTctModule = this.mTctmodule;
        if (iTctModule == null) {
            return false;
        }
        try {
            return iTctModule.addAppInstallWhiteList(list);
        } catch (RemoteException unused) {
            return false;
        }
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean addAppUninstallBlackList(Context context, List<String> list) {
        ITctModule iTctModule = this.mTctmodule;
        if (iTctModule == null) {
            return false;
        }
        try {
            return iTctModule.addAppUninstallBlackList(list);
        } catch (RemoteException unused) {
            return false;
        }
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean addPersistentApp(List<String> list) {
        ITctModule iTctModule = this.mTctmodule;
        if (iTctModule != null) {
            try {
                return iTctModule.addPersistentApp(list);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean allowAppDisplayOverOtherAppsPermission(String str) {
        ITctModule iTctModule = this.mTctmodule;
        if (iTctModule != null) {
            try {
                iTctModule.allowAppDisplayOverOtherAppsPermission(str);
                return true;
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean allowAppModifySystemSettingsPermission(String str) {
        ITctModule iTctModule = this.mTctmodule;
        if (iTctModule != null) {
            try {
                iTctModule.allowAppModifySystemSettingsPermission(str);
                return true;
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean allowAppPermission(String str) {
        ITctModule iTctModule = this.mTctmodule;
        if (iTctModule != null) {
            try {
                iTctModule.allowAppPermission(str);
                return true;
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean clearAppInstallWhiteList() {
        ITctModule iTctModule = this.mTctmodule;
        if (iTctModule == null) {
            return false;
        }
        try {
            return iTctModule.clearAppInstallWhiteList();
        } catch (RemoteException unused) {
            return false;
        }
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean clearLockScreen() {
        ITctModule iTctModule = this.mTctmodule;
        if (iTctModule != null) {
            try {
                return iTctModule.clearLockScreen();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public void clearNetworkWhiteList() {
        ITctModule iTctModule = this.mTctmodule;
        if (iTctModule != null) {
            try {
                iTctModule.clearNetworkWhiteList();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public void clearUidAppList() {
        ITctModule iTctModule = this.mTctmodule;
        if (iTctModule != null) {
            try {
                iTctModule.clearUidAppList();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean delAppInstallWhiteList(List<String> list) {
        ITctModule iTctModule = this.mTctmodule;
        if (iTctModule == null) {
            return false;
        }
        try {
            return iTctModule.delAppInstallWhiteList(list);
        } catch (RemoteException unused) {
            return false;
        }
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean delAppUninstallBlackList(Context context, List<String> list) {
        ITctModule iTctModule = this.mTctmodule;
        if (iTctModule == null) {
            return false;
        }
        try {
            return iTctModule.delAppUninstallBlackList(list);
        } catch (RemoteException unused) {
            return false;
        }
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean forceStopApp(String str) {
        ITctModule iTctModule = this.mTctmodule;
        if (iTctModule == null) {
            return false;
        }
        try {
            return iTctModule.forceStopApp(str);
        } catch (RemoteException unused) {
            return false;
        }
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public List<String> getAppInstallWhiteList() {
        ITctModule iTctModule = this.mTctmodule;
        if (iTctModule == null) {
            return null;
        }
        try {
            return iTctModule.getAppInstallWhiteList();
        } catch (RemoteException unused) {
            return null;
        }
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public List<String> getAppRulePackageList() {
        ITctModule iTctModule = this.mTctmodule;
        if (iTctModule == null) {
            return null;
        }
        try {
            return iTctModule.getAppRulePackageList();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public List<String> getAppUnInstallBlackList(Context context) {
        ITctModule iTctModule = this.mTctmodule;
        if (iTctModule == null) {
            return null;
        }
        try {
            return iTctModule.getAppUnInstallBlackList();
        } catch (RemoteException unused) {
            return null;
        }
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public List<String> getForbidenAppList() {
        ITctModule iTctModule = this.mTctmodule;
        if (iTctModule == null) {
            return null;
        }
        try {
            return iTctModule.getForbidenAppList();
        } catch (RemoteException unused) {
            return null;
        }
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public List<String> getKeepAliveList() {
        ITctModule iTctModule = this.mTctmodule;
        if (iTctModule == null) {
            return null;
        }
        try {
            return iTctModule.getKeepAliveList();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public String getMAC() {
        ITctModule iTctModule = this.mTctmodule;
        if (iTctModule == null) {
            return "";
        }
        try {
            return iTctModule.getMACaddress();
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public String getSN() {
        ITctModule iTctModule = this.mTctmodule;
        if (iTctModule == null) {
            return "";
        }
        try {
            return iTctModule.getSN();
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public List<String> getSuperWhiteListForHwSystemManger() {
        ITctModule iTctModule = this.mTctmodule;
        if (iTctModule != null) {
            try {
                return iTctModule.getSuperWhiteListForHwSystemManger();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public List<String> getWebWhiteList(int i) {
        ITctModule iTctModule = this.mTctmodule;
        if (iTctModule == null) {
            return null;
        }
        try {
            return iTctModule.getWebWhiteList(i);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public void hideBackButton(boolean z) {
        ITctModule iTctModule = this.mTctmodule;
        if (iTctModule != null) {
            try {
                if (z) {
                    iTctModule.setBackGone();
                } else {
                    iTctModule.setBackVisible();
                }
            } catch (RemoteException unused) {
            }
        }
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public void hideHomeButton(boolean z) {
        ITctModule iTctModule = this.mTctmodule;
        if (iTctModule != null) {
            try {
                if (z) {
                    iTctModule.setHomeGone();
                } else {
                    iTctModule.setHomeVisible();
                }
            } catch (RemoteException unused) {
            }
        }
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public void hideTaskButton(boolean z) {
        ITctModule iTctModule = this.mTctmodule;
        if (iTctModule != null) {
            try {
                if (z) {
                    iTctModule.setRecentGone();
                } else {
                    iTctModule.setRecentVisible();
                }
            } catch (RemoteException unused) {
            }
        }
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean isBluetoothDataTransferDisable() {
        ITctModule iTctModule = this.mTctmodule;
        if (iTctModule != null) {
            try {
                return iTctModule.isBluetoothDataTransferDisable();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean isBluetoothDisabled() {
        ITctModule iTctModule = this.mTctmodule;
        if (iTctModule != null) {
            try {
                return iTctModule.isBluetoothDisabled();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean isSMSDisabled() {
        ITctModule iTctModule = this.mTctmodule;
        if (iTctModule != null) {
            try {
                return iTctModule.isSMSDisabled();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean isUSBDataDisabled() {
        ITctModule iTctModule = this.mTctmodule;
        if (iTctModule == null) {
            return false;
        }
        try {
            return iTctModule.isUSBDataDisabled();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean isUSBOtgDisabled() {
        ITctModule iTctModule = this.mTctmodule;
        if (iTctModule == null) {
            return false;
        }
        try {
            return iTctModule.isUSBOtgDisabled();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean isVoiceIncomingDisabled() {
        ITctModule iTctModule = this.mTctmodule;
        if (iTctModule != null) {
            try {
                return iTctModule.isVoiceIncomingDisabled();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean isVoiceOutgoingDisabled() {
        ITctModule iTctModule = this.mTctmodule;
        if (iTctModule != null) {
            try {
                return iTctModule.isVoiceOutgoingDisabled();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean removePersistentApp(List<String> list) {
        ITctModule iTctModule = this.mTctmodule;
        if (iTctModule != null) {
            try {
                return iTctModule.removePersistentApp(list);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean removeSuperWhiteListForHwSystemManger(List<String> list) {
        ITctModule iTctModule = this.mTctmodule;
        if (iTctModule != null) {
            try {
                return iTctModule.removeSuperWhiteListForHwSystemManger(list);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public void removeUidAppList(List<String> list) {
        ITctModule iTctModule = this.mTctmodule;
        if (iTctModule != null) {
            try {
                iTctModule.removeUidAppList(list);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public void resetFactory() {
        ITctModule iTctModule = this.mTctmodule;
        if (iTctModule != null) {
            try {
                iTctModule.clearSandbox();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean setAppDisable(List<String> list) {
        ITctModule iTctModule = this.mTctmodule;
        if (iTctModule == null) {
            return false;
        }
        try {
            return iTctModule.setAppDisable(list);
        } catch (RemoteException unused) {
            return false;
        }
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean setAppEnable(List<String> list) {
        ITctModule iTctModule = this.mTctmodule;
        if (iTctModule == null) {
            return false;
        }
        try {
            return iTctModule.setAppEnable(list);
        } catch (RemoteException unused) {
            return false;
        }
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean setBackButtonDisabled(boolean z) {
        ITctModule iTctModule = this.mTctmodule;
        boolean backDisable = false;
        if (iTctModule == null) {
            return false;
        }
        try {
            backDisable = z ? iTctModule.setBackDisable() : iTctModule.setBackEnable();
            return backDisable;
        } catch (Exception e) {
            e.printStackTrace();
            return backDisable;
        }
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public void setBluetoothDataTransferDisable(boolean z) {
        ITctModule iTctModule = this.mTctmodule;
        if (iTctModule != null) {
            try {
                iTctModule.setBluetoothDataTransferDisable(z);
            } catch (RemoteException unused) {
            }
        }
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean setBluetoothDisable() {
        ITctModule iTctModule = this.mTctmodule;
        if (iTctModule != null) {
            try {
                return iTctModule.setBluetoothDisable();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean setBluetoothEnable() {
        ITctModule iTctModule = this.mTctmodule;
        if (iTctModule != null) {
            try {
                return iTctModule.setBluetoothEnable();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean setCameraDisable() {
        ITctModule iTctModule = this.mTctmodule;
        if (iTctModule == null) {
            return false;
        }
        try {
            return iTctModule.setCameraDisable();
        } catch (RemoteException unused) {
            return false;
        }
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean setCameraEnable() {
        ITctModule iTctModule = this.mTctmodule;
        if (iTctModule == null) {
            return false;
        }
        try {
            return iTctModule.setCameraEnable();
        } catch (RemoteException unused) {
            return false;
        }
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean setCustomSettingsMenu(boolean z) {
        ITctModule iTctModule = this.mTctmodule;
        if (iTctModule == null) {
            return true;
        }
        try {
            if (z) {
                iTctModule.setCustomSettingsMenu("lingchuang");
            } else {
                iTctModule.setCustomSettingsMenu("full");
            }
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean setDataDisabled(boolean z) {
        ITctModule iTctModule = this.mTctmodule;
        if (iTctModule == null) {
            return true;
        }
        try {
            iTctModule.setDataDisabled(z);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean setDeviceShutDown() {
        ITctModule iTctModule = this.mTctmodule;
        if (iTctModule == null) {
            return false;
        }
        try {
            return iTctModule.setDeviceShutDown();
        } catch (RemoteException unused) {
            return false;
        }
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean setExitMdm() {
        ITctModule iTctModule = this.mTctmodule;
        if (iTctModule == null) {
            return false;
        }
        try {
            return iTctModule.setExitMdm();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean setGpsDisable() {
        ITctModule iTctModule = this.mTctmodule;
        if (iTctModule != null) {
            try {
                return iTctModule.setGpsDisable();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean setGpsEnable() {
        ITctModule iTctModule = this.mTctmodule;
        if (iTctModule != null) {
            try {
                return iTctModule.setGpsEnable();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean setHomeButtonDisabled(boolean z) {
        ITctModule iTctModule = this.mTctmodule;
        boolean homeDisable = false;
        if (iTctModule == null) {
            return false;
        }
        try {
            homeDisable = z ? iTctModule.setHomeDisable() : iTctModule.setHomeEnable();
            return homeDisable;
        } catch (Exception e) {
            e.printStackTrace();
            return homeDisable;
        }
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean setKeepAliveList(List<String> list) {
        ITctModule iTctModule = this.mTctmodule;
        if (iTctModule == null) {
            return false;
        }
        try {
            return iTctModule.addPersistentApp(list);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean setLongPowerKeyDisable() {
        ITctModule iTctModule = this.mTctmodule;
        if (iTctModule != null) {
            try {
                return iTctModule.setLongPowerKeyDisable();
            } catch (RemoteException unused) {
            }
        }
        return false;
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean setLongPowerKeyEnable() {
        ITctModule iTctModule = this.mTctmodule;
        if (iTctModule != null) {
            try {
                return iTctModule.setLongPowerKeyEnable();
            } catch (RemoteException unused) {
            }
        }
        return false;
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean setNetFirwall(boolean z) {
        ITctModule iTctModule = this.mTctmodule;
        if (iTctModule == null) {
            return false;
        }
        try {
            return iTctModule.setNetFirwall(z);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean setNetworkWhiteList(List<String> list, int i) {
        ITctModule iTctModule = this.mTctmodule;
        if (iTctModule == null) {
            return false;
        }
        try {
            return iTctModule.setNetworkWhiteList(list, i);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean setNfcDisabled(boolean z) {
        ITctModule iTctModule = this.mTctmodule;
        if (iTctModule == null) {
            return true;
        }
        try {
            iTctModule.setNfcDisabled(z);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean setPowerKeyDisable() {
        ITctModule iTctModule = this.mTctmodule;
        if (iTctModule != null) {
            try {
                return iTctModule.setPowerKeyDisable();
            } catch (RemoteException unused) {
            }
        }
        return false;
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean setPowerKeyEnable() {
        ITctModule iTctModule = this.mTctmodule;
        if (iTctModule != null) {
            try {
                return iTctModule.setPowerKeyEnable();
            } catch (RemoteException unused) {
            }
        }
        return false;
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean setSDOTGDisable() {
        ITctModule iTctModule = this.mTctmodule;
        if (iTctModule != null) {
            try {
                return iTctModule.setSDOTGDisable();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean setSDOTGEnable() {
        ITctModule iTctModule = this.mTctmodule;
        if (iTctModule != null) {
            try {
                return iTctModule.setSDOTGEnable();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean setSMSDisabled(boolean z) {
        ITctModule iTctModule = this.mTctmodule;
        if (iTctModule == null) {
            return true;
        }
        try {
            iTctModule.setSMSDisabled(z);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean setSdcardDisabled(boolean z) {
        ITctModule iTctModule = this.mTctmodule;
        if (iTctModule == null) {
            return true;
        }
        try {
            if (z) {
                iTctModule.setSDOTGDisable();
            } else {
                iTctModule.setSDOTGEnable();
            }
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean setSuperWhiteListForHwSystemManger(List<String> list) {
        ITctModule iTctModule = this.mTctmodule;
        if (iTctModule != null) {
            try {
                return iTctModule.setSuperWhiteListForHwSystemManger(list);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean setSysTime(long j) {
        ITctModule iTctModule = this.mTctmodule;
        if (iTctModule == null) {
            return false;
        }
        try {
            return iTctModule.setDeviceDate(j);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean setTaskButtonDisabled(boolean z) {
        ITctModule iTctModule = this.mTctmodule;
        boolean recentDisable = false;
        if (iTctModule == null) {
            return false;
        }
        try {
            recentDisable = z ? iTctModule.setRecentDisable() : iTctModule.setRecentEnable();
            return recentDisable;
        } catch (Exception e) {
            e.printStackTrace();
            return recentDisable;
        }
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public void setUSBDataDisabled(boolean z) {
        ITctModule iTctModule = this.mTctmodule;
        if (iTctModule != null) {
            try {
                iTctModule.setUSBDataDisabled(z);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean setUSBDisabled(boolean z) {
        ITctModule iTctModule = this.mTctmodule;
        if (iTctModule == null) {
            return true;
        }
        try {
            if (z) {
                iTctModule.setADBDisable();
            } else {
                iTctModule.setADBEnable();
            }
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public void setUSBOtgDisabled(boolean z) {
        ITctModule iTctModule = this.mTctmodule;
        if (iTctModule != null) {
            try {
                iTctModule.setUSBOtgDisabled(z);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean setUidToAppList(List<String> list) {
        ITctModule iTctModule = this.mTctmodule;
        if (iTctModule == null) {
            return false;
        }
        try {
            return iTctModule.setUidToAppList(list);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean setVoiceDisabled(boolean z) {
        ITctModule iTctModule = this.mTctmodule;
        if (iTctModule == null) {
            return true;
        }
        try {
            iTctModule.setVoiceDisabled(z);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean setVoiceIncomingDisabled(boolean z) {
        ITctModule iTctModule = this.mTctmodule;
        if (iTctModule == null) {
            return true;
        }
        try {
            iTctModule.setVoiceIncomingDisabled(z);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean setVoiceOutgoingDisabled(boolean z) {
        ITctModule iTctModule = this.mTctmodule;
        if (iTctModule == null) {
            return true;
        }
        try {
            iTctModule.setVoiceOutgoingDisabled(z);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean setVolAddDisable() {
        ITctModule iTctModule = this.mTctmodule;
        if (iTctModule != null) {
            try {
                return iTctModule.setVolAddDisable();
            } catch (RemoteException unused) {
            }
        }
        return false;
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean setVolAddEnable() {
        ITctModule iTctModule = this.mTctmodule;
        if (iTctModule != null) {
            try {
                return iTctModule.setVolAddEnable();
            } catch (RemoteException unused) {
            }
        }
        return false;
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean setVolSubDisable() {
        ITctModule iTctModule = this.mTctmodule;
        if (iTctModule != null) {
            try {
                return iTctModule.setVolSubDisable();
            } catch (RemoteException unused) {
            }
        }
        return false;
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean setVolSubEnable() {
        ITctModule iTctModule = this.mTctmodule;
        if (iTctModule != null) {
            try {
                return iTctModule.setVolSubEnable();
            } catch (RemoteException unused) {
            }
        }
        return false;
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean setWifiAdvanceDisable() {
        ITctModule iTctModule = this.mTctmodule;
        if (iTctModule != null) {
            try {
                return iTctModule.setWifiAdvanceDisable();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean setWifiAdvanceEnable() {
        ITctModule iTctModule = this.mTctmodule;
        if (iTctModule != null) {
            try {
                return iTctModule.setWifiAdvanceEnable();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean silentInstall(String str, boolean z) {
        ITctModule iTctModule = this.mTctmodule;
        if (iTctModule == null) {
            return false;
        }
        try {
            return iTctModule.silentInstall(str, z);
        } catch (RemoteException unused) {
            return false;
        }
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean silentScreenShot(String str) {
        ITctModule iTctModule = this.mTctmodule;
        if (iTctModule != null) {
            try {
                return iTctModule.silentScreenShot(str);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    @Override // com.Lcmdm.mdm.IMdmInterface
    public boolean silentUninstall(String str) {
        ITctModule iTctModule = this.mTctmodule;
        if (iTctModule == null) {
            return false;
        }
        try {
            return iTctModule.silentUninstall(str);
        } catch (RemoteException unused) {
            return false;
        }
    }
}
