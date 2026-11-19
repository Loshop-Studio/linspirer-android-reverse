package com.huawei.hem;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import com.huawei.hem.ITools;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: JinTaiYiImpl.java */
/* renamed from: com.huawei.hem.zc */
/* loaded from: classes.dex */
public class JinTaiYiImpl extends AndroidImpl {

    /* renamed from: c */
    public static Context f4301c;

    /* renamed from: d */
    public static ITools f4302d;

    /* renamed from: b */
    public static JinTaiYiImpl f4300b = new JinTaiYiImpl();

    /* renamed from: e */
    public static ServiceConnection f4303e = new a();

    /* renamed from: f */
    public static IBinder.DeathRecipient f4304f = new b();

    /* compiled from: JinTaiYiImpl.java */
    /* renamed from: com.huawei.hem.zc$a */
    public static class a implements ServiceConnection {
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) throws RemoteException {
            ITools interfaceC1230qbM2615J = ITools.a.m2615J(iBinder);
            JinTaiYiImpl.f4302d = interfaceC1230qbM2615J;
            if (interfaceC1230qbM2615J != null) {
                try {
                    interfaceC1230qbM2615J.asBinder().linkToDeath(JinTaiYiImpl.f4304f, 0);
                } catch (RemoteException e) {
                    StringBuilder sbM1765j = CompilerOutline.m1765j("JinTaiYiImpl ---ITools linkToDeath error:");
                    sbM1765j.append(e.getMessage());
                    LTKDateUtil.m1403m(sbM1765j.toString());
                }
                LTKDateUtil.m1403m("JinTaiYiImpl ---myAIDLService绑定成功");
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            JinTaiYiImpl.f4302d = null;
        }
    }

    /* compiled from: JinTaiYiImpl.java */
    /* renamed from: com.huawei.hem.zc$b */
    public static class b implements IBinder.DeathRecipient {
        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            if (JinTaiYiImpl.f4302d == null) {
                return;
            }
            LTKDateUtil.m1403m("JinTaiYiImpl ---服务端进程异常终止，重新绑定");
            JinTaiYiImpl.f4302d.asBinder().unlinkToDeath(JinTaiYiImpl.f4304f, 0);
            JinTaiYiImpl.f4302d = null;
            Intent intent = new Intent("com.kte.interfacesettings.aidl");
            intent.setPackage("com.kte.interfacesettings");
            JinTaiYiImpl.f4301c.bindService(intent, JinTaiYiImpl.f4303e, 1);
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: B0 */
    public void mo1304B0(List<String> list) {
        if (AbstractC1102l9.m2273N(list)) {
            return;
        }
        try {
            f4302d.setAppEnable(list);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JinTaiYiImpl ----actionEnableApp error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: E0 */
    public void mo1336E0(List<String> list) {
        LTKDateUtil.m1403m("JinTaiYiImpl ---setPersistentApp");
        try {
            if (AbstractC1102l9.m2273N(list)) {
                return;
            }
            for (int i = 0; i < list.size(); i++) {
                f4302d.mo2592O(list.get(i), true);
            }
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JinTaiYiImpl ---setPersistentApp error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: F */
    public void mo1306F(String str) {
        LTKDateUtil.m1403m("JinTaiYiImpl ---actionSilentInstall");
        try {
            f4302d.silentInstall(str, false);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JinTaiYiImpl ---actionSilentInstall error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: G0 */
    public List<String> mo1307G0() {
        LTKDateUtil.m1403m("JinTaiYiImpl ---getNetworkAccessAppWhiteList");
        try {
            List<String> listMo2603b0 = f4302d.mo2603b0();
            return !AbstractC1102l9.m2273N(listMo2603b0) ? listMo2603b0 : new ArrayList();
        } catch (Throwable th) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("JinTaiYiImpl ---getNetworkAccessAppWhiteList error:");
            sbM1765j.append(th.getMessage());
            LTKDateUtil.m1403m(sbM1765j.toString());
            return new ArrayList();
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: I0 */
    public void mo1308I0(List<String> list) {
        LTKDateUtil.m1403m("JinTaiYiImpl ----setNetworkAccessAppWhiteList");
        try {
            if (AbstractC1102l9.m2273N(list)) {
                return;
            }
            f4302d.mo2591L0(null, 7, false);
            LTKDateUtil.m1403m("JinTaiYiImpl ----清除后 应用白名单列外 大小:" + mo1307G0().size());
            for (int i = 0; i < list.size(); i++) {
                f4302d.mo2591L0(list.get(i), 7, true);
            }
            LTKDateUtil.m1403m("JinTaiYiImpl ----增加后 应用白名单列外 大小:" + mo1307G0().size());
        } catch (Throwable unused) {
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: J0 */
    public void mo2050J0(int i, boolean z) {
        try {
            f4302d.mo2594Q(z);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JinTaiYiImpl ---enableEyeProtect error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: M0 */
    public List<String> mo1311M0() {
        try {
            return f4302d.getAppInstallWhiteList();
        } catch (Throwable th) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("JinTaiYiImpl ---getAppWhiteList error:");
            sbM1765j.append(th.getMessage());
            LTKDateUtil.m1403m(sbM1765j.toString());
            return new ArrayList();
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: N */
    public boolean mo1312N(long j) {
        LTKDateUtil.m1403m("JinTaiYiImpl ---setSystemTime");
        try {
            f4302d.mo2614y1(j);
            return true;
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JinTaiYiImpl ---setSystemTime error:"));
            return true;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: O */
    public void mo1313O(String str, String str2) {
        LTKDateUtil.m1403m("JinTaiYiImpl ----systemInit start");
        LTKDateUtil.m1403m("JinTaiYiImpl ----systemInit end");
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: Q */
    public void mo1314Q(String str) {
        LTKDateUtil.m1403m("JinTaiYiImpl ---actionSilentUnInstall");
        try {
            f4302d.silentUninstall(str);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JinTaiYiImpl ---actionSilentUnInstall error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: S */
    public void mo1315S() {
        LTKDateUtil.m1403m("JinTaiYiImpl ---disableSMS");
        try {
            f4302d.mo2595Q0(true);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JinTaiYiImpl ---disableSMS error:"));
        }
        try {
            f4302d.mo2613w1(true);
        } catch (Throwable th2) {
            CompilerOutline.m1745C(th2, CompilerOutline.m1765j("JinTaiYiImpl --- setMmsReceiveDisabled error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: V */
    public boolean mo1316V(List<String> list) {
        LTKDateUtil.m1403m("JinTaiYiImpl ----setUrlWhiteList");
        try {
            if (!AbstractC1102l9.m2273N(list)) {
                f4302d.mo2590K2(null, 7, false);
                LTKDateUtil.m1403m("JinTaiYiImpl --清除后的网址白名单大小:" + mo1330t0().size());
                for (int i = 0; i < list.size(); i++) {
                    String str = list.get(i);
                    if (LauncherDeviceUtils.m1597n(str)) {
                        f4302d.mo2590K2(".*" + str, 7, true);
                    } else if (LauncherDeviceUtils.m1599p(str)) {
                        if (LauncherDeviceUtils.m1603t(str)) {
                            f4302d.mo2590K2(str, 7, true);
                        } else if (str.endsWith("/24")) {
                            f4302d.mo2590K2(str.substring(0, str.indexOf(".", str.indexOf(".", str.indexOf(".") + 1) + 1)) + ".*", 7, true);
                        } else if (str.endsWith("/16")) {
                            f4302d.mo2590K2(str.substring(0, str.indexOf(".", str.indexOf(".", str.indexOf(".") + 1))) + ".*.*", 7, true);
                        } else if (str.endsWith("/8")) {
                            f4302d.mo2590K2(str.substring(0, str.indexOf(".", str.indexOf(".", str.indexOf(".")))) + ".*.*.*", 7, true);
                        }
                    }
                }
                LTKDateUtil.m1403m("JinTaiYiImpl --添加后的网址白名单大小:" + mo1330t0().size());
            }
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JinTaiYiImpl ---setUrlWhiteList error:"));
        }
        return false;
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: X */
    public void mo1346X() {
        LTKDateUtil.m1403m("JinTaiYiImpl ---enableStatusBar");
        try {
            f4302d.mo2593P0();
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JinTaiYiImpl ---enableStatusBar error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: Y */
    public String mo1317Y(Context context) {
        LTKDateUtil.m1403m("JinTaiYiImpl ---getWifiMacAddress");
        try {
            return f4302d.mo2609p2();
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JinTaiYiImpl ---getWifiMacAddress error:"));
            return "";
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: c */
    public void mo1319c(boolean z) {
        LTKDateUtil.m1403m("JinTaiYiImpl ---enableSdCard");
        try {
            f4302d.setSDOTGEnable();
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JinTaiYiImpl ---enableSdCard error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: d */
    public void mo1506d(ArrayList<String> arrayList) {
        try {
            if (AbstractC1102l9.m2272M(arrayList)) {
                return;
            }
            for (int i = 0; i < arrayList.size(); i++) {
                f4302d.mo2602a3(arrayList.get(i));
            }
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JinTaiYiImpl ---setSuperWhiteListForSys error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableBack() {
        LTKDateUtil.m1403m("JinTaiYiImpl ---disableBack");
        try {
            f4302d.mo2585C();
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JinTaiYiImpl ---disableBack error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableBluetooth() {
        LTKDateUtil.m1403m("JinTaiYiImpl ---disableBluetooth");
        try {
            f4302d.mo2601X1(false);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JinTaiYiImpl ---disableBluetooth error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableCamera() {
        LTKDateUtil.m1403m("JinTaiYiImpl ---disableCamera");
        try {
            f4302d.setCameraDisable();
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JinTaiYiImpl ---disableCamera error: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableGPS() {
        LTKDateUtil.m1403m("JinTaiYiImpl ---disableGPS");
        try {
            f4302d.mo2606e1(false);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JinTaiYiImpl ---disableGPS error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableHome() {
        LTKDateUtil.m1403m("JinTaiYiImpl ---disableHome");
        try {
            f4302d.mo2604c1();
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JinTaiYiImpl ---disableHome error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableNavigation() {
        disableRecent();
        disableBack();
        disableHome();
        disableVolume();
        disableShortPressPower();
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableRecent() {
        LTKDateUtil.m1403m("JinTaiYiImpl ---disableRecent");
        try {
            f4302d.mo2599U0();
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JinTaiYiImpl ---disableRecent error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableShortPressPower() {
        LTKDateUtil.m1403m("JinTaiYiImpl ---disableShortPressPower");
        try {
            f4302d.setPowerKeyDisable();
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JinTaiYiImpl ---disableShortPressPower error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableSpeech() {
        LTKDateUtil.m1403m("JinTaiYiImpl ---disableSpeech");
        try {
            f4302d.mo2587D0(true);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JinTaiYiImpl ---disableSpeech error:"));
        }
        try {
            f4302d.setVoiceIncomingDisabled(true);
        } catch (Throwable th2) {
            CompilerOutline.m1745C(th2, CompilerOutline.m1765j("JinTaiYiImpl setVoiceIncomingDisabled error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableUsb() {
        LTKDateUtil.m1403m("JinTaiYiImpl ---disableUsb");
        try {
            f4302d.mo2612t2();
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JinTaiYiImpl ---setADBDisable error =="));
        }
        LTKDateUtil.m1403m("JinTaiYiImpl ---setMTPDisable");
        try {
            f4302d.mo2586C0();
        } catch (Throwable th2) {
            CompilerOutline.m1745C(th2, CompilerOutline.m1765j("JinTaiYiImpl ---setMTPDisable error:"));
        }
        try {
            f4302d.mo2598T(false);
        } catch (Throwable th3) {
            CompilerOutline.m1745C(th3, CompilerOutline.m1765j("JinTaiYiImpl ----turnOnMtp error:"));
        }
        try {
            f4302d.mo2597S2(18, false);
        } catch (RemoteException e) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("JinTaiYiImpl ---setSettingOptionGoneorVisible error:");
            sbM1765j.append(e.getMessage());
            LTKDateUtil.m1403m(sbM1765j.toString());
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableVolume() {
        LTKDateUtil.m1403m("JinTaiYiImpl ---disableVolume");
        try {
            f4302d.setVolSubDisable();
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JinTaiYiImpl ---disableVolume error:"));
        }
        try {
            f4302d.setVolAddDisable();
        } catch (Throwable th2) {
            CompilerOutline.m1745C(th2, CompilerOutline.m1765j("JinTaiYiImpl ---disableVolume error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: e */
    public void mo1320e(String str) {
        LTKDateUtil.m1403m("JinTaiYiImpl ----actionDisableApp");
        ArrayList arrayList = new ArrayList();
        arrayList.add(str);
        mo1326k0(arrayList);
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableBack() {
        LTKDateUtil.m1403m("JinTaiYiImpl ---enableBack");
        try {
            f4302d.mo2596S0();
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JinTaiYiImpl ---enableBack error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableBluetooth() {
        LTKDateUtil.m1403m("JinTaiYiImpl ---enableBluetooth");
        try {
            f4302d.setBluetoothEnable();
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JinTaiYiImpl ---enableBluetooth error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableCamera() {
        LTKDateUtil.m1403m("JinTaiYiImpl ---enableCamera");
        try {
            f4302d.setCameraEnable();
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JinTaiYiImpl ---enableCamera error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableGPS() {
        LTKDateUtil.m1403m("JinTaiYiImpl ---enableGPS");
        try {
            f4302d.mo2606e1(true);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JinTaiYiImpl ---enableGPS error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableHome() {
        LTKDateUtil.m1403m("JinTaiYiImpl ---enableHome");
        try {
            f4302d.mo2589I();
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JinTaiYiImpl ---enableHome error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableNavigation() {
        enableBack();
        enableRecent();
        enableHome();
        enableVolume();
        enableShortPressPower();
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableRecent() {
        LTKDateUtil.m1403m("JinTaiYiImpl ---enableRecent");
        try {
            f4302d.mo2600W1();
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JinTaiYiImpl ---enableRecent error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableShortPressPower() {
        LTKDateUtil.m1403m("JinTaiYiImpl ---enableShortPressPower");
        try {
            f4302d.setPowerKeyEnable();
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JinTaiYiImpl ---enableShortPressPower error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableSpeech() {
        LTKDateUtil.m1403m("JinTaiYiImpl ---enableSpeech");
        try {
            f4302d.mo2587D0(false);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JinTaiYiImpl ---enableSpeech error:"));
        }
        try {
            f4302d.setVoiceIncomingDisabled(false);
        } catch (Throwable th2) {
            CompilerOutline.m1745C(th2, CompilerOutline.m1765j("JinTaiYiImpl setVoiceIncomingDisabled error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableUsb() {
        LTKDateUtil.m1403m("JinTaiYiImpl ---enableUsb");
        try {
            f4302d.mo2605d3();
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JinTaiYiImpl ---setADBEnable error =="));
        }
        LTKDateUtil.m1403m("JinTaiYiImpl ---setMTPEnable");
        try {
            f4302d.mo2588E2();
        } catch (Throwable th2) {
            CompilerOutline.m1745C(th2, CompilerOutline.m1765j("JinTaiYiImpl ---setMTPEnable error:"));
        }
        try {
            f4302d.mo2598T(true);
        } catch (Throwable th3) {
            CompilerOutline.m1745C(th3, CompilerOutline.m1765j("JinTaiYiImpl ----turnOnMtp error:"));
        }
        try {
            f4302d.mo2597S2(18, true);
        } catch (RemoteException e) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("JinTaiYiImpl ---setSettingOptionGoneorVisible error:");
            sbM1765j.append(e.getMessage());
            LTKDateUtil.m1403m(sbM1765j.toString());
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableVolume() {
        LTKDateUtil.m1403m("JinTaiYiImpl ---enableVolume");
        try {
            f4302d.setVolSubEnable();
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JinTaiYiImpl ---enableVolume error:"));
        }
        try {
            f4302d.setVolAddEnable();
        } catch (Throwable th2) {
            CompilerOutline.m1745C(th2, CompilerOutline.m1765j("JinTaiYiImpl ---enableVolume error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: g */
    public void mo1321g() {
        LTKDateUtil.m1403m("JinTaiYiImpl ---actionRebootDevice");
        try {
            f4302d.mo2607l();
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JinTaiYiImpl ---actionRebootDevice error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: g0 */
    public void mo1322g0() {
        LTKDateUtil.m1403m("JinTaiYiImpl ---enableSMS");
        try {
            f4302d.mo2595Q0(false);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JinTaiYiImpl ---enableSMS error:"));
        }
        try {
            f4302d.mo2613w1(false);
        } catch (Throwable th2) {
            CompilerOutline.m1745C(th2, CompilerOutline.m1765j("JinTaiYiImpl --- setMmsReceiveDisabled error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: h0 */
    public void mo1324h0() {
        LTKDateUtil.m1403m("JinTaiYiImpl ---actionShutdown");
        try {
            f4302d.setDeviceShutDown();
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JinTaiYiImpl ---actionShutdown error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: k0 */
    public void mo1326k0(List<String> list) {
        if (AbstractC1102l9.m2273N(list)) {
            return;
        }
        try {
            f4302d.setAppDisable(list);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JinTaiYiImpl ----actionDisableApp error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: o */
    public List<String> mo1352o() {
        LTKDateUtil.m1403m("JinTaiYiImpl ----getPersistentApp");
        try {
            List<String> listMo2608o = f4302d.mo2608o();
            return !AbstractC1102l9.m2273N(listMo2608o) ? listMo2608o : new ArrayList();
        } catch (Throwable th) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("JinTaiYiImpl ----getPersistentApp error:");
            sbM1765j.append(th.getMessage());
            LTKDateUtil.m1403m(sbM1765j.toString());
            return new ArrayList();
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void removePersistentApp(List<String> list) {
        LTKDateUtil.m1403m("JinTaiYiImpl ---removePersistentApp");
        try {
            if (AbstractC1102l9.m2273N(list)) {
                return;
            }
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                f4302d.mo2592O(it.next(), false);
            }
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JinTaiYiImpl ---removePersistentApp error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: s */
    public boolean mo1328s(List<String> list) {
        LTKDateUtil.m1403m("JinTaiYiImpl ---setAppWhiteList");
        if (AbstractC1102l9.m2273N(list)) {
            try {
                f4302d.clearAppInstallWhiteList();
                return false;
            } catch (Throwable th) {
                CompilerOutline.m1745C(th, CompilerOutline.m1765j("JinTaiYiImpl ---cleanAppWhiteList error:"));
                return false;
            }
        }
        try {
            f4302d.addAppInstallWhiteList(list);
            return false;
        } catch (Throwable th2) {
            CompilerOutline.m1745C(th2, CompilerOutline.m1765j("JinTaiYiImpl ---setAppWhiteList error:"));
            return false;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: t */
    public void mo1329t(boolean z) {
        LTKDateUtil.m1403m("JinTaiYiImpl ---actionResetFactory");
        try {
            f4302d.mo2611r1();
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JinTaiYiImpl ---actionResetFactory error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: t0 */
    public List<String> mo1330t0() {
        LTKDateUtil.m1403m("JinTaiYiImpl ---getUrlWhiteList");
        try {
            List<String> listMo2610q3 = f4302d.mo2610q3();
            return !AbstractC1102l9.m2273N(listMo2610q3) ? listMo2610q3 : new ArrayList();
        } catch (Throwable th) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("JinTaiYiImpl ---getUrlWhiteList error:");
            sbM1765j.append(th.getMessage());
            LTKDateUtil.m1403m(sbM1765j.toString());
            return new ArrayList();
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: y0 */
    public void mo1331y0(String str) {
        LTKDateUtil.m1403m("JinTaiYiImpl ----actionEnableApp");
        ArrayList arrayList = new ArrayList();
        arrayList.add(str);
        mo1304B0(arrayList);
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: z0 */
    public void mo1332z0(boolean z) {
        LTKDateUtil.m1403m("JinTaiYiImpl ---disableSdCard");
        try {
            f4302d.setSDOTGDisable();
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JinTaiYiImpl ---disableSdCard error:"));
        }
    }
}
