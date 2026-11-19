package com.huawei.hem;

import android.app.csdk.CSDKManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import com.huawei.hem.InterfaceC0864c0;
import java.util.Iterator;
import java.util.List;

/* compiled from: LenovoCSDK5Impl.java */
/* renamed from: com.huawei.hem.zd */
/* loaded from: classes.dex */
public class C1457zd extends C0826ae {

    /* renamed from: g */
    public static C1457zd f4305g;

    /* renamed from: e */
    public InterfaceC0864c0 f4306e;

    /* renamed from: f */
    public ServiceConnection f4307f = new a();

    /* compiled from: LenovoCSDK5Impl.java */
    /* renamed from: com.huawei.hem.zd$a */
    public class a implements ServiceConnection {
        public a() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            C0850bc.m1403m("LenovoCSDK5Impl --onServiceConnected");
            C1457zd.this.f4306e = InterfaceC0864c0.a.m1441J(iBinder);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            C1457zd.this.f4306e = null;
            C0850bc.m1403m("LenovoCSDK5Impl --Service Disconnected");
        }
    }

    public C1457zd(Context context) {
        if (C0826ae.f2206c == null) {
            C0826ae.f2206c = new CSDKManager(context);
            C0826ae.f2207d = context;
        }
        m3146X0();
    }

    @Override // com.huawei.hem.C0826ae, com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: C0 */
    public void mo1335C0() {
        C0850bc.m1403m("LenovoCSDK5Impl --disableFileShare ");
        super.mo1335C0();
        try {
            C0826ae.f2206c.disallowBluetoothShareV3(true);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("LenovoCSDK5Impl --disallowBluetoothShareV3-error:"));
        }
    }

    @Override // com.huawei.hem.C0826ae, com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: G0 */
    public List<String> mo1307G0() {
        C0850bc.m1403m("LenovoCSDK5Impl --getNetworkAccessAppWhiteList ");
        m3146X0();
        try {
            return C0838b0.m1382a(C0826ae.f2207d, this.f4306e);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("LenovoCSDK5Impl --csdk5 getNetworkAccessAppWhiteList -error:"));
            return null;
        }
    }

    @Override // com.huawei.hem.C0826ae, com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: I0 */
    public void mo1308I0(List<String> list) {
        C0850bc.m1403m("LenovoCSDK5Impl --setNetworkAccessAppWhiteList ");
        m3146X0();
        if (AbstractC1102l9.m2273N(list)) {
            return;
        }
        mo1323h();
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            try {
                this.f4306e.mo1440y2(String.valueOf(C0850bc.m1396f(C0826ae.f2207d, it.next())));
            } catch (Throwable th) {
                C0948f6.m1744B(th, C0948f6.m1765j("LenovoCSDK5Impl -- setNetworkAccessAppWhiteList error:"));
            }
        }
    }

    @Override // com.huawei.hem.C0826ae, com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: O */
    public void mo1313O(String str, String str2) {
        super.mo1313O(str, str2);
        try {
            C0850bc.m1393c("LenovoCSDK5Impl disallowWifiDirectV3");
            C0826ae.f2206c.disallowWifiDirectV3(true);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("LenovoCSDK5Impl --disallowWifiDirectV3-error:"));
        }
        try {
            C0850bc.m1393c("LenovoCSDK5Impl disallowSetNotificationVolumV3");
            C0826ae.f2206c.disallowSetNotificationVolumV3(true);
        } catch (Throwable th2) {
            C0948f6.m1745C(th2, C0948f6.m1765j("LenovoCSDK5Impl --disallowSetNotificationVolumV3--error:"));
        }
        try {
            C0850bc.m1393c("LenovoCSDK5Impl disallowDevModeV3");
            C0826ae.f2206c.disallowDevModeV3(true);
        } catch (Throwable th3) {
            C0948f6.m1744B(th3, C0948f6.m1765j("LenovoCSDK5Impl --disallowDevModeV3-error:"));
        }
        try {
            C0850bc.m1403m("LenovoCSDK5Impl disableMultiUser_v3");
            C0826ae.f2206c.disableMultiUser_v3(true);
        } catch (Throwable th4) {
            C0948f6.m1744B(th4, C0948f6.m1765j("LenovoCSDK5Impl disableMultiUser_v3 error"));
        }
        try {
            C0850bc.m1403m("LenovoCSDK5Impl disallowMultiUserV3");
            C0826ae.f2206c.disallowMultiUserV3(true);
        } catch (Throwable th5) {
            C0948f6.m1744B(th5, C0948f6.m1765j("LenovoCSDK5Impl disallowMultiUserV3 error"));
        }
        try {
            C0850bc.m1403m("LenovoCSDK5Impl disallowAirplaneMode_v3");
            C0826ae.f2206c.disallowAirplaneMode_v3(true);
        } catch (Throwable th6) {
            C0948f6.m1744B(th6, C0948f6.m1765j("LenovoCSDK5Impl disallowAirplaneMode_v3 error"));
        }
        try {
            C0850bc.m1403m("LenovoCSDK5Impl disallowAirplaneModeV3");
            C0826ae.f2206c.disallowAirplaneModeV3(true);
        } catch (Throwable th7) {
            C0948f6.m1744B(th7, C0948f6.m1765j("LenovoCSDK5Impl disallowAirplaneModeV3 error"));
        }
        mo1344V0();
    }

    @Override // com.huawei.hem.C0826ae, com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: V */
    public boolean mo1316V(List<String> list) {
        C0850bc.m1403m("LenovoCSDK5Impl --setUrlWhiteList ");
        m3146X0();
        try {
            this.f4306e.mo1435I0();
            this.f4306e.mo1434H1("*");
            for (String str : list) {
                if (!C0904de.m1599p(str)) {
                    str = "*." + str;
                }
                C0850bc.m1392b("LenovoCSDK5Impl -- csdk5 setUrlWhiteList url:" + str + ",state:" + this.f4306e.mo1433G2(str).f809a);
            }
            return false;
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("LenovoCSDK5Impl -- setUrlWhiteList error:"));
            return false;
        }
    }

    @Override // com.huawei.hem.C0826ae
    /* renamed from: V0 */
    public void mo1344V0() {
        super.mo1344V0();
        try {
            C0850bc.m1403m("LenovoCSDK5Impl disallowFactoryReset_v3");
            C0826ae.f2206c.disallowFactoryReset_v3(true);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("LenovoCSDK5Impl disallowFactoryReset_v3 error"));
        }
        try {
            C0850bc.m1403m("LenovoCSDK5Impl disallowFactoryResetV3");
            C0826ae.f2206c.disallowFactoryResetV3(true);
        } catch (Throwable th2) {
            C0948f6.m1744B(th2, C0948f6.m1765j("LenovoCSDK5Impl disallowFactoryResetV3 error"));
        }
    }

    /* renamed from: X0 */
    public final void m3146X0() {
        if (this.f4306e == null) {
            C0850bc.m1403m("LenovoCSDK5Impl --bindAFWService");
            Bundle bundle = new Bundle();
            Intent intent = new Intent();
            intent.setAction("cn.com.microtrust.firewall.IAFWService");
            intent.setPackage("cn.com.microtrust.firewall");
            intent.putExtras(bundle);
            C0826ae.f2207d.bindService(intent, this.f4307f, 1);
        }
    }

    @Override // com.huawei.hem.C0826ae, com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: b0 */
    public void mo1318b0(List<String> list) {
        super.mo1318b0(list);
        try {
            C0850bc.m1403m("LenovoCSDK5Impl enableWifiAdvanceSettingsV3");
            C0826ae.f2206c.disallowWifiAdvanceSettingsV3(false);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("LenovoCSDK5Impl enableWifiAdvanceSettingsV3 error"));
        }
        try {
            C0850bc.m1403m("LenovoCSDK5Impl enableWifiAdvanceSettings_v3");
            C0826ae.f2206c.disallowWifiadvancesettings_v3(false);
        } catch (Throwable th2) {
            C0948f6.m1744B(th2, C0948f6.m1765j("LenovoCSDK5Impl enableWifiAdvanceSettings_v3 error"));
        }
    }

    @Override // com.huawei.hem.C0826ae, com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableBluetooth() {
        C0850bc.m1403m("LenovoCSDK5Impl --disableBluetooth ");
        super.disableBluetooth();
        try {
            C0850bc.m1403m("LenovoCSDK5Impl --disallowBluetoothV3 ");
            C0826ae.f2206c.disallowBluetoothV3(true);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("LenovoCSDK5Impl --disallowBluetoothV3 -error:"));
        }
        try {
            C0850bc.m1403m("LenovoCSDK5Impl --enableBluetoothV3 ");
            C0826ae.f2206c.enableBluetoothV3(false);
        } catch (Throwable th2) {
            C0948f6.m1744B(th2, C0948f6.m1765j("LenovoCSDK5Impl --enableBluetoothV3 -error:"));
        }
    }

    @Override // com.huawei.hem.C0826ae, com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableFireWall() {
        C0850bc.m1403m("LenovoCSDK5Impl --disableFireWall ");
        m3146X0();
        try {
            this.f4306e.mo1437j2(false);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("LenovoCSDK5Impl -- disableFireWall error:"));
        }
    }

    @Override // com.huawei.hem.C0826ae, com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableGPS() {
        C0850bc.m1403m("LenovoCSDK5Impl --disableGPS ");
        super.disableGPS();
        try {
            C0850bc.m1403m("LenovoCSDK5Impl --disallowLocationV3 ");
            C0826ae.f2206c.disallowLocationV3(true);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("LenovoCSDK5Impl --disallowLocationV3 -error:"));
        }
        try {
            C0850bc.m1403m("LenovoCSDK5Impl disable--enableLocationV3 state:" + C0826ae.f2206c.enableLocationV3(false));
        } catch (Throwable th2) {
            C0948f6.m1744B(th2, C0948f6.m1765j("LenovoCSDK5Impl --enableLocationV3 true:"));
        }
    }

    @Override // com.huawei.hem.C0826ae, com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableScreenShot() {
        C0850bc.m1403m("LenovoCSDK5Impl --disableScreenShot");
        super.disableScreenShot();
        try {
            C0826ae.f2206c.enableCaptureScreenV3(false);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("LenovoCSDK5Impl --enableCaptureScreenV3-error:"));
        }
    }

    @Override // com.huawei.hem.C0826ae, com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableBluetooth() {
        C0850bc.m1403m("LenovoCSDK5Impl --enableBluetooth ");
        super.enableBluetooth();
        try {
            C0850bc.m1403m("LenovoCSDK5Impl --enableBluetooth ");
            C0826ae.f2206c.disallowBluetoothV3(false);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("LenovoCSDK5Impl --enableBluetooth -error:"));
        }
        try {
            C0850bc.m1403m("LenovoCSDK5Impl --enableBluetoothV3 ");
            C0826ae.f2206c.enableBluetoothV3(true);
        } catch (Throwable th2) {
            C0948f6.m1744B(th2, C0948f6.m1765j("LenovoCSDK5Impl --enableBluetoothV3 -error:"));
        }
    }

    @Override // com.huawei.hem.C0826ae, com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableFireWall() {
        C0850bc.m1403m("LenovoCSDK5Impl --enableFireWall ");
        m3146X0();
        try {
            this.f4306e.mo1437j2(true);
            C0850bc.m1403m("LenovoCSDK5Impl  read fire wall status:" + this.f4306e.mo1438n1());
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("LenovoCSDK5Impl -- enableFireWall error:"));
        }
    }

    @Override // com.huawei.hem.C0826ae, com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableGPS() {
        C0850bc.m1403m("LenovoCSDK5Impl --enableGPS ");
        super.enableGPS();
        try {
            C0850bc.m1403m("LenovoCSDK5Impl enable--disallowLocationV3 ");
            C0826ae.f2206c.disallowLocationV3(false);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("LenovoCSDK5Impl enable--disallowLocationV3 -error:"));
        }
        try {
            C0850bc.m1403m("LenovoCSDK5Impl --enableLocationV3 state:" + C0826ae.f2206c.enableLocationV3(true));
        } catch (Throwable th2) {
            C0948f6.m1744B(th2, C0948f6.m1765j("LenovoCSDK5Impl --enableLocationV3 true:"));
        }
    }

    @Override // com.huawei.hem.C0826ae, com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableScreenShot() {
        C0850bc.m1403m("LenovoCSDK5Impl --enableScreenShot");
        super.enableScreenShot();
        try {
            C0826ae.f2206c.enableCaptureScreenV3(true);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("LenovoCSDK5Impl --enableCaptureScreenV3-error:"));
        }
    }

    @Override // com.huawei.hem.C0826ae, com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: f */
    public void mo1348f() {
        super.mo1348f();
        try {
            C0850bc.m1403m("LenovoCSDK5Impl enableFactoryReset_v3");
            C0826ae.f2206c.disallowFactoryReset_v3(false);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("LenovoCSDK5Impl enableFactoryReset_v3 error"));
        }
        try {
            C0850bc.m1403m("LenovoCSDK5Impl enableFactoryResetV3");
            C0826ae.f2206c.disallowFactoryResetV3(false);
        } catch (Throwable th2) {
            C0948f6.m1744B(th2, C0948f6.m1765j("LenovoCSDK5Impl enableFactoryResetV3 error"));
        }
    }

    @Override // com.huawei.hem.C0826ae, com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: h */
    public void mo1323h() {
        C0850bc.m1403m("LenovoCSDK5Impl --cleanNetworkAccessAppWhiteList ");
        m3146X0();
        try {
            this.f4306e.mo1439p3();
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("LenovoCSDK5Impl -- cleanNetworkAccessAppWhiteList error:"));
        }
    }

    @Override // com.huawei.hem.C0826ae, com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: o0 */
    public void mo1353o0() {
        C0850bc.m1403m("LenovoCSDK5Impl --enableFileShare ");
        super.mo1353o0();
        try {
            C0826ae.f2206c.disallowBluetoothShareV3(false);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("LenovoCSDK5Impl --disallowBluetoothShareV3-error:"));
        }
    }

    @Override // com.huawei.hem.C0826ae, com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: r */
    public void mo1327r(List<String> list) {
        super.mo1327r(list);
        try {
            C0850bc.m1403m("LenovoCSDK5Impl disallowWifiAdvanceSettingsV3");
            C0826ae.f2206c.disallowWifiAdvanceSettingsV3(true);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("LenovoCSDK5Impl disallowWifiAdvanceSettingsV3 error"));
        }
        try {
            C0850bc.m1403m("LenovoCSDK5Impl disallowWifiadvancesettings_v3");
            C0826ae.f2206c.disallowWifiadvancesettings_v3(true);
        } catch (Throwable th2) {
            C0948f6.m1744B(th2, C0948f6.m1765j("LenovoCSDK5Impl disallowWifiadvancesettings_v3 error"));
        }
    }

    @Override // com.huawei.hem.C0826ae, com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: t0 */
    public List<String> mo1330t0() {
        C0850bc.m1403m("LenovoCSDK5Impl --getUrlWhiteList ");
        m3146X0();
        try {
            return this.f4306e.mo1436P().f810b;
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("LenovoCSDK5Impl -- getUrlWhiteList error:"));
            return null;
        }
    }
}
