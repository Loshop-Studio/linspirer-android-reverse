package com.huawei.hem;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.IBinder;
import android.os.RemoteException;
import android.text.TextUtils;
import com.alibaba.fastjson.asm.Label;
import com.unionnn.iface.IMDMUniIface;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;
import org.android.agoo.message.MessageService;

/* compiled from: KaishuodaKImpl.java */
/* renamed from: com.huawei.hem.bd */
/* loaded from: classes.dex */
public class KaishuodaKImpl extends AndroidImpl {

    /* renamed from: d */
    public static KaishuodaKImpl f2295d;

    /* renamed from: b */
    public IMDMUniIface f2296b;

    /* renamed from: c */
    public Context f2297c;

    /* compiled from: KaishuodaKImpl.java */
    /* renamed from: com.huawei.hem.bd$a */
    public class a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ List f2298a;

        public a(List list) {
            this.f2298a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            String strReplace;
            try {
                KaishuodaKImpl.this.f2296b.runADBComm("iptables -w -t filter -N  user_ip");
                KaishuodaKImpl.this.f2296b.runADBComm("iptables -w -F user");
                KaishuodaKImpl.this.f2296b.runADBComm("iptables -w -F user_ip");
                KaishuodaKImpl.this.f2296b.runADBComm("iptables -w -D OUTPUT -j user_ip");
                KaishuodaKImpl.this.f2296b.runADBComm("iptables -w -I OUTPUT  4  -j user_ip");
                KaishuodaKImpl.this.f2296b.runADBComm("iptables -w -A user -j REJECT");
                for (int i = 0; i < this.f2298a.size(); i++) {
                    String str = (String) this.f2298a.get(i);
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
                                } else {
                                    String hexString = Integer.toHexString(strArrSplit[i3].length());
                                    if (hexString.length() < 2) {
                                        hexString = MessageService.MSG_DB_READY_REPORT + hexString;
                                    }
                                    str2 = str2 + LauncherDeviceUtils.m1608y(strArrSplit[i2]) + hexString;
                                }
                                i2 = i3;
                            }
                        }
                        strReplace = "iptables -w -I user -p udp --dport 53 -m string --hex-string \"|#|\" --algo bm -j ACCEPT".replace("#", str2);
                    }
                    if (!TextUtils.isEmpty(strReplace)) {
                        LTKDateUtil.m1403m("kaishuoda:" + strReplace);
                        KaishuodaKImpl.this.f2296b.runADBComm(strReplace);
                    }
                }
            } catch (RemoteException unused) {
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public KaishuodaKImpl(Context context) {
        this.f2297c = context;
        try {
            IBinder iBinder = (IBinder) Class.forName("android.os.ServiceManager").getMethod("getService", String.class).invoke(null, "imdm");
            if (iBinder != null) {
                this.f2296b = IMDMUniIface.Stub.asInterface(iBinder);
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e2) {
            e2.printStackTrace();
        } catch (NoSuchMethodException e3) {
            e3.printStackTrace();
        } catch (InvocationTargetException e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: F */
    public void mo1306F(String str) {
        try {
            Intent intent = new Intent();
            intent.setAction("android.intent.action.VIEW");
            intent.addFlags(Label.FORWARD_REFERENCE_TYPE_SHORT);
            intent.setDataAndType(Uri.parse("file://" + str), "application/vnd.android.package-archive");
            this.f2297c.startActivity(intent);
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("KaishuodaKImpl ,actionSilentInstall-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: G0 */
    public List<String> mo1307G0() {
        ArrayList arrayList = new ArrayList();
        try {
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("KaishuodaKImpl ,getNetworkAccessAppWhiteList-error:"));
        }
        if (this.f2296b == null) {
            return null;
        }
        if (!AbstractC1102l9.m2273N(this.f2296b.urlWhiteExceptListRead())) {
            arrayList.addAll(this.f2296b.urlWhiteExceptListRead());
        }
        return arrayList;
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: I0 */
    public void mo1308I0(List<String> list) {
        try {
            if (this.f2296b != null) {
                this.f2296b.urlWhiteExceptListWrite(list);
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("KaishuodaKImpl ,setNetworkAccessAppWhiteList-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: M0 */
    public List<String> mo1311M0() {
        ArrayList arrayList = new ArrayList();
        try {
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("KaishuodaKImpl ,getAppWhiteList-error:"));
        }
        if (this.f2296b == null) {
            return null;
        }
        if (!AbstractC1102l9.m2273N(this.f2296b.appWhiteListRead())) {
            arrayList.addAll(this.f2296b.appWhiteListRead());
        }
        return arrayList;
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: N */
    public boolean mo1312N(long j) {
        try {
            if (this.f2296b == null) {
                return true;
            }
            this.f2296b.modifySystemTime(j);
            return true;
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("KaishuodaKImpl ,setSystemTime-error:"));
            return true;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: O */
    public void mo1313O(String str, String str2) {
        try {
            if (this.f2296b != null) {
                this.f2296b.systemInit();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("KaishuodaKImpl ,systemInit-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: Q */
    public void mo1314Q(String str) {
        try {
            if (this.f2296b != null) {
                this.f2296b.silentUnInstall(str);
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("KaishuodaKImpl ,actionSilentUnInstall-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: V */
    public boolean mo1316V(List<String> list) {
        try {
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("KaishuodaKImpl ,setUrlWhiteList-error:"));
        }
        if (this.f2296b == null) {
            return false;
        }
        new Thread(new a(list)).start();
        return false;
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: b0 */
    public void mo1318b0(List<String> list) {
        try {
            if (this.f2296b != null) {
                this.f2296b.showWifiAdvanced();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("KaishuodaKImpl ,showWifiAdvanced-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: c */
    public void mo1319c(boolean z) {
        try {
            if (this.f2296b != null) {
                this.f2296b.enableSdCard();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("KaishuodaKImpl ,enableSdCard-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableBack() {
        try {
            if (this.f2296b != null) {
                this.f2296b.disableBack();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("KaishuodaKImpl ,disableBack-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableBluetooth() {
        try {
            if (this.f2296b != null) {
                this.f2296b.disableBluetooth();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("KaishuodaKImpl ,disableBluetooth-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableCamera() {
        try {
            if (this.f2296b != null) {
                this.f2296b.disableCamera();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("KaishuodaKImpl ,disableCamera-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableFireWall() {
        try {
            if (this.f2296b != null) {
                this.f2296b.disableFireWall();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("KaishuodaKImpl ,disableFireWall-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableGPS() {
        try {
            if (this.f2296b != null) {
                this.f2296b.disableGPS();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("KaishuodaKImpl ,disableGPS-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableHome() {
        try {
            if (this.f2296b != null) {
                this.f2296b.disableHome();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("KaishuodaKImpl ,disableHome-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableLongPressPower() {
        try {
            if (this.f2296b != null) {
                this.f2296b.disableLongPressPower();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("KaishuodaKImpl ,disableLongPressPower-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableMobileData() {
        try {
            if (this.f2296b != null) {
                this.f2296b.disableMobileData();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("KaishuodaKImpl ,disableMobileData-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableNavigation() {
        disableHome();
        disableBack();
        disableRecent();
        disableShortPressPower();
        disableLongPressPower();
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableOTA() {
        try {
            if (this.f2296b != null) {
                this.f2296b.disableOTA();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("KaishuodaKImpl ,disableOTA-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableOTG() {
        try {
            if (this.f2296b != null) {
                this.f2296b.disableOTG();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("KaishuodaKImpl ,disableOTG-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableRecent() {
        try {
            if (this.f2296b != null) {
                this.f2296b.disableRecent();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("KaishuodaKImpl ,disableRecent-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableScreenShot() {
        try {
            if (this.f2296b != null) {
                this.f2296b.disableScreenShot();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("KaishuodaKImpl ,disableScreenShot-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableShortPressPower() {
        try {
            if (this.f2296b != null) {
                this.f2296b.disableShortPressPower();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("KaishuodaKImpl ,disableShortPressPower-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableSpeech() {
        try {
            if (this.f2296b != null) {
                this.f2296b.disableSpeech();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("KaishuodaKImpl ,disableSpeech-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableUsb() {
        try {
            if (this.f2296b != null) {
                this.f2296b.disableUsb();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("KaishuodaKImpl ,disableUsb-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableVolume() {
        try {
            if (this.f2296b != null) {
                this.f2296b.disableVolume();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("KaishuodaKImpl ,disableVolume-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: e */
    public void mo1320e(String str) {
        try {
            if (this.f2296b != null) {
                this.f2296b.disableApp(str);
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("KaishuodaKImpl ,actionDisableApp-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableBack() {
        try {
            if (this.f2296b != null) {
                this.f2296b.enableBack();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("KaishuodaKImpl ,enableBack-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableBluetooth() {
        try {
            if (this.f2296b != null) {
                this.f2296b.enableBluetooth();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("KaishuodaKImpl ,enableBluetooth-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableCamera() {
        try {
            if (this.f2296b != null) {
                this.f2296b.enableCamera();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("KaishuodaKImpl ,enableCamera-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableFireWall() {
        try {
            if (this.f2296b != null) {
                this.f2296b.enableFireWall();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("KaishuodaKImpl ,enableFireWall-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableGPS() {
        try {
            if (this.f2296b != null) {
                this.f2296b.enableGPS();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("KaishuodaKImpl ,enableGPS-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableHome() {
        try {
            if (this.f2296b != null) {
                this.f2296b.enableHome();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("KaishuodaKImpl ,enableHome-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableLongPressPower() {
        try {
            if (this.f2296b != null) {
                this.f2296b.enableLongPressPower();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("KaishuodaKImpl ,enableLongPressPower-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableMobileData() {
        try {
            if (this.f2296b != null) {
                this.f2296b.enableMobileData();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("KaishuodaKImpl ,enableMobileData-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableNavigation() {
        enableHome();
        enableBack();
        enableRecent();
        enableLongPressPower();
        enableShortPressPower();
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableOTA() {
        try {
            if (this.f2296b != null) {
                this.f2296b.enableOTA();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("KaishuodaKImpl ,enableOTA-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableOTG() {
        try {
            if (this.f2296b != null) {
                this.f2296b.enableOTG();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("KaishuodaKImpl ,enableOTG-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableRecent() {
        try {
            if (this.f2296b != null) {
                this.f2296b.enableRecent();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("KaishuodaKImpl ,enableRecent-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableScreenShot() {
        try {
            if (this.f2296b != null) {
                this.f2296b.enableScreenShot();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("KaishuodaKImpl ,enableScreenShot-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableShortPressPower() {
        try {
            if (this.f2296b != null) {
                this.f2296b.enableShortPressPower();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("KaishuodaKImpl ,enableShortPressPower-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableSpeech() {
        try {
            if (this.f2296b != null) {
                this.f2296b.enableSpeech();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("KaishuodaKImpl ,enableSpeech-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableUsb() {
        try {
            if (this.f2296b != null) {
                this.f2296b.enableUsb();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("KaishuodaKImpl ,enableUsb-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableVolume() {
        try {
            if (this.f2296b != null) {
                this.f2296b.enableVolume();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("KaishuodaKImpl ,enableVolume-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: h */
    public void mo1323h() {
        try {
            if (this.f2296b != null) {
                this.f2296b.urlWhiteExceptListWrite(new ArrayList());
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("KaishuodaKImpl ,cleanNetworkAccessAppWhiteList-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: r */
    public void mo1327r(List<String> list) {
        try {
            if (this.f2296b != null) {
                this.f2296b.hideWifiAdvanced();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("KaishuodaKImpl ,hideWifiAdvanced-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: s */
    public boolean mo1328s(List<String> list) {
        try {
            if (this.f2296b == null) {
                return false;
            }
            this.f2296b.appWhiteListWrite(list);
            return true;
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("KaishuodaKImpl ,setAppWhiteList-error:"));
            return false;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: t */
    public void mo1329t(boolean z) {
        try {
            if (this.f2296b != null) {
                this.f2296b.resetFactory();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("KaishuodaKImpl ,actionResetFactory-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: t0 */
    public List<String> mo1330t0() {
        ArrayList arrayList = new ArrayList();
        try {
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("KaishuodaKImpl ,getUrlWhiteList-error:"));
        }
        if (this.f2296b == null) {
            return null;
        }
        if (!AbstractC1102l9.m2273N(this.f2296b.urlWhiteListRead())) {
            arrayList.addAll(this.f2296b.urlWhiteListRead());
        }
        return arrayList;
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: y0 */
    public void mo1331y0(String str) {
        try {
            if (this.f2296b != null) {
                this.f2296b.enableApp(str);
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("KaishuodaKImpl ,actionEnableApp-error:"));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: z0 */
    public void mo1332z0(boolean z) {
        try {
            if (this.f2296b != null) {
                this.f2296b.disableSdCard();
            }
        } catch (Throwable th) {
            CompilerOutline.m1746D(th, CompilerOutline.m1765j("KaishuodaKImpl ,disableSdCard-error:"));
        }
    }
}
