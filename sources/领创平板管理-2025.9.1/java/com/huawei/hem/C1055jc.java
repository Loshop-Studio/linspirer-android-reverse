package com.huawei.hem;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.provider.Settings;
import android.util.Log;
import com.alibaba.fastjson.asm.Label;
import com.taobao.accs.utl.UtilityImpl;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: AndroidImpl.java */
/* renamed from: com.huawei.hem.jc */
/* loaded from: classes.dex */
public class C1055jc implements InterfaceC1030ic {

    /* renamed from: a */
    public static Context f2942a;

    /* compiled from: AndroidImpl.java */
    /* renamed from: com.huawei.hem.jc$a */
    public static final class a {

        /* renamed from: a */
        public static final C1055jc f2943a = new C1055jc();
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: A */
    public void mo2042A(ArrayList<String> arrayList) {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: A0 */
    public void mo1334A0(List<String> list) {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: B */
    public void mo2043B() {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: B0 */
    public void mo1304B0(List<String> list) {
        if (AbstractC1102l9.m2273N(list)) {
            return;
        }
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            mo1331y0(it.next());
        }
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: C */
    public void mo1305C() {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: C0 */
    public void mo1335C0() {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: D */
    public void mo2044D() {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: D0 */
    public void mo2045D0() {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: E */
    public void mo2046E() {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: E0 */
    public void mo1336E0(List<String> list) {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: F */
    public void mo1306F(String str) {
        try {
            Intent intent = new Intent();
            intent.setAction("android.intent.action.VIEW");
            intent.addFlags(Label.FORWARD_REFERENCE_TYPE_SHORT);
            intent.setDataAndType(Uri.parse("file://" + str), "application/vnd.android.package-archive");
            f2942a.startActivity(intent);
        } catch (Throwable th) {
            StringBuilder sbM1765j = C0948f6.m1765j("actionSilentInstall Throwable is");
            sbM1765j.append(th.getMessage());
            String string = sbM1765j.toString();
            Log.e("AndroidImpl", string);
            C0850bc.m1411u("AndroidImpl", string);
        }
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: F0 */
    public void mo2047F0(String str) {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: G */
    public String mo1337G() {
        return "";
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: G0 */
    public List<String> mo1307G0() {
        return new ArrayList();
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: H */
    public void mo1338H() {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: H0 */
    public void mo2048H0() {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: I */
    public void mo2049I() {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: I0 */
    public void mo1308I0(List<String> list) {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: J */
    public void mo1309J(String str) {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: J0 */
    public void mo2050J0(int i, boolean z) {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: K */
    public void mo2051K() {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: K0 */
    public void mo2052K0() {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: L */
    public String mo1310L(String str) {
        return null;
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: L0 */
    public List<String> mo1339L0() {
        return new ArrayList();
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: M */
    public void mo2053M() {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: M0 */
    public List<String> mo1311M0() {
        return new ArrayList();
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: N */
    public boolean mo1312N(long j) {
        return true;
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: N0 */
    public void mo1340N0() {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: O */
    public void mo1313O(String str, String str2) {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: O0 */
    public void mo1341O0() {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: P */
    public boolean mo2054P() {
        return false;
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: P0 */
    public void mo2055P0(ArrayList<String> arrayList) {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: Q */
    public void mo1314Q(String str) {
        Intent intent = new Intent("android.intent.action.DELETE", Uri.parse("package:" + str));
        intent.addFlags(Label.FORWARD_REFERENCE_TYPE_SHORT);
        f2942a.startActivity(intent);
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: Q0 */
    public void mo1342Q0(List<String> list) {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: R */
    public void mo2056R(int i) {
    }

    /* renamed from: R0 */
    public void m2127R0(Context context) {
        try {
            C0850bc.m1403m("AndroidImplactionEnableRotation");
            Settings.System.putInt(context.getContentResolver(), "accelerometer_rotation", 1);
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("AndroidImplsetting ACCELEROMETER_ROTATION exception:"));
        }
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: S */
    public void mo1315S() {
    }

    /* renamed from: S0 */
    public void m2128S0(Context context, ComponentName componentName) {
        StringBuilder sbM1765j = C0948f6.m1765j("AndroidImpl--disableComponent start ");
        sbM1765j.append(componentName.getClassName());
        C0850bc.m1403m(sbM1765j.toString());
        try {
            context.getPackageManager().setComponentEnabledSetting(componentName, 2, 1);
        } catch (Throwable th) {
            C0948f6.m1744B(th, C0948f6.m1765j("AndroidImpl--disableComponent error:"));
        }
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: T */
    public void mo1343T(boolean z, long j, String str) {
    }

    /* renamed from: T0 */
    public void m2129T0(Context context, int i) {
        try {
            C0850bc.m1403m("AndroidImpl -- setLockScreenTime");
            Settings.System.putInt(context.getContentResolver(), "screen_off_timeout", i);
        } catch (Exception e) {
            C0948f6.m1776u(e, C0948f6.m1765j("AndroidImpl -- setLockScreenTime error : "));
        }
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: U */
    public void mo2057U() {
    }

    /* renamed from: U0 */
    public void m2130U0(Context context, int i) {
        try {
            C0850bc.m1403m("AndroidImplsetUserRotation:" + i);
            Settings.System.putInt(context.getContentResolver(), "user_rotation", i);
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("AndroidImplsetting USER_ROTATION exception:"));
        }
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: V */
    public boolean mo1316V(List<String> list) {
        return false;
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: W */
    public void mo1345W(boolean z, long j, String str) {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: X */
    public void mo1346X() {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: Y */
    public String mo1317Y(Context context) {
        WifiInfo connectionInfo;
        WifiManager wifiManager = (WifiManager) context.getApplicationContext().getSystemService(UtilityImpl.NET_TYPE_WIFI);
        String macAddress = null;
        if (wifiManager != null && (connectionInfo = wifiManager.getConnectionInfo()) != null) {
            macAddress = connectionInfo.getMacAddress();
        }
        return macAddress == null ? "unknown" : macAddress;
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: Z */
    public void mo2058Z() {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: a */
    public void mo2059a(String str, String str2) {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: a0 */
    public ArrayList<String> mo1347a0() {
        return null;
    }

    /* renamed from: b */
    public void m2131b(Context context) {
        try {
            C0850bc.m1403m("AndroidImplactionDisableRotation");
            Settings.System.putInt(context.getContentResolver(), "accelerometer_rotation", 0);
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("AndroidImplsetting ACCELEROMETER_ROTATION exception:"));
        }
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: b0 */
    public void mo1318b0(List<String> list) {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: c */
    public void mo1319c(boolean z) {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: c0 */
    public ArrayList<String> mo2060c0() {
        return new ArrayList<>();
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: d */
    public void mo1506d(ArrayList<String> arrayList) {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: d0 */
    public void mo2061d0(String str) {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    public void disableBack() {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    public void disableBluetooth() {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    public void disableCamera() {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    public void disableFireWall() {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    public void disableGPS() {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    public void disableHome() {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    public void disableLongPressPower() {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    public void disableMobileData() {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    public void disableNavigation() {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    public void disableOTA() {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    public void disableOTG() {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    public void disableRecent() {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    public void disableScreenShot() {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    public void disableShortPressPower() {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    public void disableSpeech() {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    public void disableUsb() {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    public void disableVolume() {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: e */
    public void mo1320e(String str) {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: e0 */
    public boolean mo2062e0() {
        return false;
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    public void enableBack() {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    public void enableBluetooth() {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    public void enableCamera() {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    public void enableFireWall() {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    public void enableGPS() {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    public void enableHome() {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    public void enableLongPressPower() {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    public void enableMobileData() {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    public void enableNavigation() {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    public void enableOTA() {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    public void enableOTG() {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    public void enableRecent() {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    public void enableScreenShot() {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    public void enableShortPressPower() {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    public void enableSpeech() {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    public void enableUsb() {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    public void enableVolume() {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: f */
    public void mo1348f() {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: f0 */
    public void mo2063f0() {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: g */
    public void mo1321g() {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: g0 */
    public void mo1322g0() {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: h */
    public void mo1323h() {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: h0 */
    public void mo1324h0() {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: i */
    public void mo1325i() {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: i0 */
    public boolean mo2064i0() {
        return false;
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: j */
    public boolean mo2065j() {
        return false;
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: j0 */
    public void mo1349j0(ArrayList<String> arrayList) {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: k */
    public boolean mo2066k() {
        return true;
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: k0 */
    public void mo1326k0(List<String> list) {
        if (AbstractC1102l9.m2273N(list)) {
            return;
        }
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            mo1320e(it.next());
        }
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: l */
    public boolean mo1350l(List<String> list) {
        return false;
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: l0 */
    public void mo2067l0() {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: m */
    public void mo2068m(List<String> list) {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: m0 */
    public void mo2069m0(ArrayList<String> arrayList) {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: n */
    public void mo1351n() {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: n0 */
    public void mo2070n0(List<String> list) {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: o */
    public List<String> mo1352o() {
        return new ArrayList();
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: o0 */
    public void mo1353o0() {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: p */
    public int mo2071p(boolean z) {
        return 1;
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: p0 */
    public boolean mo2072p0() {
        return false;
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: q */
    public List<String> mo2073q() {
        return null;
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: q0 */
    public void mo2074q0(boolean z) {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: r */
    public void mo1327r(List<String> list) {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: r0 */
    public void mo2075r0(ArrayList<String> arrayList) {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    public void removePersistentApp(List<String> list) {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: s */
    public boolean mo1328s(List<String> list) {
        return false;
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: s0 */
    public void mo2076s0(List<String> list) {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: t */
    public void mo1329t(boolean z) {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: t0 */
    public List<String> mo1330t0() {
        return new ArrayList();
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: u */
    public List<String> mo1507u() {
        return new ArrayList();
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: u0 */
    public void mo2077u0(List<String> list) {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: v */
    public void mo2078v() {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: v0 */
    public void mo2079v0(List<String> list) {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: w */
    public void mo2080w() {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: w0 */
    public void mo2081w0(ArrayList<String> arrayList) {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: x */
    public void mo1354x(ArrayList<String> arrayList) {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: x0 */
    public void mo2082x0() {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: y */
    public void mo2083y(String str) {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: y0 */
    public void mo1331y0(String str) {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: z */
    public void mo2084z() {
    }

    @Override // com.huawei.hem.InterfaceC1030ic
    /* renamed from: z0 */
    public void mo1332z0(boolean z) {
    }
}
