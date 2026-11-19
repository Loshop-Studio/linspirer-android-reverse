package com.huawei.hem;

import android.app.admin.DevicePolicyManager;
import android.cube.sql.bean.StopApplication;
import android.text.TextUtils;
import android.util.Log;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import org.android.agoo.message.MessageService;

/* compiled from: HongQiImpl.java */
/* renamed from: com.huawei.hem.wc */
/* loaded from: classes.dex */
public class C1381wc extends C1055jc {

    /* renamed from: b */
    public static C1381wc f4015b = new C1381wc();

    /* renamed from: c */
    public static C1343v f4016c;

    /* renamed from: d */
    public static DevicePolicyManager f4017d;

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: F */
    public void mo1306F(String str) {
        try {
            f4016c.m2828c(str, null);
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("HongQiImpl ,actionSilentInstall-error: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: M0 */
    public List<String> mo1311M0() {
        try {
            ArrayList<StopApplication> arrayListM2826a = f4016c.m2826a();
            if (!AbstractC1102l9.m2272M(arrayListM2826a)) {
                ArrayList arrayList = new ArrayList();
                for (int i = 0; i < arrayListM2826a.size(); i++) {
                    String pname = arrayListM2826a.get(i).getPname();
                    if (!TextUtils.isEmpty(pname)) {
                        arrayList.addAll(AbstractC1102l9.m2277R(pname, ","));
                    }
                }
                return arrayList;
            }
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1771p(th, "HongQiImpl ,getAppWhiteList-error: "));
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
                f4016c.m2848w(Integer.valueOf(strArrSplit[0]).intValue(), Integer.valueOf(strArrSplit[1]).intValue(), Integer.valueOf(strArrSplit[2]).intValue(), Integer.valueOf(strArrSplit[3]).intValue(), Integer.valueOf(strArrSplit[4]).intValue(), Integer.valueOf(strArrSplit[5]).intValue(), 0);
            } catch (Throwable th) {
                C0948f6.m1746D(th, C0948f6.m1765j("HongQiImpl ,setSystemTime-error: "));
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
            f4016c.m2849x(str);
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("HongQiImpl ,actionSilentUnInstall-error: "));
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
                        } else if (strArrSplit[i3].length() < 10) {
                            StringBuilder sbM1765j2 = C0948f6.m1765j(string);
                            sbM1765j2.append(C0904de.m1608y(strArrSplit[i2]));
                            sbM1765j2.append(MessageService.MSG_DB_READY_REPORT);
                            sbM1765j2.append(strArrSplit[i3].length());
                            string = sbM1765j2.toString();
                        } else {
                            StringBuilder sbM1765j3 = C0948f6.m1765j(string);
                            sbM1765j3.append(C0904de.m1608y(strArrSplit[i2]));
                            sbM1765j3.append(strArrSplit[i3].length());
                            string = sbM1765j3.toString();
                        }
                        i2 = i3;
                    }
                }
                strReplace = "iptables -w -I user -p udp --dport 53 -m string --hex-string '|#|' --algo bm -j ACCEPT".replace("#", string);
                C0850bc.m1403m(str + "=====>>>" + string);
            }
            if (!TextUtils.isEmpty(strReplace)) {
                arrayListM1772q.add(strReplace);
            }
        }
        StringBuilder sbM1765j4 = C0948f6.m1765j(" ==> ");
        sbM1765j4.append(arrayListM1772q.toString());
        C0850bc.m1392b(sbM1765j4.toString());
        try {
            Iterator it = arrayListM1772q.iterator();
            while (it.hasNext()) {
                String str2 = (String) it.next();
                f4016c.m2829d(str2);
                String str3 = "setNetAddressList(item),item=" + str2;
                Log.i("acer", str3);
                C0850bc.m1411u("acer", str3);
            }
            return true;
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("HongQiImpl ,setUrlWhiteList-error: "));
            return false;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: c */
    public void mo1319c(boolean z) {
        try {
            f4016c.m2841p();
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("HongQiImpl ,enableSdCard-error: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableBack() {
        try {
            f4016c.m2830e();
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("HongQiImpl ,disableBack-error: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableBluetooth() {
        try {
            f4016c.m2845t();
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("HongQiImpl ,disableBluetooth-error: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableCamera() {
        try {
            f4016c.m2846u();
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("HongQiImpl ,disableCamera-error: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableHome() {
        try {
            f4016c.m2831f();
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("HongQiImpl ,disableHome-error: "));
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
            f4016c.m2833h();
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("HongQiImpl ,disableRecent-error: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableShortPressPower() {
        try {
            f4016c.m2832g();
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("HongQiImpl ,disableShortPressPower-error: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableUsb() {
        try {
            f4016c.m2850y();
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("HongQiImpl ,disableUsb-error: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableVolume() {
        try {
            f4016c.m2834i();
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("HongQiImpl ,disableVolume-error: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: e */
    public void mo1320e(String str) {
        try {
            f4016c.m2847v(str);
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("HongQiImpl ,actionDisableApp-error: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableBack() {
        try {
            f4016c.m2835j();
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("HongQiImpl ,enableBack-error: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableBluetooth() {
        try {
            f4016c.m2844s();
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("HongQiImpl ,enableBluetooth-error: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableCamera() {
        try {
            f4016c.m2842q();
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("HongQiImpl ,enableCamera-error: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableHome() {
        try {
            f4016c.m2836k();
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("HongQiImpl ,enableHome-error: "));
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
            f4016c.m2838m();
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("HongQiImpl ,enableRecent-error: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableShortPressPower() {
        try {
            f4016c.m2837l();
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("HongQiImpl ,enableShortPressPower-error: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableUsb() {
        try {
            f4016c.m2851z();
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("HongQiImpl ,enableUsb-error: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableVolume() {
        try {
            f4016c.m2839n();
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("HongQiImpl ,enableVolume-error: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: h0 */
    public void mo1324h0() {
        try {
            f4016c.m2825A();
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("HongQiImpl ,actionShutdown-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: s */
    public boolean mo1328s(List<String> list) {
        try {
            f4016c.m2827b(list);
            return true;
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("HongQiImpl ,setAppWhiteList-error: "));
            return false;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: t */
    public void mo1329t(boolean z) {
        if (!z) {
            try {
                try {
                    f4017d.wipeData(0);
                    C0850bc.m1403m("WipeSoldier -- wipeDataExcludeSDCard..........");
                } catch (SecurityException e) {
                    C0850bc.m1393c("WipeSoldier -- wipeDataExcludeSDCard..........e = " + e);
                    e.printStackTrace();
                }
                return;
            } catch (Throwable th) {
                C0948f6.m1746D(th, C0948f6.m1765j("HongQiImpl ,actionResetFactory-error: "));
                return;
            }
        }
        try {
            DevicePolicyManager devicePolicyManager = f4017d;
            try {
                C0850bc.m1403m("WipeSoldier -- wipeDataIncludeSDCard..........");
                devicePolicyManager.wipeData(1);
            } catch (SecurityException e2) {
                C0850bc.m1393c("WipeSoldier -- wipeDataIncludeSDCard..........e = " + e2);
                e2.printStackTrace();
            }
        } catch (Throwable th2) {
            C0948f6.m1746D(th2, C0948f6.m1765j("HongQiImpl ,actionResetFactory-error: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: y0 */
    public void mo1331y0(String str) {
        try {
            f4016c.m2843r(str);
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("HongQiImpl ,actionEnableApp-error: "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: z0 */
    public void mo1332z0(boolean z) {
        try {
            f4016c.m2840o();
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("HongQiImpl ,disableSdCard-error: "));
        }
    }
}
