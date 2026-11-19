package com.huawei.hem;

import android.app.admin.DevicePolicyManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.RemoteException;
import android.text.TextUtils;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import org.android.agoo.message.MessageService;

/* compiled from: FiveElementsImpl.java */
/* renamed from: com.huawei.hem.rc */
/* loaded from: classes.dex */
public class FiveElementsImpl extends AndroidImpl {

    /* renamed from: b */
    public static FiveElementsImpl f3620b = new FiveElementsImpl();

    /* renamed from: c */
    public static Context f3621c;

    /* renamed from: d */
    public static FnfSDK f3622d;

    /* renamed from: e */
    public static ComponentName f3623e;

    /* compiled from: FiveElementsImpl.java */
    /* renamed from: com.huawei.hem.rc$a */
    public class a implements OnGetIPTablesMessage {
        public a(FiveElementsImpl c1256rc) {
        }

        @Override // com.huawei.hem.InterfaceC1125m6
        /* renamed from: a */
        public void mo2347a(List<String> list) {
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                LTKDateUtil.m1393c("write url：" + it.next());
            }
        }

        @Override // com.huawei.hem.InterfaceC1125m6
        /* renamed from: b */
        public void mo2348b(String str) {
            LTKDateUtil.m1393c("write url get message:" + str);
        }
    }

    /* compiled from: FiveElementsImpl.java */
    /* renamed from: com.huawei.hem.rc$b */
    public class b implements OnGetIPTablesMessage {
        public b(FiveElementsImpl c1256rc) {
        }

        @Override // com.huawei.hem.InterfaceC1125m6
        /* renamed from: a */
        public void mo2347a(List<String> list) {
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                LTKDateUtil.m1393c("table user dns white url:" + it.next());
            }
        }

        @Override // com.huawei.hem.InterfaceC1125m6
        /* renamed from: b */
        public void mo2348b(String str) {
            LTKDateUtil.m1393c("table user dns white url get message :" + str);
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: F */
    public void mo1306F(String str) {
        try {
            FnfSDK c1074k6 = f3622d;
            Context context = f3621c;
            if (c1074k6.f3035a == null) {
                throw null;
            }
            Intent intent = new Intent("action.executor");
            intent.setClassName("com.fnf.executor", "com.fnf.executor.service.FnfService");
            intent.putExtra("task", "task.install");
            intent.putExtra("parameter", str);
            context.startService(intent);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "FiveElementsImpl actionSilentInstall "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: M0 */
    public List<String> mo1311M0() {
        try {
            return f3622d.f3036b.mo2117o1();
        } catch (RemoteException e) {
            StringBuilder sbM1764i = CompilerOutline.m1764i(e, "FiveElementsImpl getAppWhiteList ");
            sbM1764i.append(e.getMessage());
            LTKDateUtil.m1393c(sbM1764i.toString());
            return new ArrayList();
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: N */
    public boolean mo1312N(long j) {
        String str = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date(j));
        try {
            FnfSDK c1074k6 = f3622d;
            Context context = f3621c;
            if (c1074k6.f3035a == null) {
                throw null;
            }
            Intent intent = new Intent("action.executor");
            intent.setClassName("com.fnf.executor", "com.fnf.executor.service.FnfService");
            intent.putExtra("task", "task.date");
            intent.putExtra("parameter", str);
            context.startService(intent);
            return true;
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "FiveElementsImpl setSystemTime "));
            return true;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: O */
    public void mo1313O(String str, String str2) {
        try {
            f3622d.m2164a(f3621c, str, f3623e.getClassName());
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "FiveElementsImpl actionActiveDeviceAdmin "));
        }
        disableFireWall();
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: Q */
    public void mo1314Q(String str) {
        try {
            FnfSDK c1074k6 = f3622d;
            Context context = f3621c;
            if (c1074k6.f3035a == null) {
                throw null;
            }
            Intent intent = new Intent("action.executor");
            intent.setClassName("com.fnf.executor", "com.fnf.executor.service.FnfService");
            intent.putExtra("task", "task.uninstall");
            intent.putExtra("parameter", str);
            context.startService(intent);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "FiveElementsImpl actionSilentUnInstall "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: V */
    public boolean mo1316V(List<String> list) {
        String strReplace;
        f3622d.m2184u(f3621c, "iptables   -w -t filter -N  user_ip");
        f3622d.m2184u(f3621c, "iptables -w -F user");
        f3622d.m2184u(f3621c, "iptables -w -F user_ip");
        f3622d.m2184u(f3621c, "iptables -w -D OUTPUT   -j user_ip");
        f3622d.m2184u(f3621c, "iptables -w -I OUTPUT  4  -j user_ip");
        f3622d.m2184u(f3621c, "iptables   -w -A user  -j REJECT");
        if (list != null && list.size() != 0) {
            for (int i = 0; i < list.size(); i++) {
                String str = list.get(i);
                String string = "";
                if (LauncherDeviceUtils.m1599p(str) || LauncherDeviceUtils.m1600q(str) || LauncherDeviceUtils.m1601r(str) || str.endsWith(".0/24") || str.endsWith(".0.0/16")) {
                    strReplace = "iptables -w -A user_ip -d # -j ACCEPT".replace("#", str);
                    string = str;
                } else if (str.contains(".")) {
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
                    strReplace = "iptables -w -I user -p udp --dport 53 -m string --hex-string \"|#|\" --algo bm -j ACCEPT".replace("#", string);
                } else {
                    strReplace = "";
                }
                LTKDateUtil.m1403m(str + " ==> " + string);
                if (!TextUtils.isEmpty(strReplace)) {
                    f3622d.m2185v(f3621c, strReplace, new a(this));
                }
            }
        }
        return false;
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: b0 */
    public void mo1318b0(List<String> list) {
        try {
            f3622d.m2180q(f3621c);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "FiveElementsImpl showWifiAdvanced "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: c */
    public void mo1319c(boolean z) {
        try {
            f3622d.m2178o(f3621c);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "FiveElementsImpl enableSdCard "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableBack() {
        try {
            f3622d.m2181r(f3621c);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "FiveElementsImpl disableBack "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableBluetooth() {
        try {
            f3622d.m2165b(f3621c);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "FiveElementsImpl disableBluetooth "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableCamera() {
        try {
            f3622d.m2166c(f3621c);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "FiveElementsImpl disableCamera "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableFireWall() {
        try {
            f3622d.m2184u(f3621c, "iptables -w -D OUTPUT -j REJECT");
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "FiveElementsImpl disableFireWall "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableGPS() {
        try {
            f3622d.m2167d(f3621c);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "FiveElementsImpl disableGPS "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableHome() {
        try {
            f3622d.m2182s(f3621c);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "FiveElementsImpl disableHome  "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableLongPressPower() {
        try {
            f3622d.m2168e(f3621c);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "FiveElementsImpl disableLongPressPower "));
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
            f3622d.m2183t(f3621c);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "FiveElementsImpl disableRecent "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableShortPressPower() {
        try {
            f3622d.m2169f(f3621c);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "FiveElementsImpl disableShortPressPower "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableUsb() {
        try {
            FnfSDK c1074k6 = f3622d;
            Context context = f3621c;
            if (c1074k6.f3035a == null) {
                throw null;
            }
            Intent intent = new Intent("com.fnf.action.usbConnState");
            intent.putExtra("disable", true);
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "FiveElementsImpl disableUsb "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableVolume() {
        try {
            f3622d.m2171h(f3621c);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "FiveElementsImpl disableVolume "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: e */
    public void mo1320e(String str) {
        try {
            FnfSDK c1074k6 = f3622d;
            Context context = f3621c;
            if (c1074k6.f3035a == null) {
                throw null;
            }
            Intent intent = new Intent("action.executor");
            intent.setClassName("com.fnf.executor", "com.fnf.executor.service.FnfService");
            intent.putExtra("task", "task.stopuse");
            intent.putExtra("parameter", str);
            context.startService(intent);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "FiveElementsImpl actionDisableApp "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableBack() {
        try {
            f3622d.m2186w(f3621c);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "FiveElementsImpl enableBack"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableBluetooth() {
        try {
            f3622d.m2173j(f3621c);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "FiveElementsImpl enableBluetooth "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableCamera() {
        try {
            f3622d.m2174k(f3621c);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "FiveElementsImpl enableCamera "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableFireWall() {
        try {
            f3622d.m2184u(f3621c, "iptables -w -A OUTPUT -j REJECT");
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "FiveElementsImpl enableFireWall "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableGPS() {
        try {
            f3622d.m2175l(f3621c);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "FiveElementsImpl enableGPS "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableHome() {
        try {
            f3622d.m2187x(f3621c);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "FiveElementsImpl enableHome "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableLongPressPower() {
        try {
            f3622d.m2176m(f3621c);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "FiveElementsImpl enableLongPressPower "));
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
    public void enableRecent() {
        try {
            f3622d.m2188y(f3621c);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "FiveElementsImpl enableRecent "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableShortPressPower() {
        try {
            f3622d.m2177n(f3621c);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "FiveElementsImpl enableShortPressPower "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableUsb() {
        try {
            FnfSDK c1074k6 = f3622d;
            Context context = f3621c;
            if (c1074k6.f3035a == null) {
                throw null;
            }
            Intent intent = new Intent("com.fnf.action.usbConnState");
            intent.putExtra("disable", false);
            context.sendBroadcast(intent);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "FiveElementsImpl enableUsb "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableVolume() {
        try {
            f3622d.m2179p(f3621c);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "FiveElementsImpl enableVolume "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: r */
    public void mo1327r(List<String> list) {
        try {
            f3622d.m2172i(f3621c);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "FiveElementsImpl hideWifiAdvanced "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: s */
    public boolean mo1328s(List<String> list) {
        try {
            FnfSDK c1074k6 = f3622d;
            Context context = f3621c;
            ArrayList<String> arrayList = (ArrayList) list;
            if (c1074k6.f3035a == null) {
                throw null;
            }
            Intent intent = new Intent("action.executor");
            intent.setClassName("com.fnf.executor", "com.fnf.executor.service.FnfService");
            intent.putExtra("task", "task.list.installfilter");
            intent.putStringArrayListExtra("p_list", arrayList);
            context.startService(intent);
            return false;
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "FiveElementsImpl setAppWhiteList "));
            return false;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: t */
    public void mo1329t(boolean z) {
        DevicePolicyManager devicePolicyManager = (DevicePolicyManager) f3621c.getSystemService("device_policy");
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
            f3622d.m2185v(f3621c, "iptables -w -S user_dns", new b(this));
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "FiveElementsImpl getUrlWhiteList "));
        }
        return new ArrayList();
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: y0 */
    public void mo1331y0(String str) {
        try {
            FnfSDK c1074k6 = f3622d;
            Context context = f3621c;
            if (c1074k6.f3035a == null) {
                throw null;
            }
            Intent intent = new Intent("action.executor");
            intent.setClassName("com.fnf.executor", "com.fnf.executor.service.FnfService");
            intent.putExtra("task", "task.startuse");
            intent.putExtra("parameter", str);
            context.startService(intent);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "FiveElementsImpl actionEnableApp "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: z0 */
    public void mo1332z0(boolean z) {
        try {
            f3622d.m2170g(f3621c);
        } catch (Throwable th) {
            CompilerOutline.m1744B(th, CompilerOutline.m1771p(th, "FiveElementsImpl disableSdCard "));
        }
    }
}
