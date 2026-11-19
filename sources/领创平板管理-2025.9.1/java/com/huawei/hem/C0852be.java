package com.huawei.hem;

import android.app.mia.MiaMdmPolicyManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/* compiled from: LenovoImpl.java */
/* renamed from: com.huawei.hem.be */
/* loaded from: classes.dex */
public class C0852be extends C1055jc {

    /* renamed from: b */
    public static C0852be f2300b = new C0852be();

    /* renamed from: c */
    public static MiaMdmPolicyManager f2301c;

    /* renamed from: V0 */
    public static /* synthetic */ void m1417V0() {
        try {
            f2301c.urlSetEnable(true);
            C0850bc.m1403m("LenovoImpl  -1- enableFireWall");
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("LenovoImpl  -1- enableFireWall exception = "));
        }
        try {
            f2301c.SetEnable(true);
            C0850bc.m1403m(" -2- enableFireWall");
        } catch (Throwable th2) {
            C0948f6.m1744B(th2, C0948f6.m1765j("LenovoImpl  -2- enableFireWall exception = "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: E0 */
    public void mo1336E0(List<String> list) {
        C0850bc.m1403m("LenovoImpl  -- setPersistentApp ");
        try {
            f2301c.forceStopPackageWhiteListWrite(list);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("LenovoImpl  -- set persistent exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: F */
    public void mo1306F(String str) {
        C0948f6.m1779x("LenovoImpl  -- actionSilentInstall , path = ", str);
        try {
            C0850bc.m1403m("LenovoImpl  silent install :" + str);
            f2301c.silentInstall(str);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("LenovoImpl  -- actionSilentInstall exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: G0 */
    public List<String> mo1307G0() {
        C0850bc.m1403m("LenovoImpl  -- getNetworkAccessAppWhiteList ");
        try {
            return f2301c.APPIPWhiteListRead();
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("LenovoImpl  -- get network app white list exception"));
            return null;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: I0 */
    public void mo1308I0(List<String> list) {
        for (int i = 0; i < list.size(); i++) {
            try {
                f2301c.AddAppWhiteRule(list.get(i));
                C0850bc.m1403m("LenovoImpl  -- setNetworkAccessAppWhiteList : " + list.get(i));
            } catch (Throwable th) {
                C0948f6.m1744B(th, C0948f6.m1765j("LenovoImpl  -- set network app white list exception"));
                return;
            }
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: J */
    public void mo1309J(String str) {
        C0850bc.m1403m("LenovoImpl  -- actionKillApp ");
        try {
            f2301c.killApplicationProcess(str);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("LenovoImpl  -- actionKillApp error = "));
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
        Bitmap miaScreen;
        FileOutputStream fileOutputStream;
        C0850bc.m1403m("LenovoImpl  -- actionScreenShot ");
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
                    miaScreen = f2301c.getMiaScreen();
                } catch (Throwable th) {
                    th = th;
                }
                try {
                    fileOutputStream = new FileOutputStream(strM1760e);
                    try {
                        miaScreen.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
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
            C0948f6.m1744B(th3, C0948f6.m1765j("LenovoImpl  -- actionScreenShot error : "));
            return null;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: M0 */
    public List<String> mo1311M0() {
        C0850bc.m1403m("LenovoImpl  -- getAppWhiteList ");
        try {
            return f2301c.appWhiteListRead();
        } catch (Throwable th) {
            return C0948f6.m1773r(th, C0948f6.m1765j("LenovoImpl  -- get app white exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: N */
    public boolean mo1312N(long j) {
        String str = new SimpleDateFormat("yyyy-MM-dd-HH:mm:ss").format(new Date(j));
        C0850bc.m1390A(" -- setSystemTime");
        try {
            f2301c.updateSystemTime(str);
            return true;
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("LenovoImpl  -- set system time exception: "));
            return true;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: O */
    public void mo1313O(String str, String str2) {
        try {
            f2301c.setCustomLauncher(str);
            C0850bc.m1403m("LenovoImpl  -- setDefaultLauncher");
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("LenovoImpl  -- setDefaultLauncher exception : "));
        }
        try {
            f2301c.setNotificationVolumeValue_v3(0);
        } catch (Throwable th2) {
            C0948f6.m1744B(th2, C0948f6.m1765j("LenovoImpl  -- setNotificationVolumeValue_v3 exception:"));
        }
        try {
            f2301c.disallowSetNotificationVolume_v3(false);
        } catch (Throwable th3) {
            C0948f6.m1744B(th3, C0948f6.m1765j("LenovoImpl  -- disallowSetNotificationVolume_v3 exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: Q */
    public void mo1314Q(String str) {
        C0850bc.m1403m("LenovoImpl  -- actionSilentUnInstall ");
        try {
            f2301c.silentUnInstall(str);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("LenovoImpl  -- actionSilentUnInstall exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: S */
    public void mo1315S() {
        C0850bc.m1403m("LenovoImpl  -- disableSMS");
        try {
            f2301c.setSIMStatus(false);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("LenovoImpl  -- disableSMS exception: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: V */
    public boolean mo1316V(List<String> list) {
        if (!AbstractC1102l9.m2273N(list)) {
            C0850bc.m1403m("LenovoImpl enable firewall because firewall is loss efficacy");
            enableFireWall();
        }
        try {
            f2301c.ClearURLListRules();
            C0850bc.m1403m("LenovoImpl ClearURLListRules");
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("LenovoImpl ====>LenovoImpl ClearURLListRules (*) exception:"));
        }
        try {
            ArrayList arrayList = new ArrayList();
            arrayList.add("*");
            f2301c.urlBlackListWrite(arrayList);
            C0850bc.m1403m("LenovoImpl ====>LenovoImpl urlBlackListWrite (*)");
        } catch (Throwable th2) {
            C0948f6.m1744B(th2, C0948f6.m1765j("LenovoImpl ====>LenovoImpl urlBlackListWrite (*) exception:"));
        }
        try {
            C0850bc.m1403m("LenovoImpl  -- setUrlWhiteList ");
            f2301c.urlWhiteListWrite(list);
            return false;
        } catch (Throwable th3) {
            C0948f6.m1744B(th3, C0948f6.m1765j("LenovoImpl  -- setUrlWhiteList exception:"));
            return false;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: Y */
    public String mo1317Y(Context context) {
        C0850bc.m1403m("LenovoImpl  -- getWifiMacAddress ");
        try {
            return f2301c.getWifiStatus();
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("LenovoImpl  -- getWifiMacAddress error = "));
            return null;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: b0 */
    public void mo1318b0(List<String> list) {
        C0850bc.m1403m("LenovoImpl  -- showWifiAdvanced ");
        try {
            f2301c.setWifiProxy(false);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("LenovoImpl  -- showWifiAdvanced exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: c */
    public void mo1319c(boolean z) {
        C0850bc.m1403m("LenovoImpl  -- enableSdCard ");
        String strM1589f = C0904de.m1589f();
        if ((z && strM1589f.equals("Lenovo TAB 2 A10-70F")) || strM1589f.equals("Lenovo2A8-50F_iflytek") || strM1589f.equals("Lenovo2A8-50F")) {
            return;
        }
        try {
            f2301c.setTFcard(false);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j(" -- enableSdCard exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableBack() {
        try {
            f2301c.setBackKey(true);
            C0850bc.m1403m("LenovoImpl  -- lenovo new disableBack");
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("LenovoImpl  -- new disableBack  exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableBluetooth() {
        try {
            f2301c.allowBluetoothDataTransfer(false);
            C0850bc.m1403m("LenovoImpl  -- new interface disableBluetooth");
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("LenovoImpl  -- new disableBluetooth exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableCamera() {
        C0850bc.m1403m("LenovoImpl  -- disableCamera ");
        try {
            f2301c.setCamera(true);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("LenovoImpl  -- disableCamera exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableFireWall() {
        try {
            f2301c.urlSetEnable(false);
            C0850bc.m1403m("LenovoImpl  -1- disableFireWall");
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("LenovoImpl  -1- disableFireWall exception = "));
        }
        try {
            f2301c.SetEnable(false);
            C0850bc.m1403m("LenovoImpl  -2- disableFireWall");
        } catch (Throwable th2) {
            C0948f6.m1744B(th2, C0948f6.m1765j("LenovoImpl  -2- disableFireWall exception = "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableGPS() {
        try {
            f2301c.setGps(true);
            C0850bc.m1403m("LenovoImpl  -- disableGPS ");
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("LenovoImpl  -- disableGPS exception: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableHome() {
        try {
            f2301c.setHomeKey(true);
            C0850bc.m1403m("LenovoImpl  -- lenovo new disableHome");
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("LenovoImpl  -- new disableHome  exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableLongPressPower() {
        try {
            C0850bc.m1403m("LenovoImpl  -- disableLongPressPower");
            f2301c.setPowerLongPressKey(true);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("LenovoImpl  -- disableLongPressPower exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableMobileData() {
        try {
            f2301c.mobileData(false);
            C0850bc.m1403m("LenovoImpl  -- disableMobileData");
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("LenovoImpl  -- disableMobileData exception: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableNavigation() {
        try {
            f2301c.setNavigaBar(true);
            C0850bc.m1403m("LenovoImpl  -- old interface disableNavigation");
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("LenovoImpl  -- old disableNavigation  exception:"));
        }
        disableRecent();
        disableHome();
        disableBack();
        disableVolume();
        disableShortPressPower();
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableOTA() {
        try {
            f2301c.setOTA(false);
            C0850bc.m1403m("LenovoImpl  -- disableOTA");
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("LenovoImpl  -- disableOTA exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableOTG() {
        C0850bc.m1403m("LenovoImpl  -- disableOTG");
        try {
            f2301c.setOTG(true);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("LenovoImpl  -- disableOTG-error = "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableRecent() {
        try {
            f2301c.setRecentKey(true);
            C0850bc.m1403m("LenovoImpl  -- disableRecent");
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("LenovoImpl  -- disableRecent  exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableScreenShot() {
        try {
            C0850bc.m1403m("LenovoImpl  -- disableScreenShot ");
            f2301c.enableCaptureScreen(false);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("LenovoImpl  -- disableScreenShot error: "));
        }
        try {
            C0850bc.m1403m("LenovoImpl  -- disableScreenShot ");
            f2301c.setScreenCaptureKey(false);
        } catch (Throwable th2) {
            C0948f6.m1744B(th2, C0948f6.m1765j("LenovoImpl  -- disableScreenShot error: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableShortPressPower() {
        try {
            f2301c.setPowerSingleClickKey(true);
            C0850bc.m1403m("LenovoImpl  -- disableShortPressPower");
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("LenovoImpl  -- disableShortPressPower exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableSpeech() {
        C0850bc.m1403m("LenovoImpl  -- disableSpeech ");
        try {
            f2301c.setSIMStatus(false);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("LenovoImpl  -- disableSpeech exception: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableUsb() {
        C0850bc.m1403m("LenovoImpl  -- disableUsb ");
        try {
            f2301c.setUsbOnlyCharging(true);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("LenovoImpl  -- disableUsb exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableVolume() {
        try {
            f2301c.setVoiceSize(true);
            C0850bc.m1403m("LenovoImpl  -- old interface disableVolume");
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("LenovoImpl  -- old disableVolume  exception:"));
        }
        try {
            f2301c.setVolumeupKey(true);
            f2301c.setVolumedownKey(true);
            C0850bc.m1403m("LenovoImpl  -- new interface disableVolume");
        } catch (Throwable th2) {
            C0948f6.m1744B(th2, C0948f6.m1765j("LenovoImpl  -- new disableVolume  exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: e */
    public void mo1320e(String str) {
        C0948f6.m1779x("LenovoImpl  -- actionDisableApp = ", str);
        try {
            f2301c.controlApp(str, true);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("LenovoImpl  -- actionDisableApp app exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableBack() {
        try {
            f2301c.setBackKey(false);
            C0850bc.m1403m("LenovoImpl  -- lenovo new enableBack");
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("LenovoImpl  -- new enableBack  exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableBluetooth() {
        try {
            f2301c.allowBluetoothDataTransfer(true);
            C0850bc.m1403m("LenovoImpl  -- new interface enableBluetooth");
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("LenovoImpl  -- new enableBluetooth exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableCamera() {
        C0850bc.m1403m("LenovoImpl  -- enableCamera ");
        try {
            f2301c.setCamera(false);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("LenovoImpl  -- enableCamera exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableFireWall() {
        new Thread(new Runnable() { // from class: com.huawei.hem.yd
            @Override // java.lang.Runnable
            public final void run() {
                C0852be.m1417V0();
            }
        }).start();
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableGPS() {
        try {
            f2301c.setGps(false);
            C0850bc.m1403m("LenovoImpl  -- enableGPS ");
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("LenovoImpl  -- enableGPS exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableHome() {
        try {
            f2301c.setHomeKey(false);
            C0850bc.m1403m("LenovoImpl  -- lenovo new enableHome");
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("LenovoImpl  -- new enableHome  exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableLongPressPower() {
        try {
            f2301c.setPowerLongPressKey(false);
            C0850bc.m1403m("LenovoImpl  -- enableLongPressPower ");
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("LenovoImpl  -- enableLongPressPower exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableMobileData() {
        try {
            f2301c.mobileData(true);
            C0850bc.m1403m("LenovoImpl  -- enableMobileData");
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("LenovoImpl  -- enableMobileData exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableNavigation() {
        try {
            f2301c.setNavigaBar(false);
            C0850bc.m1403m("LenovoImpl  -- old interface enableNavigation");
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("LenovoImpl  -- old enableNavigation  exception:"));
        }
        enableRecent();
        enableHome();
        enableBack();
        enableVolume();
        enableShortPressPower();
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableOTA() {
        try {
            f2301c.setOTA(true);
            C0850bc.m1403m("LenovoImpl  -- enableOTA");
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("LenovoImpl  -- enableOTA exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableOTG() {
        C0850bc.m1403m("LenovoImpl  -- enableOTG");
        try {
            f2301c.setOTG(false);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("LenovoImpl  -- enableOTG-error = "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableRecent() {
        try {
            f2301c.setRecentKey(false);
            C0850bc.m1403m("LenovoImpl  -- enableRecent");
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("LenovoImpl  -- enableRecent  exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableScreenShot() {
        try {
            C0850bc.m1403m("LenovoImpl  -- enableScreenShot ");
            f2301c.enableCaptureScreen(true);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("LenovoImpl  -- enableScreenShot error: "));
        }
        try {
            C0850bc.m1403m("LenovoImpl  -- enableScreenShot ");
            f2301c.setScreenCaptureKey(true);
        } catch (Throwable th2) {
            C0948f6.m1744B(th2, C0948f6.m1765j("LenovoImpl  -- enableScreenShot error: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableShortPressPower() {
        try {
            f2301c.setPowerSingleClickKey(false);
            C0850bc.m1403m("LenovoImpl  -- enableShortPressPower");
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("LenovoImpl  -- enableShortPressPower exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableSpeech() {
        C0850bc.m1403m("LenovoImpl  -- enableSpeech ");
        try {
            f2301c.setSIMStatus(true);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("LenovoImpl  -- enableSpeech exception: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableUsb() {
        C0850bc.m1403m("LenovoImpl  -- enableUsb ");
        try {
            f2301c.setUsbOnlyCharging(false);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("LenovoImpl  -- enableUsb exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableVolume() {
        try {
            f2301c.setVoiceSize(false);
            C0850bc.m1403m("LenovoImpl  -- old interface enableVolume");
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("LenovoImpl  -- old enableVolume  exception:"));
        }
        try {
            f2301c.setVolumeupKey(false);
            f2301c.setVolumedownKey(false);
            C0850bc.m1403m("LenovoImpl  -- new interface enableVolume");
        } catch (Throwable th2) {
            C0948f6.m1744B(th2, C0948f6.m1765j("LenovoImpl  -- new enableVolume  exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: g0 */
    public void mo1322g0() {
        C0850bc.m1403m("LenovoImpl  -- enableSMS");
        try {
            f2301c.setSIMStatus(true);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("LenovoImpl  -- enableSMS exception: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: h */
    public void mo1323h() {
        try {
            f2301c.ClearAppRules();
            C0850bc.m1403m("LenovoImpl  -- cleanNetworkAccessAppWhiteList");
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("LenovoImpl  -- clear network app white list exception : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: h0 */
    public void mo1324h0() {
        C0850bc.m1403m("LenovoImpl  -- actionShutdown ");
        try {
            f2301c.shutDown();
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("LenovoImpl  -- actionShutdown error = "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: l */
    public boolean mo1350l(List<String> list) {
        C0850bc.m1403m("LenovoImpl  -- setAppWhiteWithHash ");
        try {
            return AbstractC1102l9.m2273N(list) ? f2301c.setAppWhiteList(null) : f2301c.setAppWhiteList(list);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("LenovoImpl  -- set app white with hash exception:"));
            return false;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: o */
    public List<String> mo1352o() {
        C0850bc.m1403m("LenovoImpl  -- getPersistentApp ");
        try {
            return f2301c.forceStopPackageWhiteListRead();
        } catch (Throwable th) {
            return C0948f6.m1773r(th, C0948f6.m1765j("LenovoImpl  -- read persistent exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: r */
    public void mo1327r(List<String> list) {
        C0850bc.m1403m("LenovoImpl  -- hideWifiAdvanced ");
        try {
            f2301c.setWifiProxy(true);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("LenovoImpl  -- hideWifiAdvanced exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: s */
    public boolean mo1328s(List<String> list) {
        try {
            C0850bc.m1403m("LenovoImpl  -- setAppWhiteList , result = " + f2301c.appWhiteListWrite(list));
            return false;
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("LenovoImpl  -- set app white exception:"));
            return false;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: t */
    public void mo1329t(boolean z) {
        C0850bc.m1403m("LenovoImpl  -- actionResetFactory ");
        try {
            f2301c.masterClearInbulitSD();
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("LenovoImpl  -- reset factory exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: t0 */
    public List<String> mo1330t0() {
        C0850bc.m1403m("LenovoImpl  -- getUrlWhiteList ");
        try {
            return f2301c.urlWhiteListRead();
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("LenovoImpl  -- get url white list exception:"));
            return null;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: y0 */
    public void mo1331y0(String str) {
        C0948f6.m1779x("LenovoImpl  -- actionEnableApp = ", str);
        try {
            f2301c.controlApp(str, false);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("LenovoImpl  -- actionEnableApp app exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: z0 */
    public void mo1332z0(boolean z) {
        C0850bc.m1403m("LenovoImpl  -- disableSdCard ");
        String strM1589f = C0904de.m1589f();
        if ((z && strM1589f.equals("Lenovo TAB 2 A10-70F")) || strM1589f.equals("Lenovo2A8-50F_iflytek") || strM1589f.equals("Lenovo2A8-50F")) {
            return;
        }
        try {
            f2301c.setTFcard(true);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("LenovoImpl  -- disableSdCard exception:"));
        }
    }
}
