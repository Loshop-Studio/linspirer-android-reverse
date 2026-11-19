package com.huawei.hem;

import com.tdtech.devicemanager.IMDM;
import java.util.ArrayList;
import java.util.List;

/* compiled from: HisenseImpl.java */
/* renamed from: com.huawei.hem.vc */
/* loaded from: classes.dex */
public class C1356vc extends C1055jc {

    /* renamed from: b */
    public static C1356vc f3948b = new C1356vc();

    /* renamed from: c */
    public static IMDM f3949c;

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: F */
    public void mo1306F(String str) {
        try {
            f3949c.silentInstall(str);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1771p(th, "HisenseImpl disableLongPressPower "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: G0 */
    public List<String> mo1307G0() {
        try {
            return f3949c.urlWhiteListExceptionRead();
        } catch (Throwable th) {
            return C0948f6.m1773r(th, C0948f6.m1771p(th, "HisenseImpl getNetworkAccessAppWhiteList"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: I0 */
    public void mo1308I0(List<String> list) {
        try {
            f3949c.urlWhiteListExceptionWrite(list);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1771p(th, "HisenseImpl  -- setNetworkAccessAppWhiteList"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: M0 */
    public List<String> mo1311M0() {
        try {
            return f3949c.appWhiteListRead();
        } catch (Throwable th) {
            return C0948f6.m1773r(th, C0948f6.m1771p(th, "HisenseImpl getAppWhiteList "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: N */
    public boolean mo1312N(long j) {
        try {
            f3949c.modifySystemTime(j);
            return true;
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1771p(th, "HisenseImpl setSystemTime "));
            return true;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: O */
    public void mo1313O(String str, String str2) {
        f3949c.enableMDM(true);
        try {
            f3949c.activeDeviceAdmin();
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1771p(th, "HisenseImpl actionActiveDeviceAdmin "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: Q */
    public void mo1314Q(String str) {
        try {
            f3949c.silentUnInstall(str);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1771p(th, "HisenseImpl actionSilentUnInstall "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: V */
    public boolean mo1316V(List<String> list) {
        try {
            return f3949c.urlWhiteListWrite(list);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1771p(th, "HisenseImpl setUrlWhiteList "));
            return false;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: b0 */
    public void mo1318b0(List<String> list) {
        try {
            f3949c.showWifiAdvanced();
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1771p(th, "HisenseImpl showWifiAdvanced "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: c */
    public void mo1319c(boolean z) {
        try {
            f3949c.enableSdCard();
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1771p(th, "HisenseImpl enableSdCard "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableBack() {
        try {
            f3949c.disableBack();
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1771p(th, "HisenseImpl disableBack "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableBluetooth() {
        try {
            f3949c.disableBluetooth();
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1771p(th, "HisenseImpl disableBluetooth "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableCamera() {
        try {
            f3949c.disableCamera();
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1771p(th, "HisenseImpl disableCamera "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableFireWall() {
        try {
            mo1316V(new ArrayList());
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1771p(th, "HisenseImpl disableFireWall "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableGPS() {
        try {
            f3949c.disableGPS();
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1771p(th, "HisenseImpl disableGPS "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableHome() {
        try {
            f3949c.disableHome();
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1771p(th, "HisenseImpl disableHome "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableLongPressPower() {
        try {
            f3949c.disableLongPressPower();
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1771p(th, "HisenseImpl  -- "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableMobileData() {
        try {
            f3949c.disableMobileData();
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1771p(th, "HisenseImpl disableMobileData "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableNavigation() {
        disableHome();
        disableBack();
        disableRecent();
        disableVolume();
        disableShortPressPower();
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableRecent() {
        try {
            f3949c.disableRecent();
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1771p(th, "HisenseImpl disableRecent "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableScreenShot() {
        try {
            f3949c.disableScreenShot();
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1771p(th, "HisenseImpl disableScreenShot "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableShortPressPower() {
        try {
            f3949c.disableShortPressPower();
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1771p(th, "HisenseImpl disableShortPressPower"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableSpeech() {
        try {
            f3949c.disableSpeech();
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1771p(th, "HisenseImpl disableSpeech "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableUsb() {
        try {
            f3949c.disableUsb();
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1771p(th, "HisenseImpl disableUsb "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableVolume() {
        try {
            f3949c.disableVolume();
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1771p(th, "HisenseImpl disableVolume "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: e */
    public void mo1320e(String str) {
        try {
            f3949c.disableApp(str);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1771p(th, "HisenseImpl actionDisableApp "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableBack() {
        try {
            f3949c.enableBack();
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1771p(th, "HisenseImpl enableBack "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableBluetooth() {
        try {
            f3949c.enableBluetooth();
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1771p(th, "HisenseImpl enableBluetooth "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableCamera() {
        try {
            f3949c.enableCamera();
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1771p(th, "HisenseImpl enableCamera "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableGPS() {
        try {
            f3949c.enableGPS();
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1771p(th, "HisenseImpl enableGPS "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableHome() {
        try {
            f3949c.enableHome();
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1771p(th, "HisenseImpl enableHome "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableLongPressPower() {
        try {
            f3949c.enableLongPressPower();
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1771p(th, "HisenseImpl enableLongPressPower"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableMobileData() {
        try {
            f3949c.enableMobileData();
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1771p(th, "HisenseImpl enableMobileData "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableNavigation() {
        enableHome();
        enableBack();
        enableRecent();
        enableVolume();
        enableShortPressPower();
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableRecent() {
        try {
            f3949c.enableRecent();
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1771p(th, "HisenseImpl enableRecent "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableScreenShot() {
        try {
            f3949c.enableScreenShot();
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1771p(th, "HisenseImpl enableScreenShot "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableShortPressPower() {
        try {
            f3949c.enableShortPressPower();
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1771p(th, "HisenseImpl enableShortPressPower "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableSpeech() {
        try {
            f3949c.enableSpeech();
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1771p(th, "HisenseImpl enableSpeech "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableUsb() {
        try {
            f3949c.enableUsb();
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1771p(th, "HisenseImpl enableUsb "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableVolume() {
        try {
            f3949c.enableVolume();
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1771p(th, "HisenseImpl enableVolume "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: r */
    public void mo1327r(List<String> list) {
        try {
            f3949c.hideWifiAdvanced();
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1771p(th, "HisenseImpl hideWifiAdvanced "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: s */
    public boolean mo1328s(List<String> list) {
        try {
            return f3949c.appWhiteListWrite(list);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1771p(th, "HisenseImpl setAppWhiteList "));
            return false;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: t */
    public void mo1329t(boolean z) {
        try {
            f3949c.resetFactory();
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1771p(th, "HisenseImpl actionResetFactory "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: t0 */
    public List<String> mo1330t0() {
        try {
            return f3949c.urlWhiteListRead();
        } catch (Throwable th) {
            return C0948f6.m1773r(th, C0948f6.m1771p(th, "HisenseImpl getUrlWhiteList "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: y0 */
    public void mo1331y0(String str) {
        try {
            f3949c.enableApp(str);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1771p(th, "HisenseImpl actionEnableApp "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: z0 */
    public void mo1332z0(boolean z) {
        try {
            f3949c.disableSdCard();
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1771p(th, "HisenseImpl disableSdCard "));
        }
    }
}
