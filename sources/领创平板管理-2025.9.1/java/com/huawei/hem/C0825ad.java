package com.huawei.hem;

import android.content.Context;
import android.content.Intent;
import android.provider.Settings;
import android.util.Log;
import com.taobao.accs.common.Constants;
import java.util.ArrayList;
import java.util.List;
import org.android.agoo.common.AgooConstants;

/* compiled from: JingdongfangImpl.java */
/* renamed from: com.huawei.hem.ad */
/* loaded from: classes.dex */
public class C0825ad extends C1055jc {

    /* renamed from: b */
    public static C0825ad f2201b = new C0825ad();

    /* renamed from: c */
    public static C1245r1 f2202c;

    /* renamed from: d */
    public static Context f2203d;

    /* renamed from: e */
    public static Class f2204e;

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: B0 */
    public void mo1304B0(List<String> list) {
        if (AbstractC1102l9.m2273N(list)) {
            return;
        }
        try {
            f2202c.m2651e(f2203d, (ArrayList) list);
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("JingdongfangImpl  disable apps   error "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: C */
    public void mo1305C() {
        try {
            C0850bc.m1403m("JingdongfangImpl  disable Navigation Bar");
            C1245r1 c1245r1 = f2202c;
            Context context = f2203d;
            if (c1245r1 == null) {
                throw null;
            }
            Log.v("API", "setHomeGone");
            Intent intent = new Intent();
            intent.setAction("com.boe.hideHome");
            context.sendBroadcast(intent);
            C1245r1 c1245r12 = f2202c;
            Context context2 = f2203d;
            if (c1245r12 == null) {
                throw null;
            }
            Log.v("API", "setBackGone");
            Intent intent2 = new Intent();
            intent2.setAction("com.boe.hideBack");
            context2.sendBroadcast(intent2);
            C1245r1 c1245r13 = f2202c;
            Context context3 = f2203d;
            if (c1245r13 == null) {
                throw null;
            }
            Log.v("API", "setRecentGone");
            Intent intent3 = new Intent();
            intent3.setAction("com.boe.hideRecent");
            context3.sendBroadcast(intent3);
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("JingdongfangImpl  disable Navigation Bar error "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: F */
    public void mo1306F(String str) {
        try {
            C0850bc.m1403m("JingdongfangImpl  silent install app");
            C1245r1 c1245r1 = f2202c;
            Context context = f2203d;
            if (c1245r1 == null) {
                throw null;
            }
            Log.v("API", "silentInstall");
            Intent intent = new Intent();
            intent.setAction("com.boe.Silence.install");
            intent.putExtra("filePath", str);
            intent.putExtra("open", false);
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("JingdongfangImpl  silent install app error "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: G0 */
    public List<String> mo1307G0() {
        try {
            C0850bc.m1403m("JingdongfangImpl  -- getNetworkAccessAppWhiteList");
            return f2202c.m2649c(f2203d);
        } catch (Throwable th) {
            return C0948f6.m1773r(th, C0948f6.m1765j("JingdongfangImpl  -- getNetworkAccessAppWhiteList error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: I0 */
    public void mo1308I0(List<String> list) {
        try {
            C0850bc.m1403m("JingdongfangImpl  set network access app white ");
            C1245r1 c1245r1 = f2202c;
            Context context = f2203d;
            ArrayList<String> arrayList = (ArrayList) list;
            if (c1245r1 == null) {
                throw null;
            }
            Log.v("API", "setUidToAppList");
            Intent intent = new Intent("com.boe.addUidAppList");
            intent.putStringArrayListExtra("appPkgName", arrayList);
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("JingdongfangImpl  set network access app white  error "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: J */
    public void mo1309J(String str) {
        try {
            C0850bc.m1403m("JingdongfangImpl  -- kill app:" + str);
            C1245r1 c1245r1 = f2202c;
            Context context = f2203d;
            if (c1245r1 == null) {
                throw null;
            }
            Log.v("API", "forceStopApp");
            Intent intent = new Intent("com.boe.forceStopPackage");
            intent.putExtra("stop_pkg", str);
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("JingdongfangImpl  -- kill app error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: L */
    public String mo1310L(String str) {
        C1245r1 c1245r1;
        Context context;
        try {
            C0850bc.m1403m("JingdongfangImpl  action screen shot");
            c1245r1 = f2202c;
            context = f2203d;
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("JingdongfangImpl  action screen shot error "));
        }
        if (c1245r1 == null) {
            throw null;
        }
        Log.v("API", "setSettingOptionVisible");
        Intent intent = new Intent();
        intent.setAction("com.boe.screenshot");
        intent.putExtra("ScreenshotPath", str);
        context.sendBroadcast(intent);
        return str;
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: M0 */
    public List<String> mo1311M0() {
        try {
            C0850bc.m1403m("JingdongfangImpl  get app white list");
            return f2202c.m2647a(f2203d);
        } catch (Throwable th) {
            StringBuilder sbM1765j = C0948f6.m1765j("JingdongfangImpl  get app white list error ");
            sbM1765j.append(th.getMessage());
            C0850bc.m1403m(sbM1765j.toString());
            return new ArrayList();
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: N */
    public boolean mo1312N(long j) {
        try {
            C0850bc.m1403m("JingdongfangImpl  show wifi advance");
            C1245r1 c1245r1 = f2202c;
            Context context = f2203d;
            if (c1245r1 == null) {
                throw null;
            }
            Log.v("API", "setDeviceDate");
            Intent intent = new Intent();
            intent.setAction("com.boe.DateReceiver");
            intent.putExtra("TIME", j);
            context.sendBroadcast(intent);
            return true;
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("JingdongfangImpl  show wifi advance error "));
            return true;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: O */
    public void mo1313O(String str, String str2) {
        C1245r1 c1245r1;
        Context context;
        C1245r1 c1245r12;
        Context context2;
        C1245r1 c1245r13;
        Context context3;
        C1245r1 c1245r14;
        Context context4;
        String name;
        C0850bc.m1403m("JingdongfangImpl  system init ");
        try {
            C0850bc.m1403m("JingdongfangImpl  active admin");
            c1245r14 = f2202c;
            context4 = f2203d;
            name = f2204e.getName();
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("JingdongfangImpl  active admin  error "));
        }
        if (c1245r14 == null) {
            throw null;
        }
        Log.v("API", "setDeviceAdministrators");
        Intent intent = new Intent();
        intent.setAction("com.boe.Device");
        intent.putExtra("pkgname", str);
        intent.putExtra("receiverName", name);
        context4.sendBroadcast(intent);
        try {
            c1245r13 = f2202c;
            context3 = f2203d;
        } catch (Throwable th2) {
            C0948f6.m1746D(th2, C0948f6.m1765j("JingdongfangImpl set home launcher error "));
        }
        if (c1245r13 == null) {
            throw null;
        }
        Log.v("API", "setHomeLauncher");
        Intent intent2 = new Intent();
        intent2.setAction("com.boe.setHomeLauncher");
        intent2.putExtra("PkgName", str);
        intent2.putExtra("ClassName", str2);
        context3.sendBroadcast(intent2);
        try {
            c1245r12 = f2202c;
            context2 = f2203d;
        } catch (Throwable th3) {
            C0948f6.m1746D(th3, C0948f6.m1765j("JingdongfangImpl set global error "));
        }
        if (c1245r12 == null) {
            throw null;
        }
        Log.v("API", "setEnableGlobalNetwork");
        Intent intent3 = new Intent("com.boe.setEnableGlobalNetwork");
        intent3.putExtra("allow", false);
        context2.sendBroadcast(intent3);
        try {
            c1245r1 = f2202c;
            context = f2203d;
        } catch (Throwable th4) {
            C0948f6.m1746D(th4, C0948f6.m1765j("JingdongfangImpl set status bar error "));
        }
        if (c1245r1 == null) {
            throw null;
        }
        Log.v("API", "setStatusBarDropDisable");
        Intent intent4 = new Intent();
        intent4.setAction("com.boe.disableDrop");
        context.sendBroadcast(intent4);
        try {
            C1245r1 c1245r15 = f2202c;
            Context context5 = f2203d;
            if (c1245r15 == null) {
                throw null;
            }
            Log.v("API", "SetUsageAccessDetails");
            Intent intent5 = new Intent();
            intent5.setAction("com.boe.setUsageAccessDetails");
            intent5.putExtra("usagePkgName", str);
            intent5.putExtra("allow_access", true);
            context5.sendBroadcast(intent5);
        } catch (Throwable th5) {
            C0948f6.m1746D(th5, C0948f6.m1765j("JingdongfangImpl set usage access error "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: Q */
    public void mo1314Q(String str) {
        try {
            C0850bc.m1403m("JingdongfangImpl  silent uninstall app");
            C1245r1 c1245r1 = f2202c;
            Context context = f2203d;
            if (c1245r1 == null) {
                throw null;
            }
            Log.v("API", "silentUninstall");
            Intent intent = new Intent();
            intent.setAction("com.boe.Silence.uninstall");
            intent.putExtra(Constants.KEY_PACKAGE_NAME, str);
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("JingdongfangImpl  silent uninstall app error "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: S */
    public void mo1315S() {
        try {
            C0850bc.m1403m("JingdongfangImpl  disable sms");
            C1245r1 c1245r1 = f2202c;
            Context context = f2203d;
            if (c1245r1 == null) {
                throw null;
            }
            Log.v("API", "silentInstall");
            Intent intent = new Intent();
            intent.setAction("com.boe.disablemms");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("JingdongfangImpl  disable sms error "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: V */
    public boolean mo1316V(List<String> list) {
        try {
            C0850bc.m1403m("JingdongfangImpl  set url white list");
            C1245r1 c1245r1 = f2202c;
            Context context = f2203d;
            ArrayList<String> arrayList = (ArrayList) list;
            if (c1245r1 == null) {
                throw null;
            }
            Log.v("API", "setNetworkWhiteList");
            Intent intent = new Intent("com.boe.add_whiteList");
            intent.putStringArrayListExtra("whiteList", arrayList);
            context.sendBroadcast(intent);
            return true;
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("JingdongfangImpl  set url white  error "));
            return true;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: Y */
    public String mo1317Y(Context context) {
        try {
            C0850bc.m1403m("JingdongfangImpl  get wifi mac address");
            C1245r1 c1245r1 = f2202c;
            Context context2 = f2203d;
            if (c1245r1 == null) {
                throw null;
            }
            Log.v("API", "MacAddress");
            String string = Settings.System.getString(context2.getContentResolver(), "getMacAddress");
            Log.d("API", "MacAddress = : " + string);
            return string;
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("JingdongfangImpl  get wifi mac address error "));
            return null;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: b0 */
    public void mo1318b0(List<String> list) {
        try {
            C0850bc.m1403m("JingdongfangImpl  show wifi advance");
            C1245r1 c1245r1 = f2202c;
            Context context = f2203d;
            if (c1245r1 == null) {
                throw null;
            }
            Log.v("API", "setWifiAdvanceEnable");
            Intent intent = new Intent();
            intent.setAction("com.boe.WifiReceiver");
            intent.putExtra("WIFI", true);
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("JingdongfangImpl  show wifi advance error "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: c */
    public void mo1319c(boolean z) {
        try {
            C0850bc.m1403m("JingdongfangImpl  enable sdcard");
            C1245r1 c1245r1 = f2202c;
            Context context = f2203d;
            if (c1245r1 == null) {
                throw null;
            }
            Log.v("API", "setSDOTGEnable");
            Intent intent = new Intent();
            intent.setAction("com.boe.disableSDandOTG");
            intent.putExtra("disabled", false);
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("JingdongfangImpl  enable sdcard error "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableBack() {
        try {
            C0850bc.m1403m("JingdongfangImpl  disable back");
            C1245r1 c1245r1 = f2202c;
            Context context = f2203d;
            if (c1245r1 == null) {
                throw null;
            }
            Log.v("API", "setBackDisable");
            Intent intent = new Intent();
            intent.setAction("com.boe.disableBack");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("JingdongfangImpl  disable back error "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableBluetooth() {
        try {
            C0850bc.m1403m("JingdongfangImpl  disable bluetooth");
            C1245r1 c1245r1 = f2202c;
            Context context = f2203d;
            if (c1245r1 == null) {
                throw null;
            }
            Log.v("API", "setBluetoothDisable");
            Intent intent = new Intent();
            intent.setAction("com.boe.closeBluetooth");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("JingdongfangImpl  disable bluetooth error "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableCamera() {
        try {
            C0850bc.m1403m("JingdongfangImpl  disable camera");
            C1245r1 c1245r1 = f2202c;
            Context context = f2203d;
            if (c1245r1 == null) {
                throw null;
            }
            Log.v("API", "setCameraDisable");
            Intent intent = new Intent();
            intent.setAction("com.boe.CameraDisable");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("JingdongfangImpl  disable camera error "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableGPS() {
        try {
            C0850bc.m1403m("JingdongfangImpl  disable sms");
            C1245r1 c1245r1 = f2202c;
            Context context = f2203d;
            if (c1245r1 == null) {
                throw null;
            }
            Log.v("API", "setGpsOff");
            Intent intent = new Intent();
            intent.setAction("com.boe.GPSOFF");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("JingdongfangImpl  disable sms error "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableHome() {
        try {
            C0850bc.m1403m("JingdongfangImpl  disable home");
            C1245r1 c1245r1 = f2202c;
            Context context = f2203d;
            if (c1245r1 == null) {
                throw null;
            }
            Log.v("API", "setHomeDisable");
            Intent intent = new Intent();
            intent.setAction("com.boe.disableHome");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("JingdongfangImpl  disable home error "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableNavigation() {
        try {
            C0850bc.m1403m("JingdongfangImpl  disable Navigation ");
            disableHome();
            disableBack();
            disableRecent();
            disableShortPressPower();
            disableVolume();
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("JingdongfangImpl  disable Navigation  error "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableRecent() {
        try {
            C0850bc.m1403m("JingdongfangImpl  disable recent");
            C1245r1 c1245r1 = f2202c;
            Context context = f2203d;
            if (c1245r1 == null) {
                throw null;
            }
            Log.v("API", "setRecentDisable");
            Intent intent = new Intent();
            intent.setAction("com.boe.disableRecent");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("JingdongfangImpl  disable recent error "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableScreenShot() {
        try {
            C0850bc.m1403m("JingdongfangImpl  disable screen short");
            C1245r1 c1245r1 = f2202c;
            Context context = f2203d;
            if (c1245r1 == null) {
                throw null;
            }
            Log.v("API", "setScreenShotDisable");
            Intent intent = new Intent();
            intent.setAction("com.boe.screenShotDisabled");
            intent.putExtra("screenShotDisabled", true);
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("JingdongfangImpl  disable screen short error "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableShortPressPower() {
        try {
            C0850bc.m1403m("JingdongfangImpl  disable short power");
            C1245r1 c1245r1 = f2202c;
            Context context = f2203d;
            if (c1245r1 == null) {
                throw null;
            }
            Log.v("API", "setPowerKeyDisable");
            Intent intent = new Intent();
            intent.setAction("com.boe.disablePowerKey");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("JingdongfangImpl  disable short power error "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableSpeech() {
        try {
            C0850bc.m1403m("JingdongfangImpl  disable phone");
            C1245r1 c1245r1 = f2202c;
            Context context = f2203d;
            if (c1245r1 == null) {
                throw null;
            }
            Log.v("API", "silentInstall");
            Intent intent = new Intent();
            intent.setAction("com.boe.disablephone");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("JingdongfangImpl  disable phone error "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableUsb() {
        try {
            C0850bc.m1403m("JingdongfangImpl  disable usb");
            C1245r1 c1245r1 = f2202c;
            Context context = f2203d;
            if (c1245r1 == null) {
                throw null;
            }
            Log.v("API", "setADBDisable");
            Intent intent = new Intent();
            intent.setAction("com.boe.closeADB");
            context.sendBroadcast(intent);
            C1245r1 c1245r12 = f2202c;
            Context context2 = f2203d;
            if (c1245r12 == null) {
                throw null;
            }
            Log.v("API", "setMTPDisable");
            Intent intent2 = new Intent();
            intent2.setAction("com.boe.closeUSB");
            context2.sendBroadcast(intent2);
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("JingdongfangImpl  disable usb error "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableVolume() {
        try {
            C0850bc.m1403m("JingdongfangImpl  disable volume");
            C1245r1 c1245r1 = f2202c;
            Context context = f2203d;
            if (c1245r1 == null) {
                throw null;
            }
            Log.v("API", "setVolAddDisable");
            Intent intent = new Intent();
            intent.setAction("com.boe.disableVolUp");
            context.sendBroadcast(intent);
            C1245r1 c1245r12 = f2202c;
            Context context2 = f2203d;
            if (c1245r12 == null) {
                throw null;
            }
            Log.v("API", "setVolSubDisable");
            Intent intent2 = new Intent();
            intent2.setAction("com.boe.disableVolDown");
            context2.sendBroadcast(intent2);
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("JingdongfangImpl  disable volume error "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: e */
    public void mo1320e(String str) {
        try {
            C0850bc.m1403m("JingdongfangImpl  disable app ");
            ArrayList<String> arrayList = new ArrayList<>();
            arrayList.add(str);
            f2202c.m2650d(f2203d, arrayList);
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("JingdongfangImpl  disable app   error "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableBack() {
        try {
            C0850bc.m1403m("JingdongfangImpl  enable back");
            C1245r1 c1245r1 = f2202c;
            Context context = f2203d;
            if (c1245r1 == null) {
                throw null;
            }
            Log.v("API", "setBackEnable");
            Intent intent = new Intent();
            intent.setAction("com.boe.enableBack");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("JingdongfangImpl  enable back error "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableBluetooth() {
        try {
            C0850bc.m1403m("JingdongfangImpl  enable bluetooth");
            C1245r1 c1245r1 = f2202c;
            Context context = f2203d;
            if (c1245r1 == null) {
                throw null;
            }
            Log.v("API", "setBluetoothEnable");
            Intent intent = new Intent();
            intent.setAction("com.boe.openBluetooth");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("JingdongfangImpl  enable bluetooth error "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableCamera() {
        try {
            C0850bc.m1403m("JingdongfangImpl  enable camera");
            C1245r1 c1245r1 = f2202c;
            Context context = f2203d;
            if (c1245r1 == null) {
                throw null;
            }
            Log.v("API", "setCameraEnable");
            Intent intent = new Intent();
            intent.setAction("com.boe.CameraAllow");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("JingdongfangImpl  enable camera error "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableGPS() {
        try {
            C0850bc.m1403m("JingdongfangImpl  enable gps");
            C1245r1 c1245r1 = f2202c;
            Context context = f2203d;
            if (c1245r1 == null) {
                throw null;
            }
            Log.v("API", "setGpsOn");
            Intent intent = new Intent();
            intent.setAction("com.boe.GPSON");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("JingdongfangImpl  enable gps error "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableHome() {
        try {
            C0850bc.m1403m("JingdongfangImpl  enable home");
            C1245r1 c1245r1 = f2202c;
            Context context = f2203d;
            if (c1245r1 == null) {
                throw null;
            }
            Log.v("API", "setHomeEnable");
            Intent intent = new Intent();
            intent.setAction("com.boe.enableHome");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("JingdongfangImpl  enable home error "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableNavigation() {
        try {
            C0850bc.m1403m("JingdongfangImpl  disable Navigation ");
            enableHome();
            enableBack();
            enableRecent();
            enableVolume();
            enableShortPressPower();
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("JingdongfangImpl  disable Navigation  error "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableRecent() {
        try {
            C0850bc.m1403m("JingdongfangImpl  enable recent");
            C1245r1 c1245r1 = f2202c;
            Context context = f2203d;
            if (c1245r1 == null) {
                throw null;
            }
            Log.v("API", "setRecentEnable");
            Intent intent = new Intent();
            intent.setAction("com.boe.enableRecent");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("JingdongfangImpl  enable recent error "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableScreenShot() {
        try {
            C0850bc.m1403m("JingdongfangImpl  enable screen short");
            C1245r1 c1245r1 = f2202c;
            Context context = f2203d;
            if (c1245r1 == null) {
                throw null;
            }
            Log.v("API", "setScreenShotEnable");
            Intent intent = new Intent();
            intent.setAction("com.boe.screenShotDisabled");
            intent.putExtra("screenShotDisabled", false);
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("JingdongfangImpl  enable screen short error "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableShortPressPower() {
        try {
            C0850bc.m1403m("JingdongfangImpl  enable short power");
            C1245r1 c1245r1 = f2202c;
            Context context = f2203d;
            if (c1245r1 == null) {
                throw null;
            }
            Log.v("API", "setPowerKeyEnable");
            Intent intent = new Intent();
            intent.setAction("com.boe.enablePowerKey");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("JingdongfangImpl  enable short power error "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableSpeech() {
        try {
            C0850bc.m1403m("JingdongfangImpl  enable phone");
            C1245r1 c1245r1 = f2202c;
            Context context = f2203d;
            if (c1245r1 == null) {
                throw null;
            }
            Log.v("API", "silentInstall");
            Intent intent = new Intent();
            intent.setAction("com.boe.enablephone");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("JingdongfangImpl  enable phone error "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableUsb() {
        try {
            C0850bc.m1403m("JingdongfangImpl  enable usb");
            C1245r1 c1245r1 = f2202c;
            Context context = f2203d;
            if (c1245r1 == null) {
                throw null;
            }
            Log.v("API", "setADBEnable");
            Intent intent = new Intent();
            intent.setAction("com.boe.openADB");
            context.sendBroadcast(intent);
            C1245r1 c1245r12 = f2202c;
            Context context2 = f2203d;
            if (c1245r12 == null) {
                throw null;
            }
            Log.v("API", "setMTPEnable");
            Intent intent2 = new Intent();
            intent2.setAction("com.boe.openUSB");
            context2.sendBroadcast(intent2);
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("JingdongfangImpl  enable usb error "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableVolume() {
        try {
            C0850bc.m1403m("JingdongfangImpl  enable volume");
            C1245r1 c1245r1 = f2202c;
            Context context = f2203d;
            if (c1245r1 == null) {
                throw null;
            }
            Log.v("API", "setVolAddEnable");
            Intent intent = new Intent();
            intent.setAction("com.boe.enableVolUp");
            context.sendBroadcast(intent);
            C1245r1 c1245r12 = f2202c;
            Context context2 = f2203d;
            if (c1245r12 == null) {
                throw null;
            }
            Log.v("API", "setVolSubEnable");
            Intent intent2 = new Intent();
            intent2.setAction("com.boe.enableVolDown");
            context2.sendBroadcast(intent2);
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("JingdongfangImpl  enable volume error "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: g */
    public void mo1321g() {
        try {
            C0850bc.m1403m("JingdongfangImpl  device reboot");
            C1245r1 c1245r1 = f2202c;
            Context context = f2203d;
            if (c1245r1 == null) {
                throw null;
            }
            Log.v("API", "setDeviceReboot");
            Intent intent = new Intent();
            intent.setAction("com.boe.reboot");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("JingdongfangImpl  device reboot error "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: g0 */
    public void mo1322g0() {
        try {
            C0850bc.m1403m("JingdongfangImpl  enable sms");
            C1245r1 c1245r1 = f2202c;
            Context context = f2203d;
            if (c1245r1 == null) {
                throw null;
            }
            Log.v("API", "silentInstall");
            Intent intent = new Intent();
            intent.setAction("com.boe.enablemms");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("JingdongfangImpl  enable sms error "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: h */
    public void mo1323h() {
        try {
            C0850bc.m1403m("JingdongfangImpl  -- cleanNetworkAccessAppWhiteList");
            C1245r1 c1245r1 = f2202c;
            Context context = f2203d;
            if (c1245r1 == null) {
                throw null;
            }
            Log.v("API", "clearUidAppList");
            context.sendBroadcast(new Intent("com.boe.clearUidAppList"));
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("JingdongfangImpl  -- cleanNetworkAccessAppWhiteList error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: h0 */
    public void mo1324h0() {
        try {
            C0850bc.m1403m("JingdongfangImpl  shut down");
            C1245r1 c1245r1 = f2202c;
            Context context = f2203d;
            if (c1245r1 == null) {
                throw null;
            }
            Log.v("API", "setDeviceShutDown");
            Intent intent = new Intent();
            intent.setAction("com.boe.shutdown");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("JingdongfangImpl  shut down error "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: i */
    public void mo1325i() {
        try {
            C0850bc.m1403m("JingdongfangImpl  enable Navigation Bar");
            C1245r1 c1245r1 = f2202c;
            Context context = f2203d;
            if (c1245r1 == null) {
                throw null;
            }
            Log.v("API", "setHomeVisible");
            Intent intent = new Intent();
            intent.setAction("com.boe.showHome");
            context.sendBroadcast(intent);
            C1245r1 c1245r12 = f2202c;
            Context context2 = f2203d;
            if (c1245r12 == null) {
                throw null;
            }
            Log.v("API", "setBackVisible");
            Intent intent2 = new Intent();
            intent2.setAction("com.boe.showBack");
            context2.sendBroadcast(intent2);
            C1245r1 c1245r13 = f2202c;
            Context context3 = f2203d;
            if (c1245r13 == null) {
                throw null;
            }
            Log.v("API", "setRecentVisible");
            Intent intent3 = new Intent();
            intent3.setAction("com.boe.showRecent");
            context3.sendBroadcast(intent3);
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("JingdongfangImpl  enable Navigation Bar error "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: k0 */
    public void mo1326k0(List<String> list) {
        if (AbstractC1102l9.m2273N(list)) {
            return;
        }
        try {
            f2202c.m2650d(f2203d, (ArrayList) list);
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("JingdongfangImpl  disable apps   error "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: r */
    public void mo1327r(List<String> list) {
        try {
            C0850bc.m1403m("JingdongfangImpl  hide wifi advance");
            C1245r1 c1245r1 = f2202c;
            Context context = f2203d;
            if (c1245r1 == null) {
                throw null;
            }
            Log.v("API", "setWifiAdvanceDisable");
            Intent intent = new Intent();
            intent.setAction("com.boe.WifiReceiver");
            intent.putExtra("WIFI", false);
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("JingdongfangImpl  hide wifi advance error "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: s */
    public boolean mo1328s(List<String> list) {
        try {
            C0850bc.m1403m("JingdongfangImpl  set app white list");
            C1245r1 c1245r1 = f2202c;
            Context context = f2203d;
            ArrayList arrayList = (ArrayList) list;
            if (c1245r1 == null) {
                throw null;
            }
            Log.v("API", "AddAppInstallWhiteList");
            Intent intent = new Intent();
            intent.setAction("com.boe.whitelist_app.update");
            intent.putExtra(AgooConstants.MESSAGE_FLAG, 0);
            intent.putExtra(Constants.KEY_PACKAGE_NAME, arrayList);
            context.sendBroadcast(intent);
            return true;
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("JingdongfangImpl  set app white list error "));
            return true;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: t */
    public void mo1329t(boolean z) {
        try {
            C0850bc.m1403m("JingdongfangImpl  reset factory");
            C1245r1 c1245r1 = f2202c;
            Context context = f2203d;
            if (c1245r1 == null) {
                throw null;
            }
            Log.v("API", "setFactoryReset");
            context.sendBroadcast(new Intent("com.boe.setFactoryReset"));
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("JingdongfangImpl  reset factory  error "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: t0 */
    public List<String> mo1330t0() {
        try {
            C0850bc.m1403m("JingdongfangImpl  get url white list");
            return f2202c.m2648b(f2203d);
        } catch (Throwable th) {
            StringBuilder sbM1765j = C0948f6.m1765j("JingdongfangImpl  get url white  error ");
            sbM1765j.append(th.getMessage());
            C0850bc.m1403m(sbM1765j.toString());
            return new ArrayList();
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: y0 */
    public void mo1331y0(String str) {
        try {
            C0850bc.m1403m("JingdongfangImpl  set url white list");
            ArrayList<String> arrayList = new ArrayList<>();
            arrayList.add(str);
            f2202c.m2651e(f2203d, arrayList);
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("JingdongfangImpl  set url white  error "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: z0 */
    public void mo1332z0(boolean z) {
        try {
            C0850bc.m1403m("JingdongfangImpl  disable sdcard");
            C1245r1 c1245r1 = f2202c;
            Context context = f2203d;
            if (c1245r1 == null) {
                throw null;
            }
            Log.v("API", "setSDOTGDisable");
            Intent intent = new Intent();
            intent.setAction("com.boe.disableSDandOTG");
            intent.putExtra("disabled", true);
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("JingdongfangImpl  disable sdcard error "));
        }
    }
}
