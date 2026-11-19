package com.huawei.hem;

import com.b2b.rom.ISamsungDevice;
import java.util.List;

/* compiled from: SamsungImpl.java */
/* renamed from: com.huawei.hem.dd */
/* loaded from: classes.dex */
public class C0903dd extends C1055jc {

    /* renamed from: b */
    public static C0903dd f2402b = new C0903dd();

    /* renamed from: c */
    public static ISamsungDevice f2403c;

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: F */
    public void mo1306F(String str) {
        C0850bc.m1403m("SamsungImpl  -- actionSilentInstall ");
        try {
            f2403c.silentInstall(str);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1771p(th, "SamsungImpl  -- actionSilentInstall error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: G0 */
    public List<String> mo1307G0() {
        C0850bc.m1403m("SamsungImpl  -- getNetworkAccessAppWhiteList ");
        try {
            return f2403c.getNetworkAccessAppWhiteList();
        } catch (Throwable th) {
            return C0948f6.m1773r(th, C0948f6.m1771p(th, "SamsungImpl  -- getNetworkAccessAppWhiteList error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: I0 */
    public void mo1308I0(List<String> list) {
        C0850bc.m1403m("SamsungImpl  -- setNetworkAccessAppWhiteList ");
        try {
            f2403c.addNetworkAccessAppWhiteList(list);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1771p(th, "SamsungImpl  -- setNetworkAccessAppWhiteList error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: M0 */
    public List<String> mo1311M0() {
        StringBuilder sbM1765j = C0948f6.m1765j("SamsungImpl  -- getAppWhiteList , canEnableMdmPolicy = ");
        sbM1765j.append(f2403c.isInitFinish());
        C0850bc.m1403m(sbM1765j.toString());
        try {
            return f2403c.appWhiteListRead();
        } catch (Throwable th) {
            return C0948f6.m1773r(th, C0948f6.m1771p(th, "SamsungImpl  -- getAppWhiteList error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: N */
    public boolean mo1312N(long j) {
        C0850bc.m1403m("SamsungImpl  -- setSystemTime ");
        try {
            f2403c.modifySystemTime(j);
            return true;
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1771p(th, "SamsungImpl  -- setSystemTime error : "));
            return true;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: O */
    public void mo1313O(String str, String str2) {
        C0850bc.m1403m("SamsungImpl  -- disableStatusBarPanel ");
        try {
            f2403c.disableStatusBar();
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1771p(th, "SamsungImpl  -- disableStatusBarPanel error : "));
        }
        C0850bc.m1403m("SamsungImpl  -- init default disable menu item .");
        try {
            f2403c.disableSettingSectionMenu();
            f2403c.disableAppDetail();
            f2403c.disableHomeLongFunc();
            f2403c.disableLockScreenIcon();
        } catch (Throwable th2) {
            C0948f6.m1744B(th2, C0948f6.m1771p(th2, "SamsungImpl  -- default init error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: Q */
    public void mo1314Q(String str) {
        C0850bc.m1403m("SamsungImpl  --  actionSilentUnInstall ");
        try {
            f2403c.silentUnInstall(str);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1771p(th, "SamsungImpl  -- actionSilentUnInstall error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: V */
    public boolean mo1316V(List<String> list) {
        C0850bc.m1403m("SamsungImpl  -- setUrlWhiteList ");
        try {
            return f2403c.urlWhiteListWrite(list);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1771p(th, "SamsungImpl  -- setUrlWhiteList error : "));
            return false;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: X */
    public void mo1346X() {
        C0850bc.m1403m("SamsungImpl  -- enableStatusBarPanel ");
        try {
            f2403c.enableStatusBar();
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1771p(th, "SamsungImpl  -- enableStatusBarPanel error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: b0 */
    public void mo1318b0(List<String> list) {
        C0850bc.m1403m("SamsungImpl  -- showWifiAdvanced ");
        try {
            f2403c.showWifiAdvanced();
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1771p(th, "SamsungImpl  -- showWifiAdvanced error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: c */
    public void mo1319c(boolean z) {
        C0850bc.m1403m("SamsungImpl  -- enableSdCard ");
        try {
            f2403c.enableSdCard();
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1771p(th, "SamsungImpl  -- enableSdCard error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableBack() {
        C0850bc.m1403m("SamsungImpl  -- disableBack ");
        try {
            f2403c.disableBack();
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1771p(th, "SamsungImpl  -- disableBack error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableBluetooth() {
        C0850bc.m1403m("SamsungImpl  -- disableBluetooth ");
        try {
            f2403c.disableBluetooth();
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1771p(th, "SamsungImpl  -- disableBluetooth error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableCamera() {
        C0850bc.m1403m("SamsungImpl  -- disableCamera ");
        try {
            f2403c.disableCamera();
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1771p(th, "SamsungImpl  -- disableCamera error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableFireWall() {
        mo1316V(null);
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableGPS() {
        C0850bc.m1403m("SamsungImpl  -- disableGPS ");
        try {
            f2403c.disableGPS();
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1771p(th, "SamsungImpl  -- disableGPS error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableHome() {
        C0850bc.m1403m("SamsungImpl  -- disableHome ");
        try {
            f2403c.disableHome();
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1771p(th, "SamsungImpl  -- disableHome error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableLongPressPower() {
        C0850bc.m1403m("SamsungImpl  -- disableLongPressPower ");
        try {
            f2403c.disableLongPressPower();
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1771p(th, "SamsungImpl  -- disableLongPressPower error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableNavigation() {
        C0850bc.m1403m("SamsungImpl  -- disableNavigation ");
        disableHome();
        disableBack();
        disableRecent();
        disableVolume();
        disableShortPressPower();
        disableLongPressPower();
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableOTG() {
        C0850bc.m1403m("SamsungImpl  -- disableOTG ");
        try {
            f2403c.disableOtgStorage();
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1771p(th, "SamsungImpl  -- disableOTG error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableRecent() {
        C0850bc.m1403m("SamsungImpl  -- disableRecent ");
        try {
            f2403c.disableRecent();
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1771p(th, "SamsungImpl  -- disableRecent error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableScreenShot() {
        C0850bc.m1403m("SamsungImpl  -- disableScreenShot ");
        try {
            f2403c.disableScreensHots();
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1771p(th, "SamsungImpl  -- disableScreenShot error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableShortPressPower() {
        C0850bc.m1403m("SamsungImpl  -- disableShortPressPower ");
        try {
            f2403c.disableShortPressPower();
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1771p(th, "SamsungImpl  -- disableShortPressPower error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableUsb() {
        C0850bc.m1403m("SamsungImpl  -- disableUsb ");
        try {
            f2403c.disableUsb();
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1771p(th, "SamsungImpl  -- disableUsb error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableVolume() {
        C0850bc.m1403m("SamsungImpl  -- disableVolume ");
        try {
            f2403c.disableVolume();
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1771p(th, "SamsungImpl  -- disableVolume error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: e */
    public void mo1320e(String str) {
        C0850bc.m1403m("SamsungImpl  -- actionDisableApp ");
        try {
            f2403c.disableApp(str);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1771p(th, "SamsungImpl  -- actionDisableApp error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableBack() {
        C0850bc.m1403m("SamsungImpl  -- enableBack ");
        try {
            f2403c.enableBack();
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1771p(th, "SamsungImpl  -- enableBack error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableBluetooth() {
        C0850bc.m1403m("SamsungImpl  -- enableBluetooth ");
        try {
            f2403c.enableBluetooth();
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1771p(th, "SamsungImpl  -- enableBluetooth error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableCamera() {
        C0850bc.m1403m("SamsungImpl  -- enableCamera ");
        try {
            f2403c.enableCamera();
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1771p(th, "SamsungImpl  -- enableCamera error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableGPS() {
        C0850bc.m1403m("SamsungImpl  -- enableGPS ");
        try {
            f2403c.enableGPS();
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1771p(th, "SamsungImpl  -- enableGPS error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableHome() {
        C0850bc.m1403m("SamsungImpl  -- enableHome ");
        try {
            f2403c.enableHome();
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1771p(th, "SamsungImpl  -- enableHome error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableLongPressPower() {
        C0850bc.m1403m("SamsungImpl  -- enableLongPressPower ");
        try {
            f2403c.enableLongPressPower();
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1771p(th, "SamsungImpl  -- enableLongPressPower error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableNavigation() {
        C0850bc.m1403m("SamsungImpl  -- enableNavigation ");
        enableHome();
        enableBack();
        enableRecent();
        enableVolume();
        enableShortPressPower();
        enableLongPressPower();
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableOTG() {
        C0850bc.m1403m("SamsungImpl  -- enableOTG ");
        try {
            f2403c.enableOtgStorage();
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1771p(th, "SamsungImpl  -- enableOTG error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableRecent() {
        C0850bc.m1403m("SamsungImpl  -- enableRecent ");
        try {
            f2403c.enableRecent();
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1771p(th, "SamsungImpl  -- enableRecent error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableScreenShot() {
        C0850bc.m1403m("SamsungImpl  -- enableScreenShot ");
        try {
            f2403c.enableScreensHots();
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1771p(th, "SamsungImpl  -- enableScreenShot error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableShortPressPower() {
        C0850bc.m1403m("SamsungImpl  -- enableShortPressPower ");
        try {
            f2403c.enableShortPressPower();
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1771p(th, "SamsungImpl  -- enableShortPressPower error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableUsb() {
        C0850bc.m1403m("SamsungImpl  -- enableUsb ");
        try {
            f2403c.enableUsb();
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1771p(th, "SamsungImpl  -- enableUsb error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableVolume() {
        C0850bc.m1403m("SamsungImpl  -- enableVolume ");
        try {
            f2403c.enableVolume();
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1771p(th, "SamsungImpl  -- enableVolume error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: r */
    public void mo1327r(List<String> list) {
        C0850bc.m1403m("SamsungImpl  -- hideWifiAdvanced ");
        try {
            f2403c.hideWifiAdvanced();
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1771p(th, "SamsungImpl  -- hideWifiAdvanced error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: s */
    public boolean mo1328s(List<String> list) {
        C0850bc.m1403m("SamsungImpl  -- setAppWhiteList ");
        try {
            return f2403c.appWhiteListWrite(list);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1771p(th, "SamsungImpl  -- setAppWhiteList error : "));
            return false;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: t */
    public void mo1329t(boolean z) {
        C0850bc.m1403m("SamsungImpl  -- actionResetFactory ");
        try {
            f2403c.resetFactory();
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1771p(th, "SamsungImpl  -- actionResetFactory error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: t0 */
    public List<String> mo1330t0() {
        C0850bc.m1403m("SamsungImpl  -- getUrlWhiteList ");
        try {
            return f2403c.urlWhiteListRead();
        } catch (Throwable th) {
            return C0948f6.m1773r(th, C0948f6.m1771p(th, "SamsungImpl  -- getUrlWhiteList error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: y0 */
    public void mo1331y0(String str) {
        C0850bc.m1403m("SamsungImpl  -- actionEnableApp ");
        try {
            f2403c.enableApp(str);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1771p(th, "SamsungImpl  -- actionEnableApp error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: z0 */
    public void mo1332z0(boolean z) {
        C0850bc.m1403m("SamsungImpl  -- disableSdCard ");
        try {
            f2403c.disableSdCard();
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1771p(th, "SamsungImpl  -- disableSdCard error : "));
        }
    }
}
