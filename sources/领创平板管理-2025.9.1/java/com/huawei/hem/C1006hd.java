package com.huawei.hem;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.android.agoo.message.MessageService;

/* compiled from: SupiImpl.java */
/* renamed from: com.huawei.hem.hd */
/* loaded from: classes.dex */
public class C1006hd extends C1055jc {

    /* renamed from: c */
    public static Context f2843c;

    /* renamed from: b */
    public InterfaceC1337ui f2844b;

    /* compiled from: SupiImpl.java */
    /* renamed from: com.huawei.hem.hd$a */
    public static final class a {

        /* renamed from: a */
        public static final C1006hd f2845a = new C1006hd(null);
    }

    public C1006hd(ServiceConnectionC0981gd serviceConnectionC0981gd) {
        Intent intent;
        if (this.f2844b == null) {
            Intent intentM1768m = C0948f6.m1768m("com.supi.mdm.safectrlmn_service");
            List<ResolveInfo> listQueryIntentServices = f2843c.getPackageManager().queryIntentServices(intentM1768m, 0);
            if (listQueryIntentServices == null || listQueryIntentServices.size() != 1) {
                intent = null;
            } else {
                ServiceInfo serviceInfo = listQueryIntentServices.get(0).serviceInfo;
                ComponentName componentName = new ComponentName(serviceInfo.packageName, serviceInfo.name);
                intent = new Intent(intentM1768m);
                intent.setComponent(componentName);
            }
            if (intent == null) {
                C0850bc.m1393c("SupiImpl init aidl server by object empty");
            } else {
                f2843c.bindService(new Intent(intent), new ServiceConnectionC0981gd(this), 1);
            }
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: F */
    public void mo1306F(String str) {
        try {
            if (this.f2844b == null) {
                C0850bc.m1403m("SupiImpl  silent install app failed by object is empty");
            } else {
                C0850bc.m1403m("SupiImpl  silent install app");
                this.f2844b.mo2807l1(str);
            }
        } catch (Throwable th) {
            C0948f6.m1747E(th, C0948f6.m1765j("SupiImpl  silent install app error "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: M0 */
    public List<String> mo1311M0() {
        try {
        } catch (Throwable th) {
            C0948f6.m1747E(th, C0948f6.m1765j("SupiImpl  get app white list error "));
        }
        if (this.f2844b != null) {
            C0850bc.m1403m("SupiImpl  get app white list");
            return this.f2844b.mo2806i2();
        }
        C0850bc.m1403m("SupiImpl  get app white list failed by object is empty");
        return new ArrayList();
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: N */
    public boolean mo1312N(long j) {
        try {
        } catch (Throwable th) {
            C0948f6.m1747E(th, C0948f6.m1765j("SupiImpl  set system time error "));
        }
        if (this.f2844b == null) {
            C0850bc.m1403m("SupiImpl  set system time failed by object is empty");
            return true;
        }
        C0850bc.m1403m("SupiImpl  set system time");
        this.f2844b.mo2801N1(j);
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
            if (this.f2844b == null) {
                C0850bc.m1403m("SupiImpl  silent uninstall app failed by object is empty");
            } else {
                C0850bc.m1403m("SupiImpl  silent uninstall app");
                this.f2844b.mo2811v(str);
            }
        } catch (Throwable th) {
            C0948f6.m1747E(th, C0948f6.m1765j("SupiImpl  silent uninstall app error "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: V */
    public boolean mo1316V(List<String> list) {
        String strReplace;
        ArrayList arrayListM1772q = C0948f6.m1772q("iptables -w -t filter -N  user_ip", "iptables -w -F user", "iptables -w -F user_ip", "iptables -w -D OUTPUT -j user_ip", "iptables -w -I OUTPUT  4  -j user_ip");
        arrayListM1772q.add("iptables -w -A user -j REJECT");
        for (int i = 0; i < list.size(); i++) {
            String str = list.get(i);
            String string = "";
            if (C0904de.m1599p(str) || C0904de.m1600q(str) || C0904de.m1601r(str) || str.endsWith(".0/24") || str.endsWith(".0.0/16")) {
                strReplace = "iptables -w -A user_ip -d # -j ACCEPT".replace("#", str);
            } else {
                if (str.contains(".")) {
                    String[] strArrSplit = str.split("\\.");
                    int i2 = 0;
                    while (i2 < strArrSplit.length) {
                        int i3 = i2 + 1;
                        if (i3 == strArrSplit.length) {
                            StringBuilder sbM1765j = C0948f6.m1765j(string);
                            sbM1765j.append(C0904de.m1608y(strArrSplit[i2]));
                            string = sbM1765j.toString();
                        } else {
                            String hexString = Integer.toHexString(strArrSplit[i3].length());
                            if (hexString.length() < 2) {
                                hexString = C0948f6.m1760e(MessageService.MSG_DB_READY_REPORT, hexString);
                            }
                            StringBuilder sbM1765j2 = C0948f6.m1765j(string);
                            sbM1765j2.append(C0904de.m1608y(strArrSplit[i2]));
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
        StringBuilder sbM1765j3 = C0948f6.m1765j(" ==> ");
        sbM1765j3.append(arrayListM1772q.toString());
        C0850bc.m1403m(sbM1765j3.toString());
        try {
        } catch (Throwable th) {
            C0948f6.m1747E(th, C0948f6.m1765j("SupiImpl  set white url error "));
        }
        if (this.f2844b == null) {
            C0850bc.m1403m("SupiImpl  set white url failed by object is empty");
            return false;
        }
        C0850bc.m1403m("SupiImpl  set white url");
        Iterator it = arrayListM1772q.iterator();
        while (it.hasNext()) {
            this.f2844b.mo2810t1((String) it.next());
        }
        return true;
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: c */
    public void mo1319c(boolean z) {
        try {
            if (this.f2844b == null) {
                C0850bc.m1403m("SupiImpl  enable otg and sd failed by object is empty");
            } else {
                C0850bc.m1403m("SupiImpl  enable otg and sd");
                this.f2844b.mo2809q1(false);
            }
        } catch (Throwable th) {
            C0948f6.m1747E(th, C0948f6.m1765j("SupiImpl  enable otg and sd error "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableBack() {
        try {
            if (this.f2844b == null) {
                C0850bc.m1403m("SupiImpl  disable back failed by object is empty");
            } else {
                C0850bc.m1403m("SupiImpl  disable back");
                this.f2844b.mo2799D(true);
            }
        } catch (Throwable th) {
            C0948f6.m1747E(th, C0948f6.m1765j("SupiImpl  disable back error "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableBluetooth() {
        try {
            if (this.f2844b == null) {
                C0850bc.m1403m("SupiImpl   disable bluetooth failed by object is empty");
            } else {
                C0850bc.m1403m("SupiImpl  disable bluetooth");
                this.f2844b.mo2808m0(true);
            }
        } catch (Throwable th) {
            C0948f6.m1747E(th, C0948f6.m1765j("SupiImpl   disable bluetooth error "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableHome() {
        try {
            if (this.f2844b == null) {
                C0850bc.m1403m("SupiImpl  disable home failed by object is empty");
            } else {
                C0850bc.m1403m("SupiImpl  disable home");
                this.f2844b.mo2798B1(true);
            }
        } catch (Throwable th) {
            C0948f6.m1747E(th, C0948f6.m1765j("SupiImpl  disable home error "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableNavigation() {
        try {
            if (this.f2844b == null) {
                C0850bc.m1403m("SupiImpl  disable Navigation failed by object is empty");
            } else {
                C0850bc.m1403m("SupiImpl  disable Navigation");
                this.f2844b.mo2803W2(23068672);
            }
        } catch (Throwable th) {
            C0948f6.m1747E(th, C0948f6.m1765j("SupiImpl  disable Navigation error "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableRecent() {
        try {
            if (this.f2844b == null) {
                C0850bc.m1403m("SupiImpl  disable recent failed by object is empty");
            } else {
                C0850bc.m1403m("SupiImpl  disable recent");
                this.f2844b.mo2800F(true);
            }
        } catch (Throwable th) {
            C0948f6.m1747E(th, C0948f6.m1765j("SupiImpl  disable recent error "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableShortPressPower() {
        try {
            if (this.f2844b == null) {
                C0850bc.m1403m("SupiImpl   disable short power failed by object is empty");
            } else {
                C0850bc.m1403m("SupiImpl  disable short power");
                this.f2844b.mo2805h3(true);
            }
        } catch (Throwable th) {
            C0948f6.m1747E(th, C0948f6.m1765j("SupiImpl   disable short power error "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableUsb() {
        try {
            if (this.f2844b == null) {
                C0850bc.m1403m("SupiImpl  disable usb failed by object is empty");
            } else {
                C0850bc.m1403m("SupiImpl  disable usb");
                this.f2844b.mo2813x1(true);
            }
        } catch (Throwable th) {
            C0948f6.m1747E(th, C0948f6.m1765j("SupiImpl  disable usb error "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableVolume() {
        try {
            if (this.f2844b == null) {
                C0850bc.m1403m("SupiImpl   disable volume failed by object is empty");
            } else {
                C0850bc.m1403m("SupiImpl  disable volume");
                this.f2844b.mo2812v0(true);
            }
        } catch (Throwable th) {
            C0948f6.m1747E(th, C0948f6.m1765j("SupiImpl   disable volume error "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: e */
    public void mo1320e(String str) {
        try {
            if (this.f2844b == null) {
                C0850bc.m1403m("SupiImpl  disable app failed by object is empty");
            } else {
                C0850bc.m1403m("SupiImpl  disable app");
                this.f2844b.mo2804b3(str, true);
            }
        } catch (Throwable th) {
            C0948f6.m1747E(th, C0948f6.m1765j("SupiImpl  disable app error "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableBack() {
        try {
            if (this.f2844b == null) {
                C0850bc.m1403m("SupiImpl  enable back failed by object is empty");
            } else {
                C0850bc.m1403m("SupiImpl  enable back");
                this.f2844b.mo2799D(false);
            }
        } catch (Throwable th) {
            C0948f6.m1747E(th, C0948f6.m1765j("SupiImpl  enable back error "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableBluetooth() {
        try {
            if (this.f2844b == null) {
                C0850bc.m1403m("SupiImpl   enable bluetooth failed by object is empty");
            } else {
                C0850bc.m1403m("SupiImpl  enable bluetooth");
                this.f2844b.mo2808m0(false);
            }
        } catch (Throwable th) {
            C0948f6.m1747E(th, C0948f6.m1765j("SupiImpl   enable bluetooth error "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableHome() {
        try {
            if (this.f2844b == null) {
                C0850bc.m1403m("SupiImpl  enable home failed by object is empty");
            } else {
                C0850bc.m1403m("SupiImpl  enable home");
                this.f2844b.mo2798B1(false);
            }
        } catch (Throwable th) {
            C0948f6.m1747E(th, C0948f6.m1765j("SupiImpl  enable home error "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableNavigation() {
        try {
            if (this.f2844b == null) {
                C0850bc.m1403m("SupiImpl  enable Navigation failed by object is empty");
            } else {
                C0850bc.m1403m("SupiImpl  enable Navigation");
                this.f2844b.mo2803W2(0);
            }
        } catch (Throwable th) {
            C0948f6.m1747E(th, C0948f6.m1765j("SupiImpl  enable Navigation error "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableRecent() {
        try {
            if (this.f2844b == null) {
                C0850bc.m1403m("SupiImpl  enable recent failed by object is empty");
            } else {
                C0850bc.m1403m("SupiImpl  enable recent");
                this.f2844b.mo2800F(false);
            }
        } catch (Throwable th) {
            C0948f6.m1747E(th, C0948f6.m1765j("SupiImpl  enable recent error "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableShortPressPower() {
        try {
            if (this.f2844b == null) {
                C0850bc.m1403m("SupiImpl   enable short power failed by object is empty");
            } else {
                C0850bc.m1403m("SupiImpl  enable short power");
                this.f2844b.mo2805h3(false);
            }
        } catch (Throwable th) {
            C0948f6.m1747E(th, C0948f6.m1765j("SupiImpl   enable short power error "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableUsb() {
        try {
            if (this.f2844b == null) {
                C0850bc.m1403m("SupiImpl  enable usb failed by object is empty");
            } else {
                C0850bc.m1403m("SupiImpl  enable usb");
                this.f2844b.mo2813x1(false);
            }
        } catch (Throwable th) {
            C0948f6.m1747E(th, C0948f6.m1765j("SupiImpl  enable usb error "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableVolume() {
        try {
            if (this.f2844b == null) {
                C0850bc.m1403m("SupiImpl   enable volume failed by object is empty");
            } else {
                C0850bc.m1403m("SupiImpl  enable volume");
                this.f2844b.mo2812v0(false);
            }
        } catch (Throwable th) {
            C0948f6.m1747E(th, C0948f6.m1765j("SupiImpl   enable volume error "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: s */
    public boolean mo1328s(List<String> list) {
        try {
            if (this.f2844b == null) {
                C0850bc.m1403m("SupiImpl  set app white list failed by object is empty");
                return false;
            }
            C0850bc.m1403m("SupiImpl  set app white list");
            if (AbstractC1102l9.m2273N(list)) {
                this.f2844b.mo2802W(new ArrayList());
                return true;
            }
            this.f2844b.mo2802W(list);
            return true;
        } catch (Throwable th) {
            C0948f6.m1747E(th, C0948f6.m1765j("SupiImpl  set app white list error "));
            return false;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: t */
    public void mo1329t(boolean z) {
        try {
            if (this.f2844b == null) {
                C0850bc.m1403m("SupiImpl  reset factory failed by object is empty");
            } else {
                C0850bc.m1403m("SupiImpl  reset factory");
                this.f2844b.mo2797B();
            }
        } catch (Throwable th) {
            C0948f6.m1747E(th, C0948f6.m1765j("SupiImpl  reset factory error "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: y0 */
    public void mo1331y0(String str) {
        try {
            if (this.f2844b == null) {
                C0850bc.m1403m("SupiImpl  enable app failed by object is empty");
            } else {
                C0850bc.m1403m("SupiImpl  enable app");
                this.f2844b.mo2804b3(str, false);
            }
        } catch (Throwable th) {
            C0948f6.m1747E(th, C0948f6.m1765j("SupiImpl  enable app error "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: z0 */
    public void mo1332z0(boolean z) {
        try {
            if (this.f2844b == null) {
                C0850bc.m1403m("SupiImpl  disable otg and sd failed by object is empty");
            } else {
                C0850bc.m1403m("SupiImpl  disable otg and sd");
                this.f2844b.mo2809q1(true);
            }
        } catch (Throwable th) {
            C0948f6.m1747E(th, C0948f6.m1765j("SupiImpl  disable otg and sd error "));
        }
    }
}
