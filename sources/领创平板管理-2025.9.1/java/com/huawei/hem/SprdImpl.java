package com.huawei.hem;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.provider.Settings;
import android.text.TextUtils;
import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: SprdImpl.java */
/* renamed from: com.huawei.hem.fd */
/* loaded from: classes.dex */
public class SprdImpl extends AndroidImpl {

    /* renamed from: b */
    public static SprdImpl f2656b = new SprdImpl();

    /* renamed from: c */
    public static Context f2657c;

    /* renamed from: d */
    public static C1024i6 f2658d;

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
        LTKDateUtil.m1403m("SprdImpl ---actionSilentInstall");
        try {
            C1024i6 c1024i6 = f2658d;
            if (c1024i6 == null) {
                throw null;
            }
            Intent intent = new Intent("install.application");
            intent.putExtra("path_name", str);
            intent.setPackage("com.android.packageinstaller");
            c1024i6.f2893a.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("SprdImpl ---actionSilentInstall error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: G0 */
    public List<String> mo1307G0() {
        LTKDateUtil.m1403m("SprdImpl ---getNetworkAccessAppWhiteList");
        try {
            LTKDateUtil.m1403m("SprdImpl ---get networkAppwhiteList" + Settings.Global.getString(f2658d.f2893a.getContentResolver(), "app.whitelist"));
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("SprdImpl ---getNetworkAccessAppWhiteList error : "));
        }
        return new ArrayList();
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: I0 */
    public void mo1308I0(List<String> list) {
        LTKDateUtil.m1403m("Test------setNetworkAccessAppWhiteList");
        try {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add("iptables -F app");
            if (!AbstractC1102l9.m2273N(list)) {
                Iterator<String> it = list.iterator();
                while (it.hasNext()) {
                    int iM1396f = LTKDateUtil.m1396f(f2657c, it.next());
                    if (iM1396f != -1) {
                        arrayList.add("iptables -A app -m owner --uid-owner " + iM1396f + " -j ACCEPT");
                    }
                }
            }
            f2658d.m2035o(arrayList2);
            f2658d.m2035o(arrayList);
        } catch (Exception e) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("Test---,accessAppWhiteList-error:");
            sbM1765j.append(e.getMessage());
            LTKDateUtil.m1403m(sbM1765j.toString());
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: L */
    public String mo1310L(String str) {
        LTKDateUtil.m1403m("SprdImpl ---actionScreenShot");
        if (TextUtils.isEmpty(str)) {
            str = "/mnt/sdcard/Screenshots/";
        }
        StringBuilder sbM1765j = CompilerOutline.m1765j("Screenshot_");
        sbM1765j.append(LTKDateUtil.m1400j());
        sbM1765j.append(".png");
        String string = sbM1765j.toString();
        File file = new File(str);
        if (!file.exists()) {
            file.mkdirs();
        }
        String strM1760e = CompilerOutline.m1760e(str, string);
        try {
            Bitmap bitmapM2021a = f2658d.m2021a();
            FileOutputStream fileOutputStream = new FileOutputStream(strM1760e);
            bitmapM2021a.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
            fileOutputStream.flush();
            fileOutputStream.close();
            return "";
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("SprdImpl ---actionScreenShot error:"));
            return "";
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: M0 */
    public List<String> mo1311M0() {
        LTKDateUtil.m1403m("SprdImpl ---getAppWhiteList");
        try {
            LTKDateUtil.m1403m("SprdImpl  get app white list : " + Settings.Global.getString(f2658d.f2893a.getContentResolver(), "app.install.whitelist"));
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("SprdImpl ---getAppWhiteList error : "));
        }
        return new ArrayList();
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: N */
    public boolean mo1312N(long j) {
        LTKDateUtil.m1403m("SprdImpl ---setSystemTime");
        try {
            C1024i6 c1024i6 = f2658d;
            if (c1024i6 == null) {
                throw null;
            }
            Intent intent = new Intent("modify.system.time");
            intent.setPackage("com.android.inputdevices");
            intent.putExtra("millisecond", j);
            c1024i6.f2893a.sendBroadcast(intent);
            return true;
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("SprdImpl ---setSystemTime error:"));
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
        LTKDateUtil.m1403m("SprdImpl ---actionSilentUnInstall");
        try {
            C1024i6 c1024i6 = f2658d;
            if (c1024i6 == null) {
                throw null;
            }
            Intent intent = new Intent("uninstall.application");
            intent.putExtra("pkg_name", str);
            intent.setPackage("com.android.inputdevices");
            c1024i6.f2893a.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("SprdImpl ---actionSilentUnInstall error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: V */
    public boolean mo1316V(List<String> list) {
        try {
            ArrayList arrayList = new ArrayList();
            ArrayList<String> arrayList2 = new ArrayList<>();
            ArrayList arrayList3 = new ArrayList();
            arrayList3.add("ipset flush");
            for (int i = 0; i < list.size(); i++) {
                String str = list.get(i);
                if (LauncherDeviceUtils.m1599p(str)) {
                    String str2 = LauncherDeviceUtils.m1603t(str) ? "ipset add iplist " + str : "ipset add netlist " + str;
                    if (!TextUtils.isEmpty(str2)) {
                        arrayList.add(str2);
                    }
                } else {
                    String str3 = "ipset=/" + str + "/iplist";
                    if (!TextUtils.isEmpty(str3)) {
                        arrayList2.add(str3);
                    }
                }
            }
            LTKDateUtil.m1403m("seewo-setUrlWhiteList-ip:" + arrayList.size());
            LTKDateUtil.m1403m("seewo-setUrlWhiteList-domainName:" + arrayList2.size());
            f2658d.m2035o(arrayList3);
            f2658d.m2035o(arrayList);
            Intent intent = new Intent("com.seewo.setWhiteDomainList");
            intent.putStringArrayListExtra("whiteList", arrayList2);
            f2657c.sendBroadcast(intent);
            LTKDateUtil.m1403m("SprdImpl ---send domainName broadcast finish =====");
        } catch (Exception e) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("SprdImpl ---setUrlWhiteList new interface -error:");
            sbM1765j.append(e.getMessage());
            LTKDateUtil.m1403m(sbM1765j.toString());
        }
        return false;
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: b0 */
    public void mo1318b0(List<String> list) {
        LTKDateUtil.m1403m("SprdImpl ---showWifiAdvanced");
        try {
            f2658d.m2037q(false);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("SprdImpl ----showWifiAdvanced error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: c */
    public void mo1319c(boolean z) {
        LTKDateUtil.m1403m("SprdImpl ---enableSdCard");
        try {
            f2658d.m2032l(false);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("SprdImpl ---enableSdCard error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: d */
    public void mo1506d(ArrayList<String> arrayList) {
        LTKDateUtil.m1403m("SprdImpl ---setSuperWhiteListForSys");
        try {
            if (AbstractC1102l9.m2272M(arrayList)) {
                return;
            }
            for (int i = 0; i < arrayList.size(); i++) {
                f2658d.m2022b(arrayList.get(i));
            }
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("SprdImpl setSuperWhiteListForSys error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableBack() {
        LTKDateUtil.m1403m("SprdImpl ---enableBack");
        try {
            C1024i6 c1024i6 = f2658d;
            if (c1024i6 == null) {
                throw null;
            }
            Intent intent = new Intent("update.statusbar");
            intent.setPackage("com.android.systemui");
            intent.putExtra("back", 1);
            c1024i6.f2893a.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("SprdImpl ---enableBack error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableBluetooth() {
        LTKDateUtil.m1403m("SprdImpl ---disableBluetooth");
        try {
            f2658d.m2025e(true);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("SprdImpl ---disableBluetooth error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableCamera() {
        LTKDateUtil.m1403m("SprdImpl ---disableCamera");
        try {
            f2658d.m2028h(true);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("SprdImpl ---disableCamera error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableGPS() {
        LTKDateUtil.m1403m("SprdImpl ---disableGPS");
        try {
            f2658d.m2027g(true);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("SprdImpl ---disableGPS error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableHome() {
        LTKDateUtil.m1403m("SprdImpl ---disableHome");
        try {
            C1024i6 c1024i6 = f2658d;
            if (c1024i6 == null) {
                throw null;
            }
            Intent intent = new Intent("update.statusbar");
            intent.setPackage("com.android.systemui");
            intent.putExtra("home", 1);
            c1024i6.f2893a.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("SprdImpl ---disableHome error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableLongPressPower() {
        LTKDateUtil.m1403m("SprdImpl ---disableLongPressPower");
        try {
            f2658d.m2030j(true);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("SprdImpl ---disableLongPressPower error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableMobileData() {
        LTKDateUtil.m1403m("SprdImpl ---disableMobileData");
        try {
            f2658d.m2026f(true);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("SprdImpl ---disableMobileData error : "));
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
        LTKDateUtil.m1403m("SprdImpl ---disableOTG");
        try {
            f2658d.m2029i(true);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("SprdImpl ---disableOTG error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableRecent() {
        LTKDateUtil.m1403m("SprdImpl ---disableRecent");
        try {
            C1024i6 c1024i6 = f2658d;
            if (c1024i6 == null) {
                throw null;
            }
            Intent intent = new Intent("update.statusbar");
            intent.setPackage("com.android.systemui");
            intent.putExtra("recent", 1);
            c1024i6.f2893a.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("SprdImpl ---enableRecent error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableShortPressPower() {
        LTKDateUtil.m1403m("SprdImpl ---disableShortPressPower");
        try {
            f2658d.m2031k(true);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("SprdImpl ---disableShortPressPower error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableUsb() {
        LTKDateUtil.m1403m("SprdImpl ---disableUsb");
        try {
            f2658d.m2034n(true);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("SprdImpl ---disableUsb error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableVolume() {
        LTKDateUtil.m1403m("SprdImpl ---disableVolume");
        try {
            f2658d.m2036p(true);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("SprdImpl ---disableVolume error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: e */
    public void mo1320e(String str) {
        LTKDateUtil.m1403m("SprdImpl ---actionDisableApp");
        try {
            f2658d.m2024d(str, true);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("SprdImpl ---actionDisableApp error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableBack() {
        LTKDateUtil.m1403m("SprdImpl ---enableBack");
        try {
            C1024i6 c1024i6 = f2658d;
            if (c1024i6 == null) {
                throw null;
            }
            Intent intent = new Intent("update.statusbar");
            intent.setPackage("com.android.systemui");
            intent.putExtra("back", 0);
            c1024i6.f2893a.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("SprdImpl ---enableBack error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableBluetooth() {
        LTKDateUtil.m1403m("SprdImpl ---enableBluetooth");
        try {
            f2658d.m2025e(false);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("SprdImpl ---enableBluetooth error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableCamera() {
        LTKDateUtil.m1403m("SprdImpl ---enableCamera");
        try {
            f2658d.m2028h(false);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("SprdImpl ---enableCamera error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableGPS() {
        LTKDateUtil.m1403m("SprdImpl ---enableGPS");
        try {
            f2658d.m2027g(false);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("SprdImpl ---enableGPS error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableHome() {
        LTKDateUtil.m1403m("SprdImpl ---enableHome");
        try {
            C1024i6 c1024i6 = f2658d;
            if (c1024i6 == null) {
                throw null;
            }
            Intent intent = new Intent("update.statusbar");
            intent.setPackage("com.android.systemui");
            intent.putExtra("home", 0);
            c1024i6.f2893a.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("SprdImpl ---enableHome error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableLongPressPower() {
        LTKDateUtil.m1403m("SprdImpl ---enableLongPressPower");
        try {
            f2658d.m2030j(false);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("SprdImpl ---enableLongPressPower error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableMobileData() {
        LTKDateUtil.m1403m("SprdImpl ---enableMobileData");
        try {
            f2658d.m2026f(false);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("SprdImpl ---enableMobileData error : "));
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
        LTKDateUtil.m1403m("SprdImpl ---enableOTG");
        try {
            f2658d.m2029i(false);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("SprdImpl ---enableOTG error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableRecent() {
        LTKDateUtil.m1403m("SprdImpl ---enableRecent");
        try {
            C1024i6 c1024i6 = f2658d;
            if (c1024i6 == null) {
                throw null;
            }
            Intent intent = new Intent("update.statusbar");
            intent.setPackage("com.android.systemui");
            intent.putExtra("recent", 0);
            c1024i6.f2893a.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("SprdImpl ---enableRecent error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableShortPressPower() {
        LTKDateUtil.m1403m("SprdImpl ---enableShortPressPower");
        try {
            f2658d.m2031k(false);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("SprdImpl ---enableShortPressPower error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableUsb() {
        LTKDateUtil.m1403m("SprdImpl ---enableUsb");
        try {
            f2658d.m2034n(false);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("SprdImpl ---enableUsb error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableVolume() {
        LTKDateUtil.m1403m("SprdImpl ---enableVolume");
        try {
            f2658d.m2036p(false);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("SprdImpl ---enableVolume error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: h0 */
    public void mo1324h0() {
        LTKDateUtil.m1403m("SprdImpl ---enableOTG");
        try {
            C1024i6 c1024i6 = f2658d;
            if (c1024i6 == null) {
                throw null;
            }
            Intent intent = new Intent("reboot.device");
            intent.putExtra("reboot_mode", "-p");
            intent.setPackage("com.android.shell");
            c1024i6.f2893a.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("SprdImpl ---enableOTG error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: r */
    public void mo1327r(List<String> list) {
        LTKDateUtil.m1403m("SprdImpl ---hideWifiAdvanced");
        try {
            f2658d.m2037q(true);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("SprdImpl ---hideWifiAdvanced error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: s */
    public boolean mo1328s(List<String> list) {
        LTKDateUtil.m1403m("SprdImpl ---setAppWhiteList");
        try {
            if (!AbstractC1102l9.m2273N(list)) {
                StringBuilder sb = new StringBuilder();
                for (int i = 0; i < list.size(); i++) {
                    sb.append(list.get(i));
                    sb.append(",");
                }
                C1024i6 c1024i6 = f2658d;
                String string = sb.toString();
                if (c1024i6 == null) {
                    throw null;
                }
                Intent intent = new Intent("update.app.install.whitelist");
                if (string == null) {
                    intent.putExtra("list_on", false);
                } else {
                    intent.putExtra("list_on", true);
                    intent.putExtra("app_list", string);
                }
                intent.setPackage("com.android.inputdevices");
                c1024i6.f2893a.sendBroadcast(intent);
                LTKDateUtil.m1403m("SprdImpl set app white : " + sb.toString());
            }
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("SprdImpl ---setAppWhiteList error : "));
        }
        return false;
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: t */
    public void mo1329t(boolean z) {
        LTKDateUtil.m1403m("SprdImpl ---actionResetFactory");
        try {
            C1024i6 c1024i6 = f2658d;
            if (c1024i6 == null) {
                throw null;
            }
            Intent intent = new Intent("reset.factory");
            intent.setPackage("com.android.inputdevices");
            c1024i6.f2893a.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("SprdImpl ---actionResetFactory error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: t0 */
    public List<String> mo1330t0() {
        try {
            LTKDateUtil.m1403m("SprdImpl ---get url white list : " + f2658d.m2023c());
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("SprdImpl ---getUrlWhiteList error : "));
        }
        return new ArrayList();
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: y0 */
    public void mo1331y0(String str) {
        LTKDateUtil.m1403m("SprdImpl ---actionEnableApp");
        try {
            f2658d.m2024d(str, false);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("SprdImpl ---actionEnableApp error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: z0 */
    public void mo1332z0(boolean z) {
        LTKDateUtil.m1403m("SprdImpl ---disableSdCard");
        try {
            f2658d.m2032l(true);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("SprdImpl ---disableSdCard error:"));
        }
    }
}
