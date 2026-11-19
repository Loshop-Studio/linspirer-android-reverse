package com.huawei.hem;

import android.app.csdk.CSDKManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: LenovoCSDKImpl.java */
/* renamed from: com.huawei.hem.ae */
/* loaded from: classes.dex */
public class C0826ae extends C1055jc {

    /* renamed from: b */
    public static C0826ae f2205b = new C0826ae();

    /* renamed from: c */
    public static CSDKManager f2206c;

    /* renamed from: d */
    public static Context f2207d;

    /* renamed from: W0 */
    public static /* synthetic */ void m1333W0() {
        try {
            f2206c.SetEnable(true);
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("LenovoCSDKImpl -- enableFireWall -error:"));
        }
        try {
            C0850bc.m1403m("LenovoCSDKImplread fire wall status:" + f2206c.isEnable());
        } catch (Throwable th2) {
            C0948f6.m1744B(th2, C0948f6.m1765j("LenovoCSDKImpl--readFireWall -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: A0 */
    public void mo1334A0(List<String> list) {
        C0850bc.m1403m("LenovoCSDKImpl -- addDisallowedUninstallPackages ");
        try {
            f2206c.addUninstallPackageBlackList(list);
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("LenovoCSDKImpl -- addDisallowedUninstallPackages -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: C */
    public void mo1305C() {
        C0850bc.m1403m("LenovoCSDKImpl -- disableNavigationBar ");
        try {
            f2206c.hideNavigationBar(true);
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("LenovoCSDKImpl -- disableNavigationBar -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: C0 */
    public void mo1335C0() {
        C0850bc.m1403m("LenovoCSDKImpl -- disableFileShare ");
        try {
            f2206c.disableBluetoothShare(true);
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("LenovoCSDKImpl -- disableFileShare -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: E0 */
    public void mo1336E0(List<String> list) {
        C0850bc.m1403m("LenovoCSDKImpl -- setPersistentApp ");
        try {
            f2206c.addPersistentAppList(list);
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("LenovoCSDKImpl -- setPersistentApp -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: F */
    public void mo1306F(String str) {
        C0850bc.m1403m("LenovoCSDKImpl -- actionSilentInstall ");
        try {
            f2206c.installPackage(str);
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("LenovoCSDKImpl -- actionSilentInstall -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: G */
    public String mo1337G() {
        C0850bc.m1403m("LenovoCSDKImpl -- getDeviceSN ");
        try {
            return f2206c.getDeviceInfo(2);
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("LenovoCSDKImpl -- getDeviceSN -error:"));
            return "";
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: G0 */
    public List<String> mo1307G0() {
        C0850bc.m1403m("LenovoCSDKImpl -- getNetworkAccessAppWhiteList ");
        try {
            return f2206c.getAppWhiteRules();
        } catch (Throwable th) {
            StringBuilder sbM1765j = C0948f6.m1765j("LenovoCSDKImpl -- getNetworkAccessAppWhiteList -error:");
            sbM1765j.append(th.getMessage());
            C0850bc.m1390A(sbM1765j.toString());
            return new ArrayList();
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: H */
    public void mo1338H() {
        try {
            C0850bc.m1403m("LenovoCSDKImpl actionDisableWifi");
            f2206c.disallowWifi_v3(false);
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("LenovoCSDKImpl actionDisableWifi error:"));
        }
        try {
            C0850bc.m1403m("LenovoCSDKImpl open wifi");
            f2206c.enableWifi_v3(true);
        } catch (Throwable th2) {
            C0948f6.m1745C(th2, C0948f6.m1765j("LenovoCSDKImpl open wifi error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: I0 */
    public void mo1308I0(List<String> list) {
        C0850bc.m1403m("LenovoCSDKImpl -- setNetworkAccessAppWhiteList ");
        if (AbstractC1102l9.m2273N(list)) {
            return;
        }
        mo1323h();
        try {
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                f2206c.AddAppWhiteRule(it.next());
            }
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("LenovoCSDKImpl -- setNetworkAccessAppWhiteList -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: J */
    public void mo1309J(String str) {
        C0850bc.m1403m("LenovoCSDKImpl -- actionKillApp ");
        try {
            f2206c.killApplicationProcess(str);
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("LenovoCSDKImpl -- actionKillApp -error:"));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v6, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r2v9 */
    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: L */
    public String mo1310L(String str) {
        Bitmap bitmapCaptureScreen;
        FileOutputStream fileOutputStream;
        C0850bc.m1403m("LenovoCSDKImpl -- actionScreenShot ");
        if (TextUtils.isEmpty(str)) {
            str = "/mnt/sdcard/Screenshots/";
        }
        StringBuilder sbM1765j = C0948f6.m1765j("Screenshot_");
        sbM1765j.append(C0850bc.m1400j());
        sbM1765j.append(".png");
        String string = sbM1765j.toString();
        File file = new File(str);
        ?? Exists = file.exists();
        if (Exists == 0) {
            file.mkdirs();
        }
        String strM1760e = C0948f6.m1760e(str, string);
        try {
            try {
                try {
                    bitmapCaptureScreen = f2206c.captureScreen();
                } catch (Throwable th) {
                    th = th;
                }
                try {
                    fileOutputStream = new FileOutputStream(strM1760e);
                    try {
                        bitmapCaptureScreen.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
                        fileOutputStream.flush();
                        Exists = fileOutputStream;
                    } catch (Exception e) {
                        e = e;
                        e.printStackTrace();
                        fileOutputStream.flush();
                        Exists = fileOutputStream;
                        Exists.close();
                        return strM1760e;
                    }
                } catch (Exception e2) {
                    e = e2;
                    fileOutputStream = null;
                } catch (Throwable th2) {
                    th = th2;
                    Exists = 0;
                    try {
                        Exists.flush();
                        Exists.close();
                    } catch (IOException e3) {
                        e3.printStackTrace();
                    }
                    throw th;
                }
                Exists.close();
            } catch (IOException e4) {
                e4.printStackTrace();
            }
            return strM1760e;
        } catch (Throwable th3) {
            C0948f6.m1746D(th3, C0948f6.m1765j("LenovoCSDKImpl -- actionScreenShot -error:"));
            return null;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: L0 */
    public List<String> mo1339L0() {
        C0850bc.m1403m("LenovoCSDKImpl -- getDisallowedUninstallPackageList ");
        try {
            return f2206c.getUninstallPackageBlackList();
        } catch (Throwable th) {
            StringBuilder sbM1765j = C0948f6.m1765j("LenovoCSDKImpl -- getDisallowedUninstallPackageList -error:");
            sbM1765j.append(th.getMessage());
            C0850bc.m1390A(sbM1765j.toString());
            return new ArrayList();
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: M0 */
    public List<String> mo1311M0() {
        C0850bc.m1403m("LenovoCSDKImpl -- getAppWhiteList ");
        try {
            return f2206c.getInstallPackageWhiteList();
        } catch (Throwable th) {
            StringBuilder sbM1765j = C0948f6.m1765j("LenovoCSDKImpl -- getAppWhiteList -error:");
            sbM1765j.append(th.getMessage());
            C0850bc.m1390A(sbM1765j.toString());
            return new ArrayList();
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: N */
    public boolean mo1312N(long j) {
        C0850bc.m1403m("LenovoCSDKImpl -- setSystemTime ");
        try {
            f2206c.setSysTime(j);
            return true;
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("LenovoCSDKImpl-- setSystemTime -error:"));
            return true;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: N0 */
    public void mo1340N0() {
        C0850bc.m1403m("LenovoCSDKImpl -- disableSIM ");
        try {
            f2206c.enableSIM(false);
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("LenovoCSDKImpl -- disableSIM -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: O */
    public void mo1313O(String str, String str2) {
        C0948f6.m1779x("LenovoCSDKImpl -- systemInit  start", str2);
        try {
            f2206c.setDeviceOwner("com.drupe.swd.launcher.huoshan.mdm.tool.DeviceAdmin");
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("LenovoCSDKImpl setDeviceOwner error"));
        }
        C0850bc.m1403m("LenovoCSDKImpl -- disableDropDownMenu ");
        try {
            f2206c.disableStatusBarPanel(true);
        } catch (Throwable th2) {
            C0948f6.m1746D(th2, C0948f6.m1765j("LenovoCSDKImpl-- disableDropDownMenu -error:"));
        }
        mo1335C0();
        C0850bc.m1403m("LenovoCSDKImpl -- disableStatusBarNotification ");
        try {
            f2206c.disableStatusBarNotification(true);
        } catch (Throwable th3) {
            C0948f6.m1746D(th3, C0948f6.m1765j("LenovoCSDKImpl -- disableStatusBarNotification -error:"));
        }
        mo1344V0();
        try {
            f2206c.setCustomLauncher(str, str2);
        } catch (Throwable th4) {
            C0948f6.m1746D(th4, C0948f6.m1765j("LenovoCSDKImpl custom launcher exception:"));
        }
        try {
            f2206c.disableWifiDirect(true);
        } catch (Throwable th5) {
            C0948f6.m1746D(th5, C0948f6.m1765j("LenovoCSDKImpl disable wifi direct exception:"));
        }
        try {
            f2206c.setSafeModeDisabled(true);
        } catch (Throwable th6) {
            C0948f6.m1746D(th6, C0948f6.m1765j("LenovoCSDKImpl safe mode disable exception:"));
        }
        try {
            f2206c.enableDevMode(false);
        } catch (Throwable th7) {
            C0948f6.m1746D(th7, C0948f6.m1765j("LenovoCSDKImpl-- disableDeveloperMode -error:"));
        }
        try {
            f2206c.disableMultiUser(true);
        } catch (Throwable th8) {
            C0948f6.m1746D(th8, C0948f6.m1765j("LenovoCSDKImpl-- disable MultiUser -error:"));
        }
        try {
            f2206c.disableLockScreenNotification(true);
        } catch (Throwable th9) {
            C0948f6.m1746D(th9, C0948f6.m1765j("LenovoCSDKImpl -- disableLockScreenNotification -error:"));
        }
        try {
            f2206c.setRuntimePermissions(true);
        } catch (Throwable th10) {
            C0948f6.m1746D(th10, C0948f6.m1765j("LenovoCSDKImpl -- runtime permission -error:"));
        }
        try {
            f2206c.setAppOpsPermissions(true);
        } catch (Throwable th11) {
            C0948f6.m1746D(th11, C0948f6.m1765j("LenovoCSDKImpl -- app operation permission -error:"));
        }
        try {
            f2206c.setLocationMode(3);
        } catch (Throwable th12) {
            C0948f6.m1746D(th12, C0948f6.m1771p(th12, "LenovoCSDKImpl -- location mode  error ： "));
        }
        try {
            f2206c.enableAirplaneMode(true);
        } catch (Throwable th13) {
            C0948f6.m1746D(th13, C0948f6.m1765j("LenovoCSDKImpl -- disableAirplaneMode -error:"));
        }
        try {
            f2206c.setNotificationVolumeValue_v3(0);
            f2206c.disallowSetNotificationVolume_v3(true);
        } catch (Throwable th14) {
            C0948f6.m1745C(th14, C0948f6.m1765j("LenovoCSDKImpldisallowSetNotificationVolume_v3 exception:"));
        }
        try {
            f2206c.enableWifiCaptiveV3(false);
        } catch (Throwable th15) {
            C0948f6.m1744B(th15, C0948f6.m1765j("LenovoCSDKImpl enableWifiCaptiveV3:"));
        }
        try {
            f2206c.enableWifiCaptive_v3(false);
        } catch (Throwable th16) {
            C0948f6.m1744B(th16, C0948f6.m1765j("LenovoCSDKImpl enableWifiCaptiveV3:"));
        }
        try {
            f2206c.disallowSwitchLauncherV3(true);
        } catch (Throwable th17) {
            C0948f6.m1744B(th17, C0948f6.m1765j("LenovoCSDKImpl disallowSwitchLauncherV3:"));
        }
        try {
            f2206c.disallowSwitchLauncher_v3(true);
        } catch (Throwable th18) {
            C0948f6.m1744B(th18, C0948f6.m1765j("LenovoCSDKImpl disallowSwitchLauncher_v3:"));
        }
        C0850bc.m1403m("LenovoCSDKImpl -- systemInit  end");
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: O0 */
    public void mo1341O0() {
        try {
            C0850bc.m1403m("LenovoCSDKImpl actionDisableWifi");
            f2206c.disallowWifi_v3(true);
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("LenovoCSDKImpl actionDisableWifi error:"));
        }
        try {
            C0850bc.m1403m("LenovoCSDKImpl close wifi");
            f2206c.enableWifi_v3(false);
        } catch (Throwable th2) {
            C0948f6.m1745C(th2, C0948f6.m1765j("LenovoCSDKImpl close wifi error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: Q */
    public void mo1314Q(String str) {
        C0850bc.m1403m("LenovoCSDKImpl -- actionSilentUnInstall ");
        try {
            f2206c.uninstallPackage(str, false);
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("LenovoCSDKImpl -- actionSilentUnInstall -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: Q0 */
    public void mo1342Q0(List<String> list) {
        C0850bc.m1403m("LenovoCSDKImpl -- removeDisallowedUninstallPackages ");
        try {
            f2206c.removeUninstallPackageBlackList(list);
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("LenovoCSDKImpl -- removeDisallowedUninstallPackages -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: S */
    public void mo1315S() {
        C0850bc.m1403m("LenovoCSDKImpl -- disableSMS ");
        try {
            f2206c.allowMMS(false);
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("LenovoCSDKImpl--  -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: T */
    public void mo1343T(boolean z, long j, String str) {
        C0850bc.m1403m("LenovoCSDKImpl -- actionTimingPowerOn , when = " + j);
        try {
            long j2 = ((j / 1000) / 60) / 60;
            f2206c.setBootTime(true, (int) j2, (int) (((j - (((j2 * 1000) * 60) * 60)) / 1000) / 60), 0, 0L);
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("LenovoCSDKImpl-- actionTimingPowerOn -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: V */
    public boolean mo1316V(List<String> list) {
        C0850bc.m1403m("LenovoCSDKImpl -- setUrlWhiteList ");
        try {
            f2206c.ClearIpHostRules();
            return f2206c.urlWhiteListWrite(list);
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("LenovoCSDKImpl-- setUrlWhiteList -error:"));
            return false;
        }
    }

    /* renamed from: V0 */
    public void mo1344V0() {
        C0850bc.m1403m("LenovoCSDKImpl -- disableFactory ");
        try {
            f2206c.disableFactoryReset(true);
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("LenovoCSDKImpl -- disableFactory -error:"));
        }
        try {
            f2206c.setCustomFASTBOOT(false);
        } catch (Throwable th2) {
            C0948f6.m1746D(th2, C0948f6.m1765j("LenovoCSDKImpl -- disableFastboot -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: W */
    public void mo1345W(boolean z, long j, String str) {
        C0850bc.m1403m("LenovoCSDKImpl -- actionTimingPowerOff , when = " + j);
        try {
            long j2 = ((j / 1000) / 60) / 60;
            f2206c.setShutDownTime(z, (int) j2, (int) (((j - (((j2 * 1000) * 60) * 60)) / 1000) / 60), 0, 0L);
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("LenovoCSDKImpl-- actionTimingPowerOff -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: X */
    public void mo1346X() {
        C0850bc.m1403m("LenovoCSDKImpl -- enableStatusBarPanel ");
        try {
            f2206c.disableStatusBarPanel(false);
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("LenovoCSDKImpl-- enableStatusBarPanel -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: Y */
    public String mo1317Y(Context context) {
        C0850bc.m1403m("LenovoCSDKImpl -- getWifiMacAddress ");
        try {
            return f2206c.getDeviceInfo(1);
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("LenovoCSDKImpl -- getWifiMacAddress -error:"));
            return "";
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: a0 */
    public ArrayList<String> mo1347a0() {
        C0850bc.m1403m("LenovoCSDKImpl getSSIDWhiteList  ");
        try {
            return (ArrayList) f2206c.getWifiWhiteList();
        } catch (Throwable th) {
            return C0948f6.m1773r(th, C0948f6.m1765j("LenovoCSDKImplgetSSIDWhiteList  -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: b0 */
    public void mo1318b0(List<String> list) {
        C0850bc.m1403m("LenovoCSDKImpl -- showWifiAdvanced ");
        try {
            f2206c.disableWifiAdvanced(false);
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("LenovoCSDKImpl-- showWifiAdvanced -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: c */
    public void mo1319c(boolean z) {
        C0850bc.m1403m("LenovoCSDKImpl -- enableSdCard ");
        try {
            f2206c.enableMassStorage(true);
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("LenovoCSDKImpl -- enableSdCard -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableBack() {
        C0850bc.m1403m("LenovoCSDKImpl -- disableBack ");
        try {
            f2206c.hideBackSoftKey(true);
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("LenovoCSDKImpl -- disableBack -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableBluetooth() {
        C0850bc.m1403m("LenovoCSDKImpl -- disableBluetooth ");
        try {
            f2206c.disableBluetooth(true);
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("LenovoCSDKImpl -- disableBluetooth -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableCamera() {
        C0850bc.m1403m("LenovoCSDKImpl -- disableCamera ");
        try {
            f2206c.disableCamera(true);
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("LenovoCSDKImpl -- disableCamera -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableFireWall() {
        C0850bc.m1403m("LenovoCSDKImpl -- disableFireWall ");
        try {
            f2206c.SetEnable(false);
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("LenovoCSDKImpl -- disableFireWall -error:"));
        }
        try {
            C0850bc.m1403m("LenovoCSDKImplread fire wall status:" + f2206c.isEnable());
        } catch (Throwable th2) {
            C0948f6.m1744B(th2, C0948f6.m1765j("LenovoCSDKImpl--readFireWall -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableGPS() {
        C0850bc.m1403m("LenovoCSDKImpl -- disableGPS ");
        try {
            f2206c.disableLocation(true);
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("LenovoCSDKImpl -- disableGPS -error:"));
        }
        try {
            f2206c.enableLocation_v3(false);
        } catch (Throwable th2) {
            C0948f6.m1744B(th2, C0948f6.m1765j("LenovoCSDKImpl -- enableLocation_v3 false:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableHome() {
        C0850bc.m1403m("LenovoCSDKImpl -- disableHome ");
        try {
            f2206c.hideHomeSoftKey(true);
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("LenovoCSDKImpl -- disableHome -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableMobileData() {
        C0850bc.m1403m("LenovoCSDKImpl -- disableMobileData ");
        try {
            f2206c.enableData(false);
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("LenovoCSDKImpl-- disableMobileData -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableNavigation() {
        C0850bc.m1403m("LenovoCSDKImpl -- disableNavigation ");
        try {
            disableRecent();
            disableHome();
            disableBack();
            disableVolume();
            disableShortPressPower();
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("LenovoCSDKImpl -- disableNavigation -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableOTA() {
        C0850bc.m1403m("LenovoCSDKImpl -- disableOTA ");
        try {
            f2206c.enableSystemAutoUpdate(false);
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("LenovoCSDKImpl -- disableOTA -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableOTG() {
        C0850bc.m1403m("LenovoCSDKImpl -- disableOTG ");
        try {
            f2206c.setCustomOTG(false);
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("LenovoCSDKImpl -- disableOTG -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableRecent() {
        C0850bc.m1403m("LenovoCSDKImpl -- disableRecent ");
        try {
            f2206c.hideMenuSoftKey(true);
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("LenovoCSDKImpl -- disableRecent -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableScreenShot() {
        C0850bc.m1403m("LenovoCSDKImpldisableScreenShot");
        try {
            f2206c.allowScreenCaptureKey(false);
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("LenovoCSDKImplallowScreenCaptureKey  -error:"));
        }
        try {
            f2206c.enableCaptureScreen_v3(false);
        } catch (Throwable th2) {
            C0948f6.m1744B(th2, C0948f6.m1765j("LenovoCSDKImplenableCaptureScreen_v3 -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableShortPressPower() {
        C0850bc.m1403m("LenovoCSDKImpl -- disableShortPressPower ");
        try {
            f2206c.requestKeyControl(26);
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("LenovoCSDKImpl -- disableShortPressPower -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableSpeech() {
        C0850bc.m1403m("LenovoCSDKImpl -- disablePhone ");
        try {
            f2206c.allowDialer(false);
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("LenovoCSDKImpl--  -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableUsb() {
        C0850bc.m1403m("LenovoCSDKImpl -- disableUsb ");
        try {
            C0850bc.m1403m("LenovoCSDKImpl -- enableUsbDebugging ");
            f2206c.enableUsbDebugging(false);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("LenovoCSDKImpl -- disableUsb -error:"));
        }
        try {
            C0850bc.m1403m("LenovoCSDKImpl -- setCurrentUsbMode ");
            f2206c.setCurrentUsbMode(0);
        } catch (Throwable th2) {
            C0948f6.m1744B(th2, C0948f6.m1765j("LenovoCSDKImpl -- disableUsb -error:"));
        }
        try {
            C0850bc.m1403m("LenovoCSDKImpl -- setDefaultUsbMode ");
            f2206c.setDefaultUsbMode(0);
        } catch (Throwable th3) {
            C0948f6.m1744B(th3, C0948f6.m1765j("LenovoCSDKImpl -- disableUsb -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableVolume() {
        C0850bc.m1403m("LenovoCSDKImpl -- disableVolume ");
        try {
            f2206c.requestKeyControl(24);
            f2206c.requestKeyControl(25);
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("LenovoCSDKImpl -- disableVolume -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: e */
    public void mo1320e(String str) {
        C0850bc.m1403m("LenovoCSDKImpl -- actionDisableApp ");
        try {
            f2206c.setPackageEnabled(str, false);
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("LenovoCSDKImpl -- actionDisableApp -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableBack() {
        C0850bc.m1403m("LenovoCSDKImpl -- enableBack ");
        try {
            f2206c.hideBackSoftKey(false);
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("LenovoCSDKImpl -- enableBack -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableBluetooth() {
        C0850bc.m1403m("LenovoCSDKImpl -- enableBluetooth ");
        try {
            f2206c.disableBluetooth(false);
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("LenovoCSDKImpl  -- enableBluetooth -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableCamera() {
        C0850bc.m1403m("LenovoCSDKImpl -- enableCamera ");
        try {
            f2206c.disableCamera(false);
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("LenovoCSDKImpl -- enableCamera -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableFireWall() {
        C0850bc.m1403m("LenovoCSDKImpl -- enableFireWall ");
        new Thread(new Runnable() { // from class: com.huawei.hem.xd
            @Override // java.lang.Runnable
            public final void run() {
                C0826ae.m1333W0();
            }
        }).start();
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableGPS() {
        C0850bc.m1403m("LenovoCSDKImpl -- enableGPS ");
        try {
            f2206c.disableLocation(false);
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("LenovoCSDKImpl -- enableGPS -error:"));
        }
        try {
            f2206c.enableLocation_v3(true);
        } catch (Throwable th2) {
            C0948f6.m1744B(th2, C0948f6.m1765j("LenovoCSDKImpl -- enableLocation_v3 true:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableHome() {
        C0850bc.m1403m("LenovoCSDKImpl -- enableHome ");
        try {
            f2206c.hideHomeSoftKey(false);
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("LenovoCSDKImpl -- enableHome -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableMobileData() {
        C0850bc.m1403m("LenovoCSDKImpl -- enableMobileData ");
        try {
            f2206c.enableData(true);
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("LenovoCSDKImpl-- enableMobileData -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableNavigation() {
        C0850bc.m1403m("LenovoCSDKImpl -- enableNavigation ");
        try {
            enableRecent();
            enableHome();
            enableBack();
            enableVolume();
            enableShortPressPower();
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("LenovoCSDKImpl -- enableNavigation -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableOTA() {
        C0850bc.m1403m("LenovoCSDKImpl -- enableOTA ");
        try {
            f2206c.enableSystemAutoUpdate(true);
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("LenovoCSDKImpl -- enableOTA -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableOTG() {
        C0850bc.m1403m("LenovoCSDKImpl -- enableOTG ");
        try {
            f2206c.setCustomOTG(true);
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("LenovoCSDKImpl -- enableOTG -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableRecent() {
        C0850bc.m1403m("LenovoCSDKImpl -- enableRecent ");
        try {
            f2206c.hideMenuSoftKey(false);
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("LenovoCSDKImpl -- enableRecent -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableScreenShot() {
        C0850bc.m1403m("LenovoCSDKImplenableScreenShot");
        try {
            f2206c.allowScreenCaptureKey(true);
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("LenovoCSDKImplallowScreenCaptureKey-error:"));
        }
        try {
            f2206c.enableCaptureScreen_v3(true);
        } catch (Throwable th2) {
            C0948f6.m1744B(th2, C0948f6.m1765j("LenovoCSDKImplenableCaptureScreen_v3 -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableShortPressPower() {
        C0850bc.m1403m("LenovoCSDKImpl -- enableShortPressPower ");
        try {
            f2206c.releaseKeyControl();
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("LenovoCSDKImpl -- enableShortPressPower -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableSpeech() {
        C0850bc.m1403m("LenovoCSDKImpl -- enablePhone ");
        try {
            f2206c.allowDialer(true);
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("LenovoCSDKImpl--  -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableUsb() {
        C0850bc.m1403m("LenovoCSDKImpl -- enableUsb ");
        try {
            C0850bc.m1403m("LenovoCSDKImpl -- enableUsbDebugging ");
            f2206c.enableUsbDebugging(true);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("LenovoCSDKImpl -- enableUsb -error:"));
        }
        try {
            C0850bc.m1403m("LenovoCSDKImpl -- setCurrentUsbMode ");
            f2206c.setCurrentUsbMode(1);
        } catch (Throwable th2) {
            C0948f6.m1744B(th2, C0948f6.m1765j("LenovoCSDKImpl -- enableUsb -error:"));
        }
        try {
            C0850bc.m1403m("LenovoCSDKImpl -- setDefaultUsbMode ");
            f2206c.setDefaultUsbMode(1);
        } catch (Throwable th3) {
            C0948f6.m1744B(th3, C0948f6.m1765j("LenovoCSDKImpl -- disableUsb -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableVolume() {
        C0850bc.m1403m("LenovoCSDKImpl -- enableVolume ");
        try {
            f2206c.releaseKeyControl();
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("LenovoCSDKImpl-- enableVolume -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: f */
    public void mo1348f() {
        C0850bc.m1403m("LenovoCSDKImpl -- enableFactory ");
        try {
            f2206c.disableFactoryReset(false);
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("LenovoCSDKImpl -- enableFactory -error:"));
        }
        try {
            f2206c.setCustomFASTBOOT(true);
        } catch (Throwable th2) {
            C0948f6.m1746D(th2, C0948f6.m1765j("LenovoCSDKImpl -- disableFastboot -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: g */
    public void mo1321g() {
        C0850bc.m1403m("LenovoCSDKImpl -- actionRebootDevice ");
        try {
            f2206c.rebootDevice();
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("LenovoCSDKImpl-- actionRebootDevice -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: g0 */
    public void mo1322g0() {
        C0850bc.m1403m("LenovoCSDKImpl -- enableSMS ");
        try {
            f2206c.allowMMS(true);
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("LenovoCSDKImpl--  -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: h */
    public void mo1323h() {
        C0850bc.m1403m("LenovoCSDKImpl -- cleanNetworkAccessAppWhiteList ");
        try {
            f2206c.ClearAppRules();
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("LenovoCSDKImpl-- cleanNetworkAccessAppWhiteList -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: h0 */
    public void mo1324h0() {
        C0850bc.m1403m("LenovoCSDKImpl -- actionShutdown ");
        try {
            f2206c.shutdownDevice();
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("LenovoCSDKImpl -- actionShutdown -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: i */
    public void mo1325i() {
        C0850bc.m1403m("LenovoCSDKImpl -- enableNavigationBar ");
        try {
            f2206c.hideNavigationBar(false);
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("LenovoCSDKImpl -- enableNavigationBar -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: j0 */
    public void mo1349j0(ArrayList<String> arrayList) {
        C0850bc.m1403m("LenovoCSDKImpl removeSSIDFromWhiteList");
        if (AbstractC1102l9.m2272M(arrayList)) {
            return;
        }
        try {
            f2206c.removeWifiWhiteList(arrayList);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("LenovoCSDKImplremoveSSIDFromWhiteList  -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: l */
    public boolean mo1350l(List<String> list) {
        C0850bc.m1403m("LenovoCSDKImpl --  setAppWhiteWithHash");
        if (!AbstractC1102l9.m2273N(list)) {
            C0850bc.m1403m("LenovoCSDKImplenable firewall because firewall is loss efficacy");
            enableFireWall();
        }
        try {
            f2206c.disableInstallation(!AbstractC1102l9.m2273N(list));
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("LenovoCSDKImpl -- disableInstallation:"));
        }
        try {
            f2206c.setAppWhiteWithHash(list);
            return true;
        } catch (Throwable th2) {
            C0948f6.m1744B(th2, C0948f6.m1765j("LenovoCSDKImpl-- setAppWhiteWithHash -error:"));
            return false;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: n */
    public void mo1351n() {
        C0850bc.m1403m("LenovoCSDKImpl -- enableSIM ");
        try {
            f2206c.enableSIM(true);
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("LenovoCSDKImpl -- enableSIM -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: o */
    public List<String> mo1352o() {
        C0850bc.m1403m("LenovoCSDKImpl -- getPersistentApp ");
        try {
            return f2206c.getPersistentAppList();
        } catch (Throwable th) {
            StringBuilder sbM1765j = C0948f6.m1765j("LenovoCSDKImpl -- getPersistentApp -error:");
            sbM1765j.append(th.getMessage());
            C0850bc.m1390A(sbM1765j.toString());
            return new ArrayList();
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: o0 */
    public void mo1353o0() {
        C0850bc.m1403m("LenovoCSDKImpl -- enableFileShare ");
        try {
            f2206c.disableBluetoothShare(false);
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("LenovoCSDKImpl -- enableFileShare -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: r */
    public void mo1327r(List<String> list) {
        C0850bc.m1403m("LenovoCSDKImpl -- hideWifiAdvanced ");
        try {
            f2206c.disableWifiAdvanced(true);
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("LenovoCSDKImpl-- hideWifiAdvanced -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void removePersistentApp(List<String> list) {
        C0850bc.m1403m("LenovoCSDKImpl -- removePersistentApp ");
        if (AbstractC1102l9.m2273N(list)) {
            return;
        }
        try {
            f2206c.removePersistentAppList(list);
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("LenovoCSDKImpl -- removePersistentApp -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: s */
    public boolean mo1328s(List<String> list) {
        C0850bc.m1403m("LenovoCSDKImpl -- setAppWhiteList ");
        if (!AbstractC1102l9.m2273N(list)) {
            C0850bc.m1403m("LenovoCSDKImplenable firewall because firewall is loss efficacy");
            enableFireWall();
        }
        try {
            f2206c.disableInstallation(!AbstractC1102l9.m2273N(list));
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("LenovoCSDKImpl -- disableInstallation:"));
        }
        try {
            if (AbstractC1102l9.m2273N(list)) {
                f2206c.removeInstallPackageWhiteList(mo1311M0());
            }
        } catch (Throwable th2) {
            C0948f6.m1744B(th2, C0948f6.m1765j("LenovoCSDKImpl -- removeInstallPackageWhiteList -error:"));
        }
        try {
            if (AbstractC1102l9.m2273N(list)) {
                f2206c.addInstallPackageWhiteList(null);
            } else {
                f2206c.addInstallPackageWhiteList(list);
            }
        } catch (Throwable th3) {
            C0948f6.m1744B(th3, C0948f6.m1765j("LenovoCSDKImpl -- setAppWhiteList -error:"));
        }
        return true;
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: t */
    public void mo1329t(boolean z) {
        C0850bc.m1403m("LenovoCSDKImpl -- actionResetFactory ");
        try {
            f2206c.launchFactoryReset();
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("LenovoCSDKImpl -- actionResetFactory -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: t0 */
    public List<String> mo1330t0() {
        C0850bc.m1403m("LenovoCSDKImpl -- getUrlWhiteList ");
        try {
            return f2206c.urlWhiteListRead();
        } catch (Throwable th) {
            StringBuilder sbM1765j = C0948f6.m1765j("LenovoCSDKImpl-- getUrlWhiteList -error:");
            sbM1765j.append(th.getMessage());
            C0850bc.m1390A(sbM1765j.toString());
            return new ArrayList();
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: x */
    public void mo1354x(ArrayList<String> arrayList) {
        C0850bc.m1403m("LenovoCSDKImpl addSSIDToWhiteList  ");
        if (AbstractC1102l9.m2272M(arrayList)) {
            return;
        }
        try {
            f2206c.setWifiWhiteList(arrayList);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("LenovoCSDKImpladdSSIDToWhiteList -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: y0 */
    public void mo1331y0(String str) {
        C0850bc.m1403m("LenovoCSDKImpl -- actionEnableApp ");
        try {
            f2206c.setPackageEnabled(str, true);
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("LenovoCSDKImpl -- actionEnableApp -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: z0 */
    public void mo1332z0(boolean z) {
        C0850bc.m1403m("LenovoCSDKImpl -- disableSdCard ");
        try {
            f2206c.enableMassStorage(false);
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("LenovoCSDKImpl -- disableSdCard -error:"));
        }
    }
}
