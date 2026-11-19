package com.huawei.hem;

import android.content.Context;
import android.content.pm.PackageManager;
import android.provider.Settings;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: HuaweiEmui11Impl.java */
/* renamed from: com.huawei.hem.sd */
/* loaded from: classes.dex */
public class C1282sd extends C1257rd {

    /* renamed from: r */
    public static C1282sd f3690r;

    /* renamed from: s */
    public static PackageManager f3691s;

    public C1282sd(Context context, Class cls) {
        super(context, cls);
        f3691s = context.getPackageManager();
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: D */
    public void mo2044D() {
        try {
            C0850bc.m1403m("HuaweiEmui11Impl ---clearLauncher start");
            C1232qd.f3525f.clearDefaultLauncher(C1232qd.f3522c);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiEmui11Impl ---clearLauncher error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: J0 */
    public void mo2050J0(int i, boolean z) {
        C0850bc.m1403m("HuaweiEmui11Impl  -- enableEyeProtect");
        try {
            C1232qd.f3525f.turnOnEyesProtect(C1232qd.f3522c, i, z);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiEmui11Impl  -- enableEyeProtect-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: K */
    public void mo2051K() {
        C0850bc.m1403m("HuaweiEmui11Impl  -- disableFingerSenseCapture");
        try {
            Settings.Global.putInt(C1257rd.f3626q.getContentResolver(), "fingersense_enabled", 0);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiEmui11Impl  -- disableFingerSenseCapture-error = "));
        }
    }

    @Override // com.huawei.hem.C1232qd, com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: M0 */
    public List<String> mo1311M0() {
        C0850bc.m1403m("HuaweiEmui11Impl  -- getAppWhiteList");
        try {
            return C1232qd.f3524e.getInstallPackageTrustList(C1232qd.f3522c);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiEmui11Impl  -- getAppWhiteList-error:"));
            return null;
        }
    }

    @Override // com.huawei.hem.C1257rd, com.huawei.hem.C1232qd, com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: O */
    public void mo1313O(String str, String str2) {
        C0850bc.m1403m("HuaweiEmui11Impl ----system init start");
        super.mo1313O(str, str2);
        m2661c1(str);
        if (mo2071p(true) == 1) {
            try {
                f3691s.setApplicationEnabledSetting("com.bjbyhd.screenreader_huawei", 2, 1);
            } catch (Throwable th) {
                C0948f6.m1744B(th, C0948f6.m1765j("HuaweiEmui11Impl ---setComponentEnabledSetting error:"));
            }
        }
        if (mo2071p(false) == 1) {
            C0948f6.m1780y("com.huawei.HwMultiScreenShot", "com.huawei.screenshot.PhotoEditorActivity", this, C1257rd.f3626q);
            C0948f6.m1780y("com.android.gallery3d", "com.huawei.gallery.app.SinglePhotoActivity", this, C1257rd.f3626q);
            C0948f6.m1780y("com.huawei.videoeditor", "com.huawei.videoeditor.storytemplate.StoryTemplateActivity", this, C1257rd.f3626q);
            C0948f6.m1780y("com.android.gallery3d", "com.huawei.photos.feature.collages.SelectMaterialActivity", this, C1257rd.f3626q);
            C0948f6.m1780y("com.android.gallery3d", "com.huawei.gallery.app.SelectSlotAlbumActivity", this, C1257rd.f3626q);
            C0948f6.m1780y("com.android.settings", "com.android.settings.applications.InstalledAppDetails", this, C1257rd.f3626q);
            C0948f6.m1780y("com.huawei.systemmanager", "com.huawei.notificationmanager.ui.NotificationManagmentActivity", this, C1257rd.f3626q);
            C0948f6.m1780y("com.huawei.systemmanager", "com.huawei.systemmanager.mainscreen.MainScreenActivity", this, C1257rd.f3626q);
            C0948f6.m1780y("com.huawei.security.privacycenter", "com.huawei.security.puremode.PureModeActivity", this, C1257rd.f3626q);
            C0948f6.m1780y("com.huawei.aod", "com.huawei.aod.ui.AODSettingsActivity", this, C1257rd.f3626q);
        }
        try {
            C0850bc.m1403m("HuaweiEmui11Impl enable_magazinelock_feature");
            Settings.Global.putInt(C1257rd.f3626q.getContentResolver(), "enable_magazinelock_feature", 0);
        } catch (Throwable th2) {
            C0948f6.m1744B(th2, C0948f6.m1765j("HuaweiEmui11Impl enable_magazinelock_feature-error:"));
        }
        try {
            C0850bc.m1403m("HuaweiEmui11Impl disable quick tools");
            C1232qd.f3533n.setQuickToolsDisabled(C1232qd.f3522c, true);
        } catch (Throwable th3) {
            C0948f6.m1744B(th3, C0948f6.m1765j("HuaweiEmui11Impl disable quick tools-error:"));
        }
        try {
            C1232qd.f3525f.setMediaControlDisabled(C1232qd.f3522c, true);
        } catch (Throwable th4) {
            C0948f6.m1744B(th4, C0948f6.m1765j("HuaweiEmui11Impl setadduserdisable-error:"));
        }
        m2685f1();
        try {
            C1232qd.f3521b.setPermissionPolicy(C1232qd.f3522c, 1);
        } catch (Throwable th5) {
            C0948f6.m1744B(th5, C0948f6.m1765j("HuaweiEmui11Impl --actionAppPermission-error:"));
        }
        mo2051K();
        Log.i("HuaweiEmui11Impl ", "sysyem init end");
        C0850bc.m1411u("HuaweiEmui11Impl ", "sysyem init end");
    }

    @Override // com.huawei.hem.C1232qd, com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: P0 */
    public void mo2055P0(ArrayList<String> arrayList) {
        C0850bc.m1403m("HuaweiEmui11Impl  -- removeSuperWhiteListForSys");
        try {
            if (!AbstractC1102l9.m2272M(arrayList)) {
                arrayList.remove("com.android.launcher3");
                arrayList.remove("com.ndwill.swd.appstore");
            }
            C1232qd.f3531l.removeSuperTrustListForHwSystemManger(C1232qd.f3522c, arrayList);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiEmui11Impl  -- removeSuperWhiteListForSys-error:"));
        }
    }

    @Override // com.huawei.hem.C1257rd, com.huawei.hem.C1232qd
    /* renamed from: V0 */
    public void mo2616V0(String str, Context context) {
        try {
            C0850bc.m1403m("HuaweiEmui11Impl ---actionActiveDeviceAdmin");
            C1232qd.f3525f.setForcedActiveDeviceAdmin(C1232qd.f3522c, context);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiEmui11Impl ---actionActiveDeviceAdmin error:"));
        }
    }

    @Override // com.huawei.hem.C1257rd, com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: a */
    public void mo2059a(String str, String str2) {
        try {
            C0850bc.m1403m("HuaweiEmui11Impl ---setDefaultLauncher start");
            C1232qd.f3525f.setDefaultLauncher(C1232qd.f3522c, "com.android.launcher3", "com.android.launcher3.LauncherNew");
            mo1309J("com.huawei.android.launcher");
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiEmui11Impl ---setDefaultLauncher error:"));
        }
    }

    @Override // com.huawei.hem.C1232qd, com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: d */
    public void mo1506d(ArrayList<String> arrayList) {
        C0850bc.m1403m("HuaweiEmui11Impl  -- setSuperWhiteListForSys");
        try {
            if (!AbstractC1102l9.m2272M(arrayList)) {
                C0850bc.m1403m("HuaweiEmui11Impl  -- 设置可信任应用:" + arrayList);
                C1232qd.f3531l.setSuperTrustListForHwSystemManger(C1232qd.f3522c, arrayList);
            }
            C0850bc.m1403m("HuaweiEmui11Impl  -- setSuperWhiteListForSys for hw system manager");
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiEmui11Impl  -- setSuperWhiteListForSys-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: d0 */
    public void mo2061d0(String str) {
        C0948f6.m1779x("HuaweiEmui11Impl  disableAppByAndroidNative   ", str);
        try {
            f3691s.setApplicationEnabledSetting(str, 2, 1);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiEmui11Impl ---disableAppByAndroidNative error:"));
        }
    }

    @Override // com.huawei.hem.C1257rd, com.huawei.hem.C1232qd, com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableUsb() {
        try {
            C1232qd.f3523d.setAdbDisabled(C1232qd.f3522c, true);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiEmui11Impl  -- disableUsb-error1 = "));
        }
        try {
            C0850bc.m1403m("HuaweiEmui11Impl --- disableUsb turnOnUsbDebugMode:");
            C1232qd.f3525f.turnOnUsbDebugMode(C1232qd.f3522c, false);
        } catch (Throwable th2) {
            C0948f6.m1744B(th2, C0948f6.m1765j("HuaweiEmui11Impl ---disableUsb turnOnUsbDebugMode-error:"));
        }
        try {
            C1232qd.f3523d.setUSBDataDisabled(C1232qd.f3522c, true);
        } catch (Throwable th3) {
            C0948f6.m1744B(th3, C0948f6.m1765j("HuaweiEmui11Impl  -- disableUsb-error1 = "));
        }
    }

    @Override // com.huawei.hem.C1257rd, com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: e0 */
    public boolean mo2062e0() {
        try {
            C0850bc.m1403m("HuaweiEmui11Impl ---isForcedActiveDeviceAdmin");
            return C1232qd.f3525f.isForcedActiveDeviceAdmin(C1232qd.f3522c);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiEmui11Impl ---isForcedActiveDeviceAdmin error:"));
            return false;
        }
    }

    /* renamed from: e1 */
    public List<String> m2684e1(List<String> list) {
        if (AbstractC1102l9.m2273N(list)) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            if (C0850bc.m1405o(str, C1257rd.f3626q)) {
                arrayList.add(str);
            }
        }
        StringBuilder sbM1765j = C0948f6.m1765j("HuaweiEmui11Impl read install list:");
        sbM1765j.append(arrayList.toString());
        C0850bc.m1403m(sbM1765j.toString());
        return arrayList;
    }

    @Override // com.huawei.hem.C1257rd, com.huawei.hem.C1232qd, com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableUsb() {
        try {
            C1232qd.f3523d.setUSBDataDisabled(C1232qd.f3522c, false);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiEmui11Impl  -- disableUsb-error1 = "));
        }
        try {
            C1232qd.f3523d.setAdbDisabled(C1232qd.f3522c, false);
        } catch (Throwable th2) {
            C0948f6.m1744B(th2, C0948f6.m1765j("HuaweiEmui11Impl  -- disableUsb-error1 = "));
        }
        try {
            C0850bc.m1403m("HuaweiEmui11Impl --- enable turnOnUsbDebugMode:");
            C1232qd.f3525f.turnOnUsbDebugMode(C1232qd.f3522c, true);
        } catch (Throwable th3) {
            C0948f6.m1744B(th3, C0948f6.m1765j("HuaweiEmui11Impl ---enable turnOnUsbDebugMode-error:"));
        }
    }

    /* renamed from: f1 */
    public void m2685f1() {
        try {
            C0850bc.m1403m("HuaweiEmui11Impl =====setModifyDeviceNameDisabled====");
            C1232qd.f3528i.setModifyDeviceNameDisabled(C1232qd.f3522c, true);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiEmui11Impl --setModifyDeviceNameDisabled-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: m */
    public void mo2068m(List<String> list) {
        List<String> listM2684e1 = m2684e1(list);
        C0850bc.m1403m("HuaweiEmui11Impl  enableAppsByAndroidNative  packageName " + listM2684e1);
        try {
            Iterator it = ((ArrayList) listM2684e1).iterator();
            while (it.hasNext()) {
                f3691s.setApplicationEnabledSetting((String) it.next(), 1, 1);
            }
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiEmui11Impl ---enableAppsByAndroidNative error:"));
        }
    }

    @Override // com.huawei.hem.C1232qd, com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: s */
    public boolean mo1328s(List<String> list) {
        C0850bc.m1403m("HuaweiEmui11Impl  -- setAppWhiteList");
        try {
            List<String> listMo1311M0 = mo1311M0();
            if (listMo1311M0 != null && !listMo1311M0.isEmpty()) {
                C1232qd.f3524e.removeInstallPackageTrustList(C1232qd.f3522c, listMo1311M0);
            }
            C1232qd.f3524e.addInstallPackageTrustList(C1232qd.f3522c, list);
            C0850bc.m1403m("HuaweiEmui11Impl  -- set app white list end:" + mo1311M0());
            return false;
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiEmui11Impl  -- setAppWhiteList-error:"));
            return false;
        }
    }

    @Override // com.huawei.hem.C1232qd, com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: u */
    public List<String> mo1507u() {
        C0850bc.m1403m("HuaweiEmui11Impl  -- getSuperWhiteListForSys");
        try {
            return C1232qd.f3531l.getSuperTrustListForHwSystemManger(C1232qd.f3522c);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiEmui11Impl  -- getSuperWhiteListForSys-error:"));
            return null;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: u0 */
    public void mo2077u0(List<String> list) {
        List<String> listM2684e1 = m2684e1(list);
        StringBuilder sbM1765j = C0948f6.m1765j("HuaweiEmui11Impl  disableAppsByAndroidNative  packageName ");
        sbM1765j.append(listM2684e1.toString());
        C0850bc.m1403m(sbM1765j.toString());
        try {
            Iterator it = ((ArrayList) listM2684e1).iterator();
            while (it.hasNext()) {
                f3691s.setApplicationEnabledSetting((String) it.next(), 2, 1);
            }
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiEmui11Impl ---disableAppByAndroidNative error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: y */
    public void mo2083y(String str) {
        C0948f6.m1779x("HuaweiEmui11Impl  enableAppByAndroidNative   ", str);
        try {
            f3691s.setApplicationEnabledSetting(str, 1, 1);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("HuaweiEmui11Impl ---disableAppByAndroidNative error:"));
        }
    }
}
