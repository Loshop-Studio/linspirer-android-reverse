package com.b2b.rom;

import android.content.Context;
import android.content.Intent;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.huawei.hem.SamsungCustomInterface;
import com.huawei.hem.SamsungKnoxRemoteInterface;
import java.util.List;

/* loaded from: classes.dex */
public class ISamsungDevice {

    /* renamed from: a */
    public String f2054a;

    /* renamed from: b */
    public String f2055b;

    /* renamed from: c */
    public Context f2056c;

    /* renamed from: d */
    public SamsungKnoxRemoteInterface f2057d;

    /* renamed from: e */
    public SamsungKnoxServiceConnection f2058e;

    /* renamed from: f */
    public SamsungCustomInterface f2059f;

    /* renamed from: g */
    public SamsungCustomServiceConnection f2060g;

    /* renamed from: h */
    public Object f2061h;

    /* renamed from: i */
    public long f2062i;

    public ISamsungDevice() {
        this.f2054a = "Samsung-IMDM";
        this.f2055b = "2.0.2";
        this.f2057d = null;
        this.f2058e = null;
        this.f2059f = null;
        this.f2060g = null;
        this.f2061h = null;
        this.f2062i = 200L;
    }

    public ISamsungDevice(Context context) {
        this.f2054a = "Samsung-IMDM";
        this.f2055b = "2.0.2";
        this.f2057d = null;
        this.f2058e = null;
        this.f2059f = null;
        this.f2060g = null;
        this.f2061h = null;
        this.f2062i = 200L;
        this.f2056c = context;
        byte b = 0;
        this.f2058e = new SamsungKnoxServiceConnection(this, b);
        Intent intent = new Intent();
        intent.setClassName("com.samsung.knoxinterfaceagent", "com.samsung.knoxinterfaceagent.RemoteKnoxService");
        this.f2056c.bindService(intent, this.f2058e, 1);
        this.f2060g = new SamsungCustomServiceConnection(this, b);
        Intent intent2 = new Intent();
        intent2.setClassName("com.samsung.customee", "com.samsung.customee.CustomDeviceService");
        this.f2056c.bindService(intent2, this.f2060g, 1);
        this.f2061h = new Object();
        Log.e(this.f2054a, "ISamsungDevice:newInstance:" + this.f2055b);
        Log.e(this.f2054a, "Thread ID:" + Thread.currentThread().getId());
        Log.e(this.f2054a, "Main Thread ID:" + Looper.getMainLooper().getThread().getId());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void checkCustomService() {
        SamsungCustomInterface interfaceC0916e0;
        synchronized (this.f2061h) {
            interfaceC0916e0 = this.f2059f;
        }
        while (interfaceC0916e0 == null) {
            Log.w(this.f2054a, "waiting...");
            try {
                Thread.sleep(this.f2062i);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            synchronized (this.f2061h) {
                interfaceC0916e0 = this.f2059f;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void checkRemoteService() {
        SamsungKnoxRemoteInterface interfaceC0993h0;
        synchronized (this.f2061h) {
            interfaceC0993h0 = this.f2057d;
        }
        while (interfaceC0993h0 == null) {
            Log.w(this.f2054a, "waiting...");
            try {
                Thread.sleep(this.f2062i);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            synchronized (this.f2061h) {
                interfaceC0993h0 = this.f2057d;
            }
        }
    }

    private boolean setSdCardState(boolean z) {
        Log.e(this.f2054a, "setSdCardState:".concat(String.valueOf(z)));
        SamsungKnoxRemoteInterface interfaceC0993h0 = this.f2057d;
        if (interfaceC0993h0 == null) {
            Log.w(this.f2054a, "setSdCardState: start a new Thread");
            new Thread(new SamsungSetSdCardStateTask(this, z)).start();
            return true;
        }
        try {
            boolean zMo1925u1 = interfaceC0993h0.mo1925u1(z);
            Log.e(this.f2054a, "setSdCardState:".concat(String.valueOf(zMo1925u1)));
            return zMo1925u1;
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public void addNetworkAccessAppWhiteList(List list) {
        Log.e(this.f2054a, "addNetworkAccessAppWhiteList:".concat(String.valueOf(list)));
        SamsungKnoxRemoteInterface interfaceC0993h0 = this.f2057d;
        if (interfaceC0993h0 == null) {
            Log.w(this.f2054a, "addNetworkAccessAppWhiteList: start a new Thread");
            new Thread(new SamsungAddNetworkAccessAppWhiteListTask(this, list)).start();
            return;
        }
        try {
            interfaceC0993h0.mo1923r2(list);
            Log.e(this.f2054a, "addNetworkAccessAppWhiteList finished");
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void allowFirmwareDownload() {
        Log.e(this.f2054a, "allowFirmwareDownload");
        SamsungKnoxRemoteInterface interfaceC0993h0 = this.f2057d;
        if (interfaceC0993h0 == null) {
            Log.w(this.f2054a, "allowFirmwareDownload: start a new Thread");
            new Thread(new SamsungAllowFirmwareDownloadTask(this)).start();
        } else {
            try {
                interfaceC0993h0.mo1913f();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public List appWhiteListRead() {
        Log.e(this.f2054a, "appWhiteListRead:" + Thread.currentThread().getId());
        SamsungKnoxRemoteInterface interfaceC0993h0 = this.f2057d;
        if (interfaceC0993h0 == null) {
            return null;
        }
        try {
            List listMo1929y0 = interfaceC0993h0.mo1929y0();
            Log.e(this.f2054a, "appWhiteListRead:".concat(String.valueOf(listMo1929y0)));
            return listMo1929y0;
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public boolean appWhiteListWrite(List list) {
        Log.e(this.f2054a, "appWhiteListWrite:".concat(String.valueOf(list)));
        SamsungKnoxRemoteInterface interfaceC0993h0 = this.f2057d;
        if (interfaceC0993h0 == null) {
            Log.w(this.f2054a, "appWhiteListWrite: start a new Thread");
            new Thread(new SamsungAppWhiteListWriteTask(this, list)).start();
            return true;
        }
        try {
            boolean zMo1916i0 = interfaceC0993h0.mo1916i0(list);
            Log.e(this.f2054a, "appWhiteListWrite:".concat(String.valueOf(zMo1916i0)));
            return zMo1916i0;
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public void clearLockedScreenPassword() {
        Log.e(this.f2054a, "clearLockedScreenPassword");
        SamsungKnoxRemoteInterface interfaceC0993h0 = this.f2057d;
        if (interfaceC0993h0 == null) {
            Log.w(this.f2054a, "clearLockedScreenPassword: start a new Thread");
            new Thread(new SamsungClearLockedScreenPasswordTask(this)).start();
        } else {
            try {
                interfaceC0993h0.mo1890C2();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void disableApp(String str) {
        Log.e(this.f2054a, "disableApp:".concat(String.valueOf(str)));
        SamsungKnoxRemoteInterface interfaceC0993h0 = this.f2057d;
        if (interfaceC0993h0 == null) {
            Log.w(this.f2054a, "disableApp: start a new Thread");
            new Thread(new SamsungDisableAppTask(this, str)).start();
        } else {
            try {
                interfaceC0993h0.mo1904b(str);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void disableAppDetail() {
        Log.e(this.f2054a, "disableAppDetail");
        SamsungCustomInterface interfaceC0916e0 = this.f2059f;
        if (interfaceC0916e0 == null) {
            Log.w(this.f2054a, "disableAppDetail: start a new Thread");
            new Thread(new SamsungDisableAppDetailTask(this)).start();
        } else {
            try {
                interfaceC0916e0.mo1630h();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void disableBack() {
        Log.e(this.f2054a, "disableBack");
        SamsungKnoxRemoteInterface interfaceC0993h0 = this.f2057d;
        if (interfaceC0993h0 == null) {
            Log.w(this.f2054a, "disableBack: start a new Thread");
            new Thread(new SamsungDisableBackTask(this)).start();
        } else {
            try {
                interfaceC0993h0.mo1912e2();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void disableBluetooth() {
        Log.e(this.f2054a, "disableBluetooth");
        SamsungKnoxRemoteInterface interfaceC0993h0 = this.f2057d;
        if (interfaceC0993h0 == null) {
            Log.w(this.f2054a, "disableBluetooth: start a new Thread");
            new Thread(new SamsungDisableBluetoothTask(this)).start();
        } else {
            try {
                interfaceC0993h0.mo1908d();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void disableCamera() {
        Log.e(this.f2054a, "disableCamera");
        SamsungKnoxRemoteInterface interfaceC0993h0 = this.f2057d;
        if (interfaceC0993h0 == null) {
            Log.w(this.f2054a, "disableCamera: start a new Thread");
            new Thread(new SamsungDisableCameraTask(this)).start();
        } else {
            try {
                interfaceC0993h0.mo1889B0();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void disableGPS() {
        Log.e(this.f2054a, "disableGPS");
        SamsungKnoxRemoteInterface interfaceC0993h0 = this.f2057d;
        if (interfaceC0993h0 == null) {
            Log.w(this.f2054a, "disableGPS: start a new Thread");
            new Thread(new SamsungDisableGPSTask(this)).start();
        } else {
            try {
                interfaceC0993h0.mo1893L2();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void disableHome() {
        Log.e(this.f2054a, "disableHome");
        SamsungKnoxRemoteInterface interfaceC0993h0 = this.f2057d;
        if (interfaceC0993h0 == null) {
            Log.w(this.f2054a, "disableHome: start a new Thread");
            new Thread(new SamsungDisableHomeTask(this)).start();
        } else {
            try {
                interfaceC0993h0.mo1915h0();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void disableHomeLongFunc() {
        Log.e(this.f2054a, "disableHomeLongFunc");
        SamsungCustomInterface interfaceC0916e0 = this.f2059f;
        if (interfaceC0916e0 == null) {
            Log.w(this.f2054a, "disableHomeLongFunc: start a new Thread");
            new Thread(new SamsungDisableHomeLongFuncTask(this)).start();
        } else {
            try {
                interfaceC0916e0.mo1626Q1();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void disableLockScreenIcon() {
        Log.e(this.f2054a, "disableLockScreenIcon");
        SamsungCustomInterface interfaceC0916e0 = this.f2059f;
        if (interfaceC0916e0 == null) {
            Log.w(this.f2054a, "disableLockScreenIcon: start a new Thread");
            new Thread(new SamsungDisableLockScreenIconTask(this)).start();
        } else {
            try {
                interfaceC0916e0.mo1633p();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void disableLongPressPower() {
        Log.e(this.f2054a, "disableLongPressPower");
        SamsungKnoxRemoteInterface interfaceC0993h0 = this.f2057d;
        if (interfaceC0993h0 == null) {
            Log.w(this.f2054a, "disableLongPressPower: start a new Thread");
            new Thread(new SamsungDisableLongPressPowerTask(this)).start();
        } else {
            try {
                interfaceC0993h0.mo1894M1();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void disableOtgStorage() {
        Log.e(this.f2054a, "disableOtgStorage");
        SamsungKnoxRemoteInterface interfaceC0993h0 = this.f2057d;
        if (interfaceC0993h0 == null) {
            Log.w(this.f2054a, "disableOtgStorage: start a new Thread");
            new Thread(new SamsungDisableOtgStorageTask(this)).start();
            return;
        }
        try {
            Log.e(this.f2054a, "disableOtgStorage:".concat(String.valueOf(interfaceC0993h0.mo1928x0(false))));
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void disableRecent() {
        Log.e(this.f2054a, "disableRecent");
        SamsungKnoxRemoteInterface interfaceC0993h0 = this.f2057d;
        if (interfaceC0993h0 == null) {
            Log.w(this.f2054a, "disableRecent: start a new Thread");
            new Thread(new SamsungDisableRecentTask(this)).start();
        } else {
            try {
                interfaceC0993h0.mo1898U();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void disableScreensHots() {
        Log.e(this.f2054a, "disableScreensHots");
        SamsungCustomInterface interfaceC0916e0 = this.f2059f;
        if (interfaceC0916e0 == null) {
            Log.w(this.f2054a, "disableScreensHots: start a new Thread");
            new Thread(new SamsungDisableScreenshotsTask(this)).start();
        } else {
            try {
                interfaceC0916e0.mo1627Z();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void disableSdCard() {
        Log.e(this.f2054a, "disableSdCard");
        setSdCardState(false);
    }

    public void disableSettingSectionMenu() {
        Log.e(this.f2054a, "disableSettingSectionMenu");
        SamsungCustomInterface interfaceC0916e0 = this.f2059f;
        if (interfaceC0916e0 == null) {
            Log.w(this.f2054a, "disableSettingSectionMenu: start a new Thread");
            new Thread(new SamsungDisableSettingSectionMenuTask(this)).start();
        } else {
            try {
                interfaceC0916e0.mo1628f();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void disableShortPressPower() {
        Log.e(this.f2054a, "disableShortPressPower");
        SamsungKnoxRemoteInterface interfaceC0993h0 = this.f2057d;
        if (interfaceC0993h0 == null) {
            Log.w(this.f2054a, "disableShortPressPower: start a new Thread");
            new Thread(new SamsungDisableShortPressPowerTask(this)).start();
        } else {
            try {
                interfaceC0993h0.mo1892K();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void disableStatusBar() {
        Log.e(this.f2054a, "disableStatusBar");
        SamsungKnoxRemoteInterface interfaceC0993h0 = this.f2057d;
        if (interfaceC0993h0 == null) {
            Log.w(this.f2054a, "disableStatusBar: start a new Thread");
            new Thread(new SamsungDisableStatusBarTask(this)).start();
        } else {
            try {
                interfaceC0993h0.mo1922q();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void disableUsb() {
        Log.e(this.f2054a, "disableUsb");
        SamsungKnoxRemoteInterface interfaceC0993h0 = this.f2057d;
        if (interfaceC0993h0 == null) {
            Log.w(this.f2054a, "disableUsb: start a new Thread");
            new Thread(new SamsungDisableUsbTask(this)).start();
        } else {
            try {
                interfaceC0993h0.mo1903b();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void disableVolume() {
        Log.e(this.f2054a, "disableVolume");
        SamsungKnoxRemoteInterface interfaceC0993h0 = this.f2057d;
        if (interfaceC0993h0 == null) {
            Log.w(this.f2054a, "disableVolume: start a new Thread");
            new Thread(new SamsungDisableVolumeTask(this)).start();
        } else {
            try {
                interfaceC0993h0.mo1899V1();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void disallowFirmwareDownload() {
        Log.e(this.f2054a, "disallowFirmwareDownload");
        SamsungKnoxRemoteInterface interfaceC0993h0 = this.f2057d;
        if (interfaceC0993h0 == null) {
            Log.w(this.f2054a, "disallowFirmwareDownload: start a new Thread");
            new Thread(new SamsungDisallowFirmwareDownloadTask(this)).start();
        } else {
            try {
                interfaceC0993h0.mo1917j();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void enableApp(String str) {
        Log.e(this.f2054a, "enableApp:".concat(String.valueOf(str)));
        SamsungKnoxRemoteInterface interfaceC0993h0 = this.f2057d;
        if (interfaceC0993h0 == null) {
            Log.w(this.f2054a, "enableApp: start a new Thread");
            new Thread(new SamsungEnableAppTask(this, str)).start();
        } else {
            try {
                interfaceC0993h0.mo1902a(str);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void enableAppDetail() {
        Log.e(this.f2054a, "enableAppDetail");
        SamsungCustomInterface interfaceC0916e0 = this.f2059f;
        if (interfaceC0916e0 == null) {
            Log.w(this.f2054a, "enableAppDetail: start a new Thread");
            new Thread(new SamsungEnableAppDetailTask(this)).start();
        } else {
            try {
                interfaceC0916e0.mo1631j();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void enableBack() {
        Log.e(this.f2054a, "enableBack");
        SamsungKnoxRemoteInterface interfaceC0993h0 = this.f2057d;
        if (interfaceC0993h0 == null) {
            Log.w(this.f2054a, "enableBack: start a new Thread");
            new Thread(new SamsungEnableBackTask(this)).start();
        } else {
            try {
                interfaceC0993h0.mo1919m1();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void enableBluetooth() {
        Log.e(this.f2054a, "enableBluetooth");
        SamsungKnoxRemoteInterface interfaceC0993h0 = this.f2057d;
        if (interfaceC0993h0 == null) {
            Log.w(this.f2054a, "enableBluetooth: start a new Thread");
            new Thread(new SamsungEnableBluetoothTask(this)).start();
        } else {
            try {
                interfaceC0993h0.mo1905c();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void enableCamera() {
        Log.e(this.f2054a, "enableCamera");
        SamsungKnoxRemoteInterface interfaceC0993h0 = this.f2057d;
        if (interfaceC0993h0 == null) {
            Log.w(this.f2054a, "enableCamera: start a new Thread");
            new Thread(new SamsungEnableCameraTask(this)).start();
        } else {
            try {
                interfaceC0993h0.mo1911e();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void enableGPS() {
        Log.e(this.f2054a, "enableGPS");
        SamsungKnoxRemoteInterface interfaceC0993h0 = this.f2057d;
        if (interfaceC0993h0 == null) {
            Log.w(this.f2054a, "enableGPS: start a new Thread");
            new Thread(new SamsungEnableGPSTask(this)).start();
        } else {
            try {
                interfaceC0993h0.mo1896R1();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void enableHome() {
        Log.e(this.f2054a, "enableHome");
        SamsungKnoxRemoteInterface interfaceC0993h0 = this.f2057d;
        if (interfaceC0993h0 == null) {
            Log.w(this.f2054a, "enableHome: start a new Thread");
            new Thread(new SamsungEnableHomeTask(this)).start();
        } else {
            try {
                interfaceC0993h0.mo1920n3();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void enableLockScreenIcon() {
        Log.e(this.f2054a, "enableLockScreenIcon");
        SamsungCustomInterface interfaceC0916e0 = this.f2059f;
        if (interfaceC0916e0 == null) {
            Log.w(this.f2054a, "enableLockScreenIcon: start a new Thread");
            new Thread(new SamsungEnableLockScreenIconTask(this)).start();
        } else {
            try {
                interfaceC0916e0.mo1632m();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void enableLongPressPower() {
        Log.e(this.f2054a, "enableLongPressPower");
        SamsungKnoxRemoteInterface interfaceC0993h0 = this.f2057d;
        if (interfaceC0993h0 == null) {
            Log.w(this.f2054a, "enableLongPressPower: start a new Thread");
            new Thread(new SamsungEnableLongPressPowerTask(this)).start();
        } else {
            try {
                interfaceC0993h0.mo1895R0();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void enableOtgStorage() {
        Log.e(this.f2054a, "enableOtgStorage");
        SamsungKnoxRemoteInterface interfaceC0993h0 = this.f2057d;
        if (interfaceC0993h0 == null) {
            Log.w(this.f2054a, "enableOtgStorage: start a new Thread");
            new Thread(new SamsungEnableOtgStorageTask(this)).start();
            return;
        }
        try {
            Log.e(this.f2054a, "enableOtgStorage:".concat(String.valueOf(interfaceC0993h0.mo1928x0(true))));
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void enableRecent() {
        Log.e(this.f2054a, "enableRecent");
        SamsungKnoxRemoteInterface interfaceC0993h0 = this.f2057d;
        if (interfaceC0993h0 == null) {
            Log.w(this.f2054a, "enableRecent: start a new Thread");
            new Thread(new SamsungEnableRecentTask(this)).start();
        } else {
            try {
                interfaceC0993h0.mo1907c3();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void enableScreensHots() {
        Log.e(this.f2054a, "enableScreensHots");
        SamsungCustomInterface interfaceC0916e0 = this.f2059f;
        if (interfaceC0916e0 == null) {
            Log.w(this.f2054a, "enableScreensHots: start a new Thread");
            new Thread(new SamsungEnableScreenshotsTask(this)).start();
        } else {
            try {
                interfaceC0916e0.mo1629g3();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void enableSdCard() {
        Log.e(this.f2054a, "enableSdCard");
        setSdCardState(true);
    }

    public void enableSettingSectionMenu() {
        Log.e(this.f2054a, "enableSettingSectionMenu");
        SamsungCustomInterface interfaceC0916e0 = this.f2059f;
        if (interfaceC0916e0 == null) {
            Log.w(this.f2054a, "enableSettingSectionMenu: start a new Thread");
            new Thread(new SamsungEnableSettingSectionMenuTask(this)).start();
        } else {
            try {
                interfaceC0916e0.mo1634q();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void enableShortPressPower() {
        Log.e(this.f2054a, "enableShortPressPower");
        SamsungKnoxRemoteInterface interfaceC0993h0 = this.f2057d;
        if (interfaceC0993h0 == null) {
            Log.w(this.f2054a, "enableShortPressPower: start a new Thread");
            new Thread(new SamsungEnableShortPressPowerTask(this)).start();
        } else {
            try {
                interfaceC0993h0.mo1897R2();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void enableStatusBar() {
        Log.e(this.f2054a, "enableStatusBar");
        SamsungKnoxRemoteInterface interfaceC0993h0 = this.f2057d;
        if (interfaceC0993h0 == null) {
            Log.w(this.f2054a, "enableStatusBar: start a new Thread");
            new Thread(new SamsungEnableStatusBarTask(this)).start();
        } else {
            try {
                interfaceC0993h0.mo1921p();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void enableUsb() {
        Log.e(this.f2054a, "enableUsb");
        SamsungKnoxRemoteInterface interfaceC0993h0 = this.f2057d;
        if (interfaceC0993h0 == null) {
            Log.w(this.f2054a, "enableUsb: start a new Thread");
            new Thread(new SamsungEnableUsbTask(this)).start();
        } else {
            try {
                interfaceC0993h0.mo1901a();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void enableVolume() {
        Log.e(this.f2054a, "enableVolume");
        SamsungKnoxRemoteInterface interfaceC0993h0 = this.f2057d;
        if (interfaceC0993h0 == null) {
            Log.w(this.f2054a, "enableVolume: start a new Thread");
            new Thread(new SamsungEnableVolumeTask(this)).start();
        } else {
            try {
                interfaceC0993h0.mo1910d1();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public List getNetworkAccessAppWhiteList() {
        Log.e(this.f2054a, "getNetworkAccessAppWhiteList:" + Thread.currentThread().getId());
        SamsungKnoxRemoteInterface interfaceC0993h0 = this.f2057d;
        if (interfaceC0993h0 == null) {
            Log.e(this.f2054a, "getNetworkAccessAppWhiteList:service is not be initialized until now");
            return null;
        }
        try {
            List listMo1918m = interfaceC0993h0.mo1918m();
            Log.e(this.f2054a, "getNetworkAccessAppWhiteList:".concat(String.valueOf(listMo1918m)));
            return listMo1918m;
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public void hideWifiAdvanced() {
        Log.e(this.f2054a, "hideWifiAdvanced");
        SamsungKnoxRemoteInterface interfaceC0993h0 = this.f2057d;
        if (interfaceC0993h0 == null) {
            Log.w(this.f2054a, "hideWifiAdvanced: start a new Thread");
            new Thread(new SamsungHideWifiAdvancedTask(this)).start();
        } else {
            try {
                interfaceC0993h0.mo1914h();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public synchronized boolean isInitFinish() {
        boolean z;
        z = this.f2057d != null;
        Log.e(this.f2054a, "isInitFinish:".concat(String.valueOf(z)));
        return z;
    }

    public void modifySystemTime(long j) {
        Log.e(this.f2054a, "modifySystemTime:".concat(String.valueOf(j)));
        SamsungKnoxRemoteInterface interfaceC0993h0 = this.f2057d;
        if (interfaceC0993h0 == null) {
            Log.w(this.f2054a, "modifySystemTime: start a new Thread");
            new Thread(new SamsungModifySystemTimeTask(this, j)).start();
        } else {
            try {
                interfaceC0993h0.mo1900Y2(j);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void resetFactory() {
        Log.e(this.f2054a, "resetFactory");
        SamsungKnoxRemoteInterface interfaceC0993h0 = this.f2057d;
        if (interfaceC0993h0 == null) {
            Log.w(this.f2054a, "resetFactory: start a new Thread");
            new Thread(new SamsungResetFactoryTask(this)).start();
        } else {
            try {
                interfaceC0993h0.mo1927x();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void showWifiAdvanced() {
        Log.e(this.f2054a, "showWifiAdvanced");
        SamsungKnoxRemoteInterface interfaceC0993h0 = this.f2057d;
        if (interfaceC0993h0 == null) {
            Log.w(this.f2054a, "showWifiAdvanced: start a new Thread");
            new Thread(new SamsungShowWifiAdvancedTask(this)).start();
        } else {
            try {
                interfaceC0993h0.mo1924r3();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void silentInstall(String str) {
        Log.e(this.f2054a, "silentInstall:".concat(String.valueOf(str)));
        SamsungKnoxRemoteInterface interfaceC0993h0 = this.f2057d;
        if (interfaceC0993h0 == null) {
            Log.w(this.f2054a, "silentInstall: start a new Thread");
            new Thread(new SamsungSilentInstallTask(this, str)).start();
        } else {
            try {
                interfaceC0993h0.mo1906c(str);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void silentUnInstall(String str) {
        Log.e(this.f2054a, "silentUnInstall:".concat(String.valueOf(str)));
        SamsungKnoxRemoteInterface interfaceC0993h0 = this.f2057d;
        if (interfaceC0993h0 == null) {
            Log.w(this.f2054a, "silentUnInstall: start a new Thread");
            new Thread(new SamsungSilentUninstallTask(this, str)).start();
        } else {
            try {
                interfaceC0993h0.mo1909d(str);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public List urlWhiteListRead() {
        Log.e(this.f2054a, "urlWhiteListRead:" + Thread.currentThread().getId());
        SamsungKnoxRemoteInterface interfaceC0993h0 = this.f2057d;
        if (interfaceC0993h0 == null) {
            return null;
        }
        try {
            List listMo1926v1 = interfaceC0993h0.mo1926v1();
            Log.e(this.f2054a, "urlWhiteListRead:".concat(String.valueOf(listMo1926v1)));
            return listMo1926v1;
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public boolean urlWhiteListWrite(List list) {
        Log.e(this.f2054a, "urlWhiteListWrite_2:".concat(String.valueOf(list)));
        SamsungKnoxRemoteInterface interfaceC0993h0 = this.f2057d;
        if (interfaceC0993h0 == null) {
            Log.w(this.f2054a, "urlWhiteListWrite_2: start a new Thread");
            new Thread(new SamsungUrlWhiteListWriteTask(this, list)).start();
            return true;
        }
        try {
            boolean zMo1891D1 = interfaceC0993h0.mo1891D1(list);
            Log.e(this.f2054a, "urlWhiteListWrite_2:".concat(String.valueOf(zMo1891D1)));
            return zMo1891D1;
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }
}
