package com.huawei.hem;

import android.content.Context;
import android.graphics.Bitmap;
import android.p000os.ApiManager;
import android.text.TextUtils;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: HaierImpl.java */
/* renamed from: com.huawei.hem.sc */
/* loaded from: classes.dex */
public class HaierImpl extends AndroidImpl {

    /* renamed from: b */
    public static HaierImpl f3686b = new HaierImpl();

    /* renamed from: c */
    public static C1200p6 f3687c;

    /* compiled from: HaierImpl.java */
    /* renamed from: com.huawei.hem.sc$a */
    public class a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ List f3688a;

        public a(HaierImpl c1281sc, List list) {
            this.f3688a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            C1200p6 c1200p6 = HaierImpl.f3687c;
            List<String> list = this.f3688a;
            ApiManager apiManager = c1200p6.f3438a;
            if (apiManager == null) {
                return;
            }
            apiManager.GlobalNetworkWhiteListSet(list);
        }
    }

    /* compiled from: HaierImpl.java */
    /* renamed from: com.huawei.hem.sc$b */
    public class b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ List f3689a;

        public b(HaierImpl c1281sc, List list) {
            this.f3689a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            C1200p6 c1200p6 = HaierImpl.f3687c;
            List<String> list = this.f3689a;
            ApiManager apiManager = c1200p6.f3438a;
            if (apiManager == null) {
                return;
            }
            apiManager.AppUnBlockNetworkWhiteListSet(list);
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: C */
    public void mo1305C() {
        LTKDateUtil.m1403m("HaierImpl -- disableNavigationBar ");
        try {
            ApiManager apiManager = f3687c.f3438a;
            if (apiManager == null) {
                return;
            }
            apiManager.NavBarHide();
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HaierImpl -- disableNavigationBar -error: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: E0 */
    public void mo1336E0(List<String> list) {
        LTKDateUtil.m1403m("HaierImpl -- setPersistentApp ");
        if (AbstractC1102l9.m2273N(list)) {
            LTKDateUtil.m1390A("HaierImpl -- setPersistentApp , but it is null ");
            return;
        }
        try {
            ApiManager apiManager = f3687c.f3438a;
            if (apiManager == null) {
                return;
            }
            apiManager.AppAliveListSet(list);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HaierImpl -- setPersistentApp -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: F */
    public void mo1306F(String str) {
        int i;
        try {
            ApiManager apiManager = f3687c.f3438a;
            if (apiManager == null) {
                i = -1;
            } else {
                apiManager.AppSilentInstall(str, false);
                i = 0;
            }
            LTKDateUtil.m1403m("HaierImpl -- actionSilentInstall installStatus = " + i);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HaierImpl -- actionSilentInstall -error: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: G */
    public String mo1337G() {
        LTKDateUtil.m1403m("HaierImpl -- getDeviceSN ");
        try {
            ApiManager apiManager = f3687c.f3438a;
            return apiManager == null ? "" : apiManager.SysSerialnoGet();
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HaierImpl -- getDeviceSN -error: "));
            return "";
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: G0 */
    public List<String> mo1307G0() {
        LTKDateUtil.m1403m("HaierImpl -- getNetworkAccessAppWhiteList ");
        try {
            ApiManager apiManager = f3687c.f3438a;
            return apiManager == null ? new ArrayList() : apiManager.AppUnBlockNetworkWhiteListGet();
        } catch (Throwable th) {
            return CompilerOutline.m1773r(th, CompilerOutline.m1765j("HaierImpl -- getNetworkAccessAppWhiteList -error: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: I0 */
    public void mo1308I0(List<String> list) {
        if (AbstractC1102l9.m2273N(list)) {
            LTKDateUtil.m1390A("HaierImpl -- setNetworkAccessAppWhiteList ,but pkgList is null .");
            return;
        }
        LTKDateUtil.m1403m("HaierImpl -- setNetworkAccessAppWhiteList ");
        try {
            new Thread(new b(this, list)).start();
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HaierImpl -- setNetworkAccessAppWhiteList -error: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: L */
    public String mo1310L(String str) {
        FileOutputStream fileOutputStream;
        try {
            LTKDateUtil.m1403m("HaierImpl -- actionScreenShot ");
            if (TextUtils.isEmpty(str)) {
                str = "/mnt/sdcard/Screenshots/";
            }
            String str2 = "Screenshot_" + LTKDateUtil.m1400j() + ".png";
            File file = new File(str);
            if (!file.exists()) {
                file.mkdirs();
            }
            String str3 = str + str2;
            try {
                ApiManager apiManager = f3687c.f3438a;
                FileOutputStream fileOutputStream2 = null;
                Bitmap bitmapSysScreenshotBmp = apiManager == null ? null : apiManager.SysScreenshotBmp();
                try {
                    try {
                        try {
                            fileOutputStream = new FileOutputStream(str3);
                        } catch (Exception e) {
                            e = e;
                        }
                    } catch (IOException e2) {
                        e2.printStackTrace();
                    }
                } catch (Throwable th) {
                    th = th;
                    fileOutputStream = fileOutputStream2;
                }
                try {
                    bitmapSysScreenshotBmp.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
                    fileOutputStream.flush();
                    fileOutputStream.close();
                } catch (Exception e3) {
                    e = e3;
                    fileOutputStream2 = fileOutputStream;
                    e.printStackTrace();
                    fileOutputStream2.flush();
                    fileOutputStream2.close();
                    return str3;
                } catch (Throwable th2) {
                    th = th2;
                    try {
                        fileOutputStream.flush();
                        fileOutputStream.close();
                    } catch (IOException e4) {
                        e4.printStackTrace();
                    }
                    throw th;
                }
                return str3;
            } catch (Throwable th3) {
                LTKDateUtil.m1393c("HaierImpl -- actionScreenShot -error:" + th3.getMessage());
                return "";
            }
        } catch (Throwable th4) {
            CompilerOutline.m1744B(th4, CompilerOutline.m1765j("HaierImpl -- actionScreenShot -error: "));
            return "";
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: M0 */
    public List<String> mo1311M0() {
        LTKDateUtil.m1403m("HaierImpl -- getAppWhiteList ");
        try {
            ApiManager apiManager = f3687c.f3438a;
            return apiManager == null ? new ArrayList() : apiManager.AppInstallWhiteListGet();
        } catch (Throwable th) {
            return CompilerOutline.m1773r(th, CompilerOutline.m1765j("HaierImpl -- getAppWhiteList -error: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: N */
    public boolean mo1312N(long j) {
        LTKDateUtil.m1403m("HaierImpl -- setSystemTime ");
        try {
            ApiManager apiManager = f3687c.f3438a;
            if (apiManager == null) {
                return true;
            }
            apiManager.SysTimeStampSet(j);
            return true;
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HaierImpl -- setSystemTime -error: "));
            return true;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: O */
    public void mo1313O(String str, String str2) {
        LTKDateUtil.m1403m("HaierImpl -- system init start");
        try {
            ApiManager apiManager = f3687c.f3438a;
            if (apiManager != null) {
                apiManager.DefHomeLauncherSet(str, null);
            }
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HaierImpl -- setDefaultLauncher -error: "));
        }
        try {
            ApiManager apiManager2 = f3687c.f3438a;
            if (apiManager2 == null) {
                return;
            }
            apiManager2.StatusBarDropEnable(false);
        } catch (Throwable th2) {
            CompilerOutline.m1744B(th2, CompilerOutline.m1765j("HaierImpl-- disableStatusBarPanel -error: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: Q */
    public void mo1314Q(String str) {
        int i;
        try {
            ApiManager apiManager = f3687c.f3438a;
            if (apiManager == null) {
                i = -1;
            } else {
                apiManager.AppSilentUninstall(str, false);
                i = 0;
            }
            LTKDateUtil.m1403m("HaierImpl -- actionSilentUnInstall uninstallStatus = " + i);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HaierImpl -- actionSilentUnInstall -error: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: S */
    public void mo1315S() {
        LTKDateUtil.m1403m("HaierImpl -- disableSMS ");
        try {
            ApiManager apiManager = f3687c.f3438a;
            if (apiManager == null) {
                return;
            }
            apiManager.SMSEnable(false);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HaierImpl -- disableSMS -error: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: V */
    public boolean mo1316V(List<String> list) {
        LTKDateUtil.m1403m("HaierImpl -- setUrlWhiteList ");
        try {
            if (AbstractC1102l9.m2273N(list)) {
                LTKDateUtil.m1403m("HaierImpl -- setUrlWhiteList ，urlWhiteList is null，not need to add");
            } else {
                new Thread(new a(this, list)).start();
            }
            return false;
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HaierImpl -- setUrlWhiteList-error: "));
            return false;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: Y */
    public String mo1317Y(Context context) {
        LTKDateUtil.m1403m("HaierImpl -- getWifiMacAddress ");
        try {
            ApiManager apiManager = f3687c.f3438a;
            return apiManager == null ? "" : apiManager.WifiMacGet();
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HaierImpl -- getWifiMacAddress -error: "));
            return "";
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: b0 */
    public void mo1318b0(List<String> list) {
        LTKDateUtil.m1403m("HaierImpl -- showWifiAdvanced ");
        try {
            ApiManager apiManager = f3687c.f3438a;
            if (apiManager == null) {
                return;
            }
            apiManager.WifiAdvanceOptionVisible(true);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HaierImpl -- showWifiAdvanced -error: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: c */
    public void mo1319c(boolean z) {
        LTKDateUtil.m1403m("HaierImpl -- enableSdCard ");
        try {
            ApiManager apiManager = f3687c.f3438a;
            if (apiManager == null) {
                return;
            }
            apiManager.ExternalStorageEnable(true);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HaierImpl -- enableSdCard -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: d */
    public void mo1506d(ArrayList<String> arrayList) {
        if (AbstractC1102l9.m2272M(arrayList)) {
            return;
        }
        LTKDateUtil.m1403m("HaierImpl -- setSuperWhiteListForSys ");
        try {
            ApiManager apiManager = f3687c.f3438a;
            if (apiManager == null) {
                return;
            }
            apiManager.AppTrustedListSet(arrayList);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HaierImpl -- setSuperWhiteListForSys -error: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableBack() {
        LTKDateUtil.m1403m("HaierImpl -- disableBack ");
        try {
            ApiManager apiManager = f3687c.f3438a;
            if (apiManager == null) {
                return;
            }
            apiManager.BackKeyEnable(false);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HaierImpl -- disableBack -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableBluetooth() {
        LTKDateUtil.m1403m("HaierImpl -- disableBluetooth ");
        try {
            ApiManager apiManager = f3687c.f3438a;
            if (apiManager == null) {
                return;
            }
            apiManager.BluetoothEnable(false);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HaierImpl -- disableBluetooth -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableCamera() {
        LTKDateUtil.m1403m("HaierImpl -- disableCamera ");
        try {
            ApiManager apiManager = f3687c.f3438a;
            if (apiManager == null) {
                return;
            }
            apiManager.CameraEnable(false);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HaierImpl -- disableCamera -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableGPS() {
        LTKDateUtil.m1403m("HaierImpl -- disableGPS ");
        try {
            ApiManager apiManager = f3687c.f3438a;
            if (apiManager == null) {
                return;
            }
            apiManager.GpsLocationOn(false);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HaierImpl -- disableGPS -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableHome() {
        LTKDateUtil.m1403m("HaierImpl -- disableHome ");
        try {
            ApiManager apiManager = f3687c.f3438a;
            if (apiManager == null) {
                return;
            }
            apiManager.HomeKeyEnable(false);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HaierImpl -- disableHome -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableLongPressPower() {
        LTKDateUtil.m1403m("HaierImpl -- disableLongPressPower ");
        try {
            ApiManager apiManager = f3687c.f3438a;
            if (apiManager == null) {
                return;
            }
            apiManager.PowerKeyLongPressEnable(false);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HaierImpl -- disableLongPressPower -error: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableMobileData() {
        LTKDateUtil.m1403m("HaierImpl -- disableMobileData ");
        try {
            ApiManager apiManager = f3687c.f3438a;
            if (apiManager == null) {
                return;
            }
            apiManager.MobileDataOn(false);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HaierImpl-- disableMobileData -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableNavigation() {
        LTKDateUtil.m1403m("HaierImpl -- disableNavigation ");
        try {
            disableRecent();
            disableHome();
            disableBack();
            disableVolume();
            disableShortPressPower();
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HaierImpl -- disableNavigation -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableOTG() {
        LTKDateUtil.m1403m("HaierImpl -- disableOTG ");
        try {
            ApiManager apiManager = f3687c.f3438a;
            if (apiManager == null) {
                return;
            }
            apiManager.UsbOtgEnable(false);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HaierImpl -- disableOTG -error: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableRecent() {
        LTKDateUtil.m1403m("HaierImpl -- disableRecent ");
        try {
            ApiManager apiManager = f3687c.f3438a;
            if (apiManager == null) {
                return;
            }
            apiManager.RecentKeyEnable(false);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HaierImpl -- disableRecent -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableShortPressPower() {
        LTKDateUtil.m1403m("HaierImpl -- disableShortPressPower ");
        try {
            ApiManager apiManager = f3687c.f3438a;
            if (apiManager == null) {
                return;
            }
            apiManager.PowerKeyShortPressEnable(false);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HaierImpl -- disableShortPressPower -error: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableSpeech() {
        LTKDateUtil.m1403m("HaierImpl -- disableSpeech ");
        try {
            ApiManager apiManager = f3687c.f3438a;
            if (apiManager == null) {
                return;
            }
            apiManager.PhoneCallEnable(false);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HaierImpl -- disableSpeech -error: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableUsb() {
        LTKDateUtil.m1403m("HaierImpl -- disableUsb ");
        try {
            ApiManager apiManager = f3687c.f3438a;
            if (apiManager != null) {
                apiManager.UsbDebugEnable(false);
            }
            ApiManager apiManager2 = f3687c.f3438a;
            if (apiManager2 == null) {
                return;
            }
            apiManager2.UsbMtpEnable(false);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HaierImpl -- disableUsb -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableVolume() {
        LTKDateUtil.m1403m("HaierImpl -- disableVolume ");
        try {
            ApiManager apiManager = f3687c.f3438a;
            if (apiManager == null) {
                return;
            }
            apiManager.VolumeKeyEnable(false);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HaierImpl -- disableVolume -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: e */
    public void mo1320e(String str) {
        ApiManager apiManager;
        LTKDateUtil.m1403m("HaierImpl -- actionDisableApp ");
        try {
            if (!TextUtils.isEmpty(str) && (apiManager = f3687c.f3438a) != null) {
                apiManager.AppForceStop(str);
            }
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HaierImpl -- actionDisableApp-error: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableBack() {
        LTKDateUtil.m1403m("HaierImpl -- enableBack ");
        try {
            ApiManager apiManager = f3687c.f3438a;
            if (apiManager == null) {
                return;
            }
            apiManager.BackKeyEnable(true);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HaierImpl -- enableBack -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableBluetooth() {
        LTKDateUtil.m1403m("HaierImpl -- enableBluetooth ");
        try {
            ApiManager apiManager = f3687c.f3438a;
            if (apiManager == null) {
                return;
            }
            apiManager.BluetoothEnable(true);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HaierImpl  -- enableBluetooth -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableCamera() {
        LTKDateUtil.m1403m("HaierImpl -- enableCamera ");
        try {
            ApiManager apiManager = f3687c.f3438a;
            if (apiManager == null) {
                return;
            }
            apiManager.CameraEnable(true);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HaierImpl -- enableCamera -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableGPS() {
        LTKDateUtil.m1403m("HaierImpl -- enableGPS ");
        try {
            ApiManager apiManager = f3687c.f3438a;
            if (apiManager == null) {
                return;
            }
            apiManager.GpsLocationOn(true);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HaierImpl -- enableGPS -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableHome() {
        LTKDateUtil.m1403m("HaierImpl -- enableHome ");
        try {
            ApiManager apiManager = f3687c.f3438a;
            if (apiManager == null) {
                return;
            }
            apiManager.HomeKeyEnable(true);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HaierImpl -- enableHome -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableLongPressPower() {
        LTKDateUtil.m1403m("HaierImpl -- enableLongPressPower ");
        try {
            ApiManager apiManager = f3687c.f3438a;
            if (apiManager == null) {
                return;
            }
            apiManager.PowerKeyLongPressEnable(true);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HaierImpl -- enableLongPressPower -error: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableMobileData() {
        LTKDateUtil.m1403m("HaierImpl -- enableMobileData ");
        try {
            ApiManager apiManager = f3687c.f3438a;
            if (apiManager == null) {
                return;
            }
            apiManager.MobileDataOn(true);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HaierImpl-- enableMobileData -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableNavigation() {
        LTKDateUtil.m1403m("HaierImpl -- enableNavigation ");
        try {
            enableRecent();
            enableHome();
            enableBack();
            enableVolume();
            enableShortPressPower();
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HaierImpl -- enableNavigation -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableOTG() {
        LTKDateUtil.m1403m("HaierImpl -- enableOTG ");
        try {
            ApiManager apiManager = f3687c.f3438a;
            if (apiManager == null) {
                return;
            }
            apiManager.UsbOtgEnable(true);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HaierImpl -- enableOTG -error: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableRecent() {
        LTKDateUtil.m1403m("HaierImpl -- enableRecent ");
        try {
            ApiManager apiManager = f3687c.f3438a;
            if (apiManager == null) {
                return;
            }
            apiManager.RecentKeyEnable(true);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HaierImpl -- enableRecent -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableShortPressPower() {
        LTKDateUtil.m1403m("HaierImpl -- enableShortPressPower ");
        try {
            ApiManager apiManager = f3687c.f3438a;
            if (apiManager == null) {
                return;
            }
            apiManager.PowerKeyShortPressEnable(true);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HaierImpl -- enableShortPressPower -error: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableSpeech() {
        LTKDateUtil.m1403m("HaierImpl -- enableSpeech ");
        try {
            ApiManager apiManager = f3687c.f3438a;
            if (apiManager == null) {
                return;
            }
            apiManager.PhoneCallEnable(true);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HaierImpl -- enableSpeech -error: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableUsb() {
        LTKDateUtil.m1403m("HaierImpl -- enableUsb ");
        try {
            ApiManager apiManager = f3687c.f3438a;
            if (apiManager != null) {
                apiManager.UsbDebugEnable(true);
            }
            ApiManager apiManager2 = f3687c.f3438a;
            if (apiManager2 == null) {
                return;
            }
            apiManager2.UsbMtpEnable(true);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HaierImpl -- enableUsb -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableVolume() {
        LTKDateUtil.m1403m("HaierImpl -- enableVolume ");
        try {
            ApiManager apiManager = f3687c.f3438a;
            if (apiManager == null) {
                return;
            }
            apiManager.VolumeKeyEnable(true);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HaierImpl-- enableVolume -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: g */
    public void mo1321g() {
        LTKDateUtil.m1403m("HaierImpl -- actionRebootDevice ");
        try {
            ApiManager apiManager = f3687c.f3438a;
            if (apiManager == null) {
                return;
            }
            apiManager.SysReboot();
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HaierImpl-- actionRebootDevice -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: g0 */
    public void mo1322g0() {
        LTKDateUtil.m1403m("HaierImpl -- enableSMS ");
        try {
            ApiManager apiManager = f3687c.f3438a;
            if (apiManager == null) {
                return;
            }
            apiManager.SMSEnable(true);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HaierImpl -- enableSMS -error: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: h */
    public void mo1323h() {
        LTKDateUtil.m1403m("HaierImpl -- cleanNetworkAccessAppWhiteList ");
        try {
            ApiManager apiManager = f3687c.f3438a;
            if (apiManager == null) {
                return;
            }
            apiManager.AppUnBlockNetworkWhiteListClear();
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HaierImpl -- cleanNetworkAccessAppWhiteList -error: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: h0 */
    public void mo1324h0() {
        LTKDateUtil.m1403m("HaierImpl -- actionShutdown ");
        try {
            ApiManager apiManager = f3687c.f3438a;
            if (apiManager == null) {
                return;
            }
            apiManager.SysShutdown();
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HaierImpl -- actionShutdown -error: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: i */
    public void mo1325i() {
        LTKDateUtil.m1403m("HaierImpl -- enableNavigationBar ");
        try {
            ApiManager apiManager = f3687c.f3438a;
            if (apiManager == null) {
                return;
            }
            apiManager.NavBarShow();
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HaierImpl -- enableNavigationBar -error: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: o */
    public List<String> mo1352o() {
        LTKDateUtil.m1403m("HaierImpl -- getPersistentApp ");
        try {
            ApiManager apiManager = f3687c.f3438a;
            return apiManager == null ? new ArrayList() : apiManager.AppAliveListGet();
        } catch (Throwable th) {
            return CompilerOutline.m1773r(th, CompilerOutline.m1765j("HaierImpl -- getPersistentApp -error: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: r */
    public void mo1327r(List<String> list) {
        LTKDateUtil.m1403m("HaierImpl -- hideWifiAdvanced ");
        try {
            ApiManager apiManager = f3687c.f3438a;
            if (apiManager == null) {
                return;
            }
            apiManager.WifiAdvanceOptionVisible(false);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HaierImpl -- hideWifiAdvanced -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: s */
    public boolean mo1328s(List<String> list) {
        LTKDateUtil.m1403m("HaierImpl -- setAppWhiteList and WhiteNetAppList ");
        if (AbstractC1102l9.m2273N(list)) {
            return false;
        }
        try {
            ApiManager apiManager = f3687c.f3438a;
            if (apiManager != null) {
                apiManager.AppInstallWhiteListSet(list);
            }
            ApiManager apiManager2 = f3687c.f3438a;
            if (apiManager2 == null) {
                return true;
            }
            apiManager2.AppNetworkWhiteListSet(list);
            return true;
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HaierImpl -- setAppWhiteList and WhiteNetAppList -error: "));
            return true;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: t */
    public void mo1329t(boolean z) {
        LTKDateUtil.m1403m("HaierImpl -- actionResetFactory ");
        try {
            ApiManager apiManager = f3687c.f3438a;
            if (apiManager == null) {
                return;
            }
            apiManager.SysFactoryRest();
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HaierImpl -- actionResetFactory -error: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: t0 */
    public List<String> mo1330t0() {
        LTKDateUtil.m1403m("HaierImpl -- getUrlWhiteList ");
        try {
            ApiManager apiManager = f3687c.f3438a;
            return apiManager == null ? new ArrayList() : apiManager.GlobalNetworkWhiteListGet();
        } catch (Throwable th) {
            return CompilerOutline.m1773r(th, CompilerOutline.m1765j("HaierImpl -- getUrlWhiteList -error: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: u */
    public List<String> mo1507u() {
        LTKDateUtil.m1403m("HaierImpl --  getSuperWhiteListForSys");
        try {
            ApiManager apiManager = f3687c.f3438a;
            return apiManager == null ? new ArrayList() : apiManager.AppTrustedListGet();
        } catch (Throwable th) {
            return CompilerOutline.m1773r(th, CompilerOutline.m1765j("HaierImpl-- getSuperWhiteListForSys -error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: y0 */
    public void mo1331y0(String str) {
        ApiManager apiManager;
        LTKDateUtil.m1403m("HaierImpl -- actionEnableApp ");
        try {
            if (!TextUtils.isEmpty(str) && (apiManager = f3687c.f3438a) != null) {
                apiManager.AppForceStart(str);
            }
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HaierImpl -- actionEnableApp-error: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: z0 */
    public void mo1332z0(boolean z) {
        LTKDateUtil.m1403m("HaierImpl -- disableSdCard ");
        try {
            ApiManager apiManager = f3687c.f3438a;
            if (apiManager == null) {
                return;
            }
            apiManager.ExternalStorageEnable(false);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HaierImpl -- disableSdCard -error:"));
        }
    }
}
