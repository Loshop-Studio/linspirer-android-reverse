package com.huawei.hem;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.provider.Settings;
import com.huawei.android.app.admin.DeviceP2PManager;
import java.util.ArrayList;
import java.util.List;

/* compiled from: HuaweiEmui10Impl.java */
/* renamed from: com.huawei.hem.rd */
/* loaded from: classes.dex */
public class HuaweiEmui10Impl extends HuaweiBaseImpl {

    /* renamed from: o */
    public static HuaweiEmui10Impl f3624o;

    /* renamed from: p */
    public static DeviceP2PManager f3625p;

    /* renamed from: q */
    public static Context f3626q;

    public HuaweiEmui10Impl(Context context, Class cls) {
        super(context, cls);
        f3626q = context;
        f3625p = new DeviceP2PManager();
    }

    @Override // com.huawei.hem.C1232qd, com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: C */
    public void mo1305C() {
        try {
            Settings.Secure.putInt(f3626q.getContentResolver(), "secure_gesture_navigation", 1);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("HuaweiEmui10Impl  disableNavigationBar exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: E */
    public void mo2046E() {
        try {
            LTKDateUtil.m1403m("HuaweiEmui10Impl  -- disableSDupgrade ");
            HuaweiBaseImpl.f3523d.setSdCardUpdateDisabled(HuaweiBaseImpl.f3522c, true);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HuaweiEmui10Impl  -- disableSDupgrade error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: F0 */
    public void mo2047F0(String str) {
        LTKDateUtil.m1403m("HuaweiEmui10Impl  -- setDeviceName ");
        try {
            HuaweiBaseImpl.f3525f.setDeviceName(HuaweiBaseImpl.f3522c, str);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HuaweiEmui10Impl  -- setDeviceName error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: G0 */
    public List<String> mo1307G0() {
        try {
            ArrayList networkAccessAppList = HuaweiBaseImpl.f3526g.getNetworkAccessAppList(HuaweiBaseImpl.f3522c, true);
            if (!MobileSdkPlatformUtilities.m2272M(networkAccessAppList)) {
                LTKDateUtil.m1403m("HuaweiEmui10Impl ---getNetworkAccessAppWhiteList:" + networkAccessAppList.size());
                return networkAccessAppList;
            }
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HuaweiEmui10Impl  ---getNetworkAccessAppWhiteList-error:"));
        }
        return new ArrayList();
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: H0 */
    public void mo2048H0() {
        try {
            LTKDateUtil.m1403m("HuaweiEmui10Impl  -- enableStatusBar");
            HuaweiBaseImpl.f3523d.setStatusBarDisabled(HuaweiBaseImpl.f3522c, false);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("HuaweiEmui10Impl enableStatusBar exception "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: I */
    public void mo2049I() {
        try {
            LTKDateUtil.m1403m("HuaweiEmui10Impl  -- disableStatusBar");
            HuaweiBaseImpl.f3523d.setStatusBarDisabled(HuaweiBaseImpl.f3522c, true);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("HuaweiEmui10Impl disableStatusBar exception "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: I0 */
    public void mo1308I0(List<String> list) {
        try {
            if (MobileSdkPlatformUtilities.m2273N(list)) {
                return;
            }
            HuaweiBaseImpl.f3526g.addNetworkAccessAppList(HuaweiBaseImpl.f3522c, (ArrayList) list, true);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HuaweiEmui10Impl  ---setNetworkAccessAppWhiteList-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: M */
    public void mo2053M() {
        try {
            LTKDateUtil.m1403m("HuaweiEmui10Impl ---disableStatusBar-");
            HuaweiBaseImpl.f3521b.setStatusBarDisabled(HuaweiBaseImpl.f3522c, true);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HuaweiEmui10Impl ---disableStatusBar-error:"));
        }
    }

    @Override // com.huawei.hem.C1232qd, com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: O */
    public void mo1313O(String str, String str2) {
        LTKDateUtil.m1403m("HuaweiEmui10Impl ----system init start");
        m2661c1(str);
        super.mo1313O(str, str2);
        try {
            LTKDateUtil.m1403m("HuaweiEmui10Impl ---setDefaultLauncher start");
            HuaweiBaseImpl.f3525f.setDefaultLauncher(HuaweiBaseImpl.f3522c, "com.android.launcher3", "com.android.launcher3.LauncherNew");
            mo1309J("com.huawei.android.launcher");
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HuaweiEmui10Impl ---setDefaultLauncher error:"));
        }
        m2662d1();
        if (mo2071p(false) == 1) {
            m2128S0(f3626q, new ComponentName(f3626q, "com.huawei.android.thememanager.ringtone.MusicManagerActivity"));
            m2128S0(f3626q, new ComponentName("com.huawei.HwMultiScreenShot", "com.huawei.screenshot.PhotoEditorActivity"));
            m2128S0(f3626q, new ComponentName("com.android.gallery3d", "com.huawei.gallery.app.SinglePhotoActivity"));
        }
        m2660b1();
        try {
            LTKDateUtil.m1403m("HuaweiEmui10Impl  -- setPowerSaveModeDisabled ");
            HuaweiBaseImpl.f3531l.setPowerSaveModeDisabled(HuaweiBaseImpl.f3522c, Boolean.TRUE);
        } catch (Throwable th2) {
            CompilerOutline.m1744B(th2, CompilerOutline.m1765j("HuaweiEmui10Impl  -- setPowerSaveModeDisabled error:"));
        }
        try {
            LTKDateUtil.m1403m("HuaweiEmui10Impl enable_magazinelock_feature");
            Settings.Global.putInt(f3626q.getContentResolver(), "enable_magazinelock_feature", 0);
        } catch (Throwable th3) {
            CompilerOutline.m1744B(th3, CompilerOutline.m1765j("HuaweiEmui10Impl enable_magazinelock_feature-error:"));
        }
        LTKDateUtil.m1403m("HuaweiEmui10Impl sysyem init end");
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: T */
    public void mo1343T(boolean z, long j, String str) {
        try {
            LTKDateUtil.m1403m("HuaweiEmui10Impl  ==setScheduledPowerOn ==when:" + j);
            HuaweiBaseImpl.f3523d.setScheduledPowerOn(HuaweiBaseImpl.f3522c, z, str, j);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("HuaweiEmui10Impl  actionTimingPowerOn exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: U */
    public void mo2057U() {
        try {
            LTKDateUtil.m1403m("HuaweiEmui10Impl ---enableStatusBar-");
            HuaweiBaseImpl.f3521b.setStatusBarDisabled(HuaweiBaseImpl.f3522c, false);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HuaweiEmui10Impl ---enableStatusBar-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: V */
    public boolean mo1316V(List<String> list) {
        try {
            HuaweiBaseImpl.f3526g.clearNetworkList(HuaweiBaseImpl.f3522c);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HuaweiEmui10Impl  ---removeNetworkList-error:"));
        }
        try {
            if (MobileSdkPlatformUtilities.m2273N(list)) {
                LTKDateUtil.m1403m("HuaweiEmui10Impl  -- setUrlWhiteList-none url need add");
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
                LTKDateUtil.m1403m("HuaweiEmui10Impl  --- 添加域名:" + arrayList2.toString());
                LTKDateUtil.m1403m("HuaweiEmui10Impl  --- setUrlWhiteList-result==" + HuaweiBaseImpl.f3526g.addNetworkList(HuaweiBaseImpl.f3522c, true, true, arrayList2));
                LTKDateUtil.m1403m("HuaweiEmui10Impl  --- 添加IP:" + arrayList.toString());
                LTKDateUtil.m1403m("HuaweiEmui10Impl  --- setUrlWhiteList-result==" + HuaweiBaseImpl.f3526g.addNetworkList(HuaweiBaseImpl.f3522c, true, false, arrayList));
            }
        } catch (Throwable th2) {
            CompilerOutline.m1744B(th2, CompilerOutline.m1765j("HuaweiEmui10Impl  -- setUrlWhiteList-error:"));
        }
        return false;
    }

    @Override // com.huawei.hem.C1232qd
    /* renamed from: V0 */
    public void mo2616V0(String str, Context context) {
        LTKDateUtil.m1403m("HuaweiEmui10Impl actionActiveDeviceAdmin");
        Intent intent = new Intent("android.app.action.ADD_DEVICE_ADMIN");
        intent.putExtra("android.app.extra.DEVICE_ADMIN", HuaweiBaseImpl.f3522c);
        context.startActivity(intent);
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: W */
    public void mo1345W(boolean z, long j, String str) {
        try {
            LTKDateUtil.m1403m("HuaweiEmui10Impl  ==setScheduledPowerOff ==when:" + j);
            HuaweiBaseImpl.f3523d.setScheduledPowerOff(HuaweiBaseImpl.f3522c, z, (String) null, j);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("HuaweiEmui10Impl  actionTimingPowerOff exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: Y */
    public String mo1317Y(Context context) {
        try {
            if (Build.VERSION.SDK_INT < 24) {
                return "unknown";
            }
            String wifiMacAddress = HuaweiBaseImpl.f3521b.getWifiMacAddress(HuaweiBaseImpl.f3522c);
            LTKDateUtil.m1403m("HuaweiEmui10Impl ---getWifiMacAddress:");
            return wifiMacAddress;
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HuaweiEmui10Impl  --- getWifiMacAddress--error=="));
            return "unknown";
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: a */
    public void mo2059a(String str, String str2) {
        try {
            LTKDateUtil.m1403m("HuaweiEmui10Impl ---setDefaultLauncher start");
            HuaweiBaseImpl.f3525f.setDefaultLauncher(HuaweiBaseImpl.f3522c, "com.android.launcher3", "com.android.launcher3.LauncherNew");
            mo1309J("com.huawei.android.launcher");
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HuaweiEmui10Impl ---setDefaultLauncher error:"));
        }
    }

    /* renamed from: a1 */
    public void mo2433a1(boolean z, List<String> list) {
        if (!z) {
            list.add("wifi_proxy");
        }
        m2620Z0(list);
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: b0 */
    public void mo1318b0(List<String> list) {
        try {
            boolean zIsWIFIeditDisabled = HuaweiBaseImpl.f3528i.isWIFIeditDisabled(HuaweiBaseImpl.f3522c);
            LTKDateUtil.m1403m("HuaweiEmui10Impl read wifi advance status " + zIsWIFIeditDisabled);
            if (!zIsWIFIeditDisabled) {
                return;
            }
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HuaweiEmui10Impl  -- isWIFIeditDisabled exception "));
        }
        try {
            LTKDateUtil.m1403m("HuaweiEmui10Impl  -- showWifiAdvanced");
            mo2433a1(true, list);
            HuaweiBaseImpl.f3528i.setWIFIeditDisabled(HuaweiBaseImpl.f3522c, false);
        } catch (Throwable th2) {
            CompilerOutline.m1744B(th2, CompilerOutline.m1765j("HuaweiEmui10Impl  -- showWifiAdvanced exception "));
        }
    }

    /* renamed from: b1 */
    public void m2660b1() {
        try {
            LTKDateUtil.m1403m("HuaweiEmui10Impl ---disableWifiP2P-start");
            f3625p.setWifiP2PDisabled(HuaweiBaseImpl.f3522c, true);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HuaweiEmui10Impl ---disableWifiP2P-error:"));
        }
    }

    /* renamed from: c1 */
    public boolean m2661c1(String str) {
        try {
            boolean zIsDeviceOwnerApp = HuaweiBaseImpl.f3521b.isDeviceOwnerApp(str);
            LTKDateUtil.m1403m("HuaweiEmui10Impl read current is device owner :" + zIsDeviceOwnerApp);
            return zIsDeviceOwnerApp;
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HuaweiEmui10Impl ---setDeviceOwnerApp Exception error:"));
            return false;
        }
    }

    /* renamed from: d1 */
    public void m2662d1() {
        LTKDateUtil.m1403m("HuaweiEmui10Impl ====setMultiWindowDisabled======");
        try {
            HuaweiBaseImpl.f3523d.setMultiWindowDisabled(HuaweiBaseImpl.f3522c, true);
            LTKDateUtil.m1403m("HuaweiEmui10Impl ----MultiWindowDisabled" + HuaweiBaseImpl.f3523d.isMultiWindowDisabled(HuaweiBaseImpl.f3522c));
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HuaweiEmui10Impl ---setMultiWindowDisabled error:"));
        }
    }

    @Override // com.huawei.hem.C1232qd, com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableScreenShot() {
        super.disableScreenShot();
        try {
            LTKDateUtil.m1403m("HuaweiEmui10Impl  -- disableScreenShot ");
            HuaweiBaseImpl.f3523d.setManualScreenCaptureDisabled(HuaweiBaseImpl.f3522c, true);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HuaweiEmui10Impl  -- disableScreenShot error: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableShortPressPower() {
        try {
            LTKDateUtil.m1403m("HuaweiEmui10Impl ---disableShortPressPower setSleepByPowerButtonDisabled:");
            HuaweiBaseImpl.f3523d.setSleepByPowerButtonDisabled(HuaweiBaseImpl.f3522c, true);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HuaweiEmui10Impl ---disableShortPressPower  setSleepByPowerButtonDisabled-error:"));
        }
    }

    @Override // com.huawei.hem.C1232qd, com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableUsb() {
        try {
            HuaweiBaseImpl.f3523d.setUSBDataDisabled(HuaweiBaseImpl.f3522c, true);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HuaweiEmui10Impl  -- disableUsb-error1 = "));
        }
        try {
            LTKDateUtil.m1403m("HuaweiEmui10Impl --- disableUsb turnOnUsbDebugMode:");
            HuaweiBaseImpl.f3525f.turnOnUsbDebugMode(HuaweiBaseImpl.f3522c, false);
        } catch (Throwable th2) {
            CompilerOutline.m1744B(th2, CompilerOutline.m1765j("HuaweiEmui10Impl ---disableUsb turnOnUsbDebugMode-error:"));
        }
        try {
            HuaweiBaseImpl.f3523d.setAdbDisabled(HuaweiBaseImpl.f3522c, true);
        } catch (Throwable th3) {
            CompilerOutline.m1744B(th3, CompilerOutline.m1765j("HuaweiEmui10Impl  -- disableUsb-error1 = "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: e0 */
    public boolean mo2062e0() {
        return HuaweiBaseImpl.f3521b.isAdminActive(HuaweiBaseImpl.f3522c);
    }

    @Override // com.huawei.hem.C1232qd, com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableScreenShot() {
        super.enableScreenShot();
        try {
            LTKDateUtil.m1403m("HuaweiEmui10Impl  -- enableScreenShot ");
            HuaweiBaseImpl.f3523d.setManualScreenCaptureDisabled(HuaweiBaseImpl.f3522c, false);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HuaweiEmui10Impl  -- enableScreenShot error: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableShortPressPower() {
        try {
            LTKDateUtil.m1403m("HuaweiEmui10Impl ---enableShortPressPower setSleepByPowerButtonDisabled:");
            HuaweiBaseImpl.f3523d.setSleepByPowerButtonDisabled(HuaweiBaseImpl.f3522c, false);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HuaweiEmui10Impl ---enableShortPressPower  setSleepByPowerButtonDisabled-error:"));
        }
    }

    @Override // com.huawei.hem.C1232qd, com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableUsb() {
        try {
            LTKDateUtil.m1403m("HuaweiEmui10Impl ---enableUsb:");
            HuaweiBaseImpl.f3523d.setUSBDataDisabled(HuaweiBaseImpl.f3522c, false);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HuaweiEmui10Impl  -- enableUsb-error = "));
        }
        try {
            HuaweiBaseImpl.f3523d.setAdbDisabled(HuaweiBaseImpl.f3522c, false);
        } catch (Throwable th2) {
            CompilerOutline.m1744B(th2, CompilerOutline.m1765j("HuaweiEmui10Impl  -- disableUsb-error1 = "));
        }
        try {
            HuaweiBaseImpl.f3525f.turnOnUsbDebugMode(HuaweiBaseImpl.f3522c, true);
            LTKDateUtil.m1403m("HuaweiEmui10Impl ---enableUsb turnOnUsbDebugMode:");
        } catch (Throwable th3) {
            CompilerOutline.m1744B(th3, CompilerOutline.m1765j("HuaweiEmui10Impl --- enableUsb turnOnUsbDebugMode-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: f0 */
    public void mo2063f0() {
        try {
            LTKDateUtil.m1403m("HuaweiEmui10Impl  -- actionEnableScreenLock ");
            HuaweiBaseImpl.f3533n.setKeyguardDisabled(HuaweiBaseImpl.f3522c, 0, false);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HuaweiEmui10Impl  -- actionEnableScreenLock error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: h */
    public void mo1323h() {
        try {
            LTKDateUtil.m1403m("HuaweiEmui10Impl ---cleanNetworkAccessAppWhiteList");
            HuaweiBaseImpl.f3526g.clearNetworkAccessAppList(HuaweiBaseImpl.f3522c);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HuaweiEmui10Impl ---cleanNetworkAccessAppWhiteList-error:"));
        }
    }

    @Override // com.huawei.hem.C1232qd, com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: i */
    public void mo1325i() {
        try {
            Settings.Secure.putInt(f3626q.getContentResolver(), "secure_gesture_navigation", 0);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("HuaweiEmui10Impl  enableNavigationBar exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: i0 */
    public boolean mo2064i0() {
        try {
            return HuaweiBaseImpl.f3528i.isWIFIeditDisabled(HuaweiBaseImpl.f3522c);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HuaweiEmui10Impl  -- isWIFIeditDisabled exception "));
            return true;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: l0 */
    public void mo2067l0() {
        try {
            LTKDateUtil.m1403m("HuaweiEmui10Impl  -- clearAllowStartApps ");
            HuaweiBaseImpl.f3527h.setTaskLockAppList(HuaweiBaseImpl.f3522c, (ArrayList) null);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HuaweiEmui10Impl  -- clearAllowStartApps error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: m0 */
    public void mo2069m0(ArrayList<String> arrayList) {
        try {
            LTKDateUtil.m1403m("HuaweiEmui10Impl  -- setAllowStartApps ");
            mo2067l0();
            HuaweiBaseImpl.f3527h.setTaskLockAppList(HuaweiBaseImpl.f3522c, arrayList);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HuaweiEmui10Impl  -- setAllowStartApps error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: r */
    public void mo1327r(List<String> list) {
        try {
            boolean zIsWIFIeditDisabled = HuaweiBaseImpl.f3528i.isWIFIeditDisabled(HuaweiBaseImpl.f3522c);
            LTKDateUtil.m1403m("HuaweiEmui10Impl read wifi advance status " + zIsWIFIeditDisabled);
            if (zIsWIFIeditDisabled) {
                return;
            }
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HuaweiEmui10Impl  -- isWIFIeditDisabled exception "));
        }
        try {
            LTKDateUtil.m1403m("HuaweiEmui10Impl  -- hideWifiAdvanced");
            mo2433a1(false, list);
            HuaweiBaseImpl.f3528i.setWIFIeditDisabled(HuaweiBaseImpl.f3522c, true);
        } catch (Throwable th2) {
            CompilerOutline.m1744B(th2, CompilerOutline.m1765j("HuaweiEmui10Impl  -- hideWifiAdvanced exception "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: r0 */
    public void mo2075r0(ArrayList<String> arrayList) {
        LTKDateUtil.m1403m("HuaweiEmui10Impl ---addRuntimePermissionFixAppList-- ");
        try {
            HuaweiBaseImpl.f3527h.addRuntimePermissionFixAppList(HuaweiBaseImpl.f3522c, arrayList);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HuaweiEmui10Impl  -- addRuntimePermissionFixAppList-error: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: t0 */
    public List<String> mo1330t0() {
        try {
            LTKDateUtil.m1403m("HuaweiEmui10Impl ---getNetworkList:");
            List networkList = HuaweiBaseImpl.f3526g.getNetworkList(HuaweiBaseImpl.f3522c, true, true);
            ArrayList arrayList = new ArrayList();
            if (!MobileSdkPlatformUtilities.m2273N(networkList)) {
                arrayList.addAll(networkList);
            }
            List networkList2 = HuaweiBaseImpl.f3526g.getNetworkList(HuaweiBaseImpl.f3522c, true, false);
            if (!MobileSdkPlatformUtilities.m2273N(networkList)) {
                arrayList.addAll(networkList2);
            }
            return arrayList;
        } catch (Throwable th) {
            return CompilerOutline.m1773r(th, CompilerOutline.m1765j("HuaweiEmui10Impl  ---getUrlWhiteList-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: v */
    public void mo2078v() {
        try {
            LTKDateUtil.m1403m("HuaweiEmui10Impl ---storageUnmount unmountUsbDevices:");
            HuaweiBaseImpl.f3525f.unmountUsbDevices(HuaweiBaseImpl.f3522c, (String) null);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HuaweiEmui10Impl ---storageUnmount  unmountUsbDevices-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: x0 */
    public void mo2082x0() {
        try {
            LTKDateUtil.m1403m("HuaweiEmui10Impl  -- actionDisableScreenLock ");
            HuaweiBaseImpl.f3533n.setKeyguardDisabled(HuaweiBaseImpl.f3522c, 0, true);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HuaweiEmui10Impl  -- actionDisableScreenLock error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: z */
    public void mo2084z() {
        try {
            LTKDateUtil.m1403m("HuaweiEmui10Impl  -- enableSDupgrade ");
            HuaweiBaseImpl.f3523d.setSdCardUpdateDisabled(HuaweiBaseImpl.f3522c, false);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HuaweiEmui10Impl  -- enableSDupgrade error:"));
        }
    }
}
