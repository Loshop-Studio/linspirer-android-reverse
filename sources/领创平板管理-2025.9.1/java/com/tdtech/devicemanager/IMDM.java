package com.tdtech.devicemanager;

import android.content.Context;
import android.os.RemoteException;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class IMDM {
    public static IMDM mInstance;
    public Context mContext;

    public IMDM(Context context) {
        this.mContext = context;
    }

    public static IMDM getInstance(Context context) {
        synchronized (IMDM.class) {
            if (mInstance == null) {
                mInstance = new IMDM(context);
            }
        }
        return mInstance;
    }

    public void activeDeviceAdmin() {
        try {
            EmmUtil.mdmIF().activeDeviceAdmin();
        } catch (RemoteException unused) {
        }
    }

    public List<String> appWhiteListRead() {
        try {
            return EmmUtil.mdmIF().appWhiteListRead();
        } catch (RemoteException unused) {
            return new ArrayList();
        }
    }

    public boolean appWhiteListWrite(List<String> list) {
        try {
            return EmmUtil.mdmIF().appWhiteListWrite(list);
        } catch (RemoteException unused) {
            return true;
        }
    }

    public void clearLockedScreenPassword() {
        try {
            EmmUtil.mdmIF().clearLockedScreenPassword();
        } catch (RemoteException unused) {
        }
    }

    public void disableApp(String str) {
        try {
            EmmUtil.mdmIF().disableApp(str);
        } catch (RemoteException unused) {
        }
    }

    public void disableBack() {
        try {
            EmmUtil.mdmIF().disableBack();
        } catch (RemoteException unused) {
        }
    }

    public void disableBluetooth() {
        try {
            EmmUtil.mdmIF().enableBluetooth(false);
        } catch (RemoteException unused) {
        }
    }

    public void disableCamera() {
        try {
            EmmUtil.mdmIF().enableCamera(false);
        } catch (RemoteException unused) {
        }
    }

    public void disableGPS() {
        try {
            EmmUtil.mdmIF().enableGps(false);
        } catch (RemoteException unused) {
        }
    }

    public void disableHome() {
        try {
            EmmUtil.mdmIF().disableHome();
        } catch (RemoteException unused) {
        }
    }

    public void disableLongPressPower() {
        try {
            EmmUtil.mdmIF().disableLongPressPower();
        } catch (RemoteException unused) {
        }
    }

    public void disableMobileData() {
        try {
            EmmUtil.mdmIF().disableMobileData();
        } catch (RemoteException unused) {
        }
    }

    public void disableNFC() {
        try {
            EmmUtil.mdmIF().disableNFC();
        } catch (RemoteException unused) {
        }
    }

    public void disableNavigation() {
        try {
            EmmUtil.mdmIF().disableNavigation();
        } catch (RemoteException unused) {
        }
    }

    public void disableRecent() {
        try {
            EmmUtil.mdmIF().disableRecent();
        } catch (RemoteException unused) {
        }
    }

    public void disableScreenShot() {
        try {
            EmmUtil.mdmIF().enableScreenshot(false);
        } catch (RemoteException unused) {
        }
    }

    public void disableSdCard() {
        try {
            EmmUtil.mdmIF().disableSdCard();
        } catch (RemoteException unused) {
        }
    }

    public void disableShortPressPower() {
        try {
            EmmUtil.mdmIF().disableShortPressPower();
        } catch (RemoteException unused) {
        }
    }

    public void disableSpeech() {
        try {
            EmmUtil.mdmIF().disableSpeech();
        } catch (RemoteException unused) {
        }
    }

    public void disableUsb() {
        try {
            EmmUtil.mdmIF().disableUsb();
        } catch (RemoteException unused) {
        }
    }

    public void disableVolume() {
        try {
            EmmUtil.mdmIF().disableVolume();
        } catch (RemoteException unused) {
        }
    }

    public void enableApp(String str) {
        try {
            EmmUtil.mdmIF().enableApp(str);
        } catch (RemoteException unused) {
        }
    }

    public void enableBack() {
        try {
            EmmUtil.mdmIF().enableBack();
        } catch (RemoteException unused) {
        }
    }

    public void enableBluetooth() {
        try {
            EmmUtil.mdmIF().enableBluetooth(true);
        } catch (RemoteException unused) {
        }
    }

    public void enableCamera() {
        try {
            EmmUtil.mdmIF().enableCamera(true);
        } catch (RemoteException unused) {
        }
    }

    public void enableGPS() {
        try {
            EmmUtil.mdmIF().enableGps(true);
        } catch (RemoteException unused) {
        }
    }

    public void enableHome() {
        try {
            EmmUtil.mdmIF().enableHome();
        } catch (RemoteException unused) {
        }
    }

    public void enableLongPressPower() {
        try {
            EmmUtil.mdmIF().enableLongPressPower();
        } catch (RemoteException unused) {
        }
    }

    public void enableMDM(boolean z) {
        try {
            EmmUtil.mdmIF().enable(z);
        } catch (RemoteException unused) {
        }
    }

    public void enableMobileData() {
        try {
            EmmUtil.mdmIF().enableMobileData();
        } catch (RemoteException unused) {
        }
    }

    public void enableNFC() {
        try {
            EmmUtil.mdmIF().enableNFC();
        } catch (RemoteException unused) {
        }
    }

    public void enableNavigation() {
        try {
            EmmUtil.mdmIF().enableNavigation();
        } catch (RemoteException unused) {
        }
    }

    public void enableRecent() {
        try {
            EmmUtil.mdmIF().enableRecent();
        } catch (RemoteException unused) {
        }
    }

    public void enableScreenShot() {
        try {
            EmmUtil.mdmIF().enableScreenshot(true);
        } catch (RemoteException unused) {
        }
    }

    public void enableSdCard() {
        try {
            EmmUtil.mdmIF().enableSdCard();
        } catch (RemoteException unused) {
        }
    }

    public void enableShortPressPower() {
        try {
            EmmUtil.mdmIF().enableShortPressPower();
        } catch (RemoteException unused) {
        }
    }

    public void enableSpeech() {
        try {
            EmmUtil.mdmIF().enableSpeech();
        } catch (RemoteException unused) {
        }
    }

    public void enableUsb() {
        try {
            EmmUtil.mdmIF().enableUsb();
        } catch (RemoteException unused) {
        }
    }

    public void enableVolume() {
        try {
            EmmUtil.mdmIF().enableVolume();
        } catch (RemoteException unused) {
        }
    }

    public void hideWifiAdvanced() {
        try {
            EmmUtil.mdmIF().hideWifiAdvanced();
        } catch (RemoteException unused) {
        }
    }

    public void modifySystemTime(long j) {
        try {
            EmmUtil.mdmIF().modifySystemTime(j);
        } catch (RemoteException unused) {
        }
    }

    public void resetFactory() {
        try {
            EmmUtil.mdmIF().resetFactory();
        } catch (RemoteException unused) {
        }
    }

    public void showSettingPart() {
        try {
            EmmUtil.mdmIF().showSettingPart();
        } catch (RemoteException unused) {
        }
    }

    public void showSettingWhole() {
        try {
            EmmUtil.mdmIF().showSettingWhole();
        } catch (RemoteException unused) {
        }
    }

    public void showWifiAdvanced() {
        try {
            EmmUtil.mdmIF().showWifiAdvanced();
        } catch (RemoteException unused) {
        }
    }

    public void silentInstall(String str) {
        try {
            EmmUtil.mdmIF().silentInstall(str);
        } catch (RemoteException unused) {
        }
    }

    public void silentUnInstall(String str) {
        try {
            EmmUtil.mdmIF().silentUnInstall(str);
        } catch (RemoteException unused) {
        }
    }

    public List<String> urlWhiteListExceptionRead() {
        try {
            return EmmUtil.mdmIF().urlWhiteListExceptionRead();
        } catch (RemoteException unused) {
            return new ArrayList();
        }
    }

    public boolean urlWhiteListExceptionWrite(List<String> list) {
        try {
            return EmmUtil.mdmIF().urlWhiteListExceptionWrite(list);
        } catch (RemoteException unused) {
            return true;
        }
    }

    public List<String> urlWhiteListRead() {
        try {
            return EmmUtil.mdmIF().urlWhiteListRead();
        } catch (RemoteException unused) {
            return new ArrayList();
        }
    }

    public boolean urlWhiteListWrite(List<String> list) {
        try {
            return EmmUtil.mdmIF().urlWhiteListWrite(list);
        } catch (RemoteException unused) {
            return true;
        }
    }
}
