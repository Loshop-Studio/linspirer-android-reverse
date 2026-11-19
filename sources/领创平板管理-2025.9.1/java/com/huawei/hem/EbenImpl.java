package com.huawei.hem;

import android.content.Context;
import android.content.Intent;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Log;
import com.huawei.hem.ConnectionProfile;
import java.util.ArrayList;
import java.util.List;
import org.android.agoo.message.MessageService;

/* compiled from: EbenImpl.java */
/* renamed from: com.huawei.hem.pc */
/* loaded from: classes.dex */
public class EbenImpl extends AndroidImpl {

    /* renamed from: b */
    public static Context f3450b;

    /* compiled from: EbenImpl.java */
    /* renamed from: com.huawei.hem.pc$b */
    public static final class b {

        /* renamed from: a */
        public static final EbenImpl f3451a = new EbenImpl(null);
    }

    public EbenImpl(a aVar) {
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: B0 */
    public void mo1304B0(List<String> list) {
        try {
            LTKDateUtil.m1403m("EbenImpl actionDisableApp");
            String[] strArrM2275P = MobileSdkPlatformUtilities.m2275P(list);
            if (MobileSdkPlatformUtilities.m2274O(strArrM2275P)) {
                return;
            }
            ConnectionProfile.b.m2446i(f3450b, strArrM2275P);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("EbenImpl actionDisableApp exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: F */
    public void mo1306F(String str) {
        try {
            LTKDateUtil.m1403m("EbenImpl actionSilentInstall");
            ConnectionProfile.b.m2447j(f3450b, str);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("EbenImpl actionSilentInstall exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: M0 */
    public List<String> mo1311M0() {
        try {
            LTKDateUtil.m1403m("EbenImpl getAppWhiteList");
            Context context = f3450b;
            Log.i("ebenmdm", "GetAppInstallWhiteList");
            String string = Settings.System.getString(context.getContentResolver(), "appwhitelist");
            return TextUtils.isEmpty(string) ? new ArrayList() : MobileSdkPlatformUtilities.m2277R(string, ",");
        } catch (Throwable th) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("EbenImpl getAppWhiteList exception:");
            sbM1765j.append(th.getMessage());
            LTKDateUtil.m1403m(sbM1765j.toString());
            return new ArrayList();
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: N */
    public boolean mo1312N(long j) {
        try {
            LTKDateUtil.m1403m("EbenImpl setSystemTime");
            Context context = f3450b;
            Log.i("ebenmdm", "setDeviceDate");
            Intent intent = new Intent();
            intent.setAction("com.eben.mdm.action.device.date");
            intent.putExtra("devicedate", j);
            intent.setClassName("com.eben.lingchuangmdm", "com.eben.lingchuangmdm.MdmBroadCastReceiver");
            context.sendBroadcast(intent);
            return true;
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("EbenImpl setSystemTime exception:"));
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
        try {
            LTKDateUtil.m1403m("EbenImpl actionSilentUnInstall");
            ConnectionProfile.b.m2448k(f3450b, str);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("EbenImpl actionSilentUnInstall exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: V */
    public boolean mo1316V(List<String> list) {
        String strReplace;
        try {
            LTKDateUtil.m1403m("EbenImpl setUrlWhiteList");
            ArrayList<String> arrayList = new ArrayList<>();
            arrayList.add("iptables -w -F user");
            arrayList.add("iptables -w -F user_ip");
            arrayList.add("iptables -w -A user -j REJECT");
            for (int i = 0; i < list.size(); i++) {
                String str = list.get(i);
                String str2 = "";
                if (LauncherDeviceUtils.m1599p(str) || LauncherDeviceUtils.m1600q(str) || LauncherDeviceUtils.m1601r(str) || str.endsWith(".0/24") || str.endsWith(".0.0/16")) {
                    strReplace = "iptables -w -A user_ip -d # -j ACCEPT".replace("#", str);
                } else {
                    if (str.contains(".")) {
                        String[] strArrSplit = str.split("\\.");
                        int i2 = 0;
                        while (i2 < strArrSplit.length) {
                            int i3 = i2 + 1;
                            if (i3 == strArrSplit.length) {
                                str2 = str2 + LauncherDeviceUtils.m1608y(strArrSplit[i2]);
                            } else if (strArrSplit[i3].length() < 10) {
                                str2 = str2 + LauncherDeviceUtils.m1608y(strArrSplit[i2]) + MessageService.MSG_DB_READY_REPORT + strArrSplit[i3].length();
                            } else {
                                str2 = str2 + LauncherDeviceUtils.m1608y(strArrSplit[i2]) + strArrSplit[i3].length();
                            }
                            i2 = i3;
                        }
                    }
                    strReplace = "iptables -w -I user -p udp --dport 53 -m string --hex-string \"|#|\" --algo bm -j ACCEPT".replace("#", str2);
                }
                if (!TextUtils.isEmpty(strReplace)) {
                    arrayList.add(strReplace);
                }
            }
            LTKDateUtil.m1403m(" ==> " + arrayList.toString());
            Context context = f3450b;
            Log.i("ebenmdm", "setWhiteUrl");
            Intent intent = new Intent();
            intent.setAction("com.eben.mdm.action.set.iptables");
            intent.putStringArrayListExtra("iptables", arrayList);
            intent.setClassName("com.eben.lingchuangmdm", "com.eben.lingchuangmdm.MdmBroadCastReceiver");
            context.sendBroadcast(intent);
            return true;
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("EbenImpl setUrlWhiteList exception:"));
            return true;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: c */
    public void mo1319c(boolean z) {
        try {
            LTKDateUtil.m1403m("EbenImpl enableOTG");
            Context context = f3450b;
            Log.i("ebenmdm", "setOTGEnable");
            Intent intent = new Intent();
            intent.setAction("com.eben.mdm.action.otg.able");
            intent.setClassName("com.eben.lingchuangmdm", "com.eben.lingchuangmdm.MdmBroadCastReceiver");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("EbenImpl enableOTG exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableBack() {
        try {
            LTKDateUtil.m1403m("EbenImpl disableBack");
            Context context = f3450b;
            Log.i("ebenmdm", "setBackDisable");
            Intent intent = new Intent();
            intent.setAction("com.eben.mdm.action.back.disable");
            intent.setClassName("com.eben.lingchuangmdm", "com.eben.lingchuangmdm.MdmBroadCastReceiver");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("EbenImpl disableBack exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableBluetooth() {
        try {
            LTKDateUtil.m1403m("EbenImpl disableBluetooth");
            Context context = f3450b;
            Log.i("ebenmdm", "setBluetoothDisable");
            Intent intent = new Intent();
            intent.setAction("com.eben.mdm.action.bluetooth.disable");
            intent.setClassName("com.eben.lingchuangmdm", "com.eben.lingchuangmdm.MdmBroadCastReceiver");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("EbenImpl disableBluetooth exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableCamera() {
        try {
            LTKDateUtil.m1403m("EbenImpl disableCamera");
            Context context = f3450b;
            Log.i("ebenmdm", "setCameraDisable");
            Intent intent = new Intent();
            intent.setAction("com.eben.mdm.action.camera.disable");
            intent.setClassName("com.eben.lingchuangmdm", "com.eben.lingchuangmdm.MdmBroadCastReceiver");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("EbenImpl disableCamera exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableHome() {
        try {
            LTKDateUtil.m1403m("EbenImpl disableHome");
            Context context = f3450b;
            Log.i("ebenmdm", "setHomeDisable");
            Intent intent = new Intent();
            intent.setAction("com.eben.mdm.action.home.disable");
            intent.setClassName("com.eben.lingchuangmdm", "com.eben.lingchuangmdm.MdmBroadCastReceiver");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("EbenImpl disableHome exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableNavigation() {
        disableBack();
        disableHome();
        disableRecent();
        disableVolume();
        disableShortPressPower();
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableRecent() {
        try {
            LTKDateUtil.m1403m("EbenImpl disableRecent");
            Context context = f3450b;
            Log.i("ebenmdm", "setRecentDisable");
            Intent intent = new Intent();
            intent.setAction("com.eben.mdm.action.recent.disable");
            intent.setClassName("com.eben.lingchuangmdm", "com.eben.lingchuangmdm.MdmBroadCastReceiver");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("EbenImpl disableRecent exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableShortPressPower() {
        try {
            LTKDateUtil.m1403m("EbenImpl disableShortPressPower");
            Context context = f3450b;
            Log.i("ebenmdm", "setPowerKeyDisable");
            Intent intent = new Intent();
            intent.setAction("com.eben.mdm.action.powerkey.disable");
            intent.setClassName("com.eben.lingchuangmdm", "com.eben.lingchuangmdm.MdmBroadCastReceiver");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("EbenImpl disableShortPressPower exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableUsb() {
        try {
            LTKDateUtil.m1403m("EbenImpl disble usb");
            Context context = f3450b;
            Log.i("ebenmdm", "setADBDisable");
            Intent intent = new Intent();
            intent.setAction("com.eben.mdm.action.usb");
            intent.putExtra("adbstaus", 0);
            intent.setClassName("com.eben.lingchuangmdm", "com.eben.lingchuangmdm.MdmBroadCastReceiver");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("EbenImpl disable usb exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableVolume() {
        try {
            LTKDateUtil.m1403m("EbenImpl disableVolume");
            Context context = f3450b;
            Log.i("ebenmdm", "disableVolume");
            Intent intent = new Intent();
            intent.setAction("com.eben.mdm.action.volkey.disable");
            intent.setClassName("com.eben.lingchuangmdm", "com.eben.lingchuangmdm.MdmBroadCastReceiver");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("EbenImpl disableVolume exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: e */
    public void mo1320e(String str) {
        try {
            LTKDateUtil.m1403m("EbenImpl actionDisableApp");
            ConnectionProfile.b.m2445h(f3450b, new String[]{str});
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("EbenImpl actionDisableApp exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableBack() {
        try {
            LTKDateUtil.m1403m("EbenImpl enableBack");
            Context context = f3450b;
            Log.i("ebenmdm", "setBackEnable");
            Intent intent = new Intent();
            intent.setAction("com.eben.mdm.action.back.able");
            intent.setClassName("com.eben.lingchuangmdm", "com.eben.lingchuangmdm.MdmBroadCastReceiver");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("EbenImpl enableBack exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableBluetooth() {
        try {
            LTKDateUtil.m1403m("EbenImpl enableBluetooth");
            Context context = f3450b;
            Log.i("ebenmdm", "setBluetoothEnable");
            Intent intent = new Intent();
            intent.setAction("com.eben.mdm.action.bluetooth.able");
            intent.setClassName("com.eben.lingchuangmdm", "com.eben.lingchuangmdm.MdmBroadCastReceiver");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("EbenImpl enableBluetooth exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableCamera() {
        try {
            LTKDateUtil.m1403m("EbenImpl enableCamera");
            Context context = f3450b;
            Log.i("ebenmdm", "setCameraEnable");
            Intent intent = new Intent();
            intent.setAction("com.eben.mdm.action.camera.able");
            intent.setClassName("com.eben.lingchuangmdm", "com.eben.lingchuangmdm.MdmBroadCastReceiver");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("EbenImpl enableCamera exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableHome() {
        try {
            LTKDateUtil.m1403m("EbenImpl enableHome");
            Context context = f3450b;
            Log.i("ebenmdm", "setHomeEnable");
            Intent intent = new Intent();
            intent.setAction("com.eben.mdm.action.home.able");
            intent.setClassName("com.eben.lingchuangmdm", "com.eben.lingchuangmdm.MdmBroadCastReceiver");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("EbenImpl enableHome exception:"));
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
            LTKDateUtil.m1403m("EbenImpl enableRecent");
            Context context = f3450b;
            Log.i("ebenmdm", "setRecentEnable");
            Intent intent = new Intent();
            intent.setAction("com.eben.mdm.action.recent.able");
            intent.setClassName("com.eben.lingchuangmdm", "com.eben.lingchuangmdm.MdmBroadCastReceiver");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("EbenImpl enableRecent exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableShortPressPower() {
        try {
            LTKDateUtil.m1403m("EbenImpl enableShortPressPower");
            Context context = f3450b;
            Log.i("ebenmdm", "setPowerKeyEnable");
            Intent intent = new Intent();
            intent.setAction("com.eben.mdm.action.powerkey.able");
            intent.setClassName("com.eben.lingchuangmdm", "com.eben.lingchuangmdm.MdmBroadCastReceiver");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("EbenImpl enableShortPressPower exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableUsb() {
        try {
            LTKDateUtil.m1403m("EbenImpl enable usb");
            Context context = f3450b;
            Log.i("ebenmdm", "setADBEnable");
            Intent intent = new Intent();
            intent.setAction("com.eben.mdm.action.usb");
            intent.putExtra("adbstaus", 1);
            intent.setClassName("com.eben.lingchuangmdm", "com.eben.lingchuangmdm.MdmBroadCastReceiver");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("EbenImpl enable usb exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableVolume() {
        try {
            LTKDateUtil.m1403m("EbenImpl enableVolume");
            Context context = f3450b;
            Log.i("ebenmdm", "enableVolume");
            Intent intent = new Intent();
            intent.setAction("com.eben.mdm.action.volkey.able");
            intent.setClassName("com.eben.lingchuangmdm", "com.eben.lingchuangmdm.MdmBroadCastReceiver");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("EbenImpl enableVolume exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: k0 */
    public void mo1326k0(List<String> list) {
        try {
            LTKDateUtil.m1403m("EbenImpl actionDisableApp");
            String[] strArrM2275P = MobileSdkPlatformUtilities.m2275P(list);
            if (MobileSdkPlatformUtilities.m2274O(strArrM2275P)) {
                return;
            }
            ConnectionProfile.b.m2445h(f3450b, strArrM2275P);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("EbenImpl actionDisableApp exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: s */
    public boolean mo1328s(List<String> list) {
        try {
            LTKDateUtil.m1403m("EbenImpl setAppWhiteList");
            Context context = f3450b;
            String[] strArrM2275P = MobileSdkPlatformUtilities.m2275P(list);
            Log.i("ebenmdm", "AddAppInstallWhiteList");
            Intent intent = new Intent();
            intent.setAction("com.eben.mdm.action.set.install.white.list");
            intent.putExtra("setinstallwhitelist", strArrM2275P);
            intent.setClassName("com.eben.lingchuangmdm", "com.eben.lingchuangmdm.MdmBroadCastReceiver");
            context.sendBroadcast(intent);
            return true;
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("EbenImpl setAppWhiteList exception:"));
            return true;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: t */
    public void mo1329t(boolean z) {
        try {
            LTKDateUtil.m1403m("EbenImpl actionResetFactory");
            Context context = f3450b;
            Log.i("ebenmdm", "resetFactory");
            Intent intent = new Intent();
            intent.setAction("com.eben.mdm.action.set.factory_reset");
            intent.setClassName("com.eben.lingchuangmdm", "com.eben.lingchuangmdm.MdmBroadCastReceiver");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("EbenImpl actionShutdown exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: t0 */
    public List<String> mo1330t0() {
        try {
            LTKDateUtil.m1403m("EbenImpl getUrlWhiteList");
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("EbenImpl getUrlWhiteList exception:"));
        }
        return new ArrayList();
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: y0 */
    public void mo1331y0(String str) {
        try {
            LTKDateUtil.m1403m("EbenImpl actionDisableApp");
            ConnectionProfile.b.m2446i(f3450b, new String[]{str});
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("EbenImpl actionDisableApp exception:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: z0 */
    public void mo1332z0(boolean z) {
        try {
            LTKDateUtil.m1403m("EbenImpl disableOTG");
            Context context = f3450b;
            Log.i("ebenmdm", "setOTGDisable");
            Intent intent = new Intent();
            intent.setAction("com.eben.mdm.action.otg.disable");
            intent.setClassName("com.eben.lingchuangmdm", "com.eben.lingchuangmdm.MdmBroadCastReceiver");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("EbenImpl disableOTG exception:"));
        }
    }
}
