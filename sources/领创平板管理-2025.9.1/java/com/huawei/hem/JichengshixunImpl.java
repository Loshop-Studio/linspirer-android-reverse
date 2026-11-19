package com.huawei.hem;

import android.content.Intent;
import android.text.TextUtils;
import com.loc.AMapLog;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.android.agoo.message.MessageService;

/* compiled from: JichengshixunImpl.java */
/* renamed from: com.huawei.hem.yc */
/* loaded from: classes.dex */
public class JichengshixunImpl extends AndroidImpl {

    /* renamed from: b */
    public static JichengshixunImpl f4214b = new JichengshixunImpl();

    /* renamed from: c */
    public static C0870c6 f4215c;

    /* compiled from: JichengshixunImpl.java */
    /* renamed from: com.huawei.hem.yc$a */
    public class a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ List f4216a;

        public a(JichengshixunImpl c1431yc, List list) {
            this.f4216a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            String strReplace;
            JichengshixunImpl.f4215c.m1474d("iptables  -N  user_ip");
            JichengshixunImpl.f4215c.m1474d("iptables  -F user");
            JichengshixunImpl.f4215c.m1474d("iptables  -F user_ip");
            JichengshixunImpl.f4215c.m1474d("iptables  -D OUTPUT -j user_ip");
            JichengshixunImpl.f4215c.m1474d("iptables  -I OUTPUT  4  -j user_ip");
            JichengshixunImpl.f4215c.m1474d("iptables  -A user -j REJECT");
            for (int i = 0; i < this.f4216a.size(); i++) {
                String str = (String) this.f4216a.get(i);
                String string = "";
                if (LauncherDeviceUtils.m1599p(str) || LauncherDeviceUtils.m1600q(str) || LauncherDeviceUtils.m1601r(str) || str.endsWith(".0/24") || str.endsWith(".0.0/16")) {
                    strReplace = "iptables -A user_ip -d # -j ACCEPT".replace("#", str);
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
                    strReplace = "iptables -I user -p udp --dport 53 -m string --hex-string |#| --algo bm -j ACCEPT".replace("#", string);
                }
                if (!TextUtils.isEmpty(strReplace)) {
                    JichengshixunImpl.f4215c.m1474d(strReplace);
                }
            }
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: A0 */
    public void mo1334A0(List<String> list) {
        LTKDateUtil.m1403m("JichengshixunImpl --addDisallowedUninstallPackages");
        try {
            if (AbstractC1102l9.m2273N(list)) {
                return;
            }
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                f4215c.m1487l(it.next());
            }
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JichengshixunImpl --addDisallowedUninstallPackages--error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: C */
    public void mo1305C() {
        LTKDateUtil.m1403m("JichengshixunImpl --disableNavigationBar");
        try {
            f4215c.m1461S(true);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JichengshixunImpl --disableNavigationBar--error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: C0 */
    public void mo1335C0() {
        LTKDateUtil.m1403m("JichengshixunImpl --disableFileShare");
        try {
            f4215c.m1454L(true);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JichengshixunImpl --disableFileShare--error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: E0 */
    public void mo1336E0(List<String> list) {
        StringBuilder sbM1765j = CompilerOutline.m1765j("JichengshixunImpl  --updatePersistentApp-");
        sbM1765j.append(list.toString());
        LTKDateUtil.m1403m(sbM1765j.toString());
        try {
            if (AbstractC1102l9.m2273N(list)) {
                return;
            }
            f4215c.m1480g();
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                f4215c.m1484i(it.next());
            }
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("JichengshixunImpl  --updatePersistentApp-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: F */
    public void mo1306F(String str) {
        LTKDateUtil.m1403m("JichengshixunImpl --actionSilentInstall");
        try {
            C0870c6 c0870c6 = f4215c;
            if (c0870c6 == null) {
                throw null;
            }
            C0870c6.m1442a("installApplication filePath" + str);
            c0870c6.m1501z(str, false);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JichengshixunImpl --actionSilentInstall--error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: G0 */
    public List<String> mo1307G0() {
        LTKDateUtil.m1403m("JichengshixunImpl --getNetworkAccessAppWhiteList");
        try {
            return new ArrayList(f4215c.m1500y());
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JichengshixunImpl --getNetworkAccessAppWhiteList--error:"));
            return null;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: I0 */
    public void mo1308I0(List<String> list) {
        LTKDateUtil.m1403m("JichengshixunImpl --setNetworkAccessAppWhiteList");
        try {
            if (AbstractC1102l9.m2273N(list)) {
                return;
            }
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                f4215c.m1472c(it.next());
            }
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JichengshixunImpl --setNetworkAccessAppWhiteList--error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: J */
    public void mo1309J(String str) {
        LTKDateUtil.m1403m("JichengshixunImpl --actionKillApp");
        try {
            f4215c.m1497v(str);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JichengshixunImpl --actionKillApp--error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: K0 */
    public void mo2052K0() {
        LTKDateUtil.m1403m("JichengshixunImpl --enableMicrophone");
        try {
            f4215c.m1458P(false);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JichengshixunImpl --enableMicrophone--error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: L0 */
    public List<String> mo1339L0() {
        LTKDateUtil.m1403m("JichengshixunImpl --getDisallowedUninstallPackageList");
        try {
            return new ArrayList(f4215c.m1486k());
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JichengshixunImpl --getDisallowedUninstallPackageList--error:"));
            return null;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: M0 */
    public List<String> mo1311M0() {
        LTKDateUtil.m1403m("JichengshixunImpl --getAppWhiteList");
        try {
            return new ArrayList(f4215c.m1488m());
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JichengshixunImpl --getAppWhiteList--error:"));
            return null;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: N */
    public boolean mo1312N(long j) {
        LTKDateUtil.m1403m("JichengshixunImpl --setSystemTime");
        try {
            f4215c.m1463U(j);
            return true;
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JichengshixunImpl --setSystemTime--error:"));
            return true;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: O */
    public void mo1313O(String str, String str2) {
        LTKDateUtil.m1403m("JichengshixunImpl --systemInit");
        m3086V0();
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: Q */
    public void mo1314Q(String str) {
        LTKDateUtil.m1403m("JichengshixunImpl --actionSilentUnInstall");
        try {
            f4215c.m1479f0(str);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JichengshixunImpl --actionSilentUnInstall--error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: Q0 */
    public void mo1342Q0(List<String> list) {
        LTKDateUtil.m1403m("JichengshixunImpl --removeDisallowedUninstallPackages");
        try {
            f4215c.m1485j();
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JichengshixunImpl --removeDisallowedUninstallPackages--error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: R */
    public void mo2056R(int i) {
        LTKDateUtil.m1403m("JichengshixunImpl --setControlMode");
        if (i == 2) {
            try {
                f4215c.m1475d0();
            } catch (Throwable th) {
                CompilerOutline.m1744B(th, CompilerOutline.m1765j("JichengshixunImpl --setControlMode--error:"));
            }
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: S */
    public void mo1315S() {
        LTKDateUtil.m1403m("JichengshixunImpl --disableSMS");
        try {
            f4215c.m1460R(true);
            f4215c.m1459Q(true);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JichengshixunImpl --disableSMS--error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: V */
    public boolean mo1316V(List<String> list) {
        f4215c.m1446D();
        f4215c.m1456N(1);
        f4215c.m1455M(true);
        new Thread(new a(this, list)).start();
        return false;
    }

    /* renamed from: V0 */
    public void m3086V0() {
        LTKDateUtil.m1403m("JichengshixunImpl --disableFactory");
        try {
            f4215c.m1476e(false);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JichengshixunImpl --disableFactory--error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: b0 */
    public void mo1318b0(List<String> list) {
        LTKDateUtil.m1403m("JichengshixunImpl --showWifiAdvanced");
        try {
            f4215c.m1471b0(false);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JichengshixunImpl --showWifiAdvanced--error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: c */
    public void mo1319c(boolean z) {
        LTKDateUtil.m1403m("JichengshixunImpl --enableSdCard");
        try {
            f4215c.m1464V(false);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JichengshixunImpl --enableSdCard--error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableBack() {
        LTKDateUtil.m1403m("JichengshixunImpl --disableBack");
        try {
            f4215c.m1489n(0);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JichengshixunImpl --disableBack--error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableBluetooth() {
        LTKDateUtil.m1403m("JichengshixunImpl --disableBluetooth");
        try {
            f4215c.m1447E(true);
            f4215c.m1448F(true);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JichengshixunImpl --disableBluetooth--error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableCamera() {
        LTKDateUtil.m1403m("JichengshixunImpl --disableCamera");
        try {
            f4215c.m1449G(true);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JichengshixunImpl --disableCamera--error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableFireWall() {
        LTKDateUtil.m1403m("JichengshixunImpl --disableFireWall");
        try {
            f4215c.m1455M(false);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JichengshixunImpl --disableFireWall--error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableGPS() {
        LTKDateUtil.m1403m("JichengshixunImpl --disableGPS");
        try {
            f4215c.m1457O(true);
            C0870c6 c0870c6 = f4215c;
            if (c0870c6 == null) {
                throw null;
            }
            C0870c6.m1442a("turnOffLocation");
            Intent intent = new Intent();
            intent.setAction("com.imt.mdm.trunongps");
            intent.putExtra("on", false);
            c0870c6.f2324a.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JichengshixunImpl --disableGPS--error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableHome() {
        LTKDateUtil.m1403m("JichengshixunImpl --disableHome");
        try {
            f4215c.m1490o(0);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JichengshixunImpl --disableHome--error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableLongPressPower() {
        LTKDateUtil.m1403m("JichengshixunImpl --disableLongPressPower");
        try {
            f4215c.m1491p(0);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JichengshixunImpl --disableLongPressPower--error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableMobileData() {
        LTKDateUtil.m1403m("JichengshixunImpl  --disableMobileData");
        try {
            f4215c.m1450H(true);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("JichengshixunImpl  --disableMobileData-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableNavigation() {
        disableHome();
        disableRecent();
        disableBack();
        disableVolume();
        disableShortPressPower();
        disableLongPressPower();
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableOTA() {
        LTKDateUtil.m1403m("JichengshixunImpl --disableOTA");
        try {
            f4215c.m1478f(false);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JichengshixunImpl --disableOTA--error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableOTG() {
        LTKDateUtil.m1403m("JichengshixunImpl --disableOTG");
        try {
            f4215c.m1467Y(true);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JichengshixunImpl --disableOTG--error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableRecent() {
        LTKDateUtil.m1403m("JichengshixunImpl --disableRecent");
        try {
            f4215c.m1493r(0);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JichengshixunImpl --disableRecent--error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableScreenShot() {
        LTKDateUtil.m1403m("JichengshixunImpl --disableScreenShot");
        try {
            f4215c.m1462T(true);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JichengshixunImpl --disableScreenShot--error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableShortPressPower() {
        LTKDateUtil.m1403m("JichengshixunImpl --disableShortPressPower");
        try {
            f4215c.m1492q(0);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JichengshixunImpl --disableShortPressPower--error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableSpeech() {
        LTKDateUtil.m1403m("JichengshixunImpl --disableSpeech");
        try {
            f4215c.m1469a0(true);
            f4215c.m1468Z(true);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JichengshixunImpl --disableSpeech--error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableUsb() {
        LTKDateUtil.m1403m("JichengshixunImpl --disableUsb");
        try {
            f4215c.m1466X(true);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JichengshixunImpl --disableUsb--error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableVolume() {
        LTKDateUtil.m1403m("JichengshixunImpl --disableVolume");
        try {
            f4215c.m1495t(0);
            f4215c.m1494s(0);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JichengshixunImpl --disableVolume--error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: e */
    public void mo1320e(String str) {
        LTKDateUtil.m1403m("JichengshixunImpl --actionDisableApp");
        try {
            f4215c.m1452J(str);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JichengshixunImpl --actionDisableApp--error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableBack() {
        LTKDateUtil.m1403m("JichengshixunImpl --enableBack");
        try {
            f4215c.m1489n(1);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JichengshixunImpl --enableBack--error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableBluetooth() {
        LTKDateUtil.m1403m("JichengshixunImpl --enableBluetooth");
        try {
            f4215c.m1447E(false);
            f4215c.m1448F(false);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JichengshixunImpl --enableBluetooth--error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableCamera() {
        LTKDateUtil.m1403m("JichengshixunImpl --enableCamera");
        try {
            f4215c.m1449G(false);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JichengshixunImpl --enableCamera--error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableFireWall() {
        LTKDateUtil.m1403m("JichengshixunImpl --enableFireWall");
        try {
            f4215c.m1455M(true);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JichengshixunImpl --enableFireWall--error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableGPS() {
        LTKDateUtil.m1403m("JichengshixunImpl --enableGPS");
        try {
            f4215c.m1457O(false);
            C0870c6 c0870c6 = f4215c;
            if (c0870c6 == null) {
                throw null;
            }
            C0870c6.m1442a("turnOnLocation");
            Intent intent = new Intent();
            intent.setAction("com.imt.mdm.trunongps");
            intent.putExtra("on", true);
            c0870c6.f2324a.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JichengshixunImpl --enableGPS--error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableHome() {
        LTKDateUtil.m1403m("JichengshixunImpl --enableHome");
        try {
            f4215c.m1490o(1);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JichengshixunImpl --enableHome--error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableLongPressPower() {
        LTKDateUtil.m1403m("JichengshixunImpl --enableLongPressPower");
        try {
            f4215c.m1491p(1);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JichengshixunImpl --enableLongPressPower--error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableMobileData() {
        LTKDateUtil.m1403m("JichengshixunImpl  --enableMobileData");
        try {
            f4215c.m1450H(false);
            f4215c.m1477e0(true);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("JichengshixunImpl  --enableMobileData-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableNavigation() {
        enableHome();
        enableBack();
        enableRecent();
        enableVolume();
        enableShortPressPower();
        enableLongPressPower();
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableOTA() {
        LTKDateUtil.m1403m("JichengshixunImpl --enableOTA");
        try {
            f4215c.m1478f(true);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JichengshixunImpl --enableOTA--error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableOTG() {
        LTKDateUtil.m1403m("JichengshixunImpl --enableOTG");
        try {
            f4215c.m1467Y(false);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JichengshixunImpl --enableOTG--error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableRecent() {
        LTKDateUtil.m1403m("JichengshixunImpl --enableRecent");
        try {
            f4215c.m1493r(1);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JichengshixunImpl --enableRecent--error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableScreenShot() {
        LTKDateUtil.m1403m("JichengshixunImpl --enableScreenShot");
        try {
            f4215c.m1462T(false);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JichengshixunImpl --enableScreenShot--error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableShortPressPower() {
        LTKDateUtil.m1403m("JichengshixunImpl --enableShortPressPower");
        try {
            f4215c.m1492q(1);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JichengshixunImpl --enableShortPressPower--error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableSpeech() {
        LTKDateUtil.m1403m("JichengshixunImpl --enableSpeech");
        try {
            f4215c.m1469a0(false);
            f4215c.m1468Z(false);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JichengshixunImpl --enableSpeech--error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableUsb() {
        LTKDateUtil.m1403m("JichengshixunImpl --enableUsb");
        try {
            f4215c.m1466X(false);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JichengshixunImpl --enableUsb--error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableVolume() {
        LTKDateUtil.m1403m("JichengshixunImpl --enableVolume");
        try {
            f4215c.m1495t(1);
            f4215c.m1494s(1);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JichengshixunImpl --enableVolume--error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: f */
    public void mo1348f() {
        LTKDateUtil.m1403m("JichengshixunImpl --enableFactory");
        try {
            f4215c.m1476e(true);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JichengshixunImpl --enableFactory--error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: g */
    public void mo1321g() {
        LTKDateUtil.m1403m("JichengshixunImpl --actionRebootDevice");
        try {
            f4215c.m1443A();
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JichengshixunImpl --actionRebootDevice--error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: g0 */
    public void mo1322g0() {
        LTKDateUtil.m1403m("JichengshixunImpl --enableSMS");
        try {
            f4215c.m1460R(false);
            f4215c.m1459Q(false);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JichengshixunImpl --enableSMS--error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: h */
    public void mo1323h() {
        LTKDateUtil.m1403m("JichengshixunImpl --cleanNetworkAccessAppWhiteList");
        try {
            f4215c.m1445C();
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JichengshixunImpl --cleanNetworkAccessAppWhiteList--error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: h0 */
    public void mo1324h0() {
        LTKDateUtil.m1403m("JichengshixunImpl --actionShutdown");
        try {
            f4215c.m1473c0();
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JichengshixunImpl --actionShutdown--error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: i */
    public void mo1325i() {
        LTKDateUtil.m1403m("JichengshixunImpl --enableNavigationBar");
        try {
            f4215c.m1461S(false);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JichengshixunImpl --enableNavigationBar--error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: o */
    public List<String> mo1352o() {
        LTKDateUtil.m1403m("JichengshixunImpl  --getPersistentApp");
        try {
            return new ArrayList(f4215c.m1482h());
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JichengshixunImpl --getPersistentApp--error:"));
            return null;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: o0 */
    public void mo1353o0() {
        LTKDateUtil.m1403m("JichengshixunImpl --enableFileShare");
        try {
            f4215c.m1454L(false);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JichengshixunImpl --enableFileShare--error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: r */
    public void mo1327r(List<String> list) {
        LTKDateUtil.m1403m("JichengshixunImpl --hideWifiAdvanced");
        try {
            f4215c.m1471b0(true);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JichengshixunImpl --hideWifiAdvanced--error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void removePersistentApp(List<String> list) {
        StringBuilder sbM1765j = CompilerOutline.m1765j("JichengshixunImpl  --removePersistentApp-");
        sbM1765j.append(list.toString());
        LTKDateUtil.m1403m(sbM1765j.toString());
        try {
            f4215c.m1480g();
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1765j("JichengshixunImpl  --removePersistentApp-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: s */
    public boolean mo1328s(List<String> list) {
        LTKDateUtil.m1403m("JichengshixunImpl --setAppWhiteList");
        try {
            if (AbstractC1102l9.m2273N(list)) {
                f4215c.m1444B();
                return true;
            }
            f4215c.m1444B();
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                f4215c.m1470b(it.next());
            }
            return true;
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JichengshixunImpl --setAppWhiteList--error:"));
            return true;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: t */
    public void mo1329t(boolean z) {
        LTKDateUtil.m1403m("JichengshixunImpl --actionResetFactory");
        try {
            C0870c6 c0870c6 = f4215c;
            if (c0870c6 == null) {
                throw null;
            }
            Intent intent = new Intent();
            intent.setAction("com.imt.mdm.factoryreset");
            c0870c6.f2324a.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JichengshixunImpl --actionResetFactory--error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: t0 */
    public List<String> mo1330t0() {
        C0870c6 c0870c6;
        String strSubstring;
        LTKDateUtil.m1403m("JichengshixunImpl --getUrlWhiteList");
        ArrayList arrayList = new ArrayList();
        try {
            c0870c6 = f4215c;
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JichengshixunImpl --getUrlWhiteList--error:"));
        }
        if (c0870c6 == null) {
            throw null;
        }
        C0870c6.m1442a("getNetworkAccessWhitelist");
        ArrayList arrayList2 = new ArrayList(c0870c6.m1483h0());
        if (!AbstractC1102l9.m2273N(arrayList2)) {
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                if (str.contains("|") || str.contains("d")) {
                    if (str.contains("|")) {
                        strSubstring = LauncherDeviceUtils.m1585b(str.substring(str.indexOf("|") + 1, str.lastIndexOf("|")));
                    } else if (str.contains("d")) {
                        strSubstring = str.substring(str.indexOf("d") + 1, str.lastIndexOf(AMapLog.f5950j) - 1);
                    } else {
                        strSubstring = null;
                    }
                    arrayList.add(strSubstring);
                }
            }
        }
        return arrayList;
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: v0 */
    public void mo2079v0(List<String> list) {
        LTKDateUtil.m1403m("JichengshixunImpl --actionClearCache");
        try {
            if (AbstractC1102l9.m2273N(list)) {
                return;
            }
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                f4215c.m1496u(it.next());
            }
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JichengshixunImpl --actionClearCache--error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: w */
    public void mo2080w() {
        LTKDateUtil.m1403m("JichengshixunImpl --disableMicrophone");
        try {
            f4215c.m1458P(true);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JichengshixunImpl --disableMicrophone--error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: y0 */
    public void mo1331y0(String str) {
        LTKDateUtil.m1403m("JichengshixunImpl --actionEnableApp");
        try {
            f4215c.m1453K(str);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JichengshixunImpl --actionEnableApp--error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: z0 */
    public void mo1332z0(boolean z) {
        LTKDateUtil.m1403m("JichengshixunImpl --disableSdCard");
        try {
            f4215c.m1464V(true);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1765j("JichengshixunImpl --disableSdCard--error:"));
        }
    }
}
