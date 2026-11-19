package com.huawei.hem;

import android.app.admin.DevicePolicyManager;
import android.content.ComponentName;
import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import com.huawei.android.app.admin.DeviceApplicationManager;
import com.huawei.android.app.admin.DeviceBluetoothManager;
import com.huawei.android.app.admin.DeviceControlManager;
import com.huawei.android.app.admin.DeviceHwSystemManager;
import com.huawei.android.app.admin.DeviceNetworkManager;
import com.huawei.android.app.admin.DevicePackageManager;
import com.huawei.android.app.admin.DevicePasswordManager;
import com.huawei.android.app.admin.DeviceRestrictionManager;
import com.huawei.android.app.admin.DeviceSettingsManager;
import com.huawei.android.app.admin.DeviceTelephonyManager;
import com.huawei.android.app.admin.DeviceWifiPolicyManager;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: HuaweiBaseImpl.java */
/* renamed from: com.huawei.hem.qd */
/* loaded from: classes.dex */
public class C1232qd extends C1055jc {

    /* renamed from: b */
    public static DevicePolicyManager f3521b;

    /* renamed from: c */
    public static ComponentName f3522c;

    /* renamed from: d */
    public static DeviceRestrictionManager f3523d;

    /* renamed from: e */
    public static DevicePackageManager f3524e;

    /* renamed from: f */
    public static DeviceControlManager f3525f;

    /* renamed from: g */
    public static DeviceNetworkManager f3526g;

    /* renamed from: h */
    public static DeviceApplicationManager f3527h;

    /* renamed from: i */
    public static DeviceSettingsManager f3528i;

    /* renamed from: j */
    public static DeviceTelephonyManager f3529j;

    /* renamed from: k */
    public static DeviceBluetoothManager f3530k;

    /* renamed from: l */
    public static DeviceHwSystemManager f3531l;

    /* renamed from: m */
    public static DeviceWifiPolicyManager f3532m;

    /* renamed from: n */
    public static DevicePasswordManager f3533n;

    public C1232qd(Context context, Class cls) {
        f3521b = (DevicePolicyManager) context.getSystemService("device_policy");
        f3522c = new ComponentName(context, (Class<?>) cls);
        f3523d = new DeviceRestrictionManager();
        f3524e = new DevicePackageManager();
        f3525f = new DeviceControlManager();
        f3526g = new DeviceNetworkManager();
        f3527h = new DeviceApplicationManager();
        f3528i = new DeviceSettingsManager();
        f3529j = new DeviceTelephonyManager();
        f3530k = new DeviceBluetoothManager();
        f3531l = new DeviceHwSystemManager();
        f3532m = new DeviceWifiPolicyManager();
        f3533n = new DevicePasswordManager();
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: A */
    public void mo2042A(ArrayList<String> arrayList) {
        C0850bc.m1403m("HuaweiBaseImpl  -- addAllowNotificationApps");
        try {
            f3524e.addAllowNotificationApps(f3522c, arrayList);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiBaseImpl  -- addAllowNotificationApps-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: A0 */
    public void mo1334A0(List<String> list) {
        C0850bc.m1403m("HuaweiBaseImpl  -- addDisallowedUninstallPackages");
        try {
            f3524e.addDisallowedUninstallPackages(f3522c, list);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiBaseImpl  -- addDisallowedUninstallPackages-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: B */
    public void mo2043B() {
        try {
            f3523d.setChangeWallpaperDisabled(f3522c, true);
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("HuaweiBaseImpl "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: B0 */
    public void mo1304B0(List<String> list) {
        if (AbstractC1102l9.m2273N(list)) {
            return;
        }
        try {
            f3527h.removeDisallowedRunningApp(f3522c, list);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiBaseImpl  -- actionEnableApps-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: C */
    public void mo1305C() {
        C0850bc.m1403m("HuaweiBaseImpl  -- disableNavigationBar");
        try {
            f3528i.setNavigationBarDisabled(f3522c, true);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiBaseImpl  -- disableNavigationBar-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: C0 */
    public void mo1335C0() {
        C0850bc.m1403m("HuaweiBaseImpl  -- disableFileShare");
        try {
            C0850bc.m1393c("HuaweiBaseImpl  -- disableFileShare state:" + f3523d.setFileShareDisabled(f3522c, true));
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiBaseImpl  -- disableFileShare-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: D0 */
    public void mo2045D0() {
        C0850bc.m1403m("HuaweiBaseImpl   -- enableInstallPackage");
        try {
            f3524e.enableInstallPackage(f3522c);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiBaseImpl  -- enableInstallPackage-error = "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: E0 */
    public void mo1336E0(List<String> list) {
        try {
            C0850bc.m1403m("HuaweiBaseImpl  -- setPersistentApp-" + list.toString());
            f3527h.addPersistentApp(f3522c, list);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiBaseImpl  -- setPersistentApp-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: F */
    public void mo1306F(String str) {
        C0948f6.m1779x("HuaweiBaseImpl  -- actionSilentInstall , path = ", str);
        try {
            f3524e.installPackage(f3522c, str);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiBaseImpl  -- actionSilentInstall-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: H */
    public void mo1338H() {
        try {
            C0850bc.m1403m("HuaweiBaseImpl  actionEnableWifi");
            f3523d.setWifiDisabled(f3522c, false);
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("HuaweiBaseImpl  actionEnableWifi error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: J */
    public void mo1309J(String str) {
        C0948f6.m1779x("HuaweiBaseImpl  -- actionKillApp", str);
        try {
            f3527h.killApplicationProcess(f3522c, str);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiBaseImpl  -- actionKillApp-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: K0 */
    public void mo2052K0() {
        C0850bc.m1403m("HuaweiBaseImpl  -- enableMicrophone");
        try {
            f3523d.setMicrophoneDisabled(f3522c, false);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiBaseImpl  — enableMicrophone-error:"));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v9, types: [java.io.FileOutputStream] */
    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: L */
    public String mo1310L(String str) {
        Bitmap bitmapCaptureScreen;
        FileOutputStream fileOutputStream;
        C0850bc.m1403m("HuaweiBaseImpl  -- actionScreenShot");
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
                    bitmapCaptureScreen = f3525f.captureScreen(f3522c);
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
                        Exists = fileOutputStream;
                        if (fileOutputStream != null) {
                            fileOutputStream.flush();
                            Exists = fileOutputStream;
                            Exists.close();
                            Exists = Exists;
                        }
                        return strM1760e;
                    }
                } catch (Exception e2) {
                    e = e2;
                    fileOutputStream = null;
                } catch (Throwable th2) {
                    th = th2;
                    Exists = 0;
                    if (Exists != 0) {
                        try {
                            Exists.flush();
                            Exists.close();
                        } catch (IOException e3) {
                            e3.printStackTrace();
                        }
                    }
                    throw th;
                }
                Exists.close();
                Exists = Exists;
            } catch (IOException e4) {
                e4.printStackTrace();
                Exists = Exists;
            }
            return strM1760e;
        } catch (Throwable th3) {
            C0948f6.m1744B(th3, C0948f6.m1765j("HuaweiBaseImpl  -- actionScreenShot-error:"));
            return null;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: L0 */
    public List<String> mo1339L0() {
        C0850bc.m1403m("HuaweiBaseImpl  -- getDisallowedUninstallPackageList");
        try {
            List<String> disallowedUninstallPackageList = f3524e.getDisallowedUninstallPackageList(f3522c);
            return AbstractC1102l9.m2273N(disallowedUninstallPackageList) ? new ArrayList() : disallowedUninstallPackageList;
        } catch (Throwable th) {
            return C0948f6.m1773r(th, C0948f6.m1765j("HuaweiBaseImpl  --- getDisallowedUninstallPackageList-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: M0 */
    public List<String> mo1311M0() {
        C0850bc.m1403m("HuaweiBaseImpl  -- getAppWhiteList");
        try {
            return f3524e.getInstallPackageWhiteList(f3522c);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiBaseImpl  -- getAppWhiteList-error:"));
            return null;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: N */
    public boolean mo1312N(long j) {
        C0850bc.m1403m("HuaweiBaseImpl  -- setSystemTime");
        try {
            f3525f.setSysTime(f3522c, j);
            return true;
        } catch (Throwable th) {
            String message = th.getMessage();
            C0850bc.m1393c("HuaweiBaseImpl  -- setSystemTime-error:" + message);
            if (TextUtils.isEmpty(message)) {
                return true;
            }
            if (!message.contains("does not have device manager MDM permission") && !message.contains("No active admin owned")) {
                return true;
            }
            C0850bc.m1393c("HuaweiBaseImpl has no huawei cer ");
            return false;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: O */
    public void mo1313O(String str, String str2) {
        m2617W0();
        m2618X0();
        mo1335C0();
        m2619Y0();
        try {
            f3528i.setTimeAndDateSetDisabled(f3522c, true);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiBaseImpl  -- setTimeAndDateSetDisabled-error:"));
        }
        try {
            f3529j.setAirplaneModeDisabled(f3522c, true);
        } catch (Throwable th2) {
            C0948f6.m1744B(th2, C0948f6.m1765j("HuaweiBaseImpl  -- setAirplaneModeDisabled-error:"));
        }
        try {
            f3523d.setSafeModeDisabled(f3522c, true);
        } catch (Throwable th3) {
            C0948f6.m1744B(th3, C0948f6.m1765j("HuaweiBaseImpl  -- setSafeModeDisabled-error:"));
        }
        try {
            ArrayList arrayList = new ArrayList();
            arrayList.add(str);
            arrayList.add("com.ndwill.swd.appstore");
            f3524e.addDisabledDeactivateMdmPackages(f3522c, arrayList);
        } catch (Throwable th4) {
            C0948f6.m1744B(th4, C0948f6.m1765j("HuaweiBaseImpl  -- addDisabledDeactivateMdmPackages-error:"));
        }
        try {
            f3528i.setAndroidAnimationDisabled(f3522c, true);
        } catch (Throwable th5) {
            C0948f6.m1744B(th5, C0948f6.m1765j("HuaweiBaseImpl  -- setAndroidAnimationDisabled-error:"));
        }
        try {
            f3528i.setSearchIndexDisabled(f3522c, true);
        } catch (Throwable th6) {
            C0948f6.m1744B(th6, C0948f6.m1765j("HuaweiBaseImpl  -- setSearchIndexDisabled-error:"));
        }
        try {
            f3528i.setAddUserDisabled(f3522c, true);
        } catch (Throwable th7) {
            C0948f6.m1744B(th7, C0948f6.m1765j("HuaweiBaseImpl setadduserdisable-error:"));
        }
        mo2043B();
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: O0 */
    public void mo1341O0() {
        try {
            C0850bc.m1403m("HuaweiBaseImpl  actionDisableWifi");
            f3523d.setWifiDisabled(f3522c, true);
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("HuaweiBaseImpl  actionDisableWifi error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: P */
    public boolean mo2054P() {
        try {
            boolean zIsEyeComfortTurnedOn = f3525f.isEyeComfortTurnedOn(f3522c);
            C0850bc.m1403m("HuaweiBaseImpl  -- getEyeProtectModeStatus status : " + zIsEyeComfortTurnedOn);
            return zIsEyeComfortTurnedOn;
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiBaseImpl  -- getEyeProtectModeStatus-error: "));
            return false;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: P0 */
    public void mo2055P0(ArrayList<String> arrayList) {
        C0850bc.m1403m("HuaweiBaseImpl  -- removeSuperWhiteListForSys");
        try {
            if (!AbstractC1102l9.m2272M(arrayList)) {
                arrayList.remove("com.android.launcher3");
                arrayList.remove("com.ndwill.swd.appstore");
            }
            f3531l.removeSuperWhiteListForHwSystemManger(f3522c, arrayList);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiBaseImpl  -- removeSuperWhiteListForSys-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: Q */
    public void mo1314Q(String str) {
        C0850bc.m1403m("HuaweiBaseImpl  -- actionSilentUnInstall");
        try {
            f3524e.uninstallPackage(f3522c, str, false);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiBaseImpl  -- actionSilentUnInstall-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: Q0 */
    public void mo1342Q0(List<String> list) {
        C0850bc.m1403m("HuaweiBaseImpl  -- removeDisallowedUninstallPackages");
        try {
            if (AbstractC1102l9.m2273N(list)) {
                return;
            }
            f3524e.removeDisallowedUninstallPackages(f3522c, list);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiBaseImpl  -- removeDisallowedUninstallPackages-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: R */
    public void mo2056R(int i) {
        C0850bc.m1403m("HuaweiBaseImpl  -- setControlMode");
        try {
            f3525f.getClass().getMethod("setControlMode", ComponentName.class, Integer.TYPE).invoke(f3525f, f3522c, Integer.valueOf(i));
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiBaseImpl  -- setControlMode-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: S */
    public void mo1315S() {
        C0850bc.m1403m("HuaweiBaseImpl  -- disableSMS");
        try {
            f3523d.setSMSDisabled(f3522c, true);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiBaseImpl  -- disableSMS-error:"));
        }
    }

    /* renamed from: V0 */
    public void mo2616V0(String str, Context context) {
        C0850bc.m1403m("HuaweiBaseImpl  -- actionActiveDeviceAdmin");
        try {
            f3525f.setSilentActiveAdmin(f3522c);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiBaseImpl  -- actionActiveDeviceAdmin-error:"));
        }
    }

    /* renamed from: W0 */
    public void m2617W0() {
        C0850bc.m1403m("HuaweiBaseImpl  -- disable StatusBarExpandPanel");
        try {
            f3523d.setStatusBarExpandPanelDisabled(f3522c, true);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiBaseImpl  -- setStatusBarExpandPanelDisabled-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: X */
    public void mo1346X() {
        C0850bc.m1403m("HuaweiBaseImpl  -- enable StatusBarExpandPanel");
        try {
            f3523d.setStatusBarExpandPanelDisabled(f3522c, false);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiBaseImpl  -- setStatusBarExpandPanelDisabled-error:"));
        }
    }

    /* renamed from: X0 */
    public void m2618X0() {
        try {
            f3528i.setRestoreFactoryDisabled(f3522c, true);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiBaseImpl  -- disableFactory-error:"));
        }
    }

    /* renamed from: Y0 */
    public void m2619Y0() {
        C0850bc.m1403m("HuaweiBaseImpl  -- setBluetoothDataTransferDisable");
        try {
            f3530k.setBluetoothDataTransferDisable(f3522c, true);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiBaseImpl  -- setBluetoothDataTransferDisable-error = "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: Z */
    public void mo2058Z() {
        try {
            f3523d.setChangeWallpaperDisabled(f3522c, false);
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("HuaweiBaseImpl "));
        }
    }

    /* renamed from: Z0 */
    public void m2620Z0(List<String> list) {
        C0850bc.m1403m("HuaweiBaseImpl setCustomSettingsMenu");
        try {
            f3525f.setCustomSettingsMenu(f3522c, (List) null);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiBaseImpl  -- setCustomSettingsMenu-error:"));
        }
        try {
            f3525f.setCustomSettingsMenu(f3522c, list);
        } catch (Throwable th2) {
            C0948f6.m1744B(th2, C0948f6.m1765j("HuaweiBaseImpl  --- setCustomSettingsMenu-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: a0 */
    public ArrayList<String> mo1347a0() {
        try {
            return f3532m.getSSIDWhiteList(f3522c);
        } catch (Throwable th) {
            StringBuilder sbM1765j = C0948f6.m1765j("HuaweiBaseImpl  getSSIDWhiteList error:");
            sbM1765j.append(th.getMessage());
            C0850bc.m1403m(sbM1765j.toString());
            return new ArrayList<>();
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: c */
    public void mo1319c(boolean z) {
        C0850bc.m1403m("HuaweiBaseImpl  -- enableSdCard");
        try {
            f3523d.setExternalStorageDisabled(f3522c, false);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiBaseImpl  -- enableSdCard-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: c0 */
    public ArrayList<String> mo2060c0() {
        C0850bc.m1403m("HuaweiBaseImpl  -- getAllowNotificationApps");
        try {
            ArrayList<String> allowNotificationApps = f3524e.getAllowNotificationApps(f3522c);
            if (!AbstractC1102l9.m2273N(allowNotificationApps)) {
                return allowNotificationApps;
            }
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiBaseImpl  -- getAllowNotificationApps-error:"));
        }
        return new ArrayList<>();
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: d */
    public void mo1506d(ArrayList<String> arrayList) {
        C0850bc.m1403m("HuaweiBaseImpl  -- setSuperWhiteListForSys");
        try {
            if (!AbstractC1102l9.m2272M(arrayList)) {
                C0850bc.m1403m("HuaweiBaseImpl  -- 设置可信任应用:" + arrayList);
                f3531l.setSuperWhiteListForHwSystemManger(f3522c, arrayList);
            }
            C0850bc.m1403m("HuaweiBaseImpl  -- set super white list for hw system manager");
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiBaseImpl  -- setSuperWhiteListForSys-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableBack() {
        C0850bc.m1403m("HuaweiBaseImpl  -- disableBack");
        try {
            f3523d.setBackButtonDisabled(f3522c, true);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiBaseImpl  -- disableBack-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableBluetooth() {
        C0850bc.m1403m("HuaweiBaseImpl  -- disableBluetooth");
        try {
            f3523d.setBluetoothDisabled(f3522c, true);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiBaseImpl  -- disableBluetooth-error = "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableCamera() {
        C0850bc.m1403m("HuaweiBaseImpl  -- disableCamera");
        try {
            try {
                f3521b.setCameraDisabled(f3522c, true);
            } catch (SecurityException e) {
                e.printStackTrace();
            }
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiBaseImpl  -- disableCamera-error = "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableGPS() {
        C0850bc.m1403m("HuaweiBaseImpl  -- disableGPS");
        try {
            f3523d.setGPSDisabled(f3522c, true);
            f3525f.turnOnGPS(f3522c, false);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiBaseImpl  -- disableGPS-error:"));
        }
        try {
            f3528i.setLocationServiceDisabled(f3522c, true);
        } catch (Throwable th2) {
            C0948f6.m1744B(th2, C0948f6.m1765j("HuaweiBaseImpl  -- setLocationServiceDisabled-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableHome() {
        C0850bc.m1403m("HuaweiBaseImpl  -- disableHome");
        try {
            f3523d.setHomeButtonDisabled(f3522c, true);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiBaseImpl  -- disableHome-error = "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableMobileData() {
        C0850bc.m1403m("HuaweiBaseImpl  -- disableMobileData");
        try {
            f3523d.setDataConnectivityDisabled(f3522c, true);
            f3525f.turnOnMobiledata(f3522c, false);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiBaseImpl  -- disableMobileData-error:"));
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
    public void disableOTA() {
        C0850bc.m1403m("HuaweiBaseImpl  -- disableOTA");
        try {
            f3523d.setSystemUpdateDisabled(f3522c, true);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiBaseImpl  -- disableOTA-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableOTG() {
        C0850bc.m1403m("HuaweiBaseImpl  -- disableOTG");
        try {
            f3523d.setUSBOtgDisabled(f3522c, true);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiBaseImpl  -- disableOTG-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableRecent() {
        C0850bc.m1403m("HuaweiBaseImpl  -- disableRecent");
        try {
            f3523d.setTaskButtonDisabled(f3522c, true);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiBaseImpl  -- disableRecent-error = "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableScreenShot() {
        C0850bc.m1403m("HuaweiBaseImpl  -- disableScreenShot");
        try {
            f3523d.setScreenCaptureDisabled(f3522c, true);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiBaseImpl  -- disableScreenShot-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableSpeech() {
        C0850bc.m1403m("HuaweiBaseImpl  -- disableSpeech");
        try {
            f3523d.setVoiceDisabled(f3522c, true);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiBaseImpl  -- disableSpeech-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableUsb() {
        C0850bc.m1403m("HuaweiBaseImpl  -- disableUsb");
        try {
            f3523d.setUSBDataDisabled(f3522c, true);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiBaseImpl  -- disableUsb-error1 = "));
        }
        try {
            f3528i.setDevelopmentOptionDisabled(f3522c, true);
        } catch (Throwable th2) {
            C0948f6.m1744B(th2, C0948f6.m1765j("HuaweiBaseImpl  -- disableUsb-error2 = "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableVolume() {
        C0850bc.m1403m("HuaweiBaseImpl  -- disableVolume");
        try {
            f3523d.setVolumeAdjustDisabled(f3522c, true);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiBaseImpl  -- disableVolume-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: e */
    public void mo1320e(String str) {
        C0948f6.m1779x("HuaweiBaseImpl  -- actionDisableApp packageName=", str);
        try {
            ArrayList arrayList = new ArrayList();
            arrayList.add(str);
            f3527h.addDisallowedRunningApp(f3522c, arrayList);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiBaseImpl  -- actionDisableApp-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableBack() {
        C0850bc.m1403m("HuaweiBaseImpl  -- enableBack");
        try {
            f3523d.setBackButtonDisabled(f3522c, false);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiBaseImpl  -- enableBack-error = "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableBluetooth() {
        C0850bc.m1403m("HuaweiBaseImpl  -- enableBluetooth");
        try {
            f3523d.setBluetoothDisabled(f3522c, false);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiBaseImpl  -- enableBluetooth-error = "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableCamera() {
        C0850bc.m1403m("HuaweiBaseImpl  -- enableCamera");
        try {
            try {
                f3521b.setCameraDisabled(f3522c, false);
            } catch (SecurityException e) {
                e.printStackTrace();
            }
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiBaseImpl  -- enableCamera-error = "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableGPS() {
        C0850bc.m1403m("HuaweiBaseImpl  -- enableGPS");
        try {
            f3523d.setGPSDisabled(f3522c, false);
            f3525f.turnOnGPS(f3522c, true);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiBaseImpl  -- enableGPS-error:"));
        }
        try {
            f3528i.setLocationServiceDisabled(f3522c, false);
        } catch (Throwable th2) {
            C0948f6.m1744B(th2, C0948f6.m1765j("HuaweiBaseImpl  -- setLocationServiceDisabled-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableHome() {
        C0850bc.m1403m("HuaweiBaseImpl  -- enableHome");
        try {
            f3523d.setHomeButtonDisabled(f3522c, false);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiBaseImpl  -- enableHome-error = "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableMobileData() {
        C0850bc.m1403m("HuaweiBaseImpl  -- enableMobileData");
        try {
            f3523d.setDataConnectivityDisabled(f3522c, false);
            f3525f.turnOnMobiledata(f3522c, true);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiBaseImpl  -- enableMobileData-error:"));
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
    public void enableOTA() {
        C0850bc.m1403m("HuaweiBaseImpl  -- enableOTA");
        try {
            f3523d.setSystemUpdateDisabled(f3522c, false);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiBaseImpl  -- enableOTA-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableOTG() {
        C0850bc.m1403m("HuaweiBaseImpl  -- enableOTG");
        try {
            f3523d.setUSBOtgDisabled(f3522c, false);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiBaseImpl  -- enableOTG-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableRecent() {
        C0850bc.m1403m("HuaweiBaseImpl  -- enableRecent");
        try {
            f3523d.setTaskButtonDisabled(f3522c, false);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiBaseImpl  -- enableRecent-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableScreenShot() {
        C0850bc.m1403m("HuaweiBaseImpl  -- enableScreenShot");
        try {
            f3523d.setScreenCaptureDisabled(f3522c, false);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiBaseImpl  -- enableScreenShot-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableSpeech() {
        C0850bc.m1403m("HuaweiBaseImpl  -- enableSpeech");
        try {
            f3523d.setVoiceDisabled(f3522c, false);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiBaseImpl  -- enableSpeech-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableUsb() {
        C0850bc.m1403m("HuaweiBaseImpl  -- enableUsb");
        try {
            f3523d.setUSBDataDisabled(f3522c, false);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiBaseImpl  -- enableUsb-error = "));
        }
        try {
            C0850bc.m1403m("HuaweiBaseImpl  -- setDevelopmentOptionDisabled result = " + f3528i.setDevelopmentOptionDisabled(f3522c, false));
        } catch (Throwable th2) {
            C0948f6.m1744B(th2, C0948f6.m1765j("HuaweiBaseImpl  -- enableUsb-error2 = "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableVolume() {
        C0850bc.m1403m("HuaweiBaseImpl  -- enableVolume");
        try {
            f3523d.setVolumeAdjustDisabled(f3522c, false);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiBaseImpl  -- enableVolume-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: f */
    public void mo1348f() {
        try {
            f3528i.setRestoreFactoryDisabled(f3522c, false);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiBaseImpl  -- enableFactory-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: g */
    public void mo1321g() {
        C0850bc.m1403m("HuaweiBaseImpl  -- actionRebootDevice");
        try {
            f3525f.rebootDevice(f3522c);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiBaseImpl  -- actionRebootDevice-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: g0 */
    public void mo1322g0() {
        C0850bc.m1403m("enableSMS");
        try {
            f3523d.setSMSDisabled(f3522c, false);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiBaseImpl  — enableSMS-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: h0 */
    public void mo1324h0() {
        C0850bc.m1403m("HuaweiBaseImpl  -- actionShutdown");
        try {
            f3525f.shutdownDevice(f3522c);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiBaseImpl  -- actionShutdown-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: i */
    public void mo1325i() {
        C0850bc.m1403m("HuaweiBaseImpl  -- enableNavigationBar");
        try {
            f3528i.setNavigationBarDisabled(f3522c, false);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiBaseImpl  -- enableNavigationBar-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: j */
    public boolean mo2065j() {
        C0850bc.m1403m("HuaweiBaseImpl  -- readSpeechStatus");
        try {
            return f3523d.isVoiceDisabled(f3522c);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiBaseImpl  -- readSpeechStatus-error:"));
            return true;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: j0 */
    public void mo1349j0(ArrayList<String> arrayList) {
        try {
            if (AbstractC1102l9.m2272M(arrayList)) {
                return;
            }
            f3532m.removeSSIDFromWhiteList(f3522c, arrayList);
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("HuaweiBaseImpl  removeSSIDFromWhiteList error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: k */
    public boolean mo2066k() {
        C0850bc.m1403m("HuaweiBaseImpl   -- checkMDMCer");
        try {
            f3523d.setGPSDisabled(f3522c, f3523d.isGPSDisabled(f3522c));
            return true;
        } catch (Throwable th) {
            String message = th.getMessage();
            C0850bc.m1393c("HuaweiBaseImpl  -- checkMDMCer-error = " + message);
            if (TextUtils.isEmpty(message)) {
                return true;
            }
            return (message.contains("does not have MDM_LOCATION permission") || message.contains("No active admin owned")) ? false : true;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: k0 */
    public void mo1326k0(List<String> list) {
        if (AbstractC1102l9.m2273N(list)) {
            return;
        }
        try {
            f3527h.addDisallowedRunningApp(f3522c, list);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiBaseImpl  -- actionDisableApps-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: n0 */
    public void mo2070n0(List<String> list) {
        try {
            ArrayList ignoreFrequentRelaunchAppList = f3527h.getIgnoreFrequentRelaunchAppList(f3522c);
            if (ignoreFrequentRelaunchAppList != null && !ignoreFrequentRelaunchAppList.isEmpty()) {
                f3527h.removeIgnoreFrequentRelaunchAppList(f3522c, ignoreFrequentRelaunchAppList);
            }
            f3527h.addIgnoreFrequentRelaunchAppList(f3522c, (ArrayList) list);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiBaseImpl  -- addIgnoreFrequentRelaunchAppList-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: o */
    public List<String> mo1352o() {
        C0850bc.m1403m("HuaweiBaseImpl  -- getPersistentApp");
        try {
            return f3527h.getPersistentApp(f3522c);
        } catch (Throwable th) {
            return C0948f6.m1773r(th, C0948f6.m1765j("HuaweiBaseImpl  -- getPersistentApp-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: o0 */
    public void mo1353o0() {
        C0850bc.m1403m("HuaweiBaseImpl  -- enableFileShare");
        try {
            C0850bc.m1393c("HuaweiBaseImpl  -- enableFileShare state:" + f3523d.setFileShareDisabled(f3522c, false));
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiBaseImpl  -- enableFileShare-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: p */
    public int mo2071p(boolean z) {
        C0850bc.m1403m("HuaweiBaseImpl  -- getControlMode");
        try {
            return z ? ((Integer) f3525f.getClass().getMethod("getControlMode", ComponentName.class).invoke(f3525f, null)).intValue() : ((Integer) f3525f.getClass().getMethod("getControlMode", ComponentName.class).invoke(f3525f, f3522c)).intValue();
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiBaseImpl  -- getControlMode-error:"));
            return 1;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: p0 */
    public boolean mo2072p0() {
        C0850bc.m1403m("HuaweiBaseImpl  -- readSMSStatus");
        try {
            return f3523d.isSMSDisabled(f3522c);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiBaseImpl  -- readSMSStatus-error:"));
            return true;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: q */
    public List<String> mo2073q() {
        try {
            C0850bc.m1403m("HuaweiBaseImpl ---getDisableApps ");
            return f3527h.getDisallowedRunningApp(f3522c);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiBaseImpl ---getDisableApps error:"));
            return null;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: q0 */
    public void mo2074q0(boolean z) {
        C0850bc.m1403m("HuaweiBaseImpl  -- controlEyeProtectMode");
        try {
            C0850bc.m1403m("HuaweiBaseImpl  -- controlEyeProtectMode isOk : " + f3525f.turnOnEyeComfort(f3522c, z));
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiBaseImpl  -- controlEyeProtectMode-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void removePersistentApp(List<String> list) {
        try {
            C0850bc.m1403m("HuaweiBaseImpl  -- removePersistentApp == " + list.toString());
            if (AbstractC1102l9.m2273N(list)) {
                return;
            }
            f3527h.removePersistentApp(f3522c, list);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiBaseImpl  -- removePersistentApp-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: s */
    public boolean mo1328s(List<String> list) {
        C0850bc.m1403m("HuaweiBaseImpl  -- setAppWhiteList");
        try {
            List<String> listMo1311M0 = mo1311M0();
            if (listMo1311M0 != null && !listMo1311M0.isEmpty()) {
                f3524e.removeInstallPackageWhiteList(f3522c, listMo1311M0);
            }
            f3524e.addInstallPackageWhiteList(f3522c, list);
            C0850bc.m1403m("HuaweiBaseImpl  -- set app white list end:" + mo1311M0());
            return false;
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiBaseImpl  -- setAppWhiteList-error:"));
            return false;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: s0 */
    public void mo2076s0(List<String> list) {
        C0850bc.m1403m("HuaweiBaseImpl   -- disableInstallSource");
        try {
            f3524e.disableInstallSource(f3522c, list);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiBaseImpl  -- disableInstallSource-error = "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: t */
    public void mo1329t(boolean z) {
        C0850bc.m1403m("HuaweiBaseImpl  -- actionResetFactory");
        try {
            f3528i.setRestoreFactoryDisabled(f3522c, false);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiBaseImpl  -- actionResetFactory-error:"));
        }
        if (!z) {
            try {
                f3521b.wipeData(0);
                C0850bc.m1403m("WipeSoldier -- wipeDataExcludeSDCard..........");
                return;
            } catch (SecurityException e) {
                C0850bc.m1393c("WipeSoldier -- wipeDataExcludeSDCard..........e = " + e);
                e.printStackTrace();
                return;
            }
        }
        DevicePolicyManager devicePolicyManager = f3521b;
        try {
            C0850bc.m1403m("WipeSoldier -- wipeDataIncludeSDCard..........");
            devicePolicyManager.wipeData(1);
        } catch (SecurityException e2) {
            C0850bc.m1393c("WipeSoldier -- wipeDataIncludeSDCard..........e = " + e2);
            e2.printStackTrace();
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: u */
    public List<String> mo1507u() {
        C0850bc.m1403m("HuaweiBaseImpl  -- getSuperWhiteListForSys");
        try {
            return f3531l.getSuperWhiteListForHwSystemManger(f3522c);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiBaseImpl  -- getSuperWhiteListForSys-error:"));
            return null;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: v0 */
    public void mo2079v0(List<String> list) {
        C0850bc.m1403m("HuaweiBaseImpl  -- actionClearCache");
        for (String str : list) {
            if (!str.equals("com.android.launcher3") && !str.equals("com.ndwill.swd.appstore")) {
                try {
                    f3524e.clearPackageData(f3522c, str);
                } catch (Throwable th) {
                    C0948f6.m1744B(th, C0948f6.m1765j("HuaweiBaseImpl  -- actionClearCache-error:"));
                }
            }
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: w */
    public void mo2080w() {
        C0850bc.m1403m("HuaweiBaseImpl  -- disableMicrophone");
        try {
            f3523d.setMicrophoneDisabled(f3522c, true);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiBaseImpl  -- disableMicrophone-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: w0 */
    public void mo2081w0(ArrayList<String> arrayList) {
        C0850bc.m1403m("HuaweiBaseImpl  -- removeAllowNotificationApps");
        try {
            f3524e.removeAllowNotificationApps(f3522c, arrayList);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiBaseImpl  -- removeAllowNotificationApps-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: x */
    public void mo1354x(ArrayList<String> arrayList) {
        try {
            if (AbstractC1102l9.m2272M(arrayList)) {
                return;
            }
            f3532m.addSSIDToWhiteList(f3522c, arrayList);
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("HuaweiBaseImpl  addSSIDToWhiteList error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: y0 */
    public void mo1331y0(String str) {
        C0850bc.m1403m("HuaweiBaseImpl  -- actionEnableApp");
        try {
            ArrayList arrayList = new ArrayList();
            arrayList.add(str);
            f3527h.removeDisallowedRunningApp(f3522c, arrayList);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiBaseImpl  -- actionEnableApp-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: z0 */
    public void mo1332z0(boolean z) {
        C0850bc.m1403m("HuaweiBaseImpl  -- disableSdCard");
        try {
            f3523d.setExternalStorageDisabled(f3522c, true);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiBaseImpl  -- disableSdCard-error:"));
        }
    }
}
