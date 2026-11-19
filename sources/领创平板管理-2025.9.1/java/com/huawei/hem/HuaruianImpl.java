package com.huawei.hem;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Log;
import com.taobao.accs.common.Constants;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import org.android.agoo.common.AgooConstants;

/* compiled from: HuaruianImpl.java */
/* renamed from: com.huawei.hem.xc */
/* loaded from: classes.dex */
public class HuaruianImpl extends AndroidImpl {

    /* renamed from: b */
    public static HuaruianImpl f4071b = new HuaruianImpl();

    /* renamed from: c */
    public static Context f4072c;

    /* renamed from: d */
    public static ComponentName f4073d;

    /* renamed from: e */
    public static HRA_API f4074e;

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: B0 */
    public void mo1304B0(List<String> list) {
        try {
            if (AbstractC1102l9.m2273N(list)) {
                return;
            }
            LTKDateUtil.m1403m("HuaruianImpl  -- actionEnableApp");
            ArrayList<String> arrayList = new ArrayList<>();
            arrayList.addAll(list);
            f4074e.m1294f(f4072c, arrayList);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HuaruianImpl  -- actionEnableApp error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: F */
    public void mo1306F(String str) {
        try {
            LTKDateUtil.m1403m("HuaruianImpl  -- actionSilentInstall");
            HRA_API c0812a0 = f4074e;
            Context context = f4072c;
            if (c0812a0 == null) {
                throw null;
            }
            Log.v("HRA_API", "silentInstall");
            Intent intent = new Intent();
            intent.setAction("com.hra.Silence.install");
            intent.putExtra("filePath", str);
            intent.putExtra("open", false);
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HuaruianImpl  -- actionSilentInstall error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: G */
    public String mo1337G() {
        try {
            LTKDateUtil.m1403m("HuaruianImpl  -- getDeviceSN");
            HRA_API c0812a0 = f4074e;
            Context context = f4072c;
            if (c0812a0 == null) {
                throw null;
            }
            Log.v("HRA_API", "SNNumber");
            return Settings.System.getString(context.getContentResolver(), "getSNNumber");
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HuaruianImpl  -- getDeviceSN error : "));
            return null;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: G0 */
    public List<String> mo1307G0() {
        try {
            LTKDateUtil.m1403m("HuaruianImpl  -- getNetworkAccessAppWhiteList");
            return f4074e.m1291c(f4072c);
        } catch (Throwable th) {
            return CompilerOutline.m1773r(th, CompilerOutline.m1765j("HuaruianImpl  -- getNetworkAccessAppWhiteList error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: I0 */
    public void mo1308I0(List<String> list) {
        try {
            LTKDateUtil.m1403m("HuaruianImpl  -- setNetworkAccessAppWhiteList");
            HRA_API c0812a0 = f4074e;
            Context context = f4072c;
            ArrayList<String> arrayList = (ArrayList) list;
            if (c0812a0 == null) {
                throw null;
            }
            Log.v("HRA_API", "setUidToAppList");
            Intent intent = new Intent("com.hra.addUidAppList");
            intent.putStringArrayListExtra("appPkgName", arrayList);
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HuaruianImpl  -- setNetworkAccessAppWhiteList error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: J */
    public void mo1309J(String str) {
        try {
            LTKDateUtil.m1403m("HuaruianImpl  -- actionKillApp" + str);
            HRA_API c0812a0 = f4074e;
            Context context = f4072c;
            if (c0812a0 == null) {
                throw null;
            }
            Log.v("HRA_API", "forceStopApp");
            Intent intent = new Intent("com.hra.forceStopPackage");
            intent.putExtra("stop_pkg", str);
            context.sendBroadcast(intent);
        } catch (Exception e) {
            CompilerOutline.m1776u(e, CompilerOutline.m1765j("HuaruianImpl  -- actionKillApp error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: L */
    public String mo1310L(String str) {
        try {
            LTKDateUtil.m1403m("HuaruianImpl  -- actionScreenShot");
            if (TextUtils.isEmpty(str)) {
                str = "/mnt/sdcard/Screenshots/";
            }
            String str2 = "Screenshot_" + LTKDateUtil.m1400j() + ".png";
            File file = new File(str);
            if (!file.exists()) {
                file.mkdirs();
            }
            String str3 = str + str2;
            HRA_API c0812a0 = f4074e;
            Context context = f4072c;
            if (c0812a0 == null) {
                throw null;
            }
            Log.v("HRA_API", "setSettingOptionVisible");
            Intent intent = new Intent();
            intent.setAction("com.hra.screenshot");
            intent.putExtra("ScreenshotPath", str3);
            context.sendBroadcast(intent);
            return str3;
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HuaruianImpl  -- actionScreenShot error : "));
            return "";
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: M0 */
    public List<String> mo1311M0() {
        try {
            LTKDateUtil.m1403m("HuaruianImpl  -- getAppWhiteList");
            return f4074e.m1289a(f4072c);
        } catch (Throwable th) {
            return CompilerOutline.m1773r(th, CompilerOutline.m1771p(th, "HuaruianImpl  -- getAppWhiteList error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: N */
    public boolean mo1312N(long j) {
        try {
            LTKDateUtil.m1403m("HuaruianImpl  -- setSystemTime");
            HRA_API c0812a0 = f4074e;
            Context context = f4072c;
            if (c0812a0 == null) {
                throw null;
            }
            Log.v("HRA_API", "setDeviceDate");
            Intent intent = new Intent();
            intent.setAction("com.hra.DateReceiver");
            intent.putExtra("TIME", j);
            context.sendBroadcast(intent);
            return true;
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HuaruianImpl  -- setSystemTime error : "));
            return true;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: O */
    public void mo1313O(String str, String str2) {
        HRA_API c0812a0;
        Context context;
        HRA_API c0812a02;
        Context context2;
        HRA_API c0812a03;
        Context context3;
        HRA_API c0812a04;
        Context context4;
        HRA_API c0812a05;
        Context context5;
        HRA_API c0812a06;
        Context context6;
        HRA_API c0812a07;
        Context context7;
        String className;
        LTKDateUtil.m1403m("HuaruianImpl  -- systemInit");
        try {
            LTKDateUtil.m1403m("HuaruianImpl  -- actionActiveDeviceAdmin");
            c0812a07 = f4074e;
            context7 = f4072c;
            className = f4073d.getClassName();
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HuaruianImpl  -- actionActiveDeviceAdmin error : "));
        }
        if (c0812a07 == null) {
            throw null;
        }
        Log.v("HRA_API", "setDeviceAdministrators");
        Intent intent = new Intent();
        intent.setAction("com.hra.Device");
        intent.putExtra("pkgname", str);
        intent.putExtra("receiverName", className);
        context7.sendBroadcast(intent);
        try {
            LTKDateUtil.m1403m("HuaruianImpl  -- hideScreenShotKey");
            c0812a06 = f4074e;
            context6 = f4072c;
        } catch (Throwable th2) {
            CompilerOutline.m1744B(th2, CompilerOutline.m1771p(th2, "HuaruianImpl  -- hideScreenShotKey error : "));
        }
        if (c0812a06 == null) {
            throw null;
        }
        Log.v("HRA_API", "setScreenShotGone");
        Intent intent2 = new Intent();
        intent2.setAction("com.hra.hideScreenShot");
        context6.sendBroadcast(intent2);
        try {
            c0812a05 = f4074e;
            context5 = f4072c;
        } catch (Throwable th3) {
            CompilerOutline.m1746D(th3, CompilerOutline.m1765j("HuaruianImpl set home launcher error:"));
        }
        if (c0812a05 == null) {
            throw null;
        }
        Log.v("HRA_API", "setHomeLauncher");
        Intent intent3 = new Intent();
        intent3.setAction("com.hra.setHomeLauncher");
        intent3.putExtra("PkgName", str);
        intent3.putExtra("ClassName", str2);
        context5.sendBroadcast(intent3);
        try {
            c0812a04 = f4074e;
            context4 = f4072c;
        } catch (Throwable th4) {
            CompilerOutline.m1746D(th4, CompilerOutline.m1765j("HuaruianImpl set vol sub error:"));
        }
        if (c0812a04 == null) {
            throw null;
        }
        Log.v("HRA_API", "setVolAddGone");
        Intent intent4 = new Intent();
        intent4.setAction("com.hra.hideVolAdd");
        context4.sendBroadcast(intent4);
        HRA_API c0812a08 = f4074e;
        Context context8 = f4072c;
        if (c0812a08 == null) {
            throw null;
        }
        Log.v("HRA_API", "setVolSubGone");
        Intent intent5 = new Intent();
        intent5.setAction("com.hra.hideVolSub");
        context8.sendBroadcast(intent5);
        try {
            c0812a03 = f4074e;
            context3 = f4072c;
        } catch (Throwable th5) {
            CompilerOutline.m1746D(th5, CompilerOutline.m1765j("HuaruianImpl set vol sub error:"));
        }
        if (c0812a03 == null) {
            throw null;
        }
        Log.v("HRA_API", "setEnableGlobalNetwork");
        Intent intent6 = new Intent("com.hra.setEnableGlobalNetwork");
        intent6.putExtra("allow", false);
        context3.sendBroadcast(intent6);
        try {
            c0812a02 = f4074e;
            context2 = f4072c;
        } catch (Throwable th6) {
            CompilerOutline.m1746D(th6, CompilerOutline.m1765j("HuaruianImpl status bar error:"));
        }
        if (c0812a02 == null) {
            throw null;
        }
        Log.v("HRA_API", "setStatusBarDropDisable");
        Intent intent7 = new Intent();
        intent7.setAction("com.hra.disableDrop");
        context2.sendBroadcast(intent7);
        try {
            c0812a0 = f4074e;
            context = f4072c;
        } catch (Throwable th7) {
            CompilerOutline.m1746D(th7, CompilerOutline.m1765j("HuaruianImpl notification error:"));
        }
        if (c0812a0 == null) {
            throw null;
        }
        Log.v("HRA_API", "setNotificationDisable");
        Intent intent8 = new Intent();
        intent8.setAction("com.hra.notifyDisable");
        context.sendBroadcast(intent8);
        LTKDateUtil.m1403m("HuaruianImpl  -- systemInit end ");
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: Q */
    public void mo1314Q(String str) {
        try {
            LTKDateUtil.m1403m("HuaruianImpl  -- actionSilentUnInstall");
            HRA_API c0812a0 = f4074e;
            Context context = f4072c;
            if (c0812a0 == null) {
                throw null;
            }
            Log.v("HRA_API", "silentUninstall");
            Intent intent = new Intent();
            intent.setAction("com.hra.Silence.uninstall");
            intent.putExtra(Constants.KEY_PACKAGE_NAME, str);
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HuaruianImpl  -- actionSilentUnInstall error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: S */
    public void mo1315S() {
        try {
            LTKDateUtil.m1403m("HuaruianImpl  -- disableSMS");
            HRA_API c0812a0 = f4074e;
            Context context = f4072c;
            if (c0812a0 == null) {
                throw null;
            }
            Log.v("HRA_API", "silentInstall");
            Intent intent = new Intent();
            intent.setAction("com.hra.disablemms");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HuaruianImpl  -- disableSMS error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: V */
    public boolean mo1316V(List<String> list) {
        try {
            LTKDateUtil.m1403m("HuaruianImpl  -- setUrlWhiteList");
            HRA_API c0812a0 = f4074e;
            Context context = f4072c;
            ArrayList<String> arrayList = (ArrayList) list;
            if (c0812a0 == null) {
                throw null;
            }
            Log.v("HRA_API", "setNetworkWhiteList");
            Intent intent = new Intent("com.hra.add_whiteList");
            intent.putStringArrayListExtra("whiteList", arrayList);
            context.sendBroadcast(intent);
            return false;
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HuaruianImpl  -- setUrlWhiteList : "));
            return false;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: Y */
    public String mo1317Y(Context context) {
        try {
            LTKDateUtil.m1403m("HuaruianImpl  -- getWifiMacAddress");
            return f4074e.m1292d();
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HuaruianImpl  -- getWifiMacAddress error : "));
            return "";
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: b0 */
    public void mo1318b0(List<String> list) {
        try {
            LTKDateUtil.m1403m("HuaruianImpl  -- showWifiAdvanced");
            HRA_API c0812a0 = f4074e;
            Context context = f4072c;
            if (c0812a0 == null) {
                throw null;
            }
            Log.v("HRA_API", "setWifiAdvanceEnable");
            Intent intent = new Intent();
            intent.setAction("com.hra.WifiReceiver");
            intent.putExtra("WIFI", true);
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HuaruianImpl  -- showWifiAdvanced error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: c */
    public void mo1319c(boolean z) {
        try {
            LTKDateUtil.m1403m("HuaruianImpl  -- enableSdCard");
            HRA_API c0812a0 = f4074e;
            Context context = f4072c;
            if (c0812a0 == null) {
                throw null;
            }
            Log.v("HRA_API", "mountSDAndOTG");
            context.sendBroadcast(new Intent("com.hra.mountSD"));
            HRA_API c0812a02 = f4074e;
            Context context2 = f4072c;
            if (c0812a02 == null) {
                throw null;
            }
            Log.v("HRA_API", "setSDOTGEnable");
            Intent intent = new Intent();
            intent.setAction("com.hra.disableSDandOTG");
            intent.putExtra("disabled", false);
            context2.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HuaruianImpl  -- enableSdCard error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableBack() {
        try {
            LTKDateUtil.m1403m("HuaruianImpl  -- disableBack ");
            HRA_API c0812a0 = f4074e;
            Context context = f4072c;
            if (c0812a0 == null) {
                throw null;
            }
            Log.v("HRA_API", "setBackDisable");
            Intent intent = new Intent();
            intent.setAction("com.hra.disableBack");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HuaruianImpl  -- disableBack error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableBluetooth() {
        try {
            LTKDateUtil.m1403m("HuaruianImpl  -- disableBluetooth");
            HRA_API c0812a0 = f4074e;
            Context context = f4072c;
            if (c0812a0 == null) {
                throw null;
            }
            Log.v("HRA_API", "setBluetoothDisable");
            Intent intent = new Intent();
            intent.setAction("com.hra.closeBluetooth");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HuaruianImpl  -- disableBluetooth error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableCamera() {
        try {
            LTKDateUtil.m1403m("HuaruianImpl  -- disableCamera");
            HRA_API c0812a0 = f4074e;
            Context context = f4072c;
            if (c0812a0 == null) {
                throw null;
            }
            Log.v("HRA_API", "setCameraDisable");
            Intent intent = new Intent();
            intent.setAction("com.hra.CameraDisable");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HuaruianImpl  -- disableCamera error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableFireWall() {
        HRA_API c0812a0;
        Context context;
        LTKDateUtil.m1403m("HuaruianImpl disableFireWall");
        try {
            LTKDateUtil.m1403m("HuaruianImpl  -- clearNetworkWhiteList");
            c0812a0 = f4074e;
            context = f4072c;
        } catch (Exception e) {
            e.printStackTrace();
            StringBuilder sb = new StringBuilder();
            sb.append("HuaruianImpl  -- clearNetworkWhiteList error : ");
            CompilerOutline.m1776u(e, sb);
        }
        if (c0812a0 == null) {
            throw null;
        }
        Log.v("HRA_API", "clearNetworkWhiteList");
        context.sendBroadcast(new Intent("com.hra.clear_whiteList"));
        try {
            LTKDateUtil.m1403m("HuaruianImpl  -- setEnableGlobalNetwork");
            HRA_API c0812a02 = f4074e;
            Context context2 = f4072c;
            if (c0812a02 == null) {
                throw null;
            }
            Log.v("HRA_API", "setEnableGlobalNetwork");
            Intent intent = new Intent("com.hra.setEnableGlobalNetwork");
            intent.putExtra("allow", true);
            context2.sendBroadcast(intent);
        } catch (Exception e2) {
            e2.printStackTrace();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("HuaruianImpl  -- setEnableGlobalNetwork error : ");
            CompilerOutline.m1776u(e2, sb2);
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableGPS() {
        HRA_API c0812a0;
        Context context;
        try {
            LTKDateUtil.m1403m("HuaruianImpl  -- setGpsOff");
            c0812a0 = f4074e;
            context = f4072c;
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HuaruianImpl  -- setGpsOff error : "));
        }
        if (c0812a0 == null) {
            throw null;
        }
        Log.v("HRA_API", "setGpsOff");
        Intent intent = new Intent();
        intent.setAction("com.hra.GPSOFF");
        context.sendBroadcast(intent);
        try {
            LTKDateUtil.m1403m("HuaruianImpl  -- disableGPS");
            HRA_API c0812a02 = f4074e;
            Context context2 = f4072c;
            if (c0812a02 == null) {
                throw null;
            }
            Log.v("HRA_API", "disableGPS");
            Intent intent2 = new Intent();
            intent2.setAction("com.hra.disableGPS");
            context2.sendBroadcast(intent2);
        } catch (Throwable th2) {
            CompilerOutline.m1744B(th2, CompilerOutline.m1771p(th2, "HuaruianImpl  -- disableGPS error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableHome() {
        try {
            LTKDateUtil.m1403m("HuaruianImpl  -- disableHome");
            HRA_API c0812a0 = f4074e;
            Context context = f4072c;
            if (c0812a0 == null) {
                throw null;
            }
            Log.v("HRA_API", "setHomeDisable");
            Intent intent = new Intent();
            intent.setAction("com.hra.disableHome");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HuaruianImpl  -- disableHome error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableMobileData() {
        try {
            LTKDateUtil.m1403m("HuaruianImpl  -- disableMobileData");
            HRA_API c0812a0 = f4074e;
            Context context = f4072c;
            if (c0812a0 == null) {
                throw null;
            }
            Log.v("HRA_API", "com.hra.disabledataconnect");
            context.sendBroadcast(new Intent("com.hra.disabledataconnect"));
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HuaruianImpl  -- disableMobileData error : "));
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
    public void disableRecent() {
        try {
            LTKDateUtil.m1403m("HuaruianImpl  -- disableRecent");
            HRA_API c0812a0 = f4074e;
            Context context = f4072c;
            if (c0812a0 == null) {
                throw null;
            }
            Log.v("HRA_API", "setRecentDisable");
            Intent intent = new Intent();
            intent.setAction("com.hra.disableRecent");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HuaruianImpl  -- disableRecent error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableScreenShot() {
        try {
            LTKDateUtil.m1403m("HuaruianImpl  -- disableScreenShot");
            HRA_API c0812a0 = f4074e;
            Context context = f4072c;
            if (c0812a0 == null) {
                throw null;
            }
            Log.v("HRA_API", "setScreenShotDisable");
            Intent intent = new Intent();
            intent.setAction("com.hra.disableScreenShot");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HuaruianImpl  -- disableScreenShot error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableShortPressPower() {
        try {
            LTKDateUtil.m1403m("HuaruianImpl  -- disableShortPressPower");
            HRA_API c0812a0 = f4074e;
            Context context = f4072c;
            if (c0812a0 == null) {
                throw null;
            }
            Log.v("HRA_API", "setPowerKeyDisable");
            Intent intent = new Intent();
            intent.setAction("com.hra.disablePowerKey");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HuaruianImpl  -- disableShortPressPower error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableSpeech() {
        try {
            LTKDateUtil.m1403m("HuaruianImpl  -- disableSpeech");
            HRA_API c0812a0 = f4074e;
            Context context = f4072c;
            if (c0812a0 == null) {
                throw null;
            }
            Log.v("HRA_API", "silentInstall");
            Intent intent = new Intent();
            intent.setAction("com.hra.disablephone");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HuaruianImpl  -- disableSpeech error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableUsb() {
        try {
            LTKDateUtil.m1403m("HuaruianImpl  -- disableUsb");
            HRA_API c0812a0 = f4074e;
            Context context = f4072c;
            if (c0812a0 == null) {
                throw null;
            }
            Log.v("HRA_API", "setADBDisable");
            Intent intent = new Intent();
            intent.setAction("com.hra.closeADB");
            context.sendBroadcast(intent);
            HRA_API c0812a02 = f4074e;
            Context context2 = f4072c;
            if (c0812a02 == null) {
                throw null;
            }
            Log.v("HRA_API", "setMTPDisable");
            Intent intent2 = new Intent();
            intent2.setAction("com.hra.closeUSB");
            context2.sendBroadcast(intent2);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HuaruianImpl  -- disableUsb error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableVolume() {
        try {
            LTKDateUtil.m1403m("HuaruianImpl  -- disableVolume");
            HRA_API c0812a0 = f4074e;
            Context context = f4072c;
            if (c0812a0 == null) {
                throw null;
            }
            Log.v("HRA_API", "setVolAddDisable");
            Intent intent = new Intent();
            intent.setAction("com.hra.disableVolUp");
            context.sendBroadcast(intent);
            HRA_API c0812a02 = f4074e;
            Context context2 = f4072c;
            if (c0812a02 == null) {
                throw null;
            }
            Log.v("HRA_API", "setVolSubDisable");
            Intent intent2 = new Intent();
            intent2.setAction("com.hra.disableVolDown");
            context2.sendBroadcast(intent2);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HuaruianImpl  -- disableVolume error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: e */
    public void mo1320e(String str) {
        try {
            LTKDateUtil.m1403m("HuaruianImpl  -- actionDisableApp");
            ArrayList<String> arrayList = new ArrayList<>();
            arrayList.add(str);
            f4074e.m1293e(f4072c, arrayList);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HuaruianImpl  -- actionDisableApp error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableBack() {
        try {
            LTKDateUtil.m1403m("HuaruianImpl  -- enableBack");
            HRA_API c0812a0 = f4074e;
            Context context = f4072c;
            if (c0812a0 == null) {
                throw null;
            }
            Log.v("HRA_API", "setBackEnable");
            Intent intent = new Intent();
            intent.setAction("com.hra.enableBack");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HuaruianImpl  -- enableBack error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableBluetooth() {
        try {
            LTKDateUtil.m1403m("HuaruianImpl  -- enableBluetooth");
            HRA_API c0812a0 = f4074e;
            Context context = f4072c;
            if (c0812a0 == null) {
                throw null;
            }
            Log.v("HRA_API", "setBluetoothEnable");
            Intent intent = new Intent();
            intent.setAction("com.hra.openBluetooth");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HuaruianImpl  -- enableBluetooth error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableCamera() {
        try {
            LTKDateUtil.m1403m("HuaruianImpl  -- enableCamera");
            HRA_API c0812a0 = f4074e;
            Context context = f4072c;
            if (c0812a0 == null) {
                throw null;
            }
            Log.v("HRA_API", "setCameraEnable");
            Intent intent = new Intent();
            intent.setAction("com.hra.CameraAllow");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HuaruianImpl  -- enableCamera error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableFireWall() {
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableGPS() {
        HRA_API c0812a0;
        Context context;
        try {
            LTKDateUtil.m1403m("HuaruianImpl  -- setGpsOn");
            c0812a0 = f4074e;
            context = f4072c;
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HuaruianImpl  -- setGpsOn error : "));
        }
        if (c0812a0 == null) {
            throw null;
        }
        Log.v("HRA_API", "setGpsOn");
        Intent intent = new Intent();
        intent.setAction("com.hra.GPSON");
        context.sendBroadcast(intent);
        try {
            LTKDateUtil.m1403m("HuaruianImpl  -- enableGPS");
            HRA_API c0812a02 = f4074e;
            Context context2 = f4072c;
            if (c0812a02 == null) {
                throw null;
            }
            Log.v("HRA_API", "enableGPS");
            Intent intent2 = new Intent();
            intent2.setAction("com.hra.enableGPS");
            context2.sendBroadcast(intent2);
        } catch (Throwable th2) {
            CompilerOutline.m1744B(th2, CompilerOutline.m1771p(th2, "HuaruianImpl  -- enableGPS error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableHome() {
        try {
            LTKDateUtil.m1403m("HuaruianImpl  -- enableHome");
            HRA_API c0812a0 = f4074e;
            Context context = f4072c;
            if (c0812a0 == null) {
                throw null;
            }
            Log.v("HRA_API", "setHomeEnable");
            Intent intent = new Intent();
            intent.setAction("com.hra.enableHome");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HuaruianImpl  -- enableHome error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableMobileData() {
        try {
            LTKDateUtil.m1403m("HuaruianImpl  -- enableMobileData");
            HRA_API c0812a0 = f4074e;
            Context context = f4072c;
            if (c0812a0 == null) {
                throw null;
            }
            Log.v("HRA_API", "com.hra.enabledataconnect");
            context.sendBroadcast(new Intent("com.hra.enabledataconnect"));
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HuaruianImpl  -- enableMobileData error : "));
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
        try {
            LTKDateUtil.m1403m("HuaruianImpl  -- enableRecent");
            HRA_API c0812a0 = f4074e;
            Context context = f4072c;
            if (c0812a0 == null) {
                throw null;
            }
            Log.v("HRA_API", "setRecentEnable");
            Intent intent = new Intent();
            intent.setAction("com.hra.enableRecent");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HuaruianImpl  -- enableRecent error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableScreenShot() {
        try {
            LTKDateUtil.m1403m("HuaruianImpl  -- enableScreenShot");
            HRA_API c0812a0 = f4074e;
            Context context = f4072c;
            if (c0812a0 == null) {
                throw null;
            }
            Log.v("HRA_API", "setScreenShotEnable");
            Intent intent = new Intent();
            intent.setAction("com.hra.enableScreenShot");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HuaruianImpl  -- enableScreenShot error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableShortPressPower() {
        try {
            LTKDateUtil.m1403m("HuaruianImpl  -- enableShortPressPower");
            HRA_API c0812a0 = f4074e;
            Context context = f4072c;
            if (c0812a0 == null) {
                throw null;
            }
            Log.v("HRA_API", "setPowerKeyEnable");
            Intent intent = new Intent();
            intent.setAction("com.hra.enablePowerKey");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HuaruianImpl  -- enableShortPressPower error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableSpeech() {
        try {
            LTKDateUtil.m1403m("HuaruianImpl  -- enableSpeech");
            HRA_API c0812a0 = f4074e;
            Context context = f4072c;
            if (c0812a0 == null) {
                throw null;
            }
            Log.v("HRA_API", "silentInstall");
            Intent intent = new Intent();
            intent.setAction("com.hra.enablephone");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HuaruianImpl  -- enableSpeech error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableUsb() {
        try {
            LTKDateUtil.m1403m("HuaruianImpl  -- enableUsb");
            HRA_API c0812a0 = f4074e;
            Context context = f4072c;
            if (c0812a0 == null) {
                throw null;
            }
            Log.v("HRA_API", "setADBEnable");
            Intent intent = new Intent();
            intent.setAction("com.hra.openADB");
            context.sendBroadcast(intent);
            HRA_API c0812a02 = f4074e;
            Context context2 = f4072c;
            if (c0812a02 == null) {
                throw null;
            }
            Log.v("HRA_API", "setMTPEnable");
            Intent intent2 = new Intent();
            intent2.setAction("com.hra.openUSB");
            context2.sendBroadcast(intent2);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HuaruianImpl  -- enableUsb error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableVolume() {
        try {
            LTKDateUtil.m1403m("HuaruianImpl  -- enableVolume");
            HRA_API c0812a0 = f4074e;
            Context context = f4072c;
            if (c0812a0 == null) {
                throw null;
            }
            Log.v("HRA_API", "setVolAddEnable");
            Intent intent = new Intent();
            intent.setAction("com.hra.enableVolUp");
            context.sendBroadcast(intent);
            HRA_API c0812a02 = f4074e;
            Context context2 = f4072c;
            if (c0812a02 == null) {
                throw null;
            }
            Log.v("HRA_API", "setVolSubEnable");
            Intent intent2 = new Intent();
            intent2.setAction("com.hra.enableVolDown");
            context2.sendBroadcast(intent2);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HuaruianImpl  -- enableVolume error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: g */
    public void mo1321g() {
        try {
            LTKDateUtil.m1403m("HuaruianImpl  -- actionRebootDevice");
            HRA_API c0812a0 = f4074e;
            Context context = f4072c;
            if (c0812a0 == null) {
                throw null;
            }
            Log.v("HRA_API", "setDeviceReboot");
            Intent intent = new Intent();
            intent.setAction("com.hra.reboot");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HuaruianImpl  -- actionRebootDevice error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: g0 */
    public void mo1322g0() {
        try {
            LTKDateUtil.m1403m("HuaruianImpl  -- enableSMS");
            HRA_API c0812a0 = f4074e;
            Context context = f4072c;
            if (c0812a0 == null) {
                throw null;
            }
            Log.v("HRA_API", "silentInstall");
            Intent intent = new Intent();
            intent.setAction("com.hra.enablemms");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HuaruianImpl  -- enableSMS error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: h */
    public void mo1323h() {
        try {
            LTKDateUtil.m1403m("HuaruianImpl  -- cleanNetworkAccessAppWhiteList");
            HRA_API c0812a0 = f4074e;
            Context context = f4072c;
            if (c0812a0 == null) {
                throw null;
            }
            Log.v("HRA_API", "clearUidAppList");
            context.sendBroadcast(new Intent("com.hra.clearUidAppList"));
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("HuaruianImpl  -- cleanNetworkAccessAppWhiteList error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: h0 */
    public void mo1324h0() {
        try {
            LTKDateUtil.m1403m("HuaruianImpl  -- actionShutdown");
            HRA_API c0812a0 = f4074e;
            Context context = f4072c;
            if (c0812a0 == null) {
                throw null;
            }
            Log.v("HRA_API", "setDeviceShutDown");
            Intent intent = new Intent();
            intent.setAction("com.hra.shutdown");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HuaruianImpl  -- actionShutdown error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: k0 */
    public void mo1326k0(List<String> list) {
        try {
            if (AbstractC1102l9.m2273N(list)) {
                return;
            }
            LTKDateUtil.m1403m("HuaruianImpl disable apps:" + list.toString());
            ArrayList<String> arrayList = new ArrayList<>();
            arrayList.addAll(list);
            f4074e.m1293e(f4072c, arrayList);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HuaruianImpl  -- actionDisableApp error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: r */
    public void mo1327r(List<String> list) {
        try {
            LTKDateUtil.m1403m("HuaruianImpl  -- hideWifiAdvanced");
            HRA_API c0812a0 = f4074e;
            Context context = f4072c;
            if (c0812a0 == null) {
                throw null;
            }
            Log.v("HRA_API", "setWifiAdvanceDisable");
            Intent intent = new Intent();
            intent.setAction("com.hra.WifiReceiver");
            intent.putExtra("WIFI", false);
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HuaruianImpl  -- hideWifiAdvanced error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: s */
    public boolean mo1328s(List<String> list) {
        HRA_API c0812a0;
        Context context;
        try {
            LTKDateUtil.m1403m("HuaruianImpl  -- setAppWhiteList");
            c0812a0 = f4074e;
            context = f4072c;
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HuaruianImpl  -- setAppWhiteList error : "));
        }
        if (c0812a0 == null) {
            throw null;
        }
        Log.v("HRA_API", "ClearAppInstallWhiteList");
        Intent intent = new Intent();
        intent.setAction("com.hra.whitelist_app.clear");
        context.sendBroadcast(intent);
        HRA_API c0812a02 = f4074e;
        Context context2 = f4072c;
        ArrayList arrayList = (ArrayList) list;
        if (c0812a02 == null) {
            throw null;
        }
        Log.v("HRA_API", "AddAppInstallWhiteList");
        Intent intent2 = new Intent();
        intent2.setAction("com.hra.whitelist_app.update");
        intent2.putExtra(AgooConstants.MESSAGE_FLAG, 0);
        intent2.putExtra(Constants.KEY_PACKAGE_NAME, arrayList);
        context2.sendBroadcast(intent2);
        return false;
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: t */
    public void mo1329t(boolean z) {
        try {
            LTKDateUtil.m1403m("HuaruianImpl  -- actionResetFactory");
            HRA_API c0812a0 = f4074e;
            Context context = f4072c;
            if (c0812a0 == null) {
                throw null;
            }
            Log.v("HRA_API", "setFactoryReset");
            context.sendBroadcast(new Intent("com.hra.setFactoryReset"));
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HuaruianImpl  -- actionResetFactory error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: t0 */
    public List<String> mo1330t0() {
        try {
            LTKDateUtil.m1403m("HuaruianImpl  -- getUrlWhiteList");
            return f4074e.m1290b(f4072c);
        } catch (Throwable th) {
            return CompilerOutline.m1773r(th, CompilerOutline.m1771p(th, "HuaruianImpl  -- getUrlWhiteList : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: y0 */
    public void mo1331y0(String str) {
        try {
            LTKDateUtil.m1403m("HuaruianImpl  -- actionEnableApp");
            ArrayList<String> arrayList = new ArrayList<>();
            arrayList.add(str);
            f4074e.m1294f(f4072c, arrayList);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HuaruianImpl  -- actionEnableApp error : "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: z0 */
    public void mo1332z0(boolean z) {
        try {
            LTKDateUtil.m1403m("HuaruianImpl  -- disableSdCard");
            HRA_API c0812a0 = f4074e;
            Context context = f4072c;
            if (c0812a0 == null) {
                throw null;
            }
            Log.v("HRA_API", "unmountSDAndOTG");
            context.sendBroadcast(new Intent("com.hra.unmountSD"));
            HRA_API c0812a02 = f4074e;
            Context context2 = f4072c;
            if (c0812a02 == null) {
                throw null;
            }
            Log.v("HRA_API", "setSDOTGDisable");
            Intent intent = new Intent();
            intent.setAction("com.hra.disableSDandOTG");
            intent.putExtra("disabled", true);
            context2.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "HuaruianImpl  -- disableSdCard error : "));
        }
    }
}
