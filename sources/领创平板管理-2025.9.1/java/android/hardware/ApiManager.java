package android.hardware;

import android.content.Context;
import android.os.RemoteException;
import java.util.List;

/* loaded from: classes.dex */
public class ApiManager {
    public final Context mContext;
    public final IApiManager mService;

    public ApiManager(Context context, IApiManager iApiManager) {
        this.mContext = context;
        this.mService = iApiManager;
    }

    public int clearAppInstallWhiteList() {
        try {
            return this.mService.clearAppInstallWhiteList();
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public String getApiVersion() {
        try {
            return this.mService.getApiVersion();
        } catch (RemoteException e) {
            e.printStackTrace();
            return "";
        }
    }

    public List<String> getAppInstallWhiteList() {
        try {
            return this.mService.getAppInstallWhiteList();
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public String getDDRSize() {
        try {
            return this.mService.getDDRSize();
        } catch (RemoteException e) {
            e.printStackTrace();
            return "";
        }
    }

    public String getFlashSize() {
        try {
            return this.mService.getFlashSize();
        } catch (RemoteException e) {
            e.printStackTrace();
            return "";
        }
    }

    public String getGpsLocation() {
        try {
            return this.mService.getGpsLocation();
        } catch (RemoteException e) {
            e.printStackTrace();
            return "";
        }
    }

    public String getManufacturer() {
        try {
            return this.mService.getManufacturer();
        } catch (RemoteException e) {
            e.printStackTrace();
            return "";
        }
    }

    public String getModel() {
        try {
            return this.mService.getModel();
        } catch (RemoteException e) {
            e.printStackTrace();
            return "";
        }
    }

    public String getOsVersion() {
        try {
            return this.mService.getOsVersion();
        } catch (RemoteException e) {
            e.printStackTrace();
            return "";
        }
    }

    public String getPhoneImei(int i) {
        try {
            return this.mService.getPhoneImei(i);
        } catch (RemoteException e) {
            e.printStackTrace();
            return "";
        }
    }

    public String getSdkVersion() {
        try {
            return this.mService.getSdkVersion();
        } catch (RemoteException e) {
            e.printStackTrace();
            return "";
        }
    }

    public String getSerialNumber() {
        try {
            return this.mService.getSerialNumber();
        } catch (RemoteException e) {
            e.printStackTrace();
            return "";
        }
    }

    public String getWifiConnectedSSID() {
        try {
            return this.mService.getWifiConnectedSSID();
        } catch (RemoteException e) {
            e.printStackTrace();
            return "";
        }
    }

    public String getWifiMacAddress() {
        try {
            return this.mService.getWifiMacAddress();
        } catch (RemoteException e) {
            e.printStackTrace();
            return "";
        }
    }

    public boolean isBluetoothEnable() {
        try {
            return this.mService.isBluetoothEnable();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int setAdbEnable(boolean z) {
        try {
            return this.mService.setAdbEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int setAppFreeze(String str) {
        try {
            return this.mService.setAppFreeze(str);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int setAppInstallWhiteList(List<String> list) {
        try {
            return this.mService.setAppInstallWhiteList(list);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int setAppUnFreeze(String str) {
        try {
            return this.mService.setAppUnFreeze(str);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int setBackButtonEnable(boolean z) {
        try {
            return this.mService.setBackButtonEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int setBluetoothEnable(boolean z) {
        try {
            return this.mService.setBluetoothEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int setFactoryRest() {
        try {
            return this.mService.setFactoryRest();
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int setHomeButtonEnable(boolean z) {
        try {
            return this.mService.setHomeButtonEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int setMtpEnable(boolean z) {
        try {
            return this.mService.setMtpEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int setNetworkAccessRule(String str) {
        try {
            return this.mService.setNetworkAccessRule(str);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int setPowerKeyEnable(boolean z) {
        try {
            return this.mService.setPowerKeyEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int setRecentButtonEnable(boolean z) {
        try {
            return this.mService.setRecentButtonEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int setSdcardStorageEnable(boolean z) {
        try {
            return this.mService.setSdcardStorageEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int setSysTime(long j) {
        try {
            return this.mService.setSysTime(j);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int setUsbStorageEnable(boolean z) {
        try {
            return this.mService.setUsbStorageEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int setVolumeDownKeyEnable(boolean z) {
        try {
            return this.mService.setVolumeDownKeyEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int setVolumeUpKeyEnable(boolean z) {
        try {
            return this.mService.setVolumeUpKeyEnable(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int silentInstall(String str, boolean z) {
        try {
            return this.mService.silentInstall(str, z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public int silentUninstall(String str, boolean z) {
        try {
            return this.mService.silentUninstall(str, z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }
}
