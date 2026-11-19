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
public class HuaweiEmui11Impl extends HuaweiEmui10Impl {

    /* renamed from: r */
    public static HuaweiEmui11Impl f3690r;

    /* renamed from: s */
    public static PackageManager f3691s;

    public HuaweiEmui11Impl(Context context, Class cls) {
        super(context, cls);
        f3691s = context.getPackageManager();
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: D */
    public void mo2044D() {
        try {
            LTKDateUtil.m1403m("HuaweiEmui11Impl ---clearLauncher start");
            HuaweiBaseImpl.f3525f.clearDefaultLauncher(HuaweiBaseImpl.f3522c);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HuaweiEmui11Impl ---clearLauncher error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: J0 */
    public void mo2050J0(int i, boolean z) {
        LTKDateUtil.m1403m("HuaweiEmui11Impl  -- enableEyeProtect");
        try {
            HuaweiBaseImpl.f3525f.turnOnEyesProtect(HuaweiBaseImpl.f3522c, i, z);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HuaweiEmui11Impl  -- enableEyeProtect-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: K */
    public void mo2051K() {
        LTKDateUtil.m1403m("HuaweiEmui11Impl  -- disableFingerSenseCapture");
        try {
            Settings.Global.putInt(HuaweiEmui10Impl.f3626q.getContentResolver(), "fingersense_enabled", 0);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HuaweiEmui11Impl  -- disableFingerSenseCapture-error = "));
        }
    }

    @Override // com.huawei.hem.C1232qd, com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: M0 */
    public List<String> mo1311M0() {
        LTKDateUtil.m1403m("HuaweiEmui11Impl  -- getAppWhiteList");
        try {
            return HuaweiBaseImpl.f3524e.getInstallPackageTrustList(HuaweiBaseImpl.f3522c);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HuaweiEmui11Impl  -- getAppWhiteList-error:"));
            return null;
        }
    }

    @Override // com.huawei.hem.C1257rd, com.huawei.hem.C1232qd, com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: O */
    public void mo1313O(String str, String str2) {
        LTKDateUtil.m1403m("HuaweiEmui11Impl ----system init start");
        super.mo1313O(str, str2);
        m2661c1(str);
        if (mo2071p(true) == 1) {
            try {
                f3691s.setApplicationEnabledSetting("com.bjbyhd.screenreader_huawei", 2, 1);
            } catch (Throwable th) {
                CompilerOutline.m1744B(th, CompilerOutline.m1765j("HuaweiEmui11Impl ---setComponentEnabledSetting error:"));
            }
        }
        if (mo2071p(false) == 1) {
            CompilerOutline.m1780y("com.huawei.HwMultiScreenShot", "com.huawei.screenshot.PhotoEditorActivity", this, HuaweiEmui10Impl.f3626q);
            CompilerOutline.m1780y("com.android.gallery3d", "com.huawei.gallery.app.SinglePhotoActivity", this, HuaweiEmui10Impl.f3626q);
            CompilerOutline.m1780y("com.huawei.videoeditor", "com.huawei.videoeditor.storytemplate.StoryTemplateActivity", this, HuaweiEmui10Impl.f3626q);
            CompilerOutline.m1780y("com.android.gallery3d", "com.huawei.photos.feature.collages.SelectMaterialActivity", this, HuaweiEmui10Impl.f3626q);
            CompilerOutline.m1780y("com.android.gallery3d", "com.huawei.gallery.app.SelectSlotAlbumActivity", this, HuaweiEmui10Impl.f3626q);
            CompilerOutline.m1780y("com.android.settings", "com.android.settings.applications.InstalledAppDetails", this, HuaweiEmui10Impl.f3626q);
            CompilerOutline.m1780y("com.huawei.systemmanager", "com.huawei.notificationmanager.ui.NotificationManagmentActivity", this, HuaweiEmui10Impl.f3626q);
            CompilerOutline.m1780y("com.huawei.systemmanager", "com.huawei.systemmanager.mainscreen.MainScreenActivity", this, HuaweiEmui10Impl.f3626q);
            CompilerOutline.m1780y("com.huawei.security.privacycenter", "com.huawei.security.puremode.PureModeActivity", this, HuaweiEmui10Impl.f3626q);
            CompilerOutline.m1780y("com.huawei.aod", "com.huawei.aod.ui.AODSettingsActivity", this, HuaweiEmui10Impl.f3626q);
        }
        try {
            LTKDateUtil.m1403m("HuaweiEmui11Impl enable_magazinelock_feature");
            Settings.Global.putInt(HuaweiEmui10Impl.f3626q.getContentResolver(), "enable_magazinelock_feature", 0);
        } catch (Throwable th2) {
            CompilerOutline.m1744B(th2, CompilerOutline.m1765j("HuaweiEmui11Impl enable_magazinelock_feature-error:"));
        }
        try {
            LTKDateUtil.m1403m("HuaweiEmui11Impl disable quick tools");
            HuaweiBaseImpl.f3533n.setQuickToolsDisabled(HuaweiBaseImpl.f3522c, true);
        } catch (Throwable th3) {
            CompilerOutline.m1744B(th3, CompilerOutline.m1765j("HuaweiEmui11Impl disable quick tools-error:"));
        }
        try {
            HuaweiBaseImpl.f3525f.setMediaControlDisabled(HuaweiBaseImpl.f3522c, true);
        } catch (Throwable th4) {
            CompilerOutline.m1744B(th4, CompilerOutline.m1765j("HuaweiEmui11Impl setadduserdisable-error:"));
        }
        m2685f1();
        try {
            HuaweiBaseImpl.f3521b.setPermissionPolicy(HuaweiBaseImpl.f3522c, 1);
        } catch (Throwable th5) {
            CompilerOutline.m1744B(th5, CompilerOutline.m1765j("HuaweiEmui11Impl --actionAppPermission-error:"));
        }
        mo2051K();
        Log.i("HuaweiEmui11Impl ", "sysyem init end");
        LTKDateUtil.m1411u("HuaweiEmui11Impl ", "sysyem init end");
    }

    @Override // com.huawei.hem.C1232qd, com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: P0 */
    public void mo2055P0(ArrayList<String> arrayList) {
        LTKDateUtil.m1403m("HuaweiEmui11Impl  -- removeSuperWhiteListForSys");
        try {
            if (!MobileSdkPlatformUtilities.m2272M(arrayList)) {
                arrayList.remove("com.android.launcher3");
                arrayList.remove("com.ndwill.swd.appstore");
            }
            HuaweiBaseImpl.f3531l.removeSuperTrustListForHwSystemManger(HuaweiBaseImpl.f3522c, arrayList);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HuaweiEmui11Impl  -- removeSuperWhiteListForSys-error:"));
        }
    }

    @Override // com.huawei.hem.C1257rd, com.huawei.hem.C1232qd
    /* renamed from: V0 */
    public void mo2616V0(String str, Context context) {
        try {
            LTKDateUtil.m1403m("HuaweiEmui11Impl ---actionActiveDeviceAdmin");
            HuaweiBaseImpl.f3525f.setForcedActiveDeviceAdmin(HuaweiBaseImpl.f3522c, context);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HuaweiEmui11Impl ---actionActiveDeviceAdmin error:"));
        }
    }

    @Override // com.huawei.hem.C1257rd, com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: a */
    public void mo2059a(String str, String str2) {
        try {
            LTKDateUtil.m1403m("HuaweiEmui11Impl ---setDefaultLauncher start");
            HuaweiBaseImpl.f3525f.setDefaultLauncher(HuaweiBaseImpl.f3522c, "com.android.launcher3", "com.android.launcher3.LauncherNew");
            mo1309J("com.huawei.android.launcher");
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HuaweiEmui11Impl ---setDefaultLauncher error:"));
        }
    }

    @Override // com.huawei.hem.C1232qd, com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: d */
    public void mo1506d(ArrayList<String> arrayList) {
        LTKDateUtil.m1403m("HuaweiEmui11Impl  -- setSuperWhiteListForSys");
        try {
            if (!MobileSdkPlatformUtilities.m2272M(arrayList)) {
                LTKDateUtil.m1403m("HuaweiEmui11Impl  -- 设置可信任应用:" + arrayList);
                HuaweiBaseImpl.f3531l.setSuperTrustListForHwSystemManger(HuaweiBaseImpl.f3522c, arrayList);
            }
            LTKDateUtil.m1403m("HuaweiEmui11Impl  -- setSuperWhiteListForSys for hw system manager");
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HuaweiEmui11Impl  -- setSuperWhiteListForSys-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: d0 */
    public void mo2061d0(String str) {
        CompilerOutline.m1779x("HuaweiEmui11Impl  disableAppByAndroidNative   ", str);
        try {
            f3691s.setApplicationEnabledSetting(str, 2, 1);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HuaweiEmui11Impl ---disableAppByAndroidNative error:"));
        }
    }

    @Override // com.huawei.hem.C1257rd, com.huawei.hem.C1232qd, com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableUsb() {
        try {
            HuaweiBaseImpl.f3523d.setAdbDisabled(HuaweiBaseImpl.f3522c, true);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HuaweiEmui11Impl  -- disableUsb-error1 = "));
        }
        try {
            LTKDateUtil.m1403m("HuaweiEmui11Impl --- disableUsb turnOnUsbDebugMode:");
            HuaweiBaseImpl.f3525f.turnOnUsbDebugMode(HuaweiBaseImpl.f3522c, false);
        } catch (Throwable th2) {
            CompilerOutline.m1744B(th2, CompilerOutline.m1765j("HuaweiEmui11Impl ---disableUsb turnOnUsbDebugMode-error:"));
        }
        try {
            HuaweiBaseImpl.f3523d.setUSBDataDisabled(HuaweiBaseImpl.f3522c, true);
        } catch (Throwable th3) {
            CompilerOutline.m1744B(th3, CompilerOutline.m1765j("HuaweiEmui11Impl  -- disableUsb-error1 = "));
        }
    }

    @Override // com.huawei.hem.C1257rd, com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: e0 */
    public boolean mo2062e0() {
        try {
            LTKDateUtil.m1403m("HuaweiEmui11Impl ---isForcedActiveDeviceAdmin");
            return HuaweiBaseImpl.f3525f.isForcedActiveDeviceAdmin(HuaweiBaseImpl.f3522c);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HuaweiEmui11Impl ---isForcedActiveDeviceAdmin error:"));
            return false;
        }
    }

    /* renamed from: e1 */
    public List<String> m2684e1(List<String> list) {
        if (MobileSdkPlatformUtilities.m2273N(list)) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            if (LTKDateUtil.m1405o(str, HuaweiEmui10Impl.f3626q)) {
                arrayList.add(str);
            }
        }
        StringBuilder sbM1765j = CompilerOutline.m1765j("HuaweiEmui11Impl read install list:");
        sbM1765j.append(arrayList.toString());
        LTKDateUtil.m1403m(sbM1765j.toString());
        return arrayList;
    }

    @Override // com.huawei.hem.C1257rd, com.huawei.hem.C1232qd, com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableUsb() {
        try {
            HuaweiBaseImpl.f3523d.setUSBDataDisabled(HuaweiBaseImpl.f3522c, false);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HuaweiEmui11Impl  -- disableUsb-error1 = "));
        }
        try {
            HuaweiBaseImpl.f3523d.setAdbDisabled(HuaweiBaseImpl.f3522c, false);
        } catch (Throwable th2) {
            CompilerOutline.m1744B(th2, CompilerOutline.m1765j("HuaweiEmui11Impl  -- disableUsb-error1 = "));
        }
        try {
            LTKDateUtil.m1403m("HuaweiEmui11Impl --- enable turnOnUsbDebugMode:");
            HuaweiBaseImpl.f3525f.turnOnUsbDebugMode(HuaweiBaseImpl.f3522c, true);
        } catch (Throwable th3) {
            CompilerOutline.m1744B(th3, CompilerOutline.m1765j("HuaweiEmui11Impl ---enable turnOnUsbDebugMode-error:"));
        }
    }

    /* renamed from: f1 */
    public void m2685f1() {
        try {
            LTKDateUtil.m1403m("HuaweiEmui11Impl =====setModifyDeviceNameDisabled====");
            HuaweiBaseImpl.f3528i.setModifyDeviceNameDisabled(HuaweiBaseImpl.f3522c, true);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HuaweiEmui11Impl --setModifyDeviceNameDisabled-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: m */
    public void mo2068m(List<String> list) {
        List<String> listM2684e1 = m2684e1(list);
        LTKDateUtil.m1403m("HuaweiEmui11Impl  enableAppsByAndroidNative  packageName " + listM2684e1);
        try {
            Iterator it = ((ArrayList) listM2684e1).iterator();
            while (it.hasNext()) {
                f3691s.setApplicationEnabledSetting((String) it.next(), 1, 1);
            }
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HuaweiEmui11Impl ---enableAppsByAndroidNative error:"));
        }
    }

    @Override // com.huawei.hem.C1232qd, com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: s */
    public boolean mo1328s(List<String> list) {
        LTKDateUtil.m1403m("HuaweiEmui11Impl  -- setAppWhiteList");
        try {
            List<String> listMo1311M0 = mo1311M0();
            if (listMo1311M0 != null && !listMo1311M0.isEmpty()) {
                HuaweiBaseImpl.f3524e.removeInstallPackageTrustList(HuaweiBaseImpl.f3522c, listMo1311M0);
            }
            HuaweiBaseImpl.f3524e.addInstallPackageTrustList(HuaweiBaseImpl.f3522c, list);
            LTKDateUtil.m1403m("HuaweiEmui11Impl  -- set app white list end:" + mo1311M0());
            return false;
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HuaweiEmui11Impl  -- setAppWhiteList-error:"));
            return false;
        }
    }

    @Override // com.huawei.hem.C1232qd, com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: u */
    public List<String> mo1507u() {
        LTKDateUtil.m1403m("HuaweiEmui11Impl  -- getSuperWhiteListForSys");
        try {
            return HuaweiBaseImpl.f3531l.getSuperTrustListForHwSystemManger(HuaweiBaseImpl.f3522c);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HuaweiEmui11Impl  -- getSuperWhiteListForSys-error:"));
            return null;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: u0 */
    public void mo2077u0(List<String> list) {
        List<String> listM2684e1 = m2684e1(list);
        StringBuilder sbM1765j = CompilerOutline.m1765j("HuaweiEmui11Impl  disableAppsByAndroidNative  packageName ");
        sbM1765j.append(listM2684e1.toString());
        LTKDateUtil.m1403m(sbM1765j.toString());
        try {
            Iterator it = ((ArrayList) listM2684e1).iterator();
            while (it.hasNext()) {
                f3691s.setApplicationEnabledSetting((String) it.next(), 2, 1);
            }
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HuaweiEmui11Impl ---disableAppByAndroidNative error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: y */
    public void mo2083y(String str) {
        CompilerOutline.m1779x("HuaweiEmui11Impl  enableAppByAndroidNative   ", str);
        try {
            f3691s.setApplicationEnabledSetting(str, 1, 1);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HuaweiEmui11Impl ---disableAppByAndroidNative error:"));
        }
    }
}
