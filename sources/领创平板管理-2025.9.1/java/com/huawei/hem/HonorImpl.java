package com.huawei.hem;

import android.app.admin.DevicePolicyManager;
import android.content.ComponentName;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Build;
import android.provider.Settings;
import android.text.TextUtils;
import com.hihonor.android.app.admin.DeviceApplicationManager;
import com.hihonor.android.app.admin.DeviceBluetoothManager;
import com.hihonor.android.app.admin.DeviceControlManager;
import com.hihonor.android.app.admin.DeviceHwSystemManager;
import com.hihonor.android.app.admin.DeviceNetworkManager;
import com.hihonor.android.app.admin.DeviceP2PManager;
import com.hihonor.android.app.admin.DevicePackageManager;
import com.hihonor.android.app.admin.DevicePasswordManager;
import com.hihonor.android.app.admin.DeviceRestrictionManager;
import com.hihonor.android.app.admin.DeviceSettingsManager;
import com.hihonor.android.app.admin.DeviceTelephonyManager;
import com.hihonor.android.app.admin.DeviceWifiPolicyManager;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

/* compiled from: HonorImpl.java */
/* renamed from: com.huawei.hem.nd */
/* loaded from: classes.dex */
public class HonorImpl extends AndroidImpl {

    /* renamed from: b */
    public static HonorImpl f3303b;

    /* renamed from: c */
    public static DeviceRestrictionManager f3304c;

    /* renamed from: d */
    public static DeviceControlManager f3305d;

    /* renamed from: e */
    public static DevicePackageManager f3306e;

    /* renamed from: f */
    public static DeviceApplicationManager f3307f;

    /* renamed from: g */
    public static DeviceNetworkManager f3308g;

    /* renamed from: h */
    public static DeviceWifiPolicyManager f3309h;

    /* renamed from: i */
    public static DeviceBluetoothManager f3310i;

    /* renamed from: j */
    public static DeviceTelephonyManager f3311j;

    /* renamed from: k */
    public static DeviceHwSystemManager f3312k;

    /* renamed from: l */
    public static DeviceSettingsManager f3313l;

    /* renamed from: m */
    public static DevicePasswordManager f3314m;

    /* renamed from: n */
    public static DeviceP2PManager f3315n;

    /* renamed from: o */
    public static DevicePolicyManager f3316o;

    /* renamed from: p */
    public static ComponentName f3317p;

    /* renamed from: q */
    public static Context f3318q;

    /* renamed from: W0 */
    public static HonorImpl m2408W0(Context context, Class cls) {
        if (f3303b == null) {
            f3303b = new HonorImpl();
            f3304c = new DeviceRestrictionManager();
            f3305d = new DeviceControlManager();
            f3306e = new DevicePackageManager();
            f3307f = new DeviceApplicationManager();
            f3308g = new DeviceNetworkManager();
            f3309h = new DeviceWifiPolicyManager();
            f3310i = new DeviceBluetoothManager();
            f3311j = new DeviceTelephonyManager();
            f3312k = new DeviceHwSystemManager();
            f3313l = new DeviceSettingsManager();
            f3314m = new DevicePasswordManager();
            f3315n = new DeviceP2PManager();
            f3316o = (DevicePolicyManager) context.getSystemService("device_policy");
            f3317p = new ComponentName(context, (Class<?>) cls);
            f3318q = context;
        }
        return f3303b;
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: A */
    public void mo2042A(ArrayList<String> arrayList) {
        try {
            LTKDateUtil.m1403m("HonorImpl ---addAllowNotificationApps ");
            f3306e.addAllowNotificationApps(f3317p, arrayList);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HonorImpl ---addAllowNotificationApps error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: A0 */
    public void mo1334A0(List<String> list) {
        try {
            LTKDateUtil.m1403m("HonorImpl ---addDisallowedUninstallPackages ");
            f3306e.addDisallowedUninstallPackages(f3317p, list);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HonorImpl ---addDisallowedUninstallPackages error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: B */
    public void mo2043B() {
        try {
            LTKDateUtil.m1403m("HonorImpl disableChangeWallpaper");
            f3304c.setChangeWallpaperDisabled(f3317p, true);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("HonorImpl disable change wallpaper  exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: C */
    public void mo1305C() {
        try {
            Settings.Secure.putInt(f3318q.getContentResolver(), "secure_gesture_navigation", 1);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("HonorImpl  disableNavigationBar exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: C0 */
    public void mo1335C0() {
        LTKDateUtil.m1403m("HonorImpl disableFileShare");
        try {
            f3304c.setFileShareDisabled(f3317p, true);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("HonorImpl disable file share  exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: D0 */
    public void mo2045D0() {
        try {
            LTKDateUtil.m1403m("HonorImpl ---enableInstallPackage ");
            f3306e.enableInstallPackage(f3317p);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HonorImpl ---enableInstallPackage error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: E */
    public void mo2046E() {
        LTKDateUtil.m1403m("HonorImpl disableSDupgrade");
        try {
            f3304c.setSdCardUpdateDisabled(f3317p, true);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("HonorImpl disable sdupgrade  exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: E0 */
    public void mo1336E0(List<String> list) {
        try {
            LTKDateUtil.m1403m("HonorImpl ---updatePersistentApp ");
            f3307f.addPersistentApp(f3317p, list);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HonorImpl ---updatePersistentApp error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: F */
    public void mo1306F(String str) {
        try {
            LTKDateUtil.m1403m("HonorImpl ---actionSilentInstall ");
            f3306e.installPackage(f3317p, str);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HonorImpl ---actionSilentInstall error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: G0 */
    public List<String> mo1307G0() {
        try {
            ArrayList networkAccessAppList = f3308g.getNetworkAccessAppList(f3317p, true);
            if (!MobileSdkPlatformUtilities.m2272M(networkAccessAppList)) {
                LTKDateUtil.m1403m("HonorImpl ---getNetworkAccessAppWhiteList:" + networkAccessAppList.size());
                return networkAccessAppList;
            }
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HonorImpl  ---getNetworkAccessAppWhiteList-error:"));
        }
        return new ArrayList();
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: H */
    public void mo1338H() {
        try {
            LTKDateUtil.m1403m("HonorImpl  actionEnableWifi");
            f3304c.setWifiDisabled(f3317p, false);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("HonorImpl  actionEnableWifi error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: H0 */
    public void mo2048H0() {
        try {
            LTKDateUtil.m1403m("HonorImpl  -- enableStatusBar");
            f3304c.setStatusBarDisabled(f3317p, false);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("HonorImpl enableStatusBar exception "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: I */
    public void mo2049I() {
        try {
            LTKDateUtil.m1403m("HonorImpl  -- disableStatusBar");
            f3304c.setStatusBarDisabled(f3317p, true);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("HonorImpl disableStatusBar exception "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: I0 */
    public void mo1308I0(List<String> list) {
        try {
            f3308g.addNetworkAccessAppList(f3317p, (ArrayList) list, true);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HonorImpl  ---setNetworkAccessAppWhiteList-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: J */
    public void mo1309J(String str) {
        try {
            LTKDateUtil.m1403m("HonorImpl ---actionKillApp ");
            f3307f.killApplicationProcess(f3317p, str);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HonorImpl ---actionKillApp error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: J0 */
    public void mo2050J0(int i, boolean z) {
        LTKDateUtil.m1403m("HonorImpl  -- enableEyeProtect");
        try {
            f3305d.getClass().getMethod("enableEyesProtect", ComponentName.class, Integer.TYPE, Boolean.TYPE).invoke(f3305d, f3317p, Integer.valueOf(i), Boolean.valueOf(z));
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HonorImpl  -- enableEyeProtect-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: K0 */
    public void mo2052K0() {
        LTKDateUtil.m1403m("HonorImpl  -- enableMicrophone");
        try {
            f3304c.setMicrophoneDisabled(f3317p, false);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("HonorImpl enable micropphone  exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: L */
    public String mo1310L(String str) {
        FileOutputStream fileOutputStream;
        LTKDateUtil.m1403m("HonorImpl  -- actionScreenShot");
        if (TextUtils.isEmpty(str)) {
            str = "/mnt/sdcard/Screenshots/";
        }
        StringBuilder sbM1765j = CompilerOutline.m1765j("Screenshot_");
        sbM1765j.append(new SimpleDateFormat("yyyyMMddHHmmss").format(new Date()));
        sbM1765j.append(".png");
        String string = sbM1765j.toString();
        File file = new File(str);
        if (!file.exists()) {
            file.mkdirs();
        }
        String strM1760e = CompilerOutline.m1760e(str, string);
        try {
            try {
                Bitmap bitmapCaptureScreen = f3305d.captureScreen(f3317p);
                try {
                    fileOutputStream = new FileOutputStream(strM1760e);
                    try {
                        try {
                            bitmapCaptureScreen.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
                            fileOutputStream.flush();
                        } catch (Exception e) {
                            e = e;
                            e.printStackTrace();
                            fileOutputStream.flush();
                            fileOutputStream.close();
                            return strM1760e;
                        }
                    } catch (Throwable th) {
                        th = th;
                        try {
                            fileOutputStream.flush();
                            fileOutputStream.close();
                        } catch (IOException e2) {
                            e2.printStackTrace();
                        }
                        throw th;
                    }
                } catch (Exception e3) {
                    e = e3;
                    fileOutputStream = null;
                } catch (Throwable th2) {
                    th = th2;
                    fileOutputStream = null;
                    fileOutputStream.flush();
                    fileOutputStream.close();
                    throw th;
                }
                fileOutputStream.close();
            } catch (IOException e4) {
                e4.printStackTrace();
            }
            return strM1760e;
        } catch (Throwable th3) {
            CompilerOutline.m1744B(th3, CompilerOutline.m1765j("HonorImpl  -- actionScreenShot-error:"));
            return null;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: L0 */
    public List<String> mo1339L0() {
        try {
            LTKDateUtil.m1403m("HonorImpl ---getDisallowedUninstallPackageList ");
            return f3306e.getDisallowedUninstallPackageList(f3317p);
        } catch (Throwable th) {
            return CompilerOutline.m1773r(th, CompilerOutline.m1765j("HonorImpl ---getDisallowedUninstallPackageList error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: M0 */
    public List<String> mo1311M0() {
        try {
            LTKDateUtil.m1403m("HonorImpl ---getAppWhiteList ");
            return f3306e.getInstallPackageTrustList(f3317p);
        } catch (Throwable th) {
            return CompilerOutline.m1773r(th, CompilerOutline.m1765j("HonorImpl ------getAppWhiteList error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: N */
    public boolean mo1312N(long j) {
        try {
            LTKDateUtil.m1403m("HonorImpl  -- setSystemTime");
            f3305d.setSysTime(f3317p, j);
            return true;
        } catch (Throwable th) {
            String message = th.getMessage();
            LTKDateUtil.m1393c("HonorImpl  -- setSystemTime-error:" + message);
            if (TextUtils.isEmpty(message) || !message.contains("does not have device manager MDM permission")) {
                return true;
            }
            LTKDateUtil.m1393c("HonorImpl has no huawei cer ");
            return false;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: O */
    public void mo1313O(String str, String str2) {
        LTKDateUtil.m1403m("HonorImpl systemInit");
        try {
            if (f3316o.isDeviceOwnerApp(str)) {
                LTKDateUtil.m1403m("HonorImpl is Already deviceowner APP");
            } else {
                LTKDateUtil.m1403m("HonorImpl ---setDeviceOwnerApp:");
                f3305d.getClass().getMethod("setDeviceOwnerApp", ComponentName.class, String.class).invoke(f3305d, f3317p, str);
            }
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HonorImpl ---setDeviceOwnerApp Exception error:"));
        }
        try {
            LTKDateUtil.m1403m("HonorImpl  setDefaultLauncher");
            f3305d.setDefaultLauncher(f3317p, str, str2);
        } catch (Throwable th2) {
            CompilerOutline.m1746D(th2, CompilerOutline.m1765j("HonorImpl set default launcher exception:"));
        }
        try {
            LTKDateUtil.m1403m("HonorImpl  setStatusBarExpandPanelDisabled");
            f3304c.setStatusBarExpandPanelDisabled(f3317p, true);
        } catch (Throwable th3) {
            CompilerOutline.m1746D(th3, CompilerOutline.m1765j("HonorImpl disable status bar expand  exception:"));
        }
        try {
            LTKDateUtil.m1403m("HonorImpl  setSafeModeDisabled");
            f3304c.setSafeModeDisabled(f3317p, true);
        } catch (Throwable th4) {
            CompilerOutline.m1746D(th4, CompilerOutline.m1765j("HonorImpl disable safe mode  exception:"));
        }
        try {
            LTKDateUtil.m1403m("HonorImpl  setMultiWindowDisabled");
            f3304c.setMultiWindowDisabled(f3317p, true);
        } catch (Throwable th5) {
            CompilerOutline.m1746D(th5, CompilerOutline.m1765j("HonorImpl disable muitiwindow  exception:"));
        }
        try {
            LTKDateUtil.m1403m("HonorImpl  setMediaControlDisabled");
            f3305d.setMediaControlDisabled(f3317p, true);
        } catch (Throwable th6) {
            CompilerOutline.m1744B(th6, CompilerOutline.m1765j("HonorImpl media control disable:"));
        }
        try {
            LTKDateUtil.m1403m("HonorImpl  setAirplaneModeDisabled");
            f3311j.setAirplaneModeDisabled(f3317p, true);
        } catch (Throwable th7) {
            CompilerOutline.m1744B(th7, CompilerOutline.m1765j("HonorImpl airplane mode disable:"));
        }
        try {
            LTKDateUtil.m1403m("HonorImpl  setAddUserDisabled");
            f3313l.setAddUserDisabled(f3317p, true);
        } catch (Throwable th8) {
            CompilerOutline.m1744B(th8, CompilerOutline.m1765j("HonorImpl add user disable:"));
        }
        try {
            LTKDateUtil.m1403m("HonorImpl  setTimeAndDateSetDisabled");
            f3313l.setTimeAndDateSetDisabled(f3317p, true);
        } catch (Throwable th9) {
            CompilerOutline.m1744B(th9, CompilerOutline.m1765j("HonorImpl set time and date  disable:"));
        }
        try {
            LTKDateUtil.m1403m("HonorImpl  setSearchIndexDisabled");
            f3313l.setSearchIndexDisabled(f3317p, true);
        } catch (Throwable th10) {
            CompilerOutline.m1744B(th10, CompilerOutline.m1765j("HonorImpl set search index disable:"));
        }
        try {
            LTKDateUtil.m1403m("HonorImpl  setAndroidAnimationDisabled");
            f3313l.setAndroidAnimationDisabled(f3317p, true);
        } catch (Throwable th11) {
            CompilerOutline.m1744B(th11, CompilerOutline.m1765j("HonorImpl set search index disable:"));
        }
        try {
            LTKDateUtil.m1403m("HonorImpl  setApplicationLockDisabled");
            f3313l.setApplicationLockDisabled(f3317p, true);
        } catch (Throwable th12) {
            CompilerOutline.m1744B(th12, CompilerOutline.m1765j("HonorImpl set application lock disable:"));
        }
        try {
            LTKDateUtil.m1403m("HonorImpl  setQuickToolsDisabled");
            f3314m.setQuickToolsDisabled(f3317p, true);
        } catch (Throwable th13) {
            CompilerOutline.m1744B(th13, CompilerOutline.m1765j("HonorImpl set quick tools disable:"));
        }
        try {
            LTKDateUtil.m1403m("HonorImpl  setWifiP2PDisabled");
            f3315n.setWifiP2PDisabled(f3317p, true);
        } catch (Throwable th14) {
            CompilerOutline.m1744B(th14, CompilerOutline.m1765j("HonorImpl set wifi p2p disable:"));
        }
        try {
            LTKDateUtil.m1403m("HonorImpl  -- setPowerSaveModeDisabled ");
            f3312k.setPowerSaveModeDisabled(f3317p, Boolean.TRUE);
        } catch (Throwable th15) {
            CompilerOutline.m1744B(th15, CompilerOutline.m1765j("HonorImpl  -- setPowerSaveModeDisabled error:"));
        }
        try {
            LTKDateUtil.m1403m("HonorImpl  -- setSendNotificationDisabled ");
            f3304c.setSendNotificationDisabled(f3317p, true);
        } catch (Throwable th16) {
            CompilerOutline.m1744B(th16, CompilerOutline.m1765j("HonorImpl setNotificationDisabled:"));
        }
        if (mo2071p(false) == 1) {
            m2128S0(f3318q, new ComponentName("com.hihonor.videoeditor", "com.huawei.videoeditor.storytemplate.StoryTemplateActivity"));
            m2128S0(f3318q, new ComponentName("com.hihonor.photos", "com.huawei.gallery.app.SelectSlotAlbumActivity"));
            m2128S0(f3318q, new ComponentName("com.hihonor.photos", "com.huawei.photos.feature.collages.SelectMaterialActivity"));
            m2128S0(f3318q, new ComponentName("com.hihonor.photos", "com.huawei.photos.feature.collages.CollagesActivity"));
            m2128S0(f3318q, new ComponentName("com.hihonor.videoeditor", "com.huawei.videoeditor.editor.maineditor.app.MainEditActivity"));
        }
        m2409V0();
        mo1335C0();
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: O0 */
    public void mo1341O0() {
        try {
            LTKDateUtil.m1403m("HonorImpl  actionDisableWifi");
            f3304c.setWifiDisabled(f3317p, true);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("HonorImpl  actionDisableWifi error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: P0 */
    public void mo2055P0(ArrayList<String> arrayList) {
        LTKDateUtil.m1403m("HonorImpl  -- removeSuperWhiteListForSys");
        try {
            if (!MobileSdkPlatformUtilities.m2272M(arrayList)) {
                arrayList.remove("com.android.launcher3");
                arrayList.remove("com.ndwill.swd.appstore");
            }
            f3312k.removeSuperTrustListForHwSystemManger(f3317p, arrayList);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HonorImpl  -- removeSuperWhiteListForSys-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: Q */
    public void mo1314Q(String str) {
        try {
            LTKDateUtil.m1403m("HonorImpl ---actionSilentUnInstall ");
            f3306e.uninstallPackage(f3317p, str, false);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HonorImpl ---actionSilentUnInstall error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: Q0 */
    public void mo1342Q0(List<String> list) {
        try {
            LTKDateUtil.m1403m("HonorImpl ---removeDisallowedUninstallPackages ");
            f3306e.removeDisallowedUninstallPackages(f3317p, list);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HonorImpl ---removeDisallowedUninstallPackages error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: R */
    public void mo2056R(int i) {
        LTKDateUtil.m1403m("HonorImpl  -- setControlMode");
        try {
            f3305d.setControlMode(f3317p, i);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HonorImpl  -- setControlMode-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: S */
    public void mo1315S() {
        try {
            LTKDateUtil.m1403m("HonorImpl disableSMS");
            f3304c.setSMSDisabled(f3317p, true);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("HonorImpl disable sms  exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: T */
    public void mo1343T(boolean z, long j, String str) {
        try {
            LTKDateUtil.m1403m("HonorImpl  ==setScheduledPowerOn ==when:" + j);
            f3304c.setScheduledPowerOn(f3317p, z, str, j);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("HonorImpl  actionTimingPowerOn exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: V */
    public boolean mo1316V(List<String> list) {
        try {
            f3308g.clearNetworkList(f3317p);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HonorImpl  ---removeNetworkList-error:"));
        }
        try {
            if (MobileSdkPlatformUtilities.m2273N(list)) {
                LTKDateUtil.m1403m("HonorImpl  -- setUrlWhiteList-none url need add");
            } else {
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                for (String str : list) {
                    if (LauncherDeviceUtils.m1599p(str)) {
                        arrayList.add(str);
                    } else if (str.matches("^([a-zA-Z0-9]([a-zA-Z0-9\\-]{0,61}[a-zA-Z0-9])?\\.)+[a-zA-Z]{2,6}$")) {
                        arrayList2.add(str);
                    }
                }
                LTKDateUtil.m1403m("HonorImpl  --- 添加域名:" + arrayList2.toString());
                LTKDateUtil.m1403m("HonorImpl  --- setUrlWhiteList-result==" + f3308g.addNetworkList(f3317p, true, true, arrayList2));
                LTKDateUtil.m1403m("HonorImpl  --- 添加IP:" + arrayList.toString());
                LTKDateUtil.m1403m("HonorImpl  --- setUrlWhiteList-result==" + f3308g.addNetworkList(f3317p, true, false, arrayList));
            }
        } catch (Throwable th2) {
            CompilerOutline.m1744B(th2, CompilerOutline.m1765j("HonorImpl  -- setUrlWhiteList-error:"));
        }
        return false;
    }

    /* renamed from: V0 */
    public void m2409V0() {
        try {
            LTKDateUtil.m1403m("HonorImpl ---disableFactory ");
            f3313l.setRestoreFactoryDisabled(f3317p, true);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HonorImpl ---disableFactory error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: W */
    public void mo1345W(boolean z, long j, String str) {
        try {
            LTKDateUtil.m1403m("HonorImpl  ==setScheduledPowerOff ==when:" + j);
            f3304c.setScheduledPowerOff(f3317p, z, (String) null, j);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("HonorImpl  actionTimingPowerOff exception:"));
        }
    }

    /* renamed from: X0 */
    public void m2410X0(List<String> list) {
        try {
            f3305d.setCustomSettingsMenu(f3317p, (List) null);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HonorImpl  -- setCustomSettingsMenu-error:"));
        }
        try {
            f3305d.setCustomSettingsMenu(f3317p, list);
        } catch (Throwable th2) {
            CompilerOutline.m1744B(th2, CompilerOutline.m1765j("HonorImpl  --- setCustomSettingsMenu-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: Y */
    public String mo1317Y(Context context) {
        try {
            if (Build.VERSION.SDK_INT < 24) {
                return "unknown";
            }
            String wifiMacAddress = f3316o.getWifiMacAddress(f3317p);
            LTKDateUtil.m1403m("HonorImpl ---getWifiMacAddress:");
            return wifiMacAddress;
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HonorImpl  --- getWifiMacAddress--error=="));
            return "unknown";
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: Z */
    public void mo2058Z() {
        try {
            LTKDateUtil.m1403m("HonorImpl enableChangeWallpaper");
            f3304c.setChangeWallpaperDisabled(f3317p, false);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("HonorImpl enable change wallpaper  exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: a0 */
    public ArrayList<String> mo1347a0() {
        try {
            return f3309h.getSsidTrustList(f3317p);
        } catch (Throwable th) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("HonorImpl  getSSIDWhiteList error:");
            sbM1765j.append(th.getMessage());
            LTKDateUtil.m1403m(sbM1765j.toString());
            return new ArrayList<>();
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: b0 */
    public void mo1318b0(List<String> list) {
        LTKDateUtil.m1403m("HonorImpl  -- showWifiAdvanced ");
        try {
            LTKDateUtil.m1403m("HonorImpl  -- showWifiAdvanced");
            m2410X0(list);
            f3313l.setWIFIeditDisabled(f3317p, false);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HonorImpl  -- showWifiAdvanced exception "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: c */
    public void mo1319c(boolean z) {
        try {
            LTKDateUtil.m1403m("HonorImpl enable sdcard ");
            f3304c.setExternalStorageDisabled(f3317p, false);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("HonorImpl enable sdcard  exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: c0 */
    public ArrayList<String> mo2060c0() {
        try {
            LTKDateUtil.m1403m("HonorImpl ---getAllowNotificationApps ");
            return f3306e.getAllowNotificationApps(f3317p);
        } catch (Throwable th) {
            return CompilerOutline.m1773r(th, CompilerOutline.m1765j("HonorImpl ---getAllowNotificationApps error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: d */
    public void mo1506d(ArrayList<String> arrayList) {
        LTKDateUtil.m1403m("HonorImpl  -- setSuperWhiteListForSys");
        try {
            if (!MobileSdkPlatformUtilities.m2272M(arrayList)) {
                LTKDateUtil.m1403m("HonorImpl  -- 设置可信任应用:" + arrayList);
                f3312k.setSuperTrustListForHwSystemManger(f3317p, arrayList);
            }
            LTKDateUtil.m1403m("HonorImpl  -- set super white list for hw system manager");
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HonorImpl  -- setSuperWhiteListForSys-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableBack() {
        LTKDateUtil.m1403m("HonorImpl disableBack ");
        try {
            f3304c.setBackButtonDisabled(f3317p, true);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("HonorImpl disable back  exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableBluetooth() {
        try {
            f3304c.setBluetoothDisabled(f3317p, true);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("HonorImpl diable bluetooth exception:"));
        }
        try {
            f3310i.setBluetoothDataTransferDisable(f3317p, true);
        } catch (Throwable th2) {
            CompilerOutline.m1746D(th2, CompilerOutline.m1765j("HonorImpl diable bluetooth transfer exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableCamera() {
        LTKDateUtil.m1403m("HonorImpl  -- disableCamera");
        try {
            try {
                f3316o.setCameraDisabled(f3317p, true);
            } catch (SecurityException e) {
                e.printStackTrace();
            }
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HonorImpl  -- disableCamera-error = "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableGPS() {
        LTKDateUtil.m1403m("HonorImpl  -- disableGPS");
        try {
            f3313l.setLocationServiceDisabled(f3317p, true);
            f3305d.turnOnGPS(f3317p, false);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HonorImpl  -- disableGPS-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableHome() {
        LTKDateUtil.m1403m("HonorImpl disableHome ");
        try {
            f3304c.setHomeButtonDisabled(f3317p, true);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("HonorImpl disable home  exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableLongPressPower() {
        try {
            LTKDateUtil.m1403m("HonorImpl disableLongPressPower");
            f3304c.setPowerDisabled(f3317p, true);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("HonorImpl disable long power  exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableMobileData() {
        try {
            LTKDateUtil.m1403m("HonorImpl disableMobileData");
            f3304c.setDataConnectivityDisabled(f3317p, true);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("HonorImpl diable mobile data exception:"));
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
        LTKDateUtil.m1403m("HonorImpl  -- disableOTA");
        try {
            f3304c.setSystemUpdateDisabled(f3317p, true);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("HonorImpl diable OTA  exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableOTG() {
        LTKDateUtil.m1403m("HonorImpl disableOTG ");
        try {
            LTKDateUtil.m1403m("HonorImpl disable otg  ");
            f3304c.setUSBOtgDisabled(f3317p, true);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("HonorImpl disable otg  exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableRecent() {
        LTKDateUtil.m1403m("HonorImpl disableRecent ");
        try {
            f3304c.setTaskButtonDisabled(f3317p, true);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("HonorImpl disable recent  exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableScreenShot() {
        LTKDateUtil.m1403m("HonorImpl  -- disableScreenShot");
        try {
            f3304c.setManualScreenCaptureDisabled(f3317p, true);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("HonorImpl disable screen shot  exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableShortPressPower() {
        LTKDateUtil.m1403m("HonorImpl disableShortPressPower");
        try {
            f3304c.setSleepByPowerButtonDisabled(f3317p, true);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("HonorImpl disable short power exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableSpeech() {
        try {
            LTKDateUtil.m1403m("HonorImpl disableSpeech");
            f3304c.setVoiceDisabled(f3317p, true);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("HonorImpl disable speech  exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableUsb() {
        LTKDateUtil.m1403m("HonorImpl disableUsb ");
        try {
            f3304c.setUSBDataDisabled(f3317p, true);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("HonorImpl disable usb  exception:"));
        }
        try {
            f3304c.setAdbDisabled(f3317p, true);
        } catch (Throwable th2) {
            CompilerOutline.m1746D(th2, CompilerOutline.m1765j("HonorImpl disable adb  exception:"));
        }
        try {
            f3305d.turnOnUsbDebugMode(f3317p, false);
        } catch (Throwable th3) {
            CompilerOutline.m1746D(th3, CompilerOutline.m1765j("HonorImpl disable adb  exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableVolume() {
        LTKDateUtil.m1403m("HonorImpl  -- disableVolume");
        try {
            f3304c.setVolumeAdjustDisabled(f3317p, true);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("HonorImpl disable volume adjust  exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: e */
    public void mo1320e(String str) {
        try {
            LTKDateUtil.m1403m("HonorImpl ---actionDisableApp ");
            ArrayList arrayList = new ArrayList();
            arrayList.add(str);
            f3307f.addDisallowedRunningApp(f3317p, arrayList);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HonorImpl ---actionDisableApp error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: e0 */
    public boolean mo2062e0() {
        try {
            LTKDateUtil.m1403m("HonorImpl ---isActiveAdmin ");
            return f3305d.isForcedActiveDeviceAdmin(f3317p);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HonorImpl ---isActiveAdmin error:"));
            return false;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableBack() {
        LTKDateUtil.m1403m("HonorImpl enableBack ");
        try {
            f3304c.setBackButtonDisabled(f3317p, false);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("HonorImpl enable back  exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableBluetooth() {
        try {
            f3304c.setBluetoothDisabled(f3317p, false);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("HonorImpl enable bluetooth exception:"));
        }
        try {
            f3310i.setBluetoothDataTransferDisable(f3317p, true);
        } catch (Throwable th2) {
            CompilerOutline.m1746D(th2, CompilerOutline.m1765j("HonorImpl diable bluetooth transfer exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableCamera() {
        LTKDateUtil.m1403m("HonorImpl  -- enableCamera");
        try {
            try {
                f3316o.setCameraDisabled(f3317p, false);
            } catch (SecurityException e) {
                e.printStackTrace();
            }
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HonorImpl  -- enableCamera-error = "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableGPS() {
        LTKDateUtil.m1403m("HonorImpl  -- enableGPS");
        try {
            f3313l.setLocationServiceDisabled(f3317p, false);
            f3305d.turnOnGPS(f3317p, true);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HonorImpl  -- enableGPS-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableHome() {
        LTKDateUtil.m1403m("HonorImpl enableHome ");
        try {
            f3304c.setHomeButtonDisabled(f3317p, false);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("HonorImpl enable home  exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableLongPressPower() {
        try {
            LTKDateUtil.m1403m("HonorImpl enableLongPressPower");
            f3304c.setPowerDisabled(f3317p, false);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("HonorImpl disable long power  exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableMobileData() {
        try {
            LTKDateUtil.m1403m("HonorImpl enableMobileData");
            f3304c.setDataConnectivityDisabled(f3317p, false);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("HonorImpl enable mobile data exception:"));
        }
        try {
            f3305d.forceMobiledataOn(f3317p);
        } catch (Throwable th2) {
            CompilerOutline.m1746D(th2, CompilerOutline.m1765j("HonorImpl force mobile data exception:"));
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
        LTKDateUtil.m1403m("HonorImpl  -- enableOTA");
        try {
            f3304c.setSystemUpdateDisabled(f3317p, false);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("HonorImpl enable OTA  exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableOTG() {
        LTKDateUtil.m1403m("HonorImpl enableOTG ");
        try {
            LTKDateUtil.m1390A("HonorImpl enable otg  ");
            f3304c.setUSBOtgDisabled(f3317p, false);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("HonorImpl enable otg  exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableRecent() {
        LTKDateUtil.m1403m("HonorImpl enableRecent ");
        try {
            f3304c.setTaskButtonDisabled(f3317p, false);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("HonorImpl enable recent  exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableScreenShot() {
        LTKDateUtil.m1403m("HonorImpl  -- enableScreenShot");
        try {
            f3304c.setManualScreenCaptureDisabled(f3317p, false);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("HonorImpl enable screen shot  exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableShortPressPower() {
        LTKDateUtil.m1403m("HonorImpl enableShortPressPower");
        try {
            f3304c.setSleepByPowerButtonDisabled(f3317p, false);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("HonorImpl disable short power  exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableSpeech() {
        try {
            LTKDateUtil.m1403m("HonorImpl enable speech  ");
            f3304c.setVoiceDisabled(f3317p, false);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("HonorImpl enable speech  exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableUsb() {
        LTKDateUtil.m1403m("HonorImpl enableUsb ");
        try {
            f3304c.setUSBDataDisabled(f3317p, false);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("HonorImpl enable usb  exception:"));
        }
        try {
            f3304c.setAdbDisabled(f3317p, false);
        } catch (Throwable th2) {
            CompilerOutline.m1746D(th2, CompilerOutline.m1765j("HonorImpl enable adb  exception:"));
        }
        try {
            f3305d.turnOnUsbDebugMode(f3317p, true);
        } catch (Throwable th3) {
            CompilerOutline.m1746D(th3, CompilerOutline.m1765j("HonorImpl disable adb  exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableVolume() {
        LTKDateUtil.m1403m("HonorImpl  -- enableVolume");
        try {
            f3304c.setVolumeAdjustDisabled(f3317p, false);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("HonorImpl enable volume adjust  exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: f */
    public void mo1348f() {
        try {
            LTKDateUtil.m1403m("HonorImpl ---enableFactory ");
            f3313l.setRestoreFactoryDisabled(f3317p, false);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HonorImpl ---enableFactory error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: g */
    public void mo1321g() {
        try {
            LTKDateUtil.m1403m("HonorImpl  -- actionRebootDevice");
            f3305d.rebootDevice(f3317p);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("HonorImpl reboot device  exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: g0 */
    public void mo1322g0() {
        try {
            LTKDateUtil.m1403m("HonorImpl enableSMS");
            f3304c.setSMSDisabled(f3317p, false);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("HonorImpl enable sms  exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: h */
    public void mo1323h() {
        try {
            LTKDateUtil.m1403m("HonorImpl ---cleanNetworkAccessAppWhiteList");
            f3308g.clearNetworkAccessAppList(f3317p);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HonorImpl ---cleanNetworkAccessAppWhiteList-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: h0 */
    public void mo1324h0() {
        try {
            LTKDateUtil.m1403m("HonorImpl  -- actionShutdown");
            f3305d.shutdownDevice(f3317p);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("HonorImpl shut down  exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: i */
    public void mo1325i() {
        try {
            Settings.Secure.putInt(f3318q.getContentResolver(), "secure_gesture_navigation", 0);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("HonorImpl  enableNavigationBar exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: j0 */
    public void mo1349j0(ArrayList<String> arrayList) {
        try {
            if (MobileSdkPlatformUtilities.m2272M(arrayList)) {
                return;
            }
            f3309h.removeSsidFromTrustList(f3317p, arrayList);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("HonorImpl  removeSSIDFromWhiteList error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: k */
    public boolean mo2066k() {
        LTKDateUtil.m1403m("HonorImpl   -- checkMDMCer");
        try {
            f3304c.setGPSDisabled(f3317p, f3304c.isGPSDisabled(f3317p));
            return true;
        } catch (Throwable th) {
            String message = th.getMessage();
            LTKDateUtil.m1393c("HonorImpl  -- checkMDMCer-error = " + message);
            return TextUtils.isEmpty(message) || !message.contains("does not have MDM_LOCATION permission");
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: l0 */
    public void mo2067l0() {
        try {
            LTKDateUtil.m1403m("HonorImpl  -- clearAllowStartApps ");
            f3307f.setTaskLockAppList(f3317p, (ArrayList) null);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HonorImpl  -- clearAllowStartApps error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: m0 */
    public void mo2069m0(ArrayList<String> arrayList) {
        try {
            LTKDateUtil.m1403m("HonorImpl  -- setAllowStartApps ");
            mo2067l0();
            f3307f.setTaskLockAppList(f3317p, arrayList);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HonorImpl  -- setAllowStartApps error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: o */
    public List<String> mo1352o() {
        try {
            LTKDateUtil.m1403m("HonorImpl ---getPersistentApp ");
            return f3307f.getPersistentApp(f3317p);
        } catch (Throwable th) {
            return CompilerOutline.m1773r(th, CompilerOutline.m1765j("HonorImpl ---getPersistentApp error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: o0 */
    public void mo1353o0() {
        LTKDateUtil.m1403m("HonorImpl enableFileShare");
        try {
            f3304c.setFileShareDisabled(f3317p, false);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("HonorImpl enable file share  exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: p */
    public int mo2071p(boolean z) {
        LTKDateUtil.m1403m("HonorImpl  -- getControlMode");
        try {
            return z ? f3305d.getControlMode((ComponentName) null) : f3305d.getControlMode(f3317p);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HonorImpl  -- getControlMode-error:"));
            return 1;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: q */
    public List<String> mo2073q() {
        try {
            LTKDateUtil.m1403m("HonorImpl ---getDisableApps ");
            return f3307f.getDisallowedRunningApp(f3317p);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HonorImpl ---getDisableApps error:"));
            return null;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: q0 */
    public void mo2074q0(boolean z) {
        try {
            LTKDateUtil.m1403m("HonorImpl  -- controlEyeProtectMode");
            f3305d.turnOnEyeComfort(f3317p, z);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("HonorImpl control eye protected exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: r */
    public void mo1327r(List<String> list) {
        LTKDateUtil.m1403m("HonorImpl  -- hideWifiAdvanced ");
        try {
            LTKDateUtil.m1403m("HonorImpl  -- hideWifiAdvanced");
            list.add("wifi_proxy");
            m2410X0(list);
            f3313l.setWIFIeditDisabled(f3317p, true);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HonorImpl  -- hideWifiAdvanced exception "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void removePersistentApp(List<String> list) {
        try {
            LTKDateUtil.m1403m("HonorImpl ---removePersistentApp ");
            f3307f.removePersistentApp(f3317p, list);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HonorImpl ---removePersistentApp error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: s */
    public boolean mo1328s(List<String> list) {
        try {
            LTKDateUtil.m1403m("HonorImpl ---remove app white list ");
            List installPackageTrustList = f3306e.getInstallPackageTrustList(f3317p);
            if (!MobileSdkPlatformUtilities.m2273N(installPackageTrustList)) {
                f3306e.removeInstallPackageTrustList(f3317p, installPackageTrustList);
            }
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HonorImpl ------remove app white list error:"));
        }
        try {
            LTKDateUtil.m1403m("HonorImpl ---setAppWhiteList ");
            f3306e.addInstallPackageTrustList(f3317p, list);
            return true;
        } catch (Throwable th2) {
            CompilerOutline.m1744B(th2, CompilerOutline.m1765j("HonorImpl ---setAppWhiteList error:"));
            return true;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: s0 */
    public void mo2076s0(List<String> list) {
        try {
            LTKDateUtil.m1403m("HonorImpl ---disableInstallSource ");
            f3306e.disableInstallSource(f3317p, list);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HonorImpl ---disableInstallSource error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: t */
    public void mo1329t(boolean z) {
        mo1348f();
        if (!z) {
            try {
                f3316o.wipeData(0);
                LTKDateUtil.m1403m("WipeSoldier -- wipeDataExcludeSDCard..........");
                return;
            } catch (SecurityException e) {
                LTKDateUtil.m1393c("WipeSoldier -- wipeDataExcludeSDCard..........e = " + e);
                e.printStackTrace();
                return;
            }
        }
        DevicePolicyManager devicePolicyManager = f3316o;
        try {
            LTKDateUtil.m1403m("WipeSoldier -- wipeDataIncludeSDCard..........");
            devicePolicyManager.wipeData(1);
        } catch (SecurityException e2) {
            LTKDateUtil.m1393c("WipeSoldier -- wipeDataIncludeSDCard..........e = " + e2);
            e2.printStackTrace();
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: t0 */
    public List<String> mo1330t0() {
        try {
            LTKDateUtil.m1403m("HonorImpl ---getNetworkList:");
            List networkList = f3308g.getNetworkList(f3317p, true, true);
            ArrayList arrayList = new ArrayList();
            if (!MobileSdkPlatformUtilities.m2273N(networkList)) {
                arrayList.addAll(networkList);
            }
            List networkList2 = f3308g.getNetworkList(f3317p, true, false);
            if (!MobileSdkPlatformUtilities.m2273N(networkList)) {
                arrayList.addAll(networkList2);
            }
            return arrayList;
        } catch (Throwable th) {
            return CompilerOutline.m1773r(th, CompilerOutline.m1765j("HonorImpl  ---getUrlWhiteList-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: u */
    public List<String> mo1507u() {
        LTKDateUtil.m1403m("HonorImpl  -- getSuperWhiteListForSys");
        try {
            return f3312k.getSuperTrustListForHwSystemManger(f3317p);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HonorImpl  -- getSuperWhiteListForSys-error:"));
            return null;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: v */
    public void mo2078v() {
        try {
            LTKDateUtil.m1403m("HonorImpl  -- storageUnmount");
            f3305d.unmountUsbDevices(f3317p, (String) null);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("HonorImpl unmount usb devices :"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: v0 */
    public void mo2079v0(List<String> list) {
        try {
            LTKDateUtil.m1403m("HonorImpl ---actionClearCache ");
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                f3306e.clearPackageData(f3317p, it.next());
            }
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HonorImpl ---actionClearCache error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: w */
    public void mo2080w() {
        LTKDateUtil.m1403m("HonorImpl  -- disableMicrophone");
        try {
            f3304c.setMicrophoneDisabled(f3317p, true);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("HonorImpl diable micropphone  exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: w0 */
    public void mo2081w0(ArrayList<String> arrayList) {
        try {
            LTKDateUtil.m1403m("HonorImpl ---removeAllowNotificationApps ");
            f3306e.removeAllowNotificationApps(f3317p, arrayList);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HonorImpl ---removeAllowNotificationApps error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: x */
    public void mo1354x(ArrayList<String> arrayList) {
        try {
            if (MobileSdkPlatformUtilities.m2272M(arrayList)) {
                return;
            }
            f3309h.addSsidToTrustList(f3317p, arrayList);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("HonorImpl  addSSIDToWhiteList error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: y0 */
    public void mo1331y0(String str) {
        try {
            LTKDateUtil.m1403m("HonorImpl ---actionEnableApp ");
            ArrayList arrayList = new ArrayList();
            arrayList.add(str);
            f3307f.removeDisallowedRunningApp(f3317p, arrayList);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HonorImpl ---actionEnableApp error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: z */
    public void mo2084z() {
        LTKDateUtil.m1403m("HonorImpl enableSDupgrade");
        try {
            f3304c.setSdCardUpdateDisabled(f3317p, false);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("HonorImpl enable sdupgrade  exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: z0 */
    public void mo1332z0(boolean z) {
        try {
            LTKDateUtil.m1403m("HonorImpl disable sdcard ");
            f3304c.setExternalStorageDisabled(f3317p, true);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("HonorImpl disable sdcard  exception:"));
        }
    }
}
