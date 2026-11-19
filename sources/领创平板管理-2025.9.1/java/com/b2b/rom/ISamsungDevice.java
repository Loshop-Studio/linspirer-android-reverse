package com.b2b.rom;

import android.content.Context;
import android.content.Intent;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.huawei.hem.InterfaceC0916e0;
import com.huawei.hem.InterfaceC0993h0;
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
    public InterfaceC0993h0 f2057d;

    /* renamed from: e */
    public ServiceConnectionC0717X f2058e;

    /* renamed from: f */
    public InterfaceC0916e0 f2059f;

    /* renamed from: g */
    public ServiceConnectionC0716W f2060g;

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
        this.f2058e = new ServiceConnectionC0717X(this, b);
        Intent intent = new Intent();
        intent.setClassName("com.samsung.knoxinterfaceagent", "com.samsung.knoxinterfaceagent.RemoteKnoxService");
        this.f2056c.bindService(intent, this.f2058e, 1);
        this.f2060g = new ServiceConnectionC0716W(this, b);
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
        InterfaceC0916e0 interfaceC0916e0;
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
        InterfaceC0993h0 interfaceC0993h0;
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
        InterfaceC0993h0 interfaceC0993h0 = this.f2057d;
        if (interfaceC0993h0 == null) {
            Log.w(this.f2054a, "setSdCardState: start a new Thread");
            new Thread(new RunnableC0696C(this, z)).start();
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
        InterfaceC0993h0 interfaceC0993h0 = this.f2057d;
        if (interfaceC0993h0 == null) {
            Log.w(this.f2054a, "addNetworkAccessAppWhiteList: start a new Thread");
            new Thread(new RunnableC0697D(this, list)).start();
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
        InterfaceC0993h0 interfaceC0993h0 = this.f2057d;
        if (interfaceC0993h0 == null) {
            Log.w(this.f2054a, "allowFirmwareDownload: start a new Thread");
            new Thread(new RunnableC0698E(this)).start();
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
        InterfaceC0993h0 interfaceC0993h0 = this.f2057d;
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
        InterfaceC0993h0 interfaceC0993h0 = this.f2057d;
        if (interfaceC0993h0 == null) {
            Log.w(this.f2054a, "appWhiteListWrite: start a new Thread");
            new Thread(new RunnableC0735r(this, list)).start();
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
        InterfaceC0993h0 interfaceC0993h0 = this.f2057d;
        if (interfaceC0993h0 == null) {
            Log.w(this.f2054a, "clearLockedScreenPassword: start a new Thread");
            new Thread(new RunnableC0733p(this)).start();
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
        InterfaceC0993h0 interfaceC0993h0 = this.f2057d;
        if (interfaceC0993h0 == null) {
            Log.w(this.f2054a, "disableApp: start a new Thread");
            new Thread(new RunnableC0714U(this, str)).start();
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
        InterfaceC0916e0 interfaceC0916e0 = this.f2059f;
        if (interfaceC0916e0 == null) {
            Log.w(this.f2054a, "disableAppDetail: start a new Thread");
            new Thread(new RunnableC0710Q(this)).start();
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
        InterfaceC0993h0 interfaceC0993h0 = this.f2057d;
        if (interfaceC0993h0 == null) {
            Log.w(this.f2054a, "disableBack: start a new Thread");
            new Thread(new RunnableC0721d(this)).start();
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
        InterfaceC0993h0 interfaceC0993h0 = this.f2057d;
        if (interfaceC0993h0 == null) {
            Log.w(this.f2054a, "disableBluetooth: start a new Thread");
            new Thread(new RunnableC0701H(this)).start();
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
        InterfaceC0993h0 interfaceC0993h0 = this.f2057d;
        if (interfaceC0993h0 == null) {
            Log.w(this.f2054a, "disableCamera: start a new Thread");
            new Thread(new RunnableC0712S(this)).start();
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
        InterfaceC0993h0 interfaceC0993h0 = this.f2057d;
        if (interfaceC0993h0 == null) {
            Log.w(this.f2054a, "disableGPS: start a new Thread");
            new Thread(new RunnableC0737t(this)).start();
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
        InterfaceC0993h0 interfaceC0993h0 = this.f2057d;
        if (interfaceC0993h0 == null) {
            Log.w(this.f2054a, "disableHome: start a new Thread");
            new Thread(new RunnableC0719b(this)).start();
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
        InterfaceC0916e0 interfaceC0916e0 = this.f2059f;
        if (interfaceC0916e0 == null) {
            Log.w(this.f2054a, "disableHomeLongFunc: start a new Thread");
            new Thread(new RunnableC0709P(this)).start();
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
        InterfaceC0916e0 interfaceC0916e0 = this.f2059f;
        if (interfaceC0916e0 == null) {
            Log.w(this.f2054a, "disableLockScreenIcon: start a new Thread");
            new Thread(new RunnableC0705L(this)).start();
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
        InterfaceC0993h0 interfaceC0993h0 = this.f2057d;
        if (interfaceC0993h0 == null) {
            Log.w(this.f2054a, "disableLongPressPower: start a new Thread");
            new Thread(new RunnableC0730m(this)).start();
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
        InterfaceC0993h0 interfaceC0993h0 = this.f2057d;
        if (interfaceC0993h0 == null) {
            Log.w(this.f2054a, "disableOtgStorage: start a new Thread");
            new Thread(new RunnableC0694A(this)).start();
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
        InterfaceC0993h0 interfaceC0993h0 = this.f2057d;
        if (interfaceC0993h0 == null) {
            Log.w(this.f2054a, "disableRecent: start a new Thread");
            new Thread(new RunnableC0723f(this)).start();
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
        InterfaceC0916e0 interfaceC0916e0 = this.f2059f;
        if (interfaceC0916e0 == null) {
            Log.w(this.f2054a, "disableScreensHots: start a new Thread");
            new Thread(new RunnableC0703J(this)).start();
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
        InterfaceC0916e0 interfaceC0916e0 = this.f2059f;
        if (interfaceC0916e0 == null) {
            Log.w(this.f2054a, "disableSettingSectionMenu: start a new Thread");
            new Thread(new RunnableC0707N(this)).start();
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
        InterfaceC0993h0 interfaceC0993h0 = this.f2057d;
        if (interfaceC0993h0 == null) {
            Log.w(this.f2054a, "disableShortPressPower: start a new Thread");
            new Thread(new RunnableC0727j(this)).start();
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
        InterfaceC0993h0 interfaceC0993h0 = this.f2057d;
        if (interfaceC0993h0 == null) {
            Log.w(this.f2054a, "disableStatusBar: start a new Thread");
            new Thread(new RunnableC0743z(this)).start();
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
        InterfaceC0993h0 interfaceC0993h0 = this.f2057d;
        if (interfaceC0993h0 == null) {
            Log.w(this.f2054a, "disableUsb: start a new Thread");
            new Thread(new RunnableC0729l(this)).start();
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
        InterfaceC0993h0 interfaceC0993h0 = this.f2057d;
        if (interfaceC0993h0 == null) {
            Log.w(this.f2054a, "disableVolume: start a new Thread");
            new Thread(new RunnableC0725h(this)).start();
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
        InterfaceC0993h0 interfaceC0993h0 = this.f2057d;
        if (interfaceC0993h0 == null) {
            Log.w(this.f2054a, "disallowFirmwareDownload: start a new Thread");
            new Thread(new RunnableC0699F(this)).start();
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
        InterfaceC0993h0 interfaceC0993h0 = this.f2057d;
        if (interfaceC0993h0 == null) {
            Log.w(this.f2054a, "enableApp: start a new Thread");
            new Thread(new RunnableC0713T(this, str)).start();
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
        InterfaceC0916e0 interfaceC0916e0 = this.f2059f;
        if (interfaceC0916e0 == null) {
            Log.w(this.f2054a, "enableAppDetail: start a new Thread");
            new Thread(new RunnableC0708O(this)).start();
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
        InterfaceC0993h0 interfaceC0993h0 = this.f2057d;
        if (interfaceC0993h0 == null) {
            Log.w(this.f2054a, "enableBack: start a new Thread");
            new Thread(new RunnableC0720c(this)).start();
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
        InterfaceC0993h0 interfaceC0993h0 = this.f2057d;
        if (interfaceC0993h0 == null) {
            Log.w(this.f2054a, "enableBluetooth: start a new Thread");
            new Thread(new RunnableC0740w(this)).start();
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
        InterfaceC0993h0 interfaceC0993h0 = this.f2057d;
        if (interfaceC0993h0 == null) {
            Log.w(this.f2054a, "enableCamera: start a new Thread");
            new Thread(new RunnableC0711R(this)).start();
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
        InterfaceC0993h0 interfaceC0993h0 = this.f2057d;
        if (interfaceC0993h0 == null) {
            Log.w(this.f2054a, "enableGPS: start a new Thread");
            new Thread(new RunnableC0736s(this)).start();
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
        InterfaceC0993h0 interfaceC0993h0 = this.f2057d;
        if (interfaceC0993h0 == null) {
            Log.w(this.f2054a, "enableHome: start a new Thread");
            new Thread(new RunnableC0715V(this)).start();
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
        InterfaceC0916e0 interfaceC0916e0 = this.f2059f;
        if (interfaceC0916e0 == null) {
            Log.w(this.f2054a, "enableLockScreenIcon: start a new Thread");
            new Thread(new RunnableC0704K(this)).start();
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
        InterfaceC0993h0 interfaceC0993h0 = this.f2057d;
        if (interfaceC0993h0 == null) {
            Log.w(this.f2054a, "enableLongPressPower: start a new Thread");
            new Thread(new RunnableC0728k(this)).start();
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
        InterfaceC0993h0 interfaceC0993h0 = this.f2057d;
        if (interfaceC0993h0 == null) {
            Log.w(this.f2054a, "enableOtgStorage: start a new Thread");
            new Thread(new RunnableC0695B(this)).start();
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
        InterfaceC0993h0 interfaceC0993h0 = this.f2057d;
        if (interfaceC0993h0 == null) {
            Log.w(this.f2054a, "enableRecent: start a new Thread");
            new Thread(new RunnableC0722e(this)).start();
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
        InterfaceC0916e0 interfaceC0916e0 = this.f2059f;
        if (interfaceC0916e0 == null) {
            Log.w(this.f2054a, "enableScreensHots: start a new Thread");
            new Thread(new RunnableC0702I(this)).start();
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
        InterfaceC0916e0 interfaceC0916e0 = this.f2059f;
        if (interfaceC0916e0 == null) {
            Log.w(this.f2054a, "enableSettingSectionMenu: start a new Thread");
            new Thread(new RunnableC0706M(this)).start();
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
        InterfaceC0993h0 interfaceC0993h0 = this.f2057d;
        if (interfaceC0993h0 == null) {
            Log.w(this.f2054a, "enableShortPressPower: start a new Thread");
            new Thread(new RunnableC0726i(this)).start();
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
        InterfaceC0993h0 interfaceC0993h0 = this.f2057d;
        if (interfaceC0993h0 == null) {
            Log.w(this.f2054a, "enableStatusBar: start a new Thread");
            new Thread(new RunnableC0742y(this)).start();
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
        InterfaceC0993h0 interfaceC0993h0 = this.f2057d;
        if (interfaceC0993h0 == null) {
            Log.w(this.f2054a, "enableUsb: start a new Thread");
            new Thread(new RunnableC0718a(this)).start();
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
        InterfaceC0993h0 interfaceC0993h0 = this.f2057d;
        if (interfaceC0993h0 == null) {
            Log.w(this.f2054a, "enableVolume: start a new Thread");
            new Thread(new RunnableC0724g(this)).start();
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
        InterfaceC0993h0 interfaceC0993h0 = this.f2057d;
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
        InterfaceC0993h0 interfaceC0993h0 = this.f2057d;
        if (interfaceC0993h0 == null) {
            Log.w(this.f2054a, "hideWifiAdvanced: start a new Thread");
            new Thread(new RunnableC0741x(this)).start();
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
        InterfaceC0993h0 interfaceC0993h0 = this.f2057d;
        if (interfaceC0993h0 == null) {
            Log.w(this.f2054a, "modifySystemTime: start a new Thread");
            new Thread(new RunnableC0738u(this, j)).start();
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
        InterfaceC0993h0 interfaceC0993h0 = this.f2057d;
        if (interfaceC0993h0 == null) {
            Log.w(this.f2054a, "resetFactory: start a new Thread");
            new Thread(new RunnableC0734q(this)).start();
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
        InterfaceC0993h0 interfaceC0993h0 = this.f2057d;
        if (interfaceC0993h0 == null) {
            Log.w(this.f2054a, "showWifiAdvanced: start a new Thread");
            new Thread(new RunnableC0739v(this)).start();
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
        InterfaceC0993h0 interfaceC0993h0 = this.f2057d;
        if (interfaceC0993h0 == null) {
            Log.w(this.f2054a, "silentInstall: start a new Thread");
            new Thread(new RunnableC0731n(this, str)).start();
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
        InterfaceC0993h0 interfaceC0993h0 = this.f2057d;
        if (interfaceC0993h0 == null) {
            Log.w(this.f2054a, "silentUnInstall: start a new Thread");
            new Thread(new RunnableC0732o(this, str)).start();
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
        InterfaceC0993h0 interfaceC0993h0 = this.f2057d;
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
        InterfaceC0993h0 interfaceC0993h0 = this.f2057d;
        if (interfaceC0993h0 == null) {
            Log.w(this.f2054a, "urlWhiteListWrite_2: start a new Thread");
            new Thread(new RunnableC0700G(this, list)).start();
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
