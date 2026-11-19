package com.huawei.hem;

import android.content.Context;
import android.content.Intent;
import android.provider.Settings;
import android.text.TextUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import org.android.agoo.message.MessageService;

/* compiled from: ZeDiImpl.java */
/* renamed from: com.huawei.hem.md */
/* loaded from: classes.dex */
public class ZeDiImpl extends AndroidImpl {

    /* renamed from: b */
    public static ZeDiImpl f3258b = new ZeDiImpl();

    /* renamed from: c */
    public static Context f3259c;

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: B0 */
    public void mo1304B0(List<String> list) {
        try {
            if (AbstractC1102l9.m2273N(list)) {
                return;
            }
            Context context = f3259c;
            Intent intent = new Intent("lxs.action.app.enablelist");
            intent.putExtra("app_enable_list", (ArrayList) list);
            intent.setClassName("com.android.systemui", "com.android.systemui.lxsBroadCastReceiver");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("ZeDiImpl----actionEnableApp error:=="));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: F */
    public void mo1306F(String str) {
        LTKDateUtil.m1403m("ZeDiImpl---actionSilentInstall");
        try {
            Context context = f3259c;
            Intent intent = new Intent("lxs.action.apk.silent.install");
            intent.putExtra("apk_path", str);
            intent.putExtra("apk_type", false);
            intent.setClassName("com.android.packageinstaller", "com.android.packageinstaller.SilentInstallReceiver");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("ZeDiImpl---actionSilentInstall error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: L */
    public String mo1310L(String str) {
        try {
            LTKDateUtil.m1403m("ZeDiImpl -- actionScreenShot");
            if (TextUtils.isEmpty(str)) {
                str = "/mnt/sdcard/Screenshots/";
            }
            String str2 = "Screenshot_" + LTKDateUtil.m1400j() + ".png";
            File file = new File(str);
            if (!file.exists()) {
                file.mkdirs();
            }
            String str3 = str + str2;
            Context context = f3259c;
            Intent intent = new Intent("lxs.action.screenshot");
            intent.putExtra("screenshotPath", str3);
            context.sendBroadcast(intent);
            return str3;
        } catch (Exception e) {
            e.printStackTrace();
            StringBuilder sb = new StringBuilder();
            sb.append("ZeDiImpl -- actionScreenShot error : ");
            CompilerOutline.m1776u(e, sb);
            return "";
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: M0 */
    public List<String> mo1311M0() {
        LTKDateUtil.m1403m("ZeDiImpl---getAppWhiteList");
        try {
            String string = Settings.System.getString(f3259c.getContentResolver(), "whitepackname");
            if (string == null || string.equals("")) {
                string = "";
            }
            return new ArrayList(Arrays.asList(string.split(",")));
        } catch (Throwable th) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("ZeDiImpl---getAppWhiteList error:");
            sbM1765j.append(th.getMessage());
            LTKDateUtil.m1403m(sbM1765j.toString());
            return new ArrayList();
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: N */
    public boolean mo1312N(long j) {
        LTKDateUtil.m1403m("ZeDiImpl---setSystemTime");
        try {
            Context context = f3259c;
            Intent intent = new Intent("lxs.action.systemtime");
            intent.putExtra("systemtime", j);
            intent.setClassName("com.android.systemui", "com.android.systemui.lxsBroadCastReceiver");
            context.sendBroadcast(intent);
            return true;
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("ZeDiImpl---setSystemTime error:"));
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
        LTKDateUtil.m1403m("ZeDiImpl----actionSilentUnInstall ");
        try {
            Context context = f3259c;
            Intent intent = new Intent("lxs.action.apk.silent.uninstall");
            intent.putExtra("apk_pkgname", str);
            intent.setClassName("com.android.packageinstaller", "com.android.packageinstaller.SilentInstallReceiver");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("ZeDiImpl----actionSilentUnInstall error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: V */
    public boolean mo1316V(List<String> list) {
        String strReplace;
        LTKDateUtil.m1403m("ZeDiImpl---setUrlWhiteList");
        ArrayList arrayList = new ArrayList();
        arrayList.add("iptables -w -t filter -N  user_ip");
        arrayList.add("iptables -w -F user");
        arrayList.add("iptables -w -F user_ip");
        arrayList.add("iptables -w -D OUTPUT -j user_ip");
        arrayList.add("iptables -w -I OUTPUT  4  -j user_ip");
        arrayList.add("iptables -w -A user -j REJECT");
        for (int i = 0; i < list.size(); i++) {
            String str = list.get(i);
            String string = "";
            if (LauncherDeviceUtils.m1599p(str) || LauncherDeviceUtils.m1600q(str) || LauncherDeviceUtils.m1601r(str) || str.endsWith(".0/24") || str.endsWith(".0.0/16")) {
                strReplace = "iptables -w -A user_ip -d # -j ACCEPT".replace("#", str);
            } else {
                if (str.contains(".")) {
                    String[] strArrSplit = str.split("\\.");
                    int i2 = 0;
                    while (i2 < strArrSplit.length) {
                        int i3 = i2 + 1;
                        if (i3 == strArrSplit.length) {
                            StringBuilder sbM1765j = CompilerOutline.m1765j(string);
                            sbM1765j.append(LauncherDeviceUtils.m1608y(strArrSplit[i2]));
                            string = sbM1765j.toString();
                        } else {
                            String hexString = Integer.toHexString(strArrSplit[i3].length());
                            if (hexString.length() < 2) {
                                hexString = CompilerOutline.m1760e(MessageService.MSG_DB_READY_REPORT, hexString);
                            }
                            StringBuilder sbM1765j2 = CompilerOutline.m1765j(string);
                            sbM1765j2.append(LauncherDeviceUtils.m1608y(strArrSplit[i2]));
                            sbM1765j2.append(hexString);
                            string = sbM1765j2.toString();
                        }
                        i2 = i3;
                    }
                }
                strReplace = "iptables -w -I user -p udp --dport 53 -m string --hex-string \"|#|\" --algo bm -j ACCEPT".replace("#", string);
            }
            if (!TextUtils.isEmpty(strReplace)) {
                arrayList.add(strReplace);
            }
        }
        StringBuilder sbM1765j3 = CompilerOutline.m1765j(" ==> ");
        sbM1765j3.append(arrayList.toString());
        LTKDateUtil.m1403m(sbM1765j3.toString());
        try {
            LTKDateUtil.m1403m("ZeDiImpl set white url");
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                String str2 = (String) it.next();
                Context context = f3259c;
                Intent intent = new Intent("lxs.action.control");
                intent.putExtra("control_string", str2);
                context.sendBroadcast(intent);
            }
            return true;
        } catch (Throwable th) {
            CompilerOutline.m1747E(th, CompilerOutline.m1765j("ZeDiImpl set white url error "));
            return false;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: Y */
    public String mo1317Y(Context context) {
        LTKDateUtil.m1403m("ZeDiImpl---getWifiMacAddress");
        try {
            Context context2 = f3259c;
            Intent intent = new Intent("lxs.action.getSN");
            intent.setClassName("com.android.systemui", "com.android.systemui.lxsBroadCastReceiver");
            context2.sendBroadcast(intent);
            return Settings.System.getString(context2.getContentResolver(), "device_sn");
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("ZeDiImpl---getWifiMacAddress error:"));
            return "";
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: c */
    public void mo1319c(boolean z) {
        LTKDateUtil.m1403m("ZeDiImpl---enableSdCard");
        try {
            Context context = f3259c;
            Intent intent = new Intent("lxs.action.sd");
            intent.putExtra("sdonoff", true);
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("ZeDiImpl---enableSdCard error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableBack() {
        LTKDateUtil.m1403m("ZeDiImpl---disableBack");
        try {
            Context context = f3259c;
            Intent intent = new Intent("lxs.action.back");
            intent.putExtra("back_staus", 0);
            intent.setClassName("com.android.systemui", "com.android.systemui.lxsBroadCastReceiver");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("ZeDiImpl---disableBack error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableBluetooth() {
        LTKDateUtil.m1403m("ZeDiImpl---disableBluetooth");
        try {
            Context context = f3259c;
            Intent intent = new Intent("lxs.action.bluetooth");
            intent.putExtra("bt_staus", 0);
            intent.setClassName("com.android.systemui", "com.android.systemui.lxsBroadCastReceiver");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("ZeDiImpl---disableBluetooth error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableCamera() {
        LTKDateUtil.m1403m("ZeDiImpl---disableCamera");
        try {
            Context context = f3259c;
            Intent intent = new Intent("lxs.action.camera");
            intent.putExtra("cam_staus", 0);
            intent.setClassName("com.android.systemui", "com.android.systemui.lxsBroadCastReceiver");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("ZeDiImpl---disableCamera error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableHome() {
        LTKDateUtil.m1403m("ZeDiImpl---disableHome");
        try {
            Context context = f3259c;
            Intent intent = new Intent("lxs.action.home");
            intent.putExtra("home_staus", 0);
            intent.setClassName("com.android.systemui", "com.android.systemui.lxsBroadCastReceiver");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("ZeDiImpl---disableHome error:"));
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
        LTKDateUtil.m1403m("ZeDiImpl---disableSdCard");
        try {
            Context context = f3259c;
            Intent intent = new Intent("lxs.action.otg");
            intent.putExtra("otgonoff", false);
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("ZeDiImpl---disableSdCard error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableRecent() {
        LTKDateUtil.m1403m("ZeDiImpl---disableRecent");
        try {
            Context context = f3259c;
            Intent intent = new Intent("lxs.action.recent");
            intent.putExtra("recent_staus", 0);
            intent.setClassName("com.android.systemui", "com.android.systemui.lxsBroadCastReceiver");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("ZeDiImpl---disableRecent error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableShortPressPower() {
        LTKDateUtil.m1403m("ZeDiImpl---disableShortPressPower");
        try {
            Context context = f3259c;
            Intent intent = new Intent("lxs.action.power");
            intent.putExtra("power_staus", 0);
            intent.setClassName("com.android.systemui", "com.android.systemui.lxsBroadCastReceiver");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("ZeDiImpl---disableShortPressPower error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableUsb() {
        LTKDateUtil.m1403m("ZeDiImpl---disableUsb");
        try {
            Context context = f3259c;
            Intent intent = new Intent("lxs.action.adb");
            intent.putExtra("adbstaus", 0);
            intent.setClassName("com.android.systemui", "com.android.systemui.lxsBroadCastReceiver");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("ZeDiImpl---disableUsb error:"));
        }
        try {
            Context context2 = f3259c;
            Intent intent2 = new Intent("lxs.action.mtp");
            intent2.putExtra("mtpstaus", 0);
            intent2.setClassName("com.android.systemui", "com.android.systemui.lxsBroadCastReceiver");
            context2.sendBroadcast(intent2);
        } catch (Throwable th2) {
            CompilerOutline.m1745C(th2, CompilerOutline.m1765j("ZeDiImpl---setMTPDisable error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableVolume() {
        LTKDateUtil.m1403m("ZeDiImpl---disableVolume");
        try {
            Context context = f3259c;
            Intent intent = new Intent("lxs.action.voladd");
            intent.putExtra("voladd_staus", 0);
            intent.setClassName("com.android.systemui", "com.android.systemui.lxsBroadCastReceiver");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("ZeDiImpl---disableVolume error:"));
        }
        try {
            Context context2 = f3259c;
            Intent intent2 = new Intent("lxs.action.volsub");
            intent2.putExtra("volsub_staus", 0);
            intent2.setClassName("com.android.systemui", "com.android.systemui.lxsBroadCastReceiver");
            context2.sendBroadcast(intent2);
        } catch (Throwable th2) {
            CompilerOutline.m1745C(th2, CompilerOutline.m1765j("ZeDiImpl---enableVolume error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: e */
    public void mo1320e(String str) {
        LTKDateUtil.m1403m("ZeDiImpl----actionDisableApp ");
        try {
            ArrayList arrayList = new ArrayList();
            arrayList.add(str);
            Context context = f3259c;
            Intent intent = new Intent("lxs.action.app.disablelist");
            intent.putExtra("app_disable_list", arrayList);
            intent.setClassName("com.android.systemui", "com.android.systemui.lxsBroadCastReceiver");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("ZeDiImpl----actionDisableApp error =="));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableBack() {
        LTKDateUtil.m1403m("ZeDiImpl---enableBack");
        try {
            Context context = f3259c;
            Intent intent = new Intent("lxs.action.back");
            intent.putExtra("back_staus", 1);
            intent.setClassName("com.android.systemui", "com.android.systemui.lxsBroadCastReceiver");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("ZeDiImpl---enableBack error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableBluetooth() {
        LTKDateUtil.m1403m("ZeDiImpl---enableBluetooth");
        try {
            Context context = f3259c;
            Intent intent = new Intent("lxs.action.bluetooth");
            intent.putExtra("bt_staus", 1);
            intent.setClassName("com.android.systemui", "com.android.systemui.lxsBroadCastReceiver");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("ZeDiImpl---enableBluetooth error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableCamera() {
        LTKDateUtil.m1403m("ZeDiImpl---enableCamera");
        try {
            Context context = f3259c;
            Intent intent = new Intent("lxs.action.camera");
            intent.putExtra("cam_staus", 1);
            intent.setClassName("com.android.systemui", "com.android.systemui.lxsBroadCastReceiver");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("ZeDiImpl---enableCamera error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableHome() {
        LTKDateUtil.m1403m("ZeDiImpl---enableHome");
        try {
            Context context = f3259c;
            Intent intent = new Intent("lxs.action.home");
            intent.putExtra("home_staus", 1);
            intent.setClassName("com.android.systemui", "com.android.systemui.lxsBroadCastReceiver");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("ZeDiImpl---enableHome error:"));
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
        LTKDateUtil.m1403m("ZeDiImpl---disableSdCard");
        try {
            Context context = f3259c;
            Intent intent = new Intent("lxs.action.otg");
            intent.putExtra("otgonoff", true);
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("ZeDiImpl---disableSdCard error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableRecent() {
        LTKDateUtil.m1403m("ZeDiImpl---enableRecent");
        try {
            Context context = f3259c;
            Intent intent = new Intent("lxs.action.recent");
            intent.putExtra("recent_staus", 1);
            intent.setClassName("com.android.systemui", "com.android.systemui.lxsBroadCastReceiver");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("ZeDiImpl---enableRecent error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableShortPressPower() {
        LTKDateUtil.m1403m("ZeDiImpl---enableShortPressPower");
        try {
            Context context = f3259c;
            Intent intent = new Intent("lxs.action.power");
            intent.putExtra("power_staus", 1);
            intent.setClassName("com.android.systemui", "com.android.systemui.lxsBroadCastReceiver");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("ZeDiImpl---enableShortPressPower error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableUsb() {
        LTKDateUtil.m1403m("ZeDiImpl---enableUsb");
        try {
            Context context = f3259c;
            Intent intent = new Intent("lxs.action.adb");
            intent.putExtra("adbstaus", 1);
            intent.setClassName("com.android.systemui", "com.android.systemui.lxsBroadCastReceiver");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("ZeDiImpl---enableUsb error:"));
        }
        try {
            Context context2 = f3259c;
            Intent intent2 = new Intent("lxs.action.mtp");
            intent2.putExtra("mtpstaus", 1);
            intent2.setClassName("com.android.systemui", "com.android.systemui.lxsBroadCastReceiver");
            context2.sendBroadcast(intent2);
        } catch (Throwable th2) {
            CompilerOutline.m1745C(th2, CompilerOutline.m1765j("ZeDiImpl---setMTPEnable error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableVolume() {
        LTKDateUtil.m1403m("ZeDiImpl---enableVolume");
        try {
            Context context = f3259c;
            Intent intent = new Intent("lxs.action.voladd");
            intent.putExtra("voladd_staus", 1);
            intent.setClassName("com.android.systemui", "com.android.systemui.lxsBroadCastReceiver");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("ZeDiImpl---enableVolume error:"));
        }
        try {
            Context context2 = f3259c;
            Intent intent2 = new Intent("lxs.action.volsub");
            intent2.putExtra("volsub_staus", 1);
            intent2.setClassName("com.android.systemui", "com.android.systemui.lxsBroadCastReceiver");
            context2.sendBroadcast(intent2);
        } catch (Throwable th2) {
            CompilerOutline.m1745C(th2, CompilerOutline.m1765j("ZeDiImpl---enableVolume error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: g */
    public void mo1321g() {
        LTKDateUtil.m1403m("ZeDiImpl---actionRebootDevice");
        try {
            f3259c.sendBroadcast(new Intent("lxs.action.reboot"));
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("ZeDiImpl---actionRebootDevice error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: h0 */
    public void mo1324h0() {
        LTKDateUtil.m1403m("ZeDiImpl---actionShutdown");
        try {
            f3259c.sendBroadcast(new Intent("lxs.action.shutdown"));
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("ZeDiImpl---actionShutdown error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: k0 */
    public void mo1326k0(List<String> list) {
        try {
            if (AbstractC1102l9.m2273N(list)) {
                return;
            }
            Context context = f3259c;
            Intent intent = new Intent("lxs.action.app.disablelist");
            intent.putExtra("app_disable_list", (ArrayList) list);
            intent.setClassName("com.android.systemui", "com.android.systemui.lxsBroadCastReceiver");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("ZeDiImpl----actionDisableApp error =="));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: s */
    public boolean mo1328s(List<String> list) {
        LTKDateUtil.m1403m("ZeDiImpl---setAppWhiteList");
        if (AbstractC1102l9.m2273N(list)) {
            return false;
        }
        LTKDateUtil.m1403m("ZeDiImpl---cleanWhiteAppList");
        try {
            Context context = f3259c;
            Intent intent = new Intent("lxs.action.cleaninstallwhitelist");
            intent.setClassName("com.android.systemui", "com.android.systemui.lxsBroadCastReceiver");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("ZeDiImpl---cleanWhiteAppList error:"));
        }
        try {
            Context context2 = f3259c;
            Intent intent2 = new Intent("lxs.action.addinstallwhitelist");
            intent2.putExtra("addwhitlist", (ArrayList) list);
            intent2.setClassName("com.android.systemui", "com.android.systemui.lxsBroadCastReceiver");
            context2.sendBroadcast(intent2);
            return false;
        } catch (Throwable th2) {
            CompilerOutline.m1745C(th2, CompilerOutline.m1765j("ZeDiImpl---setAppWhiteList error:"));
            return false;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: t */
    public void mo1329t(boolean z) {
        LTKDateUtil.m1403m("ZeDiImpl---actionResetFactory");
        try {
            Context context = f3259c;
            Intent intent = new Intent("lxs.action.masterclearconfirm");
            intent.setClassName("com.android.systemui", "com.android.systemui.lxsBroadCastReceiver");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("ZeDiImpl---actionResetFactory error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: t0 */
    public List<String> mo1330t0() {
        LTKDateUtil.m1403m("ZeDiImpl---getUrlWhiteList");
        try {
            String string = Settings.System.getString(f3259c.getContentResolver(), "netwhite");
            if (string == null || string.equals("")) {
                string = "";
            }
            return new ArrayList(Arrays.asList(string.split(",")));
        } catch (Throwable th) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("ZeDiImpl---getUrlWhiteList error:");
            sbM1765j.append(th.getMessage());
            LTKDateUtil.m1403m(sbM1765j.toString());
            return new ArrayList();
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: y0 */
    public void mo1331y0(String str) {
        LTKDateUtil.m1403m("ZeDiImpl----actionEnableApp ");
        try {
            ArrayList arrayList = new ArrayList();
            arrayList.add(str);
            Context context = f3259c;
            Intent intent = new Intent("lxs.action.app.enablelist");
            intent.putExtra("app_enable_list", arrayList);
            intent.setClassName("com.android.systemui", "com.android.systemui.lxsBroadCastReceiver");
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("ZeDiImpl----actionEnableApp error:=="));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: z0 */
    public void mo1332z0(boolean z) {
        LTKDateUtil.m1403m("ZeDiImpl---disableSdCard");
        try {
            Context context = f3259c;
            Intent intent = new Intent("lxs.action.sd");
            intent.putExtra("sdonoff", false);
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("ZeDiImpl---disableSdCard error:"));
        }
    }
}
