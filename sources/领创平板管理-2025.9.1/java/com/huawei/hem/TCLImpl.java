package com.huawei.hem;

import android.content.Context;
import android.text.TextUtils;
import com.Lcmdm.mdm.IMdmProxy;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: TCLImpl.java */
/* renamed from: com.huawei.hem.id */
/* loaded from: classes.dex */
public class TCLImpl extends AndroidImpl {

    /* renamed from: b */
    public static TCLImpl f2911b = new TCLImpl();

    /* renamed from: c */
    public static IMdmProxy f2912c;

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: B0 */
    public void mo1304B0(List<String> list) {
        LTKDateUtil.m1403m("TCLImpl -- actionEnableApps ");
        try {
            if (MobileSdkPlatformUtilities.m2273N(list)) {
                return;
            }
            f2912c.setAppEnable(list);
        } catch (Exception e) {
            CompilerOutline.m1776u(e, CompilerOutline.m1765j("TCLImpl -- actionEnableApp-error: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: F */
    public void mo1306F(String str) {
        LTKDateUtil.m1403m("TCLImpl -- actionSilentInstall ");
        try {
            f2912c.silentInstall(str, false);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("TCLImpl -- actionSilentInstall -error: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: G */
    public String mo1337G() {
        LTKDateUtil.m1403m("TCLImpl -- getDeviceSN ");
        try {
            return f2912c.getSN();
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("TCLImpl -- getDeviceSN -error: "));
            return "";
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: G0 */
    public List<String> mo1307G0() {
        LTKDateUtil.m1403m("TCLImpl -- getNetworkAccessAppWhiteList ");
        try {
            return f2912c.getAppRulePackageList();
        } catch (Throwable th) {
            return CompilerOutline.m1773r(th, CompilerOutline.m1765j("TCLImpl -- getNetworkAccessAppWhiteList -error: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: I0 */
    public void mo1308I0(List<String> list) {
        LTKDateUtil.m1403m("TCLImpl -- setNetworkAccessAppWhiteList ");
        if (MobileSdkPlatformUtilities.m2273N(list)) {
            return;
        }
        try {
            f2912c.setUidToAppList(list);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("TCLImpl -- setNetworkAccessAppWhiteList -error: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: J */
    public void mo1309J(String str) {
        LTKDateUtil.m1403m("TCLImpl -- actionKillApp ");
        try {
            f2912c.forceStopApp(str);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("TCLImpl -- actionKillApp -error: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: L */
    public String mo1310L(String str) {
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
            LTKDateUtil.m1403m("TCLImpl -- actionScreenShot ");
            f2912c.silentScreenShot(strM1760e);
            return strM1760e;
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("TCLImpl -- actionScreenShot -error: "));
            return null;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: M0 */
    public List<String> mo1311M0() {
        LTKDateUtil.m1403m("TCLImpl -- getAppWhiteList ");
        try {
            return f2912c.getAppInstallWhiteList();
        } catch (Throwable th) {
            return CompilerOutline.m1773r(th, CompilerOutline.m1765j("TCLImpl -- getAppWhiteList -error: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: N */
    public boolean mo1312N(long j) {
        LTKDateUtil.m1403m("TCLImpl -- setSystemTime ");
        try {
            f2912c.setSysTime(j);
            return true;
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("TCLImpl -- setSystemTime -error: "));
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
        LTKDateUtil.m1403m("TCLImpl -- actionSilentUnInstall ");
        try {
            f2912c.silentUninstall(str);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("TCLImpl -- actionSilentUnInstall -error: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: R */
    public void mo2056R(int i) {
        if (i != 2) {
            return;
        }
        try {
            LTKDateUtil.m1403m("TCLImpl -- setControlMode exitStatus = " + f2912c.setExitMdm());
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("TCLImpl -- setControlMode -error: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: S */
    public void mo1315S() {
        LTKDateUtil.m1403m("TCLImpl -- disableSMS ");
        try {
            f2912c.setSMSDisabled(true);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("TCLImpl -- disableSMS -error: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: V */
    public boolean mo1316V(List<String> list) {
        LTKDateUtil.m1403m("TCLImpl -- setUrlWhiteList ");
        try {
            if (MobileSdkPlatformUtilities.m2273N(list)) {
                LTKDateUtil.m1403m("TCLImpl -- setUrlWhiteList ，urlWhiteList is null，not need to add");
                return false;
            }
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            for (String str : list) {
                if (LauncherDeviceUtils.m1599p(str)) {
                    arrayList.add(str);
                } else if (str.matches("^([a-zA-Z0-9]([a-zA-Z0-9\\-]{0,61}[a-zA-Z0-9])?\\.)+[a-zA-Z]{2,6}$")) {
                    arrayList2.add(str);
                }
            }
            LTKDateUtil.m1403m("TCLImpl -- 添加域名: " + arrayList2.toString());
            LTKDateUtil.m1403m("TCLImpl -- setUrlWhiteList - resultDoamin = " + f2912c.setNetworkWhiteList(arrayList2, 1));
            LTKDateUtil.m1403m("TCLImpl -- 添加IP: " + arrayList.toString());
            LTKDateUtil.m1403m("TCLImpl -- setUrlWhiteList - resultIp = " + f2912c.setNetworkWhiteList(arrayList, 2));
            return false;
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("TCLImpl -- setUrlWhiteList-error: "));
            return false;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: Y */
    public String mo1317Y(Context context) {
        LTKDateUtil.m1403m("TCLImpl -- getWifiMacAddress ");
        try {
            return f2912c.getMAC();
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("TCLImpl -- getWifiMacAddress -error: "));
            return "";
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: b0 */
    public void mo1318b0(List<String> list) {
        LTKDateUtil.m1403m("TCLImpl -- showWifiAdvanced ");
        try {
            f2912c.setWifiAdvanceEnable();
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("TCLImpl -- showWifiAdvanced -error: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: c */
    public void mo1319c(boolean z) {
        LTKDateUtil.m1403m("TCLImpl -- enableSdCard ");
        try {
            f2912c.setSdcardDisabled(false);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("TCLImpl -- enableSdCard -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: d */
    public void mo1506d(ArrayList<String> arrayList) {
        if (MobileSdkPlatformUtilities.m2272M(arrayList)) {
            return;
        }
        LTKDateUtil.m1403m("TCLImpl -- setSuperWhiteListForSys ");
        try {
            Iterator<String> it = arrayList.iterator();
            while (it.hasNext()) {
                String next = it.next();
                f2912c.allowAppPermission(next);
                f2912c.allowAppModifySystemSettingsPermission(next);
                f2912c.allowAppDisplayOverOtherAppsPermission(next);
            }
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("TCLImpl -- setSuperWhiteListForSys -error: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableBack() {
        LTKDateUtil.m1403m("TCLImpl -- disableBack ");
        try {
            f2912c.setBackButtonDisabled(true);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("TCLImpl -- disableBack -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableBluetooth() {
        LTKDateUtil.m1403m("TCLImpl -- disableBluetooth ");
        try {
            f2912c.setBluetoothDataTransferDisable(true);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("TCLImpl -- disableBluetooth -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableCamera() {
        LTKDateUtil.m1403m("TCLImpl -- disableCamera ");
        try {
            f2912c.setCameraDisable();
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("TCLImpl -- disableCamera -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableFireWall() {
        LTKDateUtil.m1403m("TCLImpl -- disableFireWall ");
        try {
            f2912c.setNetFirwall(false);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("TCLImpl -- disableFireWall -error: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableGPS() {
        LTKDateUtil.m1403m("TCLImpl -- disableGPS ");
        try {
            f2912c.setGpsDisable();
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("TCLImpl -- disableGPS -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableHome() {
        LTKDateUtil.m1403m("TCLImpl -- disableHome ");
        try {
            f2912c.setHomeButtonDisabled(true);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("TCLImpl -- disableHome -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableLongPressPower() {
        LTKDateUtil.m1403m("TCLImpl -- disableLongPressPower ");
        try {
            f2912c.setLongPowerKeyDisable();
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("TCLImpl-- disableLongPressPower -error: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableMobileData() {
        LTKDateUtil.m1403m("TCLImpl -- disableMobileData ");
        try {
            f2912c.setDataDisabled(true);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("TCLImpl-- disableMobileData -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableNavigation() {
        LTKDateUtil.m1403m("TCLImpl -- disableNavigation ");
        try {
            disableRecent();
            disableHome();
            disableBack();
            disableVolume();
            disableShortPressPower();
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("TCLImpl -- disableNavigation -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableOTG() {
        LTKDateUtil.m1403m("TCLImpl -- disableOTG ");
        try {
            f2912c.setUSBOtgDisabled(true);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("TCLImpl -- disableOTG -error: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableRecent() {
        LTKDateUtil.m1403m("TCLImpl -- disableRecent ");
        try {
            f2912c.setTaskButtonDisabled(true);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("TCLImpl -- disableRecent -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableShortPressPower() {
        LTKDateUtil.m1403m("TCLImpl -- disableShortPressPower ");
        try {
            f2912c.setPowerKeyDisable();
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("TCLImpl -- disableShortPressPower -error: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableSpeech() {
        LTKDateUtil.m1403m("TCLImpl -- disableSpeech ");
        try {
            f2912c.setVoiceDisabled(true);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("TCLImpl -- disableSpeech -error: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableUsb() {
        LTKDateUtil.m1403m("TCLImpl -- disableUsb ");
        try {
            f2912c.setUSBDataDisabled(true);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("TCLImpl -- disableUsb -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableVolume() {
        LTKDateUtil.m1403m("TCLImpl -- disableVolume ");
        try {
            f2912c.setVolAddDisable();
            f2912c.setVolSubDisable();
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("TCLImpl -- disableVolume -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: e */
    public void mo1320e(String str) {
        LTKDateUtil.m1403m("TCLImpl -- actionDisableApp ");
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(str);
            f2912c.setAppDisable(arrayList);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("TCLImpl -- actionDisableApp-error: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableBack() {
        LTKDateUtil.m1403m("TCLImpl -- enableBack ");
        try {
            f2912c.setBackButtonDisabled(false);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("TCLImpl -- enableBack -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableBluetooth() {
        LTKDateUtil.m1403m("TCLImpl -- enableBluetooth ");
        try {
            f2912c.setBluetoothDataTransferDisable(false);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("TCLImpl  -- enableBluetooth -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableCamera() {
        LTKDateUtil.m1403m("TCLImpl -- enableCamera ");
        try {
            f2912c.setCameraEnable();
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("TCLImpl -- enableCamera -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableFireWall() {
        LTKDateUtil.m1403m("TCLImpl -- enableFireWall ");
        try {
            f2912c.setNetFirwall(true);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("TCLImpl -- enableFireWall -error: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableGPS() {
        LTKDateUtil.m1403m("TCLImpl -- enableGPS ");
        try {
            f2912c.setGpsEnable();
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("TCLImpl -- enableGPS -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableHome() {
        LTKDateUtil.m1403m("TCLImpl -- enableHome ");
        try {
            f2912c.setHomeButtonDisabled(false);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("TCLImpl -- enableHome -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableLongPressPower() {
        LTKDateUtil.m1403m("TCLImpl -- enableLongPressPower ");
        try {
            f2912c.setLongPowerKeyEnable();
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("TCLImpl-- enableLongPressPower -error: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableMobileData() {
        LTKDateUtil.m1403m("TCLImpl -- enableMobileData ");
        try {
            f2912c.setDataDisabled(false);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("TCLImpl-- enableMobileData -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableNavigation() {
        LTKDateUtil.m1403m("TCLImpl -- enableNavigation ");
        try {
            enableRecent();
            enableHome();
            enableBack();
            enableVolume();
            enableShortPressPower();
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("TCLImpl -- enableNavigation -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableOTG() {
        LTKDateUtil.m1403m("TCLImpl -- enableOTG ");
        try {
            f2912c.setUSBOtgDisabled(false);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("TCLImpl -- enableOTG -error: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableRecent() {
        LTKDateUtil.m1403m("TCLImpl -- enableRecent ");
        try {
            f2912c.setTaskButtonDisabled(false);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("TCLImpl -- enableRecent -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableShortPressPower() {
        LTKDateUtil.m1403m("TCLImpl -- enableShortPressPower ");
        try {
            f2912c.setPowerKeyEnable();
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("TCLImpl -- enableShortPressPower -error: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableSpeech() {
        LTKDateUtil.m1403m("TCLImpl -- enableSpeech ");
        try {
            f2912c.setVoiceDisabled(false);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("TCLImpl -- enableSpeech -error: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableUsb() {
        LTKDateUtil.m1403m("TCLImpl -- enableUsb ");
        try {
            f2912c.setUSBDataDisabled(false);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("TCLImpl -- enableUsb -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableVolume() {
        LTKDateUtil.m1403m("TCLImpl -- enableVolume ");
        try {
            f2912c.setVolAddEnable();
            f2912c.setVolSubEnable();
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("TCLImpl-- enableVolume -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: g0 */
    public void mo1322g0() {
        LTKDateUtil.m1403m("TCLImpl -- enableSMS ");
        try {
            f2912c.setSMSDisabled(false);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("TCLImpl -- enableSMS -error: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: h0 */
    public void mo1324h0() {
        LTKDateUtil.m1403m("TCLImpl -- actionShutdown ");
        try {
            f2912c.setDeviceShutDown();
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("TCLImpl -- actionShutdown -error: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: k0 */
    public void mo1326k0(List<String> list) {
        LTKDateUtil.m1403m("TCLImpl -- actionDisableApp ");
        try {
            if (MobileSdkPlatformUtilities.m2273N(list)) {
                return;
            }
            f2912c.setAppDisable(list);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("TCLImpl -- actionDisableApp-error: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: r */
    public void mo1327r(List<String> list) {
        LTKDateUtil.m1403m("TCLImpl -- hideWifiAdvanced ");
        try {
            f2912c.setWifiAdvanceDisable();
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("TCLImpl -- hideWifiAdvanced -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: s */
    public boolean mo1328s(List<String> list) {
        LTKDateUtil.m1403m("TCLImpl -- setAppWhiteList ");
        if (MobileSdkPlatformUtilities.m2273N(list)) {
            return false;
        }
        try {
            f2912c.clearAppInstallWhiteList();
            f2912c.addAppInstallWhiteList(list);
            return true;
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("TCLImpl -- setAppWhiteList -error: "));
            return true;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: t */
    public void mo1329t(boolean z) {
        LTKDateUtil.m1403m("TCLImpl -- actionResetFactory ");
        try {
            f2912c.resetFactory();
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("TCLImpl -- actionResetFactory -error: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: t0 */
    public List<String> mo1330t0() {
        LTKDateUtil.m1403m("TCLImpl -- getUrlWhiteList ");
        ArrayList arrayList = new ArrayList();
        try {
            List<String> webWhiteList = f2912c.getWebWhiteList(1);
            if (!MobileSdkPlatformUtilities.m2273N(webWhiteList)) {
                arrayList.addAll(webWhiteList);
            }
            List<String> webWhiteList2 = f2912c.getWebWhiteList(2);
            if (!MobileSdkPlatformUtilities.m2273N(webWhiteList2)) {
                arrayList.addAll(webWhiteList2);
            }
            return arrayList;
        } catch (Throwable th) {
            return CompilerOutline.m1773r(th, CompilerOutline.m1765j("TCLImpl -- getUrlWhiteList -error: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: y0 */
    public void mo1331y0(String str) {
        LTKDateUtil.m1403m("TCLImpl -- actionEnableApp ");
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(str);
            f2912c.setAppEnable(arrayList);
        } catch (Exception e) {
            CompilerOutline.m1776u(e, CompilerOutline.m1765j("TCLImpl -- actionEnableApp-error: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: z0 */
    public void mo1332z0(boolean z) {
        LTKDateUtil.m1403m("TCLImpl -- disableSdCard ");
        try {
            f2912c.setSdcardDisabled(true);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("TCLImpl -- disableSdCard -error:"));
        }
    }
}
