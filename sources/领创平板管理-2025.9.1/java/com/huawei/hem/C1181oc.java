package com.huawei.hem;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import android.text.TextUtils;
import com.huawei.hem.InterfaceC1368w;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.android.agoo.message.MessageService;

/* compiled from: DongfangImpl.java */
/* renamed from: com.huawei.hem.oc */
/* loaded from: classes.dex */
public class C1181oc extends C1055jc {

    /* renamed from: b */
    public static C1181oc f3380b = new C1181oc();

    /* renamed from: c */
    public static Context f3381c;

    /* renamed from: d */
    public static InterfaceC1368w f3382d;

    /* compiled from: DongfangImpl.java */
    /* renamed from: com.huawei.hem.oc$a */
    public static class a implements ServiceConnection {
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            C0850bc.m1403m("DongfangImpl -- bindServer successfully .");
            C1181oc.f3382d = InterfaceC1368w.a.m2895J(iBinder);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            C0850bc.m1403m("DongfangImpl -- bindServer failed and bindServer again .");
            C1181oc.m2432V0();
        }
    }

    /* compiled from: DongfangImpl.java */
    /* renamed from: com.huawei.hem.oc$b */
    public class b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ List f3383a;

        public b(C1181oc c1181oc, List list) {
            this.f3383a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Iterator it = this.f3383a.iterator();
                while (it.hasNext()) {
                    C1181oc.f3382d.mo2894w2((String) it.next());
                }
                C0850bc.m1403m("DongfangImpl -- setUrlWhiteList ");
            } catch (Exception e) {
                StringBuilder sbM1765j = C0948f6.m1765j("DongfangImpl -- setUrlWhiteList-error: ");
                sbM1765j.append(e.getMessage());
                C0850bc.m1390A(sbM1765j.toString());
            } catch (Throwable th) {
                C0948f6.m1746D(th, C0948f6.m1765j("DongfangImpl -- setUrlWhiteList  "));
            }
        }
    }

    /* renamed from: V0 */
    public static void m2432V0() {
        Intent intentM1768m = C0948f6.m1768m("com.jlink.mdmapi");
        intentM1768m.setComponent(new ComponentName("com.jlink.mdmapi", "com.jlink.mdmapi.ApiService"));
        f3381c.bindService(intentM1768m, new a(), 1);
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: F */
    public void mo1306F(String str) {
        if (f3382d == null) {
            return;
        }
        C0850bc.m1403m("DongfangImpl -- actionSilentInstall");
        try {
            f3382d.silentInstall(str, false);
        } catch (RemoteException e) {
            C0948f6.m1775t(e, C0948f6.m1765j("DongfangImpl -- actionSilentInstall "));
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("DongfangImpl -- actionSilentInstall "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: M0 */
    public List<String> mo1311M0() {
        if (f3382d == null) {
            return new ArrayList();
        }
        C0850bc.m1403m("DongfangImpl -- getAppWhiteList");
        try {
            return f3382d.mo2885V();
        } catch (RemoteException e) {
            C0948f6.m1775t(e, C0948f6.m1765j("DongfangImpl -- getAppWhiteList "));
            return new ArrayList();
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("DongfangImpl -- getAppWhiteList "));
            return new ArrayList();
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: N */
    public boolean mo1312N(long j) {
        if (f3382d == null) {
            return true;
        }
        C0850bc.m1403m("DongfangImpl -- setSystemTime");
        try {
            f3382d.mo2888j1(j);
        } catch (RemoteException e) {
            C0948f6.m1775t(e, C0948f6.m1765j("DongfangImpl -- setSystemTime "));
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("DongfangImpl -- setSystemTime  "));
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
        if (f3382d == null) {
            return;
        }
        C0850bc.m1403m("DongfangImpl -- actionSilentUnInstall");
        try {
            f3382d.silentUninstall(str);
        } catch (RemoteException e) {
            C0948f6.m1775t(e, C0948f6.m1765j("DongfangImpl -- actionSilentUnInstall "));
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("DongfangImpl -- actionSilentUnInstall "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: V */
    public boolean mo1316V(List<String> list) {
        String strReplace;
        if (f3382d == null) {
            return false;
        }
        ArrayList arrayListM1772q = C0948f6.m1772q(" -w -t filter -N  user_ip", " -w -F user", " -w -F user_ip", " -w -D OUTPUT -j user_ip", " -w -I OUTPUT  4  -j user_ip");
        arrayListM1772q.add(" -w -A user -j REJECT");
        for (int i = 0; i < list.size(); i++) {
            String str = list.get(i);
            String string = "";
            if (C0904de.m1599p(str) || C0904de.m1600q(str) || C0904de.m1601r(str) || str.endsWith(".0/24") || str.endsWith(".0.0/16")) {
                strReplace = " -w -A user_ip -d # -j ACCEPT".replace("#", str);
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
                strReplace = " -w -I user -p udp --dport 53 -m string --hex-string '|#|' --algo bm -j ACCEPT".replace("#", string);
                C0850bc.m1403m(str + "=====>>>" + string);
            }
            if (!TextUtils.isEmpty(strReplace)) {
                arrayListM1772q.add(strReplace);
            }
        }
        StringBuilder sbM1765j4 = C0948f6.m1765j("DongfangImpl ==> ");
        sbM1765j4.append(arrayListM1772q.toString());
        C0850bc.m1392b(sbM1765j4.toString());
        new Thread(new b(this, arrayListM1772q)).start();
        return false;
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: c */
    public void mo1319c(boolean z) {
        if (f3382d == null) {
            return;
        }
        C0850bc.m1403m("DongfangImpl -- enableSdCard");
        try {
            f3382d.mo2886a2(true);
        } catch (RemoteException e) {
            C0948f6.m1775t(e, C0948f6.m1765j("DongfangImpl -- enableSdCard "));
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("DongfangImpl -- enableSdCard  "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableBack() {
        if (f3382d == null) {
            return;
        }
        C0850bc.m1403m("DongfangImpl -- disableBack");
        try {
            f3382d.mo2892u2(false);
        } catch (RemoteException e) {
            C0948f6.m1775t(e, C0948f6.m1765j("DongfangImpl -- disableBack "));
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("DongfangImpl -- disableBack "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableBluetooth() {
        if (f3382d == null) {
            return;
        }
        C0850bc.m1403m("DongfangImpl -- disableBluetooth");
        try {
            f3382d.setBluetoothEnable(false);
        } catch (RemoteException e) {
            C0948f6.m1775t(e, C0948f6.m1765j("DongfangImpl -- disableBluetooth "));
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("DongfangImpl -- disableBluetooth  "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableCamera() {
        if (f3382d == null) {
            return;
        }
        C0850bc.m1403m("DongfangImpl -- disableCamera");
        try {
            f3382d.mo2884M(false);
        } catch (RemoteException e) {
            C0948f6.m1775t(e, C0948f6.m1765j("DongfangImpl -- disableCamera "));
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("DongfangImpl -- disableCamera "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableHome() {
        if (f3382d == null) {
            return;
        }
        C0850bc.m1403m("DongfangImpl -- disableHome");
        try {
            f3382d.mo2891s3(false);
        } catch (RemoteException e) {
            C0948f6.m1775t(e, C0948f6.m1765j("DongfangImpl -- disableHome "));
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("DongfangImpl -- disableHome "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableNavigation() {
        C0850bc.m1403m("DongfangImpl -- disableNavigation");
        disableBack();
        disableHome();
        disableRecent();
        disableShortPressPower();
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableOTG() {
        if (f3382d == null) {
            return;
        }
        C0850bc.m1403m("DongfangImpl -- disableOTG");
        try {
            f3382d.mo2886a2(false);
        } catch (RemoteException e) {
            C0948f6.m1775t(e, C0948f6.m1765j("DongfangImpl -- disableOTG "));
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("DongfangImpl -- disableOTG  "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableRecent() {
        if (f3382d == null) {
            return;
        }
        C0850bc.m1403m("DongfangImpl -- disableRecent");
        try {
            f3382d.mo2889k3(false);
        } catch (RemoteException e) {
            C0948f6.m1775t(e, C0948f6.m1765j("DongfangImpl -- disableRecent "));
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("DongfangImpl -- disableRecent "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableShortPressPower() {
        if (f3382d == null) {
            return;
        }
        C0850bc.m1403m("DongfangImpl -- disableShortPressPower");
        try {
            f3382d.setPowerKeyEnable(false);
        } catch (RemoteException e) {
            C0948f6.m1775t(e, C0948f6.m1765j("DongfangImpl -- disableShortPressPower "));
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("DongfangImpl -- disableShortPressPower  "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableUsb() {
        if (f3382d == null) {
            return;
        }
        C0850bc.m1403m("DongfangImpl -- disableUsb");
        try {
            f3382d.mo2887f1(false);
        } catch (RemoteException e) {
            C0948f6.m1775t(e, C0948f6.m1765j("DongfangImpl -- disableUsb "));
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("DongfangImpl -- disableUsb "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableVolume() {
        if (f3382d == null) {
            return;
        }
        C0850bc.m1403m("DongfangImpl -- disableVolume");
        try {
            f3382d.mo2893w0(false);
        } catch (RemoteException e) {
            C0948f6.m1775t(e, C0948f6.m1765j("DongfangImpl -- disableVolume "));
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("DongfangImpl -- disableVolume  "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: e */
    public void mo1320e(String str) {
        if (f3382d == null) {
            return;
        }
        C0850bc.m1403m("DongfangImpl -- actionDisableApp");
        try {
            f3382d.mo2890r0(str, false);
        } catch (RemoteException e) {
            C0948f6.m1775t(e, C0948f6.m1765j("DongfangImpl -- actionDisableApp , RemoteException = "));
        } catch (IllegalArgumentException e2) {
            StringBuilder sbM1765j = C0948f6.m1765j("DongfangImpl -- actionDisableApp , IllegalArgumentException = ");
            sbM1765j.append(e2.getMessage());
            C0850bc.m1390A(sbM1765j.toString());
            e2.printStackTrace();
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("DongfangImpl -- actionDisableApp "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableBack() {
        if (f3382d == null) {
            return;
        }
        C0850bc.m1403m("DongfangImpl -- enableBack");
        try {
            f3382d.mo2892u2(true);
        } catch (RemoteException e) {
            C0948f6.m1775t(e, C0948f6.m1765j("DongfangImpl -- enableBack "));
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("DongfangImpl -- enableBack "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableBluetooth() {
        if (f3382d == null) {
            return;
        }
        C0850bc.m1403m("DongfangImpl -- enableBluetooth");
        try {
            f3382d.setBluetoothEnable(true);
        } catch (RemoteException e) {
            C0948f6.m1775t(e, C0948f6.m1765j("DongfangImpl -- enableBluetooth "));
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("DongfangImpl -- enableBluetooth  "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableCamera() {
        if (f3382d == null) {
            return;
        }
        C0850bc.m1403m("DongfangImpl -- enableCamera");
        try {
            f3382d.mo2884M(true);
        } catch (RemoteException e) {
            C0948f6.m1775t(e, C0948f6.m1765j("DongfangImpl -- enableCamera "));
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("DongfangImpl -- enableCamera "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableHome() {
        if (f3382d == null) {
            return;
        }
        C0850bc.m1403m("DongfangImpl -- enableHome");
        try {
            f3382d.mo2891s3(true);
        } catch (RemoteException e) {
            C0948f6.m1775t(e, C0948f6.m1765j("DongfangImpl -- enableHome "));
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("DongfangImpl -- enableHome "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableNavigation() {
        C0850bc.m1403m("DongfangImpl -- enableNavigation");
        enableBack();
        enableRecent();
        enableHome();
        enableShortPressPower();
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableOTG() {
        if (f3382d == null) {
            return;
        }
        C0850bc.m1403m("DongfangImpl -- enableOTG");
        try {
            f3382d.mo2886a2(true);
        } catch (RemoteException e) {
            C0948f6.m1775t(e, C0948f6.m1765j("DongfangImpl -- enableOTG "));
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("DongfangImpl -- enableOTG  "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableRecent() {
        if (f3382d == null) {
            return;
        }
        C0850bc.m1403m("DongfangImpl -- enableRecent");
        try {
            f3382d.mo2889k3(true);
        } catch (RemoteException e) {
            C0948f6.m1775t(e, C0948f6.m1765j("DongfangImpl -- enableRecent "));
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("DongfangImpl -- enableRecent "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableShortPressPower() {
        if (f3382d == null) {
            return;
        }
        C0850bc.m1403m("DongfangImpl -- enableShortPressPower");
        try {
            f3382d.setPowerKeyEnable(true);
        } catch (RemoteException e) {
            C0948f6.m1775t(e, C0948f6.m1765j("DongfangImpl -- enableShortPressPower "));
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("DongfangImpl -- enableShortPressPower  "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableUsb() {
        if (f3382d == null) {
            return;
        }
        C0850bc.m1403m("DongfangImpl -- enableUsb");
        try {
            f3382d.mo2887f1(true);
        } catch (RemoteException e) {
            C0948f6.m1775t(e, C0948f6.m1765j("DongfangImpl -- enableUsb "));
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("DongfangImpl -- enableUsb "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableVolume() {
        if (f3382d == null) {
            return;
        }
        C0850bc.m1403m("DongfangImpl -- enableVolume");
        try {
            f3382d.mo2893w0(true);
        } catch (RemoteException e) {
            C0948f6.m1775t(e, C0948f6.m1765j("DongfangImpl -- enableVolume "));
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("DongfangImpl -- enableVolume  "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: s */
    public boolean mo1328s(List<String> list) {
        if (f3382d == null) {
            return false;
        }
        C0850bc.m1403m("DongfangImpl -- setAppWhiteList");
        try {
            f3382d.mo2883F1(list);
            return true;
        } catch (RemoteException e) {
            C0948f6.m1775t(e, C0948f6.m1765j("DongfangImpl -- setAppWhiteList "));
            return false;
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("DongfangImpl -- setAppWhiteList "));
            return false;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: t */
    public void mo1329t(boolean z) {
        C0850bc.m1403m("DongfangImpl -- actionResetFactory ，sendBroadcast ");
        f3381c.sendBroadcast(new Intent("action.domasterclear"));
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: y0 */
    public void mo1331y0(String str) {
        if (f3382d == null) {
            return;
        }
        C0850bc.m1403m("DongfangImpl -- actionEnableApp");
        try {
            f3382d.mo2890r0(str, true);
        } catch (RemoteException e) {
            C0948f6.m1775t(e, C0948f6.m1765j("DongfangImpl -- actionEnableApp , RemoteException = "));
        } catch (IllegalArgumentException e2) {
            StringBuilder sbM1765j = C0948f6.m1765j("DongfangImpl -- actionEnableApp , IllegalArgumentException = ");
            sbM1765j.append(e2.getMessage());
            C0850bc.m1390A(sbM1765j.toString());
            e2.printStackTrace();
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("DongfangImpl -- actionEnableApp "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: z0 */
    public void mo1332z0(boolean z) {
        if (f3382d == null) {
            return;
        }
        C0850bc.m1403m("DongfangImpl -- disableSdCard");
        try {
            f3382d.mo2886a2(false);
        } catch (RemoteException e) {
            C0948f6.m1775t(e, C0948f6.m1765j("DongfangImpl -- disableSdCard "));
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1765j("DongfangImpl -- disableSdCard  "));
        }
    }
}
