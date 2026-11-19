package com.huawei.hem;

import android.app.admin.DevicePolicyManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import android.text.TextUtils;
import com.huawei.hem.IUrlCtrlTools;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import org.android.agoo.message.MessageService;

/* compiled from: AngdaImpl.java */
/* renamed from: com.huawei.hem.kc */
/* loaded from: classes.dex */
public class AngdaImpl extends AndroidImpl {

    /* renamed from: c */
    public static IUrlCtrlTools f3072c;

    /* renamed from: d */
    public static Context f3073d;

    /* renamed from: b */
    public static AngdaImpl f3071b = new AngdaImpl();

    /* renamed from: e */
    public static ServiceConnection f3074e = new a();

    /* compiled from: AngdaImpl.java */
    /* renamed from: com.huawei.hem.kc$a */
    public static class a implements ServiceConnection {
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            AngdaImpl.f3072c = IUrlCtrlTools.a.m1854J(iBinder);
            LTKDateUtil.m1403m("connectionService success");
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            AngdaImpl.f3072c = null;
            LTKDateUtil.m1403m("connectionService error");
            AngdaImpl.m2194V0(AngdaImpl.f3073d);
        }
    }

    /* compiled from: AngdaImpl.java */
    /* renamed from: com.huawei.hem.kc$b */
    public class b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ List f3075a;

        public b(AngdaImpl c1080kc, List list) {
            this.f3075a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            String strReplace;
            ArrayList arrayListM1772q = CompilerOutline.m1772q("-t filter -N user_ip", "-F user", "-F user_ip", "-D OUTPUT -j user_ip", "-I OUTPUT 4 -j user_ip");
            arrayListM1772q.add("-A user -j REJECT");
            for (int i = 0; i < this.f3075a.size(); i++) {
                String str = (String) this.f3075a.get(i);
                String string = "";
                if (LauncherDeviceUtils.m1599p(str) || LauncherDeviceUtils.m1600q(str) || LauncherDeviceUtils.m1601r(str) || str.endsWith(".0/24") || str.endsWith(".0.0/16")) {
                    strReplace = "-A user_ip -d # -j ACCEPT".replace("#", str);
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
                            } else if (strArrSplit[i3].length() < 10) {
                                StringBuilder sbM1765j2 = CompilerOutline.m1765j(string);
                                sbM1765j2.append(LauncherDeviceUtils.m1608y(strArrSplit[i2]));
                                sbM1765j2.append(MessageService.MSG_DB_READY_REPORT);
                                sbM1765j2.append(strArrSplit[i3].length());
                                string = sbM1765j2.toString();
                            } else {
                                StringBuilder sbM1765j3 = CompilerOutline.m1765j(string);
                                sbM1765j3.append(LauncherDeviceUtils.m1608y(strArrSplit[i2]));
                                sbM1765j3.append(strArrSplit[i3].length());
                                string = sbM1765j3.toString();
                            }
                            i2 = i3;
                        }
                    }
                    strReplace = "-I user -p udp --dport 53 -m string --hex-string |#| --algo bm -j ACCEPT".replace("#", string);
                }
                if (!TextUtils.isEmpty(strReplace)) {
                    arrayListM1772q.add(strReplace);
                }
            }
            StringBuilder sbM1765j4 = CompilerOutline.m1765j("AngdaImpl  ==> ");
            sbM1765j4.append(arrayListM1772q.toString());
            LTKDateUtil.m1403m(sbM1765j4.toString());
            try {
                if (AngdaImpl.f3072c == null) {
                    return;
                }
                Iterator it = arrayListM1772q.iterator();
                while (it.hasNext()) {
                    String str2 = (String) it.next();
                    String[] strArrM2276Q = AbstractC1102l9.m2276Q(str2, " ");
                    if (strArrM2276Q != null && strArrM2276Q.length != 0) {
                        LTKDateUtil.m1403m("AngdaImpl angda url:" + str2);
                        AngdaImpl.f3072c.mo1845J2(strArrM2276Q);
                    }
                }
            } catch (RemoteException e) {
                e.printStackTrace();
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    /* compiled from: AngdaImpl.java */
    /* renamed from: com.huawei.hem.kc$c */
    public class c implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ List f3076a;

        public c(AngdaImpl c1080kc, List list) {
            this.f3076a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (AngdaImpl.f3072c == null) {
                    return;
                }
                Iterator it = this.f3076a.iterator();
                while (it.hasNext()) {
                    AngdaImpl.f3072c.mo1847Y0(true, (String) it.next(), true);
                }
            } catch (RemoteException e) {
                CompilerOutline.m1774s(e, CompilerOutline.m1764i(e, "AngdaImpl setNetworkAccessAppWhiteList "));
            } catch (Throwable th) {
                CompilerOutline.m1746D(th, CompilerOutline.m1771p(th, "AngdaImpl setNetworkAccessAppWhiteList "));
            }
        }
    }

    /* renamed from: V0 */
    public static void m2194V0(Context context) {
        LTKDateUtil.m1403m("InitAidlService success");
        Intent intent = new Intent("com.android.url_control_tool");
        intent.setPackage("com.orgdhy.blackangel");
        context.bindService(intent, f3074e, 1);
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: F */
    public void mo1306F(String str) {
        try {
            if (f3072c == null) {
                return;
            }
            f3072c.mo1846T1(str, true);
        } catch (RemoteException e) {
            CompilerOutline.m1774s(e, CompilerOutline.m1764i(e, "AngdaImpl actionSilentInstall "));
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1771p(th, "AngdaImpl actionSilentInstall "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: I0 */
    public void mo1308I0(List<String> list) {
        new Thread(new c(this, list)).start();
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: M0 */
    public List<String> mo1311M0() {
        try {
            if (f3072c == null) {
                return new ArrayList();
            }
            String[] strArrMo1853y = f3072c.mo1853y(5);
            ArrayList arrayList = new ArrayList();
            if (strArrMo1853y != null && strArrMo1853y.length != 0) {
                return Arrays.asList(strArrMo1853y);
            }
            return arrayList;
        } catch (RemoteException e) {
            CompilerOutline.m1774s(e, CompilerOutline.m1764i(e, "AngdaImpl getAppWhiteList "));
            return new ArrayList();
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1771p(th, "AngdaImpl getAppWhiteList "));
            return new ArrayList();
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: N */
    public boolean mo1312N(long j) {
        try {
        } catch (RemoteException e) {
            CompilerOutline.m1774s(e, CompilerOutline.m1764i(e, "AngdaImpl setSystemTime "));
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1771p(th, "AngdaImpl setSystemTime "));
        }
        if (f3072c == null) {
            return true;
        }
        f3072c.mo1851p1(j / 1000);
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
            if (f3072c == null) {
                return;
            }
            f3072c.mo1846T1(str, false);
        } catch (RemoteException e) {
            CompilerOutline.m1774s(e, CompilerOutline.m1764i(e, "AngdaImpl actionSilentUnInstall "));
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1771p(th, "AngdaImpl actionSilentUnInstall "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: V */
    public boolean mo1316V(List<String> list) {
        new Thread(new b(this, list)).start();
        return true;
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: b0 */
    public void mo1318b0(List<String> list) {
        try {
            if (f3072c == null) {
                return;
            }
            f3072c.mo1848Z0(2, true);
        } catch (RemoteException e) {
            CompilerOutline.m1774s(e, CompilerOutline.m1764i(e, "AngdaImpl showWifiAdvanced "));
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1771p(th, "AngdaImpl showWifiAdvanced "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: c */
    public void mo1319c(boolean z) {
        try {
            if (f3072c == null) {
                return;
            }
            f3072c.mo1848Z0(3, true);
        } catch (RemoteException e) {
            CompilerOutline.m1774s(e, CompilerOutline.m1764i(e, "AngdaImpl enableSdCard "));
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1771p(th, "AngdaImpl enableSdCard "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableBack() {
        try {
            if (f3072c == null) {
                return;
            }
            f3072c.mo1850k2(4, false, false);
        } catch (RemoteException e) {
            CompilerOutline.m1774s(e, CompilerOutline.m1764i(e, "AngdaImpl disableBack "));
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1771p(th, "AngdaImpl disableBack "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableBluetooth() {
        try {
            if (f3072c == null) {
                return;
            }
            f3072c.mo1848Z0(1, false);
        } catch (RemoteException e) {
            CompilerOutline.m1774s(e, CompilerOutline.m1764i(e, "AngdaImpl disableBluetooth "));
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1771p(th, "AngdaImpl disableBluetooth "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableCamera() {
        try {
            if (f3072c == null) {
                return;
            }
            f3072c.mo1848Z0(5, false);
        } catch (RemoteException e) {
            CompilerOutline.m1774s(e, CompilerOutline.m1764i(e, "AngdaImpl disableCamera "));
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1771p(th, "AngdaImpl disableCamera "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableGPS() {
        try {
            if (f3072c == null) {
                return;
            }
            f3072c.mo1848Z0(0, false);
        } catch (RemoteException e) {
            CompilerOutline.m1774s(e, CompilerOutline.m1764i(e, "AngdaImpl disableGPS "));
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1771p(th, "AngdaImpl disableGPS "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableHome() {
        try {
            if (f3072c == null) {
                return;
            }
            f3072c.mo1850k2(3, false, false);
        } catch (RemoteException e) {
            CompilerOutline.m1774s(e, CompilerOutline.m1764i(e, "AngdaImpl disableHome "));
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1771p(th, "AngdaImpl disableHome "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableLongPressPower() {
        try {
            if (f3072c == null) {
                return;
            }
            f3072c.mo1850k2(26, true, false);
        } catch (RemoteException e) {
            CompilerOutline.m1774s(e, CompilerOutline.m1764i(e, "AngdaImpl disableLongPressPower "));
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1771p(th, "AngdaImpl disableLongPressPower "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableNavigation() {
        disableHome();
        disableBack();
        disableRecent();
        disableVolume();
        disableShortPressPower();
        disableLongPressPower();
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableRecent() {
        try {
            if (f3072c == null) {
                return;
            }
            f3072c.mo1850k2(187, false, false);
        } catch (RemoteException e) {
            CompilerOutline.m1774s(e, CompilerOutline.m1764i(e, "AngdaImpl disableRecent "));
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1771p(th, "AngdaImpl disableRecent "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableShortPressPower() {
        try {
            if (f3072c == null) {
                return;
            }
            f3072c.mo1850k2(26, false, true);
        } catch (RemoteException e) {
            CompilerOutline.m1774s(e, CompilerOutline.m1764i(e, "AngdaImpl disableShortPressPower "));
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1771p(th, "AngdaImpl disableShortPressPower "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableUsb() {
        try {
            if (f3072c == null) {
                return;
            }
            f3072c.mo1848Z0(4, false);
        } catch (RemoteException e) {
            CompilerOutline.m1774s(e, CompilerOutline.m1764i(e, "AngdaImpl disableUsb "));
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1771p(th, "AngdaImpl disableUsb "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableVolume() {
        try {
            if (f3072c == null) {
                return;
            }
            f3072c.mo1850k2(25, false, false);
            f3072c.mo1850k2(24, false, false);
        } catch (RemoteException e) {
            CompilerOutline.m1774s(e, CompilerOutline.m1764i(e, "AngdaImpl disableVolume "));
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1771p(th, "AngdaImpl disableVolume "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: e */
    public void mo1320e(String str) {
        try {
            if (f3072c == null) {
                return;
            }
            f3072c.mo1852r(str, false);
        } catch (RemoteException e) {
            StringBuilder sbM1764i = CompilerOutline.m1764i(e, "angda error:");
            sbM1764i.append(e.getMessage());
            LTKDateUtil.m1403m(sbM1764i.toString());
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1771p(th, "angda throw error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableBack() {
        try {
            if (f3072c == null) {
                return;
            }
            f3072c.mo1850k2(4, true, true);
        } catch (RemoteException e) {
            CompilerOutline.m1775t(e, CompilerOutline.m1765j("AngdaImpl enableBack "));
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1771p(th, "AngdaImpl enableBack "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableBluetooth() {
        try {
            if (f3072c == null) {
                return;
            }
            f3072c.mo1848Z0(1, true);
        } catch (RemoteException e) {
            CompilerOutline.m1774s(e, CompilerOutline.m1764i(e, "AngdaImpl enableBluetooth "));
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1771p(th, "AngdaImpl enableBluetooth "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableCamera() {
        try {
            if (f3072c == null) {
                return;
            }
            f3072c.mo1848Z0(5, true);
        } catch (RemoteException e) {
            CompilerOutline.m1774s(e, CompilerOutline.m1764i(e, "AngdaImpl enableCamera "));
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1771p(th, "AngdaImpl enableCamera "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableGPS() {
        try {
            if (f3072c == null) {
                return;
            }
            f3072c.mo1848Z0(0, true);
        } catch (RemoteException e) {
            CompilerOutline.m1774s(e, CompilerOutline.m1764i(e, "AngdaImpl enableGPS "));
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1771p(th, "AngdaImpl enableGPS "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableHome() {
        try {
            if (f3072c == null) {
                return;
            }
            f3072c.mo1850k2(3, true, true);
        } catch (RemoteException e) {
            CompilerOutline.m1774s(e, CompilerOutline.m1764i(e, "AngdaImpl enableHome "));
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1771p(th, "AngdaImpl enableHome "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableLongPressPower() {
        try {
            if (f3072c == null) {
                return;
            }
            f3072c.mo1850k2(26, true, true);
        } catch (RemoteException e) {
            CompilerOutline.m1774s(e, CompilerOutline.m1764i(e, "AngdaImpl enableLongPressPower "));
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1771p(th, "AngdaImpl enableLongPressPower "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableNavigation() {
        enableHome();
        enableBack();
        enableRecent();
        enableVolume();
        enableLongPressPower();
        enableLongPressPower();
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableRecent() {
        try {
            if (f3072c == null) {
                return;
            }
            f3072c.mo1850k2(187, true, true);
        } catch (RemoteException e) {
            CompilerOutline.m1774s(e, CompilerOutline.m1764i(e, "AngdaImpl enableRecent "));
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1771p(th, "AngdaImpl enableRecent "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableShortPressPower() {
        try {
            if (f3072c == null) {
                return;
            }
            f3072c.mo1850k2(26, true, true);
        } catch (RemoteException e) {
            CompilerOutline.m1774s(e, CompilerOutline.m1764i(e, "AngdaImpl enableShortPressPower "));
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1771p(th, "AngdaImpl enableShortPressPower "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableUsb() {
        try {
            if (f3072c == null) {
                return;
            }
            f3072c.mo1848Z0(4, true);
        } catch (RemoteException e) {
            CompilerOutline.m1774s(e, CompilerOutline.m1764i(e, "AngdaImpl enableUsb "));
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1771p(th, "AngdaImpl enableUsb "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableVolume() {
        try {
            if (f3072c == null) {
                return;
            }
            f3072c.mo1850k2(25, true, true);
            f3072c.mo1850k2(24, true, true);
        } catch (RemoteException e) {
            CompilerOutline.m1774s(e, CompilerOutline.m1764i(e, "AngdaImpl enableVolume "));
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1771p(th, "AngdaImpl enableVolume "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: r */
    public void mo1327r(List<String> list) {
        try {
            if (f3072c == null) {
                return;
            }
            f3072c.mo1848Z0(2, false);
        } catch (RemoteException e) {
            CompilerOutline.m1774s(e, CompilerOutline.m1764i(e, "AngdaImpl hideWifiAdvanced "));
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1771p(th, "AngdaImpl hideWifiAdvanced "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: s */
    public boolean mo1328s(List<String> list) {
        try {
        } catch (RemoteException e) {
            CompilerOutline.m1774s(e, CompilerOutline.m1764i(e, "AngdaImpl setAppWhiteList "));
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1771p(th, "AngdaImpl setAppWhiteList "));
        }
        if (f3072c == null) {
            return false;
        }
        f3072c.mo1849g2(AbstractC1102l9.m2275P(list));
        return false;
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: t */
    public void mo1329t(boolean z) {
        DevicePolicyManager devicePolicyManager = (DevicePolicyManager) f3073d.getSystemService("device_policy");
        if (z) {
            try {
                LTKDateUtil.m1403m("WipeSoldier -- wipeDataIncludeSDCard..........");
                devicePolicyManager.wipeData(1);
                return;
            } catch (SecurityException e) {
                LTKDateUtil.m1393c("WipeSoldier -- wipeDataIncludeSDCard..........e = " + e);
                e.printStackTrace();
                return;
            }
        }
        try {
            devicePolicyManager.wipeData(0);
            LTKDateUtil.m1403m("WipeSoldier -- wipeDataExcludeSDCard..........");
        } catch (SecurityException e2) {
            LTKDateUtil.m1393c("WipeSoldier -- wipeDataExcludeSDCard..........e = " + e2);
            e2.printStackTrace();
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: t0 */
    public List<String> mo1330t0() {
        try {
            if (f3072c == null) {
                return new ArrayList();
            }
            String[] strArrMo1853y = f3072c.mo1853y(1);
            ArrayList arrayList = new ArrayList();
            if (strArrMo1853y != null && strArrMo1853y.length != 0) {
                return Arrays.asList(strArrMo1853y);
            }
            return arrayList;
        } catch (RemoteException e) {
            CompilerOutline.m1774s(e, CompilerOutline.m1764i(e, "AngdaImpl getUrlWhiteList "));
            return new ArrayList();
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1771p(th, "AngdaImpl getUrlWhiteList "));
            return new ArrayList();
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: y0 */
    public void mo1331y0(String str) {
        try {
            if (f3072c == null) {
                return;
            }
            f3072c.mo1852r(str, true);
        } catch (RemoteException e) {
            CompilerOutline.m1774s(e, CompilerOutline.m1764i(e, "AngdaImpl actionEnableApp "));
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1771p(th, "AngdaImpl actionEnableApp "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: z0 */
    public void mo1332z0(boolean z) {
        try {
            if (f3072c == null) {
                return;
            }
            f3072c.mo1848Z0(3, false);
        } catch (RemoteException e) {
            CompilerOutline.m1774s(e, CompilerOutline.m1764i(e, "AngdaImpl disableSdCard "));
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1771p(th, "AngdaImpl disableSdCard "));
        }
    }
}
