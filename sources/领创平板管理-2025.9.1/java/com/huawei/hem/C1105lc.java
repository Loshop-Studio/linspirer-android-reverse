package com.huawei.hem;

import android.bluetooth.BluetoothAdapter;
import android.content.Intent;
import com.taobao.accs.common.Constants;
import java.util.ArrayList;
import java.util.List;

/* compiled from: BoyueImpl.java */
/* renamed from: com.huawei.hem.lc */
/* loaded from: classes.dex */
public class C1105lc extends C1055jc {

    /* renamed from: b */
    public static C1105lc f3168b = new C1105lc();

    /* renamed from: c */
    public static C0999h6 f3169c;

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: F */
    public void mo1306F(String str) {
        try {
            C0999h6 c0999h6 = f3169c;
            if (c0999h6 == null) {
                throw null;
            }
            Intent intent = new Intent("com.boyue.silentInstall");
            intent.putExtra("path", str);
            c0999h6.f2813a.sendBroadcast(intent);
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1771p(th, "BoyueImplactionSilentInstall "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: M0 */
    public List<String> mo1311M0() {
        try {
            return f3169c.m1938a();
        } catch (Throwable th) {
            StringBuilder sbM1771p = C0948f6.m1771p(th, "BoyueImplgetAppWhiteList ");
            sbM1771p.append(th.getMessage());
            C0850bc.m1390A(sbM1771p.toString());
            return new ArrayList();
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: N */
    public boolean mo1312N(long j) {
        try {
            C0999h6 c0999h6 = f3169c;
            if (c0999h6 == null) {
                throw null;
            }
            Intent intent = new Intent("com.boyue.modifySystemTime");
            intent.putExtra("time", j);
            c0999h6.f2813a.sendBroadcast(intent);
            return true;
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1771p(th, "BoyueImplsetSystemTime "));
            return true;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: O */
    public void mo1313O(String str, String str2) {
        try {
            C0999h6 c0999h6 = f3169c;
            if (c0999h6 == null) {
                throw null;
            }
            Intent intent = new Intent("com.boyue.activeDeviceAdmin");
            intent.putExtra(Constants.KEY_PACKAGE_NAME, str);
            c0999h6.f2813a.sendBroadcast(intent);
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1771p(th, "BoyueImplactionActiveDeviceAdmin "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: Q */
    public void mo1314Q(String str) {
        try {
            C0999h6 c0999h6 = f3169c;
            if (c0999h6 == null) {
                throw null;
            }
            Intent intent = new Intent("com.boyue.silentUnInstall");
            intent.putExtra(Constants.KEY_PACKAGE_NAME, str);
            c0999h6.f2813a.sendBroadcast(intent);
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1771p(th, "BoyueImplactionSilentUnInstall "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: V */
    public boolean mo1316V(List<String> list) {
        try {
            C0999h6 c0999h6 = f3169c;
            if (c0999h6 == null) {
                throw null;
            }
            Intent intent = new Intent("com.boyue.urlWhiteListWrite");
            intent.putStringArrayListExtra(Constants.KEY_PACKAGE_NAMES, (ArrayList) list);
            c0999h6.f2813a.sendBroadcast(intent);
            return true;
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1771p(th, "BoyueImplsetUrlWhiteList "));
            return false;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: b0 */
    public void mo1318b0(List<String> list) {
        try {
            f3169c.f2813a.sendBroadcast(new Intent("com.boyue.wifiadv_show"));
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1771p(th, "BoyueImplshowWifiAdvanced "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableBack() {
        try {
            f3169c.f2813a.sendBroadcast(new Intent("com.boyue.disableBack"));
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1771p(th, "BoyueImpldisableBack "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableBluetooth() {
        try {
            C0999h6 c0999h6 = f3169c;
            if (c0999h6 == null) {
                throw null;
            }
            BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
            if (defaultAdapter != null) {
                defaultAdapter.disable();
            }
            c0999h6.f2813a.sendBroadcast(new Intent("com.boyue.disableBluetooth"));
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1771p(th, "BoyueImpldisableBluetooth "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableCamera() {
        try {
            f3169c.f2813a.sendBroadcast(new Intent("com.boyue.disableCamera"));
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1771p(th, "BoyueImpldisableCamera "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableGPS() {
        try {
            f3169c.f2813a.sendBroadcast(new Intent("com.boyue.disableGPS"));
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1771p(th, "BoyueImpldisableGPS "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableHome() {
        try {
            f3169c.f2813a.sendBroadcast(new Intent("com.boyue.disableHome"));
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1771p(th, "BoyueImpldisableHome "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableLongPressPower() {
        try {
            f3169c.f2813a.sendBroadcast(new Intent("com.boyue.disablelongpresspower"));
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1771p(th, "BoyueImpldisableLongPressPower "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableMobileData() {
        try {
            f3169c.f2813a.sendBroadcast(new Intent("com.boyue.disableMobileData"));
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1771p(th, "BoyueImpldisableMobileData "));
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
            f3169c.f2813a.sendBroadcast(new Intent("com.boyue.disableRecent"));
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1771p(th, "BoyueImpldisableRecent "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableShortPressPower() {
        try {
            f3169c.f2813a.sendBroadcast(new Intent("com.boyue.disableshortpresspower"));
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1771p(th, "BoyueImpldisableShortPressPower "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableSpeech() {
        try {
            f3169c.f2813a.sendBroadcast(new Intent("com.boyue.disableSpeech").putExtra("speech", "speech"));
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1771p(th, "BoyueImpldisableSpeech "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableUsb() {
        try {
            f3169c.f2813a.sendBroadcast(new Intent("com.boyue.disableUsb"));
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1771p(th, "BoyueImpldisableUsb "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void disableVolume() {
        try {
            f3169c.f2813a.sendBroadcast(new Intent("com.boyue.disableVolume"));
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1771p(th, "BoyueImpldisableVolume "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: e */
    public void mo1320e(String str) {
        try {
            C0999h6 c0999h6 = f3169c;
            if (c0999h6 == null) {
                throw null;
            }
            Intent intent = new Intent("com.boyue.disableApp");
            intent.putExtra(Constants.KEY_PACKAGE_NAME, str);
            c0999h6.f2813a.sendBroadcast(intent);
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1771p(th, "BoyueImplactionDisableApp "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableBack() {
        try {
            f3169c.f2813a.sendBroadcast(new Intent("com.boyue.enableBack"));
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1771p(th, "BoyueImplenableBack "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableBluetooth() {
        try {
            f3169c.m1939b();
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1771p(th, "BoyueImplenableBluetooth "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableCamera() {
        try {
            f3169c.f2813a.sendBroadcast(new Intent("com.boyue.enableCamera"));
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1771p(th, "BoyueImplenableCamera "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableGPS() {
        try {
            f3169c.f2813a.sendBroadcast(new Intent("com.boyue.enableGPS"));
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1771p(th, "BoyueImplenableGPS "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableHome() {
        try {
            f3169c.f2813a.sendBroadcast(new Intent("com.boyue.enableHome"));
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1771p(th, "BoyueImplenableHome "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableLongPressPower() {
        try {
            f3169c.f2813a.sendBroadcast(new Intent("com.boyue.enablelongpresspower"));
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1771p(th, "BoyueImplenableLongPressPower "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableMobileData() {
        try {
            f3169c.f2813a.sendBroadcast(new Intent("com.boyue.enableMobileData"));
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1771p(th, "BoyueImplenableMobileData "));
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
            f3169c.f2813a.sendBroadcast(new Intent("com.boyue.enableRecent"));
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1771p(th, "BoyueImplenableRecent "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableShortPressPower() {
        try {
            f3169c.f2813a.sendBroadcast(new Intent("com.boyue.enableshortpresspower"));
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1771p(th, "BoyueImplenableShortPressPower "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableSpeech() {
        try {
            f3169c.f2813a.sendBroadcast(new Intent("com.boyue.enableSpeech").putExtra("speech", "speech"));
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1771p(th, "BoyueImplenableSpeech "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableUsb() {
        try {
            f3169c.f2813a.sendBroadcast(new Intent("com.boyue.enableUsb"));
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1771p(th, "BoyueImplenableUsb "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    public void enableVolume() {
        try {
            f3169c.f2813a.sendBroadcast(new Intent("com.boyue.enableVolume"));
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1771p(th, "BoyueImplenableVolume "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: r */
    public void mo1327r(List<String> list) {
        try {
            f3169c.f2813a.sendBroadcast(new Intent("com.boyue.wifiadv_hide"));
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1771p(th, "BoyueImplhideWifiAdvanced "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: s */
    public boolean mo1328s(List<String> list) {
        try {
            C0999h6 c0999h6 = f3169c;
            if (c0999h6 == null) {
                throw null;
            }
            Intent intent = new Intent("com.boyue.app.add");
            intent.putStringArrayListExtra(Constants.KEY_PACKAGE_NAMES, (ArrayList) list);
            c0999h6.f2813a.sendBroadcast(intent);
            return true;
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1771p(th, "BoyueImplsetAppWhiteList "));
            return false;
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: t */
    public void mo1329t(boolean z) {
        try {
            f3169c.f2813a.sendBroadcast(new Intent("com.boyue.resetFactory"));
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1771p(th, "BoyueImplactionResetFactory "));
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: t0 */
    public List<String> mo1330t0() {
        try {
            return f3169c.m1940c();
        } catch (Throwable th) {
            StringBuilder sbM1771p = C0948f6.m1771p(th, "BoyueImplgetUrlWhiteList");
            sbM1771p.append(th.getMessage());
            C0850bc.m1390A(sbM1771p.toString());
            return new ArrayList();
        }
    }

    @Override // com.huawei.hem.C1055jc, com.huawei.hem.InterfaceC1030ic
    /* renamed from: y0 */
    public void mo1331y0(String str) {
        try {
            C0999h6 c0999h6 = f3169c;
            if (c0999h6 == null) {
                throw null;
            }
            Intent intent = new Intent("com.boyue.enableApp");
            intent.putExtra(Constants.KEY_PACKAGE_NAME, str);
            c0999h6.f2813a.sendBroadcast(intent);
        } catch (Throwable th) {
            C0948f6.m1746D(th, C0948f6.m1771p(th, "BoyueImplactionEnableApp "));
        }
    }
}
