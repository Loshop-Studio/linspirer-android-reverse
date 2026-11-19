package com.huawei.hem;

import android.content.Context;
import java.util.ArrayList;
import java.util.List;

/* compiled from: HisenseE12Impl.java */
/* renamed from: com.huawei.hem.uc */
/* loaded from: classes.dex */
public class HisenseE12Impl extends AndroidImpl {

    /* renamed from: b */
    public static HisenseE12Impl f3860b = new HisenseE12Impl();

    /* renamed from: c */
    public static HisenseDeviceManagement f3861c;

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: F */
    public void mo1306F(String str) {
        CompilerOutline.m1779x("HisenseE12Impl -- actionSilentInstall , path = ", str);
        try {
            f3861c.m2549O(str);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HisenseE12Impl -- actionSilentInstall = "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: G */
    public String mo1337G() {
        List<String> listM2543I;
        try {
            listM2543I = f3861c.m2543I();
        } catch (Throwable th) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("HisenseE12Impl -- getDeviceSN = ");
            sbM1765j.append(th.getMessage());
            LTKDateUtil.m1393c(sbM1765j.toString());
            th.printStackTrace();
            listM2543I = null;
        }
        if (listM2543I == null || listM2543I.size() <= 0) {
            return "";
        }
        StringBuilder sbM1765j2 = CompilerOutline.m1765j("HisenseE12Impl -- getDeviceSN  sn = ");
        sbM1765j2.append(listM2543I.get(0));
        LTKDateUtil.m1403m(sbM1765j2.toString());
        return listM2543I.get(0);
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: G0 */
    public List<String> mo1307G0() {
        LTKDateUtil.m1403m("HisenseE12Impl -- getNetworkAccessAppWhiteList");
        try {
            return f3861c.m2551Q();
        } catch (Throwable th) {
            return CompilerOutline.m1773r(th, CompilerOutline.m1771p(th, "HisenseE12Impl -- getNetworkAccessAppWhiteList = "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: I0 */
    public void mo1308I0(List<String> list) {
        LTKDateUtil.m1403m("HisenseE12Impl -- setNetworkAccessAppWhiteList");
        try {
            f3861c.m2552R(list);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HisenseE12Impl -- setNetworkAccessAppWhiteList = "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: L */
    public String mo1310L(String str) {
        return "";
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: M0 */
    public List<String> mo1311M0() {
        LTKDateUtil.m1403m("HisenseE12Impl -- getAppWhiteList");
        try {
            return f3861c.m2556b();
        } catch (Throwable th) {
            return CompilerOutline.m1773r(th, CompilerOutline.m1771p(th, "HisenseE12Impl -- getAppWhiteList = "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: N */
    public boolean mo1312N(long j) {
        LTKDateUtil.m1403m("HisenseE12Impl -- setSystemTime");
        try {
            f3861c.m2545K(j);
            return true;
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HisenseE12Impl -- setSystemTime = "));
            return true;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: O */
    public void mo1313O(String str, String str2) {
        LTKDateUtil.m1403m("HisenseE12Impl -- systemInit");
        f3861c.m2580z(true);
        LTKDateUtil.m1403m("HisenseE12Impl -- actionActiveDeviceAdmin");
        try {
            f3861c.m2555a();
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HisenseE12Impl -- actionActiveDeviceAdmin = "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: Q */
    public void mo1314Q(String str) {
        LTKDateUtil.m1403m("HisenseE12Impl -- actionSilentUnInstall");
        try {
            f3861c.m2550P(str);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HisenseE12Impl -- actionSilentUnInstall = "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: V */
    public boolean mo1316V(List<String> list) {
        LTKDateUtil.m1403m("HisenseE12Impl -- setUrlWhiteList");
        try {
            return f3861c.m2554T(list);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HisenseE12Impl -- setUrlWhiteList = "));
            return false;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: Y */
    public String mo1317Y(Context context) {
        List<String> listM2543I;
        try {
            listM2543I = f3861c.m2543I();
        } catch (Throwable th) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("HisenseE12Impl -- getWifiMacAddress e = ");
            sbM1765j.append(th.getMessage());
            LTKDateUtil.m1393c(sbM1765j.toString());
            th.printStackTrace();
            listM2543I = null;
        }
        if (listM2543I == null || listM2543I.size() <= 1) {
            return "";
        }
        StringBuilder sbM1765j2 = CompilerOutline.m1765j("HisenseE12Impl -- getWifiMacAddress  wifimac = ");
        sbM1765j2.append(listM2543I.get(1));
        LTKDateUtil.m1403m(sbM1765j2.toString());
        return listM2543I.get(1);
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: b0 */
    public void mo1318b0(List<String> list) {
        LTKDateUtil.m1403m("HisenseE12Impl -- showWifiAdvanced");
        try {
            f3861c.m2547M();
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HisenseE12Impl -- showWifiAdvanced = "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: c */
    public void mo1319c(boolean z) {
        LTKDateUtil.m1403m("HisenseE12Impl -- enableSdCard ");
        try {
            f3861c.m2538D();
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HisenseE12Impl -- enableSdCard = "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableBack() {
        LTKDateUtil.m1403m("HisenseE12Impl -- disableBack");
        try {
            f3861c.m2559e();
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HisenseE12Impl -- disableBack = "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableBluetooth() {
        LTKDateUtil.m1403m("HisenseE12Impl -- disableBluetooth");
        try {
            f3861c.m2560f();
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HisenseE12Impl -- disableBluetooth = "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableCamera() {
        LTKDateUtil.m1403m("HisenseE12Impl -- disableCamera");
        try {
            f3861c.m2561g();
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HisenseE12Impl -- disableCamera = "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableFireWall() {
        LTKDateUtil.m1403m("HisenseE12Impl -- disableFireWall");
        try {
            mo1316V(new ArrayList());
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HisenseE12Impl -- disableFireWall = "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableGPS() {
        LTKDateUtil.m1403m("HisenseE12Impl -- disableGPS");
        try {
            f3861c.m2562h();
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HisenseE12Impl -- disableGPS = "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableHome() {
        LTKDateUtil.m1403m("HisenseE12Impl -- disableHome");
        try {
            f3861c.m2563i();
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HisenseE12Impl -- disableHome = "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableLongPressPower() {
        LTKDateUtil.m1403m("HisenseE12Impl -- disableLongPressPower");
        try {
            f3861c.m2564j();
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HisenseE12Impl -- disableLongPressPower = "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableMobileData() {
        LTKDateUtil.m1403m("HisenseE12Impl -- disableMobileData");
        try {
            f3861c.m2565k();
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HisenseE12Impl -- disableMobileData = "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableNavigation() {
        LTKDateUtil.m1403m("HisenseE12Impl -- disableNavigation");
        disableHome();
        disableBack();
        disableRecent();
        disableVolume();
        disableShortPressPower();
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableRecent() {
        LTKDateUtil.m1403m("HisenseE12Impl -- disableRecent");
        try {
            f3861c.m2566l();
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HisenseE12Impl -- disableRecent = "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableScreenShot() {
        LTKDateUtil.m1403m("HisenseE12Impl -- disableScreenShot");
        try {
            f3861c.m2567m();
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HisenseE12Impl -- disableScreenShot = "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableShortPressPower() {
        LTKDateUtil.m1403m("HisenseE12Impl -- disableShortPressPower");
        try {
            f3861c.m2569o();
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HisenseE12Impl -- disableShortPressPower = "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableSpeech() {
        LTKDateUtil.m1403m("HisenseE12Impl -- disableSpeech ");
        try {
            f3861c.m2570p();
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HisenseE12Impl -- disableSpeech = "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableUsb() {
        LTKDateUtil.m1403m("HisenseE12Impl -- disableUsb");
        try {
            f3861c.m2571q();
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HisenseE12Impl -- disableUsb = "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableVolume() {
        LTKDateUtil.m1403m("HisenseE12Impl -- disableVolume");
        try {
            f3861c.m2572r();
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HisenseE12Impl -- disableVolume = "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: e */
    public void mo1320e(String str) {
        LTKDateUtil.m1403m("HisenseE12Impl -- actionDisableApp");
        try {
            f3861c.m2558d(str);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HisenseE12Impl -- actionDisableApp = "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableBack() {
        LTKDateUtil.m1403m("HisenseE12Impl -- enableBack");
        try {
            f3861c.m2574t();
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HisenseE12Impl -- enableBack = "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableBluetooth() {
        LTKDateUtil.m1403m("HisenseE12Impl -- enableBluetooth");
        try {
            f3861c.m2575u();
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HisenseE12Impl -- enableBluetooth = "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableCamera() {
        LTKDateUtil.m1403m("HisenseE12Impl -- enableCamera");
        try {
            f3861c.m2576v();
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HisenseE12Impl -- enableCamera = "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableGPS() {
        LTKDateUtil.m1403m("HisenseE12Impl -- enableGPS");
        try {
            f3861c.m2577w();
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HisenseE12Impl -- enableGPS = "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableHome() {
        LTKDateUtil.m1403m("HisenseE12Impl -- enableHome");
        try {
            f3861c.m2578x();
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HisenseE12Impl -- enableHome = "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableLongPressPower() {
        LTKDateUtil.m1403m("HisenseE12Impl -- enableLongPressPower");
        try {
            f3861c.m2579y();
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HisenseE12Impl -- enableLongPressPower = "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableMobileData() {
        LTKDateUtil.m1403m("HisenseE12Impl -- enableMobileData");
        try {
            f3861c.m2535A();
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HisenseE12Impl -- enableMobileData = "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableNavigation() {
        LTKDateUtil.m1403m("HisenseE12Impl -- enableNavigation");
        enableHome();
        enableBack();
        enableRecent();
        enableVolume();
        enableShortPressPower();
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableRecent() {
        LTKDateUtil.m1403m("HisenseE12Impl -- enableRecent ");
        try {
            f3861c.m2536B();
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HisenseE12Impl -- enableRecent = "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableScreenShot() {
        LTKDateUtil.m1403m("HisenseE12Impl -- enableScreenShot");
        try {
            f3861c.m2537C();
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HisenseE12Impl -- enableScreenShot = "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableShortPressPower() {
        LTKDateUtil.m1403m("HisenseE12Impl -- enableShortPressPower");
        try {
            f3861c.m2539E();
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HisenseE12Impl -- enableShortPressPower = "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableSpeech() {
        LTKDateUtil.m1403m("HisenseE12Impl -- enableSpeech");
        try {
            f3861c.m2540F();
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HisenseE12Impl -- enableSpeech = "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableUsb() {
        LTKDateUtil.m1403m("HisenseE12Impl -- enableUsb");
        try {
            f3861c.m2541G();
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HisenseE12Impl -- enableUsb = "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableVolume() {
        LTKDateUtil.m1403m("HisenseE12Impl -- enableVolume");
        try {
            f3861c.m2542H();
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HisenseE12Impl -- enableVolume = "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: h0 */
    public void mo1324h0() {
        LTKDateUtil.m1403m("HisenseE12Impl -- actionShutdown");
        try {
            f3861c.m2548N();
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HisenseE12Impl -- actionShutdown = "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: r */
    public void mo1327r(List<String> list) {
        LTKDateUtil.m1403m("HisenseE12Impl -- hideWifiAdvanced");
        try {
            f3861c.m2544J();
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HisenseE12Impl -- hideWifiAdvanced = "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: s */
    public boolean mo1328s(List<String> list) {
        LTKDateUtil.m1403m("HisenseE12Impl -- setAppWhiteList ");
        try {
            return f3861c.m2557c(list);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HisenseE12Impl -- setAppWhiteList = "));
            return false;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: t */
    public void mo1329t(boolean z) {
        LTKDateUtil.m1403m("HisenseE12Impl -- actionResetFactory");
        try {
            f3861c.m2546L();
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HisenseE12Impl -- actionResetFactory = "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: t0 */
    public List<String> mo1330t0() {
        LTKDateUtil.m1403m("HisenseE12Impl -- getUrlWhiteList");
        try {
            return f3861c.m2553S();
        } catch (Throwable th) {
            return CompilerOutline.m1773r(th, CompilerOutline.m1771p(th, "HisenseE12Impl -- getUrlWhiteList = "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: y0 */
    public void mo1331y0(String str) {
        LTKDateUtil.m1403m("HisenseE12Impl -- actionEnableApp");
        try {
            f3861c.m2573s(str);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HisenseE12Impl -- actionEnableApp = "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: z0 */
    public void mo1332z0(boolean z) {
        LTKDateUtil.m1403m("HisenseE12Impl -- disableSdCard");
        try {
            f3861c.m2568n();
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HisenseE12Impl -- disableSdCard = "));
        }
    }
}
