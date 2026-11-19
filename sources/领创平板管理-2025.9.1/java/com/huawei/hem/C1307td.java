package com.huawei.hem;

import android.app.admin.DevicePolicyManager;
import android.content.ComponentName;
import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.huawei.android.app.admin.DeviceHwSystemManager;
import com.huawei.android.app.admin.HwDevicePolicyManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: HuaweiEmui3Impl.java */
/* renamed from: com.huawei.hem.td */
/* loaded from: classes.dex */
public class C1307td extends C1055jc {

    /* renamed from: b */
    public static C1307td f3784b = new C1307td();

    /* renamed from: c */
    public static HwDevicePolicyManager f3785c;

    /* renamed from: d */
    public static ComponentName f3786d;

    /* renamed from: e */
    public static DeviceHwSystemManager f3787e;

    /* renamed from: f */
    public static Context f3788f;

    /* renamed from: W0 */
    public static C1307td m2730W0(Context context, String str) {
        f3786d = new ComponentName(str, "HuaweiEmui3Impl");
        f3785c = new HwDevicePolicyManager(context);
        f3788f = context;
        try {
            f3787e = new DeviceHwSystemManager();
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("huawei_emui3  create DeviceHwSystemManager model error:"));
        }
        return f3784b;
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: A0 */
    public void mo1334A0(List<String> list) {
        List<String> listMo1339L0 = mo1339L0();
        if (!AbstractC1102l9.m2273N(listMo1339L0)) {
            mo1342Q0(listMo1339L0);
        }
        try {
            f3785c.addDisallowedUninstallPackages(f3786d, list);
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("add disallowed uninstall  exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: B0 */
    public void mo1304B0(List<String> list) {
        if (AbstractC1102l9.m2273N(list)) {
            return;
        }
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            mo1331y0(it.next());
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: F */
    public void mo1306F(String str) {
        try {
            f3785c.installPackage(f3786d, str);
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("huawei_emui3 silent install error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: G0 */
    public List<String> mo1307G0() {
        if (!m2732X0()) {
            return null;
        }
        try {
            return f3785c.getNetworkAccessAppWhiteList(f3786d);
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("get network access appwhite exception:"));
            return null;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: I0 */
    public void mo1308I0(List<String> list) {
        if (m2732X0()) {
            try {
                f3785c.cleanNetworkAccessAppWhiteList(f3786d);
                f3785c.addNetworkAccessAppWhiteList(f3786d, list);
            } catch (Throwable th) {
                C0948f6.m1745C(th, C0948f6.m1765j("set network access appwhite exception:"));
            }
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: L0 */
    public List<String> mo1339L0() {
        try {
            return f3785c.getDisallowedUninstallPackageList(f3786d);
        } catch (Throwable th) {
            StringBuilder sbM1765j = C0948f6.m1765j("get disallow uninstall exception:");
            sbM1765j.append(th.getMessage());
            C0850bc.m1403m(sbM1765j.toString());
            return new ArrayList();
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: M0 */
    public List<String> mo1311M0() {
        try {
            return f3785c.getInstallPackageWhiteList(f3786d);
        } catch (Throwable th) {
            StringBuilder sbM1765j = C0948f6.m1765j("huawei_emui3 getAppWhiteList== exception:");
            sbM1765j.append(th.getMessage());
            C0850bc.m1403m(sbM1765j.toString());
            return new ArrayList();
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: N */
    public boolean mo1312N(long j) {
        try {
            f3785c.setSysTime(f3786d, j);
            return true;
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("huawei_emui3 setSystemTime== exception:"));
            return true;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: O */
    public void mo1313O(String str, String str2) {
        Log.i("huawei_emui3 ", "system init start");
        C0850bc.m1411u("huawei_emui3 ", "system init start");
        C0850bc.m1392b("ips====>" + f3785c.getIPWhiteList(f3786d));
        try {
            f3785c.setCustomLauncher(f3786d, str, str2);
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("huawei_emui3 set custom launcher exception:"));
        }
        try {
            ArrayList arrayList = new ArrayList();
            arrayList.add(str);
            f3785c.setForbidKillAppWhitelist(f3786d, arrayList);
        } catch (Throwable th2) {
            C0948f6.m1745C(th2, C0948f6.m1765j("huawei_emui3 set forbid kill app  exception:"));
        }
        try {
            f3785c.setCustomSettings(f3786d, true);
        } catch (Throwable th3) {
            C0948f6.m1745C(th3, C0948f6.m1765j("huawei_emui3 set custom setting  exception:"));
        }
        try {
            f3785c.setStatusBarExpandPanelDisabled(f3786d, true);
        } catch (Throwable th4) {
            C0948f6.m1745C(th4, C0948f6.m1765j("huawei_emui3 set status bar exception:"));
        }
        try {
            f3785c.enableInstallPackage(f3786d);
        } catch (Throwable th5) {
            C0948f6.m1745C(th5, C0948f6.m1765j("huawei_emui3 install package exception:"));
        }
        try {
            f3785c.setDeviceAdminActivate(f3786d, str, true);
        } catch (Throwable th6) {
            C0948f6.m1745C(th6, C0948f6.m1765j("huawei_emui3 actionActiveDeviceAdmin:"));
        }
        try {
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add("com.android.deskclock");
            arrayList2.add("com.android.calendar");
            f3785c.addAllowNotificationApps(f3786d, arrayList2);
        } catch (Throwable th7) {
            C0948f6.m1744B(th7, C0948f6.m1765j("HuaweiImpl:"));
        }
        m2731V0();
        try {
            f3785c.setSafeModeDisabled(f3786d, true);
        } catch (Throwable th8) {
            C0948f6.m1745C(th8, C0948f6.m1765j("huawei_emui3 safe model exception:"));
        }
        try {
            f3785c.setTimeModifyDisabled(f3786d, true);
        } catch (Throwable th9) {
            C0948f6.m1745C(th9, C0948f6.m1765j("huawei_emui3 set time modify exception:"));
        }
        try {
            f3785c.setShareInterfaceDisabled(f3786d, true);
        } catch (Throwable th10) {
            C0948f6.m1745C(th10, C0948f6.m1765j("huawei_emui3 set share exception:"));
        }
        Log.i("huawei_emui3 ", "system init end");
        C0850bc.m1411u("huawei_emui3 ", "system init end");
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: Q */
    public void mo1314Q(String str) {
        try {
            f3785c.uninstallPackage(f3786d, str, false);
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("huawei_emui3 silent uninstall error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: Q0 */
    public void mo1342Q0(List<String> list) {
        try {
            f3785c.removeDisallowedUninstallPackages(f3786d, list);
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("remove disallow uninstall exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: R */
    public void mo2056R(int i) {
        try {
            f3785c.setControlMode(f3786d, i);
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("set control mode exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: V */
    public boolean mo1316V(List<String> list) {
        if (!m2732X0()) {
            try {
                f3785c.setIPWhiteList(f3786d, list);
                return false;
            } catch (Throwable th) {
                C0948f6.m1745C(th, C0948f6.m1765j("huawei_emui3 set url white list exception:"));
                return false;
            }
        }
        try {
            f3785c.cleanNetworkAccessWhiteList(f3786d);
            f3785c.addNetworkAccessWhiteList(f3786d, list);
            return false;
        } catch (Throwable th2) {
            C0948f6.m1745C(th2, C0948f6.m1765j("huawei_emui3 set url white list exception:"));
            return false;
        }
    }

    /* renamed from: V0 */
    public void m2731V0() {
        try {
            f3785c.setFactoryResetDisabled(f3786d, true);
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("disable factory exception:"));
        }
    }

    /* renamed from: X0 */
    public final boolean m2732X0() throws NumberFormatException {
        String strM1595l = C0904de.m1595l("ro.build.date");
        if (!TextUtils.isEmpty(strM1595l)) {
            long j = Long.parseLong(C0850bc.m1394d(strM1595l, "yyyyMMddHHmmss"));
            C0850bc.m1390A("==> destTime == 20171123000000, romBuildTime == " + j);
            if (j > 20171123000000L) {
                C0850bc.m1390A("==> using new interface");
                return true;
            }
            C0850bc.m1390A("==> using old interface");
        }
        return false;
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: b0 */
    public void mo1318b0(List<String> list) {
        try {
            f3785c.setWifiAdvancedMenuHidden(f3786d, false);
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("huawei_emui3 show wifi advance== exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: c */
    public void mo1319c(boolean z) {
        try {
            f3785c.setExternalStorageDisabled(f3786d, false);
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("enable sdcard exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: d */
    public void mo1506d(ArrayList<String> arrayList) {
        try {
            if (f3787e == null) {
                return;
            }
            ArrayList superWhiteListForHwSystemManger = f3787e.getSuperWhiteListForHwSystemManger(f3786d);
            if (!AbstractC1102l9.m2272M(superWhiteListForHwSystemManger)) {
                C0850bc.m1403m("super applist:" + superWhiteListForHwSystemManger.toString());
                f3787e.removeSuperWhiteListForHwSystemManger(f3786d, superWhiteListForHwSystemManger);
            }
            if (!AbstractC1102l9.m2272M(arrayList)) {
                f3787e.setSuperWhiteListForHwSystemManger(f3786d, arrayList);
            }
            C0850bc.m1403m("set super white list for hw system manager");
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("set super white exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableBack() {
        try {
            f3785c.setBackButtonDisabled(f3786d, true);
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("huawei_emui3 disable back error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableBluetooth() {
        try {
            f3785c.setBluetoothDisabled(f3786d, true);
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("huawei_emui3 setBluetoothDisabled error:"));
        }
        try {
            f3785c.setBluetoothTransferFileDisabled(f3786d, true);
        } catch (Throwable th2) {
            C0948f6.m1745C(th2, C0948f6.m1765j("huawei_emui3 setBluetoothTransferFileDisabled error:"));
        }
        try {
            f3785c.setBluetoothSendFileDisabled(f3786d, true);
        } catch (Throwable th3) {
            C0948f6.m1745C(th3, C0948f6.m1765j("huawei_emui3 setBluetoothSendFileDisabled error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableCamera() {
        try {
            f3785c.setCameraDisabled(f3786d, true);
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("huawei_emui3 disable camera error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableFireWall() {
        if (!m2732X0()) {
            mo1316V(null);
            return;
        }
        try {
            f3785c.cleanNetworkAccessWhiteList(f3786d);
            f3785c.cleanNetworkAccessAppWhiteList(f3786d);
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("disable firewall exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableGPS() {
        try {
            f3785c.setGpsDisabled(f3786d, true);
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("huawei_emui3 disable gps error:"));
        }
        try {
            f3785c.setGpsStatus(f3786d, false);
        } catch (Throwable th2) {
            C0948f6.m1745C(th2, C0948f6.m1765j("huawei_emui3 disable gps status error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableHome() {
        try {
            f3785c.setHomeButtonDisabled(f3786d, true);
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("huawei_emui3 disable home  error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableMobileData() {
        try {
            f3785c.setDataConnectivityDisabled(f3786d, true);
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("huawei_emui3 disableMobileData== exception:"));
        }
        try {
            f3785c.openMobileData(f3786d, false);
        } catch (Throwable th2) {
            C0948f6.m1745C(th2, C0948f6.m1765j("huawei_emui3 disableMobileData== exception:"));
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
    public void disableOTG() {
        try {
            f3785c.setOTGUSBDiskDisabled(f3786d, true);
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("disable otg exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableRecent() {
        try {
            f3785c.setRecentTaskButtonDisabled(f3786d, true);
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("huawei_emui3 disable recent error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableShortPressPower() {
        try {
            f3785c.setPowerKeyDisabled(f3786d, true);
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("huawei_emui3 disable short press error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableSpeech() {
        try {
            f3785c.setVoiceDisabled(f3786d, true);
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("huawei_emui3 setVoiceDisabled== exception:"));
        }
        try {
            f3785c.setSMSDisabled(f3786d, true);
        } catch (Throwable th2) {
            C0948f6.m1745C(th2, C0948f6.m1765j("huawei_emui3 setSMSDisabled== exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableUsb() {
        try {
            f3785c.setUSBDataDisabled(f3786d, true);
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("huawei_emui3  setUSBDataDisabled error:"));
        }
        try {
            f3785c.setAdbDisabled(f3786d, true);
        } catch (Throwable th2) {
            C0948f6.m1746D(th2, C0948f6.m1765j("huawei_emui3  setAdbDisabled error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableVolume() {
        try {
            f3785c.setVolumeKeyDisabled(f3786d, true);
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("huawei_emui3 disable volume error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: e */
    public void mo1320e(String str) {
        try {
            f3785c.setApplicationDisabled(f3786d, str, true);
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("huawei_emui3 disable app  error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableBack() {
        try {
            f3785c.setBackButtonDisabled(f3786d, false);
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("huawei_emui3 enable home error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableBluetooth() {
        try {
            f3785c.setBluetoothDisabled(f3786d, false);
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("huawei_emui3 setBluetoothDisabled error:"));
        }
        try {
            f3785c.setBluetoothTransferFileDisabled(f3786d, true);
        } catch (Throwable th2) {
            C0948f6.m1745C(th2, C0948f6.m1765j("huawei_emui3 setBluetoothTransferFileDisabled error:"));
        }
        try {
            f3785c.setBluetoothSendFileDisabled(f3786d, true);
        } catch (Throwable th3) {
            C0948f6.m1745C(th3, C0948f6.m1765j("huawei_emui3 setBluetoothSendFileDisabled error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableCamera() {
        try {
            f3785c.setCameraDisabled(f3786d, false);
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("huawei_emui3 enable camera error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableGPS() {
        try {
            f3785c.setGpsDisabled(f3786d, false);
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("huawei_emui3 enable gps error:"));
        }
        try {
            f3785c.setGpsStatus(f3786d, true);
        } catch (Throwable th2) {
            C0948f6.m1745C(th2, C0948f6.m1765j("huawei_emui3 enable gps status error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableHome() {
        try {
            f3785c.setHomeButtonDisabled(f3786d, false);
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("huawei_emui3 enable home  error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableMobileData() {
        try {
            f3785c.setDataConnectivityDisabled(f3786d, false);
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("huawei_emui3 enable mobile data:"));
        }
        try {
            f3785c.openMobileData(f3786d, true);
        } catch (Throwable th2) {
            C0948f6.m1745C(th2, C0948f6.m1765j("huawei_emui3 enableMobileData== exception:"));
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
    public void enableOTG() {
        try {
            f3785c.setOTGUSBDiskDisabled(f3786d, false);
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("enable otg exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableRecent() {
        try {
            f3785c.setRecentTaskButtonDisabled(f3786d, false);
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("huawei_emui3 enable recent error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableShortPressPower() {
        try {
            f3785c.setPowerKeyDisabled(f3786d, false);
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("huawei_emui3 enable short press error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableSpeech() {
        try {
            f3785c.setVoiceDisabled(f3786d, false);
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("huawei_emui3 enable setVoiceDisabled== exception:"));
        }
        try {
            f3785c.setSMSDisabled(f3786d, false);
        } catch (Throwable th2) {
            C0948f6.m1745C(th2, C0948f6.m1765j("huawei_emui3 enable setSMSDisabled== exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableUsb() {
        try {
            f3785c.setUSBDataDisabled(f3786d, false);
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("huawei_emui3  setUSBDataDisabled error:"));
        }
        try {
            f3785c.setAdbDisabled(f3786d, false);
        } catch (Throwable th2) {
            C0948f6.m1746D(th2, C0948f6.m1765j("huawei_emui3  setAdbDisabled error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableVolume() {
        try {
            f3785c.setVolumeKeyDisabled(f3786d, false);
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("huawei_emui3 enable volume error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: f */
    public void mo1348f() {
        try {
            f3785c.setFactoryResetDisabled(f3786d, false);
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("enable factory exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: g */
    public void mo1321g() {
        try {
            f3785c.rebootDevice(f3786d);
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("huawei_emui3 actionRebootDevice error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: h */
    public void mo1323h() {
        if (m2732X0()) {
            try {
                f3785c.cleanNetworkAccessAppWhiteList(f3786d);
            } catch (Throwable th) {
                C0948f6.m1745C(th, C0948f6.m1765j("clean network access appwhite exception:"));
            }
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: h0 */
    public void mo1324h0() {
        try {
            f3785c.shutdownDevice(f3786d);
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("huawei_emui3 actionShutdown error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: k0 */
    public void mo1326k0(List<String> list) {
        if (AbstractC1102l9.m2273N(list)) {
            return;
        }
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            mo1320e(it.next());
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: p */
    public int mo2071p(boolean z) {
        try {
            return f3785c.getControlMode(f3786d);
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("get control mode exception:"));
            return 1;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: r */
    public void mo1327r(List<String> list) {
        try {
            f3785c.setWifiAdvancedMenuHidden(f3786d, true);
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("huawei_emui3 hide wifi advance== exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: s */
    public boolean mo1328s(List<String> list) {
        try {
            C0850bc.m1403m("huawei_emui3 setAppWhiteList");
            f3785c.removeInstallPackages(f3786d, mo1311M0());
            f3785c.addInstallPackages(f3786d, list);
            return false;
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("huawei_emui3 setAppWhiteList== exception:"));
            return false;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: t */
    public void mo1329t(boolean z) {
        mo1348f();
        try {
            String strM1589f = C0904de.m1589f();
            if (strM1589f.equals("M2-A01w") || strM1589f.equals("M2-A01L") || strM1589f.equals("HUAWEI M2-A01W") || strM1589f.equals("HUAWEI M2-801W") || strM1589f.equals("HUAWEI M2-803L") || strM1589f.equals("HUAWEI M2-A01L")) {
                f3785c.setFactoryReset(f3786d);
                return;
            }
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("huawei_emui3 set factory reset error:"));
        }
        if (!z) {
            try {
                f3785c.setFactoryReset(f3786d);
                return;
            } catch (Throwable th2) {
                C0948f6.m1746D(th2, C0948f6.m1765j("huawei_emui3 set factory reset error:"));
                return;
            }
        }
        DevicePolicyManager devicePolicyManager = (DevicePolicyManager) f3788f.getSystemService("device_policy");
        try {
            C0850bc.m1403m("WipeSoldier -- wipeDataIncludeSDCard..........");
            devicePolicyManager.wipeData(1);
        } catch (SecurityException e) {
            C0850bc.m1393c("WipeSoldier -- wipeDataIncludeSDCard..........e = " + e);
            e.printStackTrace();
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: t0 */
    public List<String> mo1330t0() {
        if (m2732X0()) {
            try {
                return f3785c.getNetworkAccessWhiteList(f3786d);
            } catch (Throwable th) {
                C0948f6.m1745C(th, C0948f6.m1765j("huawei_emui3 get url white exception:"));
            }
        } else {
            try {
                return f3785c.getIPWhiteList(f3786d);
            } catch (Throwable th2) {
                C0948f6.m1745C(th2, C0948f6.m1765j("huawei_emui3 get url white exception:"));
            }
        }
        return new ArrayList();
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: v0 */
    public void mo2079v0(List<String> list) {
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            try {
                f3785c.clearPackageData(f3786d, it.next());
            } catch (Throwable th) {
                C0948f6.m1745C(th, C0948f6.m1765j("huawei_emui3 actionClearCache== exception:"));
            }
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: y0 */
    public void mo1331y0(String str) {
        try {
            f3785c.setApplicationDisabled(f3786d, str, false);
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("huawei_emui3 enable app  error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: z0 */
    public void mo1332z0(boolean z) {
        try {
            f3785c.setExternalStorageDisabled(f3786d, true);
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("disable sdcard exception:"));
        }
    }
}
