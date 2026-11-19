package com.huawei.hem;

import android.app.admin.DevicePolicyManager;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.provider.Settings;
import android.text.TextUtils;
import com.taobao.accs.common.Constants;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.android.agoo.message.MessageService;

/* compiled from: TaidianImpl.java */
/* renamed from: com.huawei.hem.jd */
/* loaded from: classes.dex */
public class TaidianImpl extends AndroidImpl {

    /* renamed from: b */
    public static TaidianImpl f2944b = new TaidianImpl();

    /* renamed from: c */
    public static TaidianCustomApi f2945c;

    /* renamed from: d */
    public static Context f2946d;

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: F */
    public void mo1306F(String str) {
        try {
            f2945c.m2945c(str);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("TaidianImpl ,actionSilentInstall-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: M0 */
    public List<String> mo1311M0() {
        try {
            String string = Settings.Global.getString(f2945c.f4080b, "white_app_list_string");
            ArrayList arrayList = new ArrayList();
            for (String str : string.split(";")) {
                arrayList.add(str);
            }
            if (!MobileSdkPlatformUtilities.m2273N(arrayList)) {
                return arrayList;
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("TaidianImpl ,getAppWhiteList-error:"));
        }
        return new ArrayList();
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: N */
    public boolean mo1312N(long j) {
        String[] strArrSplit;
        String str = new SimpleDateFormat("yyyy-MM-dd-HH-mm-ss").format(new Date(j));
        if (!TextUtils.isEmpty(str) && (strArrSplit = str.split("-")) != null && strArrSplit.length == 6) {
            try {
                f2945c.m2944b(Integer.valueOf(strArrSplit[0]).intValue(), Integer.valueOf(strArrSplit[1]).intValue(), Integer.valueOf(strArrSplit[2]).intValue(), Integer.valueOf(strArrSplit[3]).intValue(), Integer.valueOf(strArrSplit[4]).intValue(), Integer.valueOf(strArrSplit[5]).intValue());
            } catch (Throwable th) {
                CompilerOutline.m1746D(th, CompilerOutline.m1765j("TaidianImpl ,setSystemTime-error:"));
            }
        }
        return true;
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: O */
    public void mo1313O(String str, String str2) {
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: Q */
    public void mo1314Q(String str) {
        try {
            f2945c.m2946d(str);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("TaidianImpl ,actionSilentUnInstall-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: V */
    public boolean mo1316V(List<String> list) {
        String strReplace;
        ArrayList arrayListM1772q = CompilerOutline.m1772q("iptables -w -t filter -N  user_ip", "iptables -w -F user", "iptables -w -F user_ip", "iptables -w -D OUTPUT -j user_ip", "iptables -w -I OUTPUT  4  -j user_ip");
        arrayListM1772q.add("iptables -w -A user -j REJECT");
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
                arrayListM1772q.add(strReplace);
            }
        }
        StringBuilder sbM1765j3 = CompilerOutline.m1765j(" ==> ");
        sbM1765j3.append(arrayListM1772q.toString());
        LTKDateUtil.m1403m(sbM1765j3.toString());
        String[] strArr = new String[arrayListM1772q.size()];
        try {
            TaidianCustomApi c1412xi = f2945c;
            String[] strArr2 = (String[]) arrayListM1772q.toArray(strArr);
            if (c1412xi == null) {
                throw null;
            }
            Intent intent = new Intent("mid.action.custom.addurl");
            Bundle bundle = new Bundle();
            bundle.putStringArray("web", strArr2);
            intent.putExtras(bundle);
            c1412xi.f4079a.sendBroadcast(intent);
            return true;
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("TaidianImpl ,setUrlWhiteList-error:"));
            return false;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: b0 */
    public void mo1318b0(List<String> list) {
        try {
            TaidianCustomApi c1412xi = f2945c;
            if (c1412xi == null) {
                throw null;
            }
            Intent intent = new Intent();
            intent.setAction("roco.wifi.advanced.enable");
            c1412xi.f4079a.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("TaidianImpl ,showWifiAdvanced-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: c */
    public void mo1319c(boolean z) {
        try {
            TaidianCustomApi c1412xi = f2945c;
            if (c1412xi == null) {
                throw null;
            }
            Intent intent = new Intent();
            File file = new File("/storage/sdcard1");
            intent.setAction("roco.tf.card.enable");
            if (file.exists()) {
                intent.putExtra("tfmount", true);
            } else {
                intent.putExtra("tfmount", false);
            }
            c1412xi.f4079a.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("TaidianImpl ,enableSdCard-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableBack() {
        try {
            TaidianCustomApi c1412xi = f2945c;
            if (c1412xi == null) {
                throw null;
            }
            Intent intent = new Intent();
            intent.setAction("roco.dis.backkey");
            c1412xi.f4079a.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("TaidianImpl ,disableBack-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableBluetooth() {
        try {
            TaidianCustomApi c1412xi = f2945c;
            if (c1412xi == null) {
                throw null;
            }
            Intent intent = new Intent();
            intent.setAction("roco.disable.bluetooth");
            c1412xi.f4079a.sendBroadcast(intent);
            new Thread(new TaidianDisableBluetoothTask(c1412xi)).start();
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("TaidianImpl ,disableBluetooth-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableCamera() {
        try {
            TaidianCustomApi c1412xi = f2945c;
            if (c1412xi == null) {
                throw null;
            }
            Intent intent = new Intent();
            intent.setAction("roco.camera.close");
            c1412xi.f4079a.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("TaidianImpl ,disableCamera-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableGPS() {
        try {
            TaidianCustomApi c1412xi = f2945c;
            if (c1412xi == null) {
                throw null;
            }
            Intent intent = new Intent();
            intent.setAction("roco.gps.close");
            c1412xi.f4079a.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("TaidianImpl ,disableGPS-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableHome() {
        try {
            TaidianCustomApi c1412xi = f2945c;
            if (c1412xi == null) {
                throw null;
            }
            Intent intent = new Intent();
            intent.setAction("roco.dis.homekey");
            c1412xi.f4079a.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("TaidianImpl ,disableHome-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableLongPressPower() {
        try {
            TaidianCustomApi c1412xi = f2945c;
            if (c1412xi == null) {
                throw null;
            }
            Intent intent = new Intent();
            intent.setAction("roco.dis.longpower");
            c1412xi.f4079a.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("TaidianImpl ,disableLongPressPower-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableNavigation() {
        disableHome();
        disableBack();
        disableRecent();
        disableLongPressPower();
        disableVolume();
        disableShortPressPower();
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableRecent() {
        try {
            TaidianCustomApi c1412xi = f2945c;
            if (c1412xi == null) {
                throw null;
            }
            Intent intent = new Intent();
            intent.setAction("roco.dis.recentkey");
            c1412xi.f4079a.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("TaidianImpl ,disableRecent-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableShortPressPower() {
        try {
            TaidianCustomApi c1412xi = f2945c;
            if (c1412xi == null) {
                throw null;
            }
            Intent intent = new Intent();
            intent.setAction("roco.dis.shortpower");
            c1412xi.f4079a.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("TaidianImpl ,disableShortPressPower-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableUsb() {
        try {
            TaidianCustomApi c1412xi = f2945c;
            if (c1412xi == null) {
                throw null;
            }
            Intent intent = new Intent();
            intent.setAction("roco.usb.disable");
            c1412xi.f4079a.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("TaidianImpl ,disableUsb-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableVolume() {
        try {
            TaidianCustomApi c1412xi = f2945c;
            if (c1412xi == null) {
                throw null;
            }
            Intent intent = new Intent();
            intent.setAction("roco.dis.downupkey");
            c1412xi.f4079a.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("TaidianImpl ,disableVolume-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: e */
    public void mo1320e(String str) {
        try {
            TaidianCustomApi c1412xi = f2945c;
            if (c1412xi == null) {
                throw null;
            }
            Intent intent = new Intent();
            intent.putExtra(Constants.KEY_PACKAGE_NAME, str);
            intent.setAction("roco.disable.apkname");
            c1412xi.f4079a.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("TaidianImpl ,actionDisableApp-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableBack() {
        try {
            TaidianCustomApi c1412xi = f2945c;
            if (c1412xi == null) {
                throw null;
            }
            Intent intent = new Intent();
            intent.setAction("roco.enable.backkey");
            c1412xi.f4079a.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("TaidianImpl ,enableBack-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableBluetooth() {
        try {
            TaidianCustomApi c1412xi = f2945c;
            if (c1412xi == null) {
                throw null;
            }
            Intent intent = new Intent();
            intent.setAction("roco.enable.bluetooth");
            c1412xi.f4079a.sendBroadcast(intent);
            new Thread(new TaidianEnableBluetoothTask(c1412xi)).start();
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("TaidianImpl ,enableBluetooth-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableCamera() {
        try {
            TaidianCustomApi c1412xi = f2945c;
            if (c1412xi == null) {
                throw null;
            }
            Intent intent = new Intent();
            intent.setAction("roco.camera.open");
            c1412xi.f4079a.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("TaidianImpl enableCamera-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableGPS() {
        try {
            TaidianCustomApi c1412xi = f2945c;
            if (c1412xi == null) {
                throw null;
            }
            Intent intent = new Intent();
            intent.setAction("roco.gps.open");
            c1412xi.f4079a.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("TaidianImpl ,enableGPS-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableHome() {
        try {
            TaidianCustomApi c1412xi = f2945c;
            if (c1412xi == null) {
                throw null;
            }
            Intent intent = new Intent();
            intent.setAction("roco.enable.homekey");
            c1412xi.f4079a.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("TaidianImpl ,enableHome-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableLongPressPower() {
        try {
            TaidianCustomApi c1412xi = f2945c;
            if (c1412xi == null) {
                throw null;
            }
            Intent intent = new Intent();
            intent.setAction("roco.enable.longpower");
            c1412xi.f4079a.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("TaidianImpl ,enableLongPressPower-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableNavigation() {
        enableHome();
        enableBack();
        enableRecent();
        enableLongPressPower();
        enableVolume();
        enableShortPressPower();
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableRecent() {
        try {
            TaidianCustomApi c1412xi = f2945c;
            if (c1412xi == null) {
                throw null;
            }
            Intent intent = new Intent();
            intent.setAction("roco.enable.recentkey");
            c1412xi.f4079a.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("TaidianImpl ,enableRecent-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableShortPressPower() {
        try {
            TaidianCustomApi c1412xi = f2945c;
            if (c1412xi == null) {
                throw null;
            }
            Intent intent = new Intent();
            intent.setAction("roco.enable.shortpower");
            c1412xi.f4079a.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("TaidianImpl ,enableShortPressPower-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableUsb() {
        try {
            TaidianCustomApi c1412xi = f2945c;
            if (c1412xi == null) {
                throw null;
            }
            Intent intent = new Intent();
            intent.setAction("roco.usb.enable");
            c1412xi.f4079a.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("TaidianImpl ,enableUsb-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableVolume() {
        try {
            TaidianCustomApi c1412xi = f2945c;
            if (c1412xi == null) {
                throw null;
            }
            Intent intent = new Intent();
            intent.setAction("roco.enable.downupkey");
            c1412xi.f4079a.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("TaidianImpl ,enableVolume-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: r */
    public void mo1327r(List<String> list) {
        try {
            TaidianCustomApi c1412xi = f2945c;
            if (c1412xi == null) {
                throw null;
            }
            Intent intent = new Intent();
            intent.setAction("roco.wifi.advanced.disable");
            c1412xi.f4079a.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("TaidianImpl ,hideWifiAdvanced-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: s */
    public boolean mo1328s(List<String> list) {
        try {
            return f2945c.m2943a(list);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("TaidianImpl ,setAppWhiteList-error:"));
            return false;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: t */
    public void mo1329t(boolean z) {
        DevicePolicyManager devicePolicyManager = (DevicePolicyManager) f2946d.getSystemService("device_policy");
        try {
            if (z) {
                try {
                    LTKDateUtil.m1403m("WipeSoldier -- wipeDataIncludeSDCard..........");
                    devicePolicyManager.wipeData(1);
                } catch (SecurityException e) {
                    LTKDateUtil.m1393c("WipeSoldier -- wipeDataIncludeSDCard..........e = " + e);
                    e.printStackTrace();
                }
                return;
            }
            try {
                try {
                    devicePolicyManager.wipeData(0);
                    LTKDateUtil.m1403m("WipeSoldier -- wipeDataExcludeSDCard..........");
                } catch (SecurityException e2) {
                    LTKDateUtil.m1393c("WipeSoldier -- wipeDataExcludeSDCard..........e = " + e2);
                    e2.printStackTrace();
                }
            } catch (Throwable th) {
                CompilerOutline.m1746D(th, CompilerOutline.m1765j("TaidianImpl ,actionResetFactory-error:"));
            }
        } catch (Throwable th2) {
            CompilerOutline.m1746D(th2, CompilerOutline.m1765j("TaidianImpl ,actionResetFactory-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: y0 */
    public void mo1331y0(String str) {
        try {
            TaidianCustomApi c1412xi = f2945c;
            if (c1412xi == null) {
                throw null;
            }
            Intent intent = new Intent();
            intent.putExtra(Constants.KEY_PACKAGE_NAME, str);
            intent.setAction("roco.enalbe.apkname");
            c1412xi.f4079a.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("TaidianImpl ,actionEnableApp-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: z0 */
    public void mo1332z0(boolean z) {
        try {
            TaidianCustomApi c1412xi = f2945c;
            if (c1412xi == null) {
                throw null;
            }
            Intent intent = new Intent();
            File file = new File("/storage/sdcard1");
            intent.setAction("roco.tf.card.disable");
            if (file.exists()) {
                intent.putExtra("tfmount", true);
            } else {
                intent.putExtra("tfmount", false);
            }
            c1412xi.f4079a.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("TaidianImpl ,disableSdCard-error:"));
        }
    }
}
