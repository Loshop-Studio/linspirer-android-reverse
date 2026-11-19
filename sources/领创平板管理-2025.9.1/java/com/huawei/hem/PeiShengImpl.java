package com.huawei.hem;

import android.content.Context;
import android.p000os.EduManager;
import java.util.ArrayList;
import java.util.List;

/* compiled from: PeiShengImpl.java */
/* renamed from: com.huawei.hem.cd */
/* loaded from: classes.dex */
public class PeiShengImpl extends AndroidImpl {

    /* renamed from: b */
    public static PeiShengImpl f2338b = new PeiShengImpl();

    /* renamed from: c */
    public static PeishengPolicyManager f2339c;

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: B0 */
    public void mo1304B0(List<String> list) {
        if (MobileSdkPlatformUtilities.m2273N(list)) {
            return;
        }
        try {
            List<String> listM2113a = f2339c.m2113a();
            if (MobileSdkPlatformUtilities.m2273N(listM2113a)) {
                return;
            }
            listM2113a.removeAll(list);
            EduManager eduManager = f2339c.f2923a;
            if (eduManager == null) {
                return;
            }
            eduManager.AppFreezeListSet(listM2113a);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("PeiShengImpl --actionEnableApps--error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: F */
    public void mo1306F(String str) {
        LTKDateUtil.m1403m("PeiShengImpl --actionSilentInstall");
        try {
            EduManager eduManager = f2339c.f2923a;
            if (eduManager == null) {
                return;
            }
            eduManager.AppSilentInstall(str, false);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("PeiShengImpl --actionSilentInstall--error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: G */
    public String mo1337G() {
        LTKDateUtil.m1403m("PeiShengImpl  -- getDeviceSN ");
        try {
            EduManager eduManager = f2339c.f2923a;
            return eduManager == null ? "" : eduManager.SysSerialnoGet();
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("PeiShengImpl  -- getDeviceSN -error: "));
            return "";
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: M0 */
    public List<String> mo1311M0() {
        LTKDateUtil.m1403m("PeiShengImpl --getAppWhiteList");
        try {
            EduManager eduManager = f2339c.f2923a;
            return eduManager == null ? new ArrayList() : eduManager.AppInstallWhiteListGet();
        } catch (Throwable th) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("PeiShengImpl --getAppWhiteList--error:");
            sbM1765j.append(th.getMessage());
            LTKDateUtil.m1403m(sbM1765j.toString());
            return new ArrayList();
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: N */
    public boolean mo1312N(long j) {
        LTKDateUtil.m1403m("PeiShengImpl --setSystemTime");
        try {
            EduManager eduManager = f2339c.f2923a;
            if (eduManager == null) {
                return true;
            }
            eduManager.SysTimeStampSet(j);
            return true;
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("PeiShengImpl --setSystemTime--error:"));
            return true;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: O */
    public void mo1313O(String str, String str2) {
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: Q */
    public void mo1314Q(String str) {
        LTKDateUtil.m1403m("PeiShengImpl --actionSilentUnInstall");
        try {
            EduManager eduManager = f2339c.f2923a;
            if (eduManager == null) {
                return;
            }
            eduManager.AppSilentUninstall(str, false);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("PeiShengImpl --actionSilentUnInstall--error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: V */
    public boolean mo1316V(List<String> list) {
        EduManager eduManager = f2339c.f2923a;
        if (eduManager != null) {
            eduManager.GlobalNetworkWhiteListClear();
        }
        EduManager eduManager2 = f2339c.f2923a;
        if (eduManager2 == null) {
            return false;
        }
        eduManager2.GlobalNetworkWhiteListSet(list);
        return false;
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: Y */
    public String mo1317Y(Context context) {
        LTKDateUtil.m1403m("PeiShengImpl  -- getWifiMacAddress ");
        try {
            EduManager eduManager = f2339c.f2923a;
            return eduManager == null ? "" : eduManager.WifiMacGet();
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("PeiShengImpl  -- getWifiMacAddress -error: "));
            return "";
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: c */
    public void mo1319c(boolean z) {
        LTKDateUtil.m1403m("PeiShengImpl --enableSdCard");
        try {
            EduManager eduManager = f2339c.f2923a;
            if (eduManager == null) {
                return;
            }
            eduManager.ExternalStorageEnable(true);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("PeiShengImpl --enableSdCard--error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: d */
    public void mo1506d(ArrayList<String> arrayList) {
        EduManager eduManager;
        LTKDateUtil.m1403m("PeiShengImpl --setSuperWhiteListForSys");
        try {
            if (!MobileSdkPlatformUtilities.m2272M(arrayList) && (eduManager = f2339c.f2923a) != null) {
                eduManager.AppTrustedListSet(arrayList);
            }
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("PeiShengImpl --setSuperWhiteListForSys--error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableBack() {
        LTKDateUtil.m1403m("PeiShengImpl --disableBack");
        try {
            EduManager eduManager = f2339c.f2923a;
            if (eduManager == null) {
                return;
            }
            eduManager.BackKeyEnable(false);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("PeiShengImpl --disableBack--error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableBluetooth() {
        LTKDateUtil.m1403m("PeiShengImpl --disableBluetooth");
        try {
            EduManager eduManager = f2339c.f2923a;
            if (eduManager == null) {
                return;
            }
            eduManager.BluetoothEnable(false);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("PeiShengImpl --disableBluetooth--error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableCamera() {
        LTKDateUtil.m1403m("PeiShengImpl --disableCamera");
        try {
            EduManager eduManager = f2339c.f2923a;
            if (eduManager == null) {
                return;
            }
            eduManager.CameraEnable(false);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("PeiShengImpl --disableCamera--error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableHome() {
        LTKDateUtil.m1403m("PeiShengImpl --disableHome");
        try {
            EduManager eduManager = f2339c.f2923a;
            if (eduManager == null) {
                return;
            }
            eduManager.HomeKeyEnable(false);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("PeiShengImpl --disableHome--error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableNavigation() {
        disableHome();
        disableRecent();
        disableBack();
        disableVolume();
        disableShortPressPower();
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableRecent() {
        LTKDateUtil.m1403m("PeiShengImpl --disableRecent");
        try {
            EduManager eduManager = f2339c.f2923a;
            if (eduManager == null) {
                return;
            }
            eduManager.RecentKeyEnable(false);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("PeiShengImpl --disableRecent--error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableShortPressPower() {
        LTKDateUtil.m1403m("PeiShengImpl --disableShortPressPower");
        try {
            EduManager eduManager = f2339c.f2923a;
            if (eduManager == null) {
                return;
            }
            eduManager.PowerKeyShortPressEnable(false);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("PeiShengImpl --disableShortPressPower--error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableUsb() {
        LTKDateUtil.m1403m("PeiShengImpl --disableUsb");
        try {
            EduManager eduManager = f2339c.f2923a;
            if (eduManager != null) {
                eduManager.UsbMtpEnable(false);
            }
            EduManager eduManager2 = f2339c.f2923a;
            if (eduManager2 == null) {
                return;
            }
            eduManager2.UsbDebugEnable(false);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("PeiShengImpl --disableUsb--error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableVolume() {
        LTKDateUtil.m1403m("PeiShengImpl --disableVolume");
        try {
            EduManager eduManager = f2339c.f2923a;
            if (eduManager == null) {
                return;
            }
            eduManager.VolumeKeyEnable(false);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("PeiShengImpl --disableVolume--error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: e */
    public void mo1320e(String str) {
        LTKDateUtil.m1403m("PeiShengImpl --actionDisableApp");
        try {
            List<String> listM2113a = f2339c.m2113a();
            if (MobileSdkPlatformUtilities.m2273N(listM2113a)) {
                listM2113a = new ArrayList<>();
            }
            listM2113a.add(str);
            EduManager eduManager = f2339c.f2923a;
            if (eduManager == null) {
                return;
            }
            eduManager.AppFreezeListSet(listM2113a);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("PeiShengImpl --actionDisableApp--error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableBack() {
        LTKDateUtil.m1403m("PeiShengImpl --enableBack");
        try {
            EduManager eduManager = f2339c.f2923a;
            if (eduManager == null) {
                return;
            }
            eduManager.BackKeyEnable(true);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("PeiShengImpl --enableBack--error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableBluetooth() {
        LTKDateUtil.m1403m("PeiShengImpl --enableBluetooth");
        try {
            EduManager eduManager = f2339c.f2923a;
            if (eduManager == null) {
                return;
            }
            eduManager.BluetoothEnable(true);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("PeiShengImpl --enableBluetooth--error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableCamera() {
        LTKDateUtil.m1403m("PeiShengImpl --enableCamera");
        try {
            EduManager eduManager = f2339c.f2923a;
            if (eduManager == null) {
                return;
            }
            eduManager.CameraEnable(true);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("PeiShengImpl --enableCamera--error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableHome() {
        LTKDateUtil.m1403m("PeiShengImpl --enableHome");
        try {
            EduManager eduManager = f2339c.f2923a;
            if (eduManager == null) {
                return;
            }
            eduManager.HomeKeyEnable(true);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("PeiShengImpl --enableHome--error:"));
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
        LTKDateUtil.m1403m("PeiShengImpl --enableRecent");
        try {
            EduManager eduManager = f2339c.f2923a;
            if (eduManager == null) {
                return;
            }
            eduManager.RecentKeyEnable(true);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("PeiShengImpl --enableRecent--error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableShortPressPower() {
        LTKDateUtil.m1403m("PeiShengImpl --enableShortPressPower");
        try {
            EduManager eduManager = f2339c.f2923a;
            if (eduManager == null) {
                return;
            }
            eduManager.PowerKeyShortPressEnable(true);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("PeiShengImpl --enableShortPressPower--error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableUsb() {
        LTKDateUtil.m1403m("PeiShengImpl --enableUsb");
        try {
            EduManager eduManager = f2339c.f2923a;
            if (eduManager != null) {
                eduManager.UsbMtpEnable(true);
            }
            EduManager eduManager2 = f2339c.f2923a;
            if (eduManager2 == null) {
                return;
            }
            eduManager2.UsbDebugEnable(true);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("PeiShengImpl --enableUsb--error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableVolume() {
        LTKDateUtil.m1403m("PeiShengImpl --enableVolume");
        try {
            EduManager eduManager = f2339c.f2923a;
            if (eduManager == null) {
                return;
            }
            eduManager.VolumeKeyEnable(true);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("PeiShengImpl --enableVolume--error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: k0 */
    public void mo1326k0(List<String> list) {
        if (MobileSdkPlatformUtilities.m2273N(list)) {
            return;
        }
        try {
            List<String> listM2113a = f2339c.m2113a();
            if (MobileSdkPlatformUtilities.m2273N(listM2113a)) {
                listM2113a = new ArrayList<>();
            }
            listM2113a.addAll(list);
            EduManager eduManager = f2339c.f2923a;
            if (eduManager == null) {
                return;
            }
            eduManager.AppFreezeListSet(listM2113a);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("PeiShengImpl --actionDisableApps--error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: s */
    public boolean mo1328s(List<String> list) {
        LTKDateUtil.m1403m("PeiShengImpl --setAppWhiteList");
        try {
            EduManager eduManager = f2339c.f2923a;
            if (eduManager == null) {
                return true;
            }
            eduManager.AppInstallWhiteListSet(list);
            return true;
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("PeiShengImpl --setAppWhiteList--error:"));
            return false;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: t */
    public void mo1329t(boolean z) {
        LTKDateUtil.m1403m("PeiShengImpl --actionResetFactory");
        try {
            EduManager eduManager = f2339c.f2923a;
            if (eduManager == null) {
                return;
            }
            eduManager.SysFactoryRest();
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("PeiShengImpl --actionResetFactory--error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: t0 */
    public List<String> mo1330t0() {
        LTKDateUtil.m1403m("PeiShengImpl --getUrlWhiteList");
        try {
            EduManager eduManager = f2339c.f2923a;
            return eduManager == null ? new ArrayList() : eduManager.GlobalNetworkWhiteListGet();
        } catch (Throwable th) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("PeiShengImpl --getUrlWhiteList--error:");
            sbM1765j.append(th.getMessage());
            LTKDateUtil.m1403m(sbM1765j.toString());
            return new ArrayList();
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: u */
    public List<String> mo1507u() {
        LTKDateUtil.m1403m("PeiShengImpl --getSuperWhiteListForSys");
        try {
            EduManager eduManager = f2339c.f2923a;
            return eduManager == null ? new ArrayList() : eduManager.AppTrustedListGet();
        } catch (Throwable th) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("PeiShengImpl --getSuperWhiteListForSys--error:");
            sbM1765j.append(th.getMessage());
            LTKDateUtil.m1403m(sbM1765j.toString());
            return new ArrayList();
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: y0 */
    public void mo1331y0(String str) {
        CompilerOutline.m1779x("PeiShengImpl --actionEnableApp packageName:", str);
        try {
            List<String> listM2113a = f2339c.m2113a();
            if (!MobileSdkPlatformUtilities.m2273N(listM2113a)) {
                listM2113a.remove(str);
            }
            f2339c.m2114b(listM2113a);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("PeiShengImpl --actionEnableApp--error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: z0 */
    public void mo1332z0(boolean z) {
        LTKDateUtil.m1403m("PeiShengImpl --disableSdCard");
        try {
            EduManager eduManager = f2339c.f2923a;
            if (eduManager == null) {
                return;
            }
            eduManager.ExternalStorageEnable(false);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("PeiShengImpl --disableSdCard--error:"));
        }
    }
}
