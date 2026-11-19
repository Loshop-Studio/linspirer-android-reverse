package com.huawei.hem;

import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Matrix;
import android.os.MdmManager;
import android.os.SystemProperties;
import android.provider.Provider;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import anetwork.channel.util.RequestConstant;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import org.android.agoo.message.MessageService;

/* compiled from: MdmPolicyManager.java */
/* renamed from: com.huawei.hem.c6 */
/* loaded from: classes.dex */
public class C0870c6 {

    /* renamed from: a */
    public Context f2324a;

    /* renamed from: b */
    public WindowManager f2325b;

    /* renamed from: c */
    public Display f2326c;

    /* renamed from: d */
    public DisplayMetrics f2327d;

    /* renamed from: e */
    public MdmManager f2328e;

    static {
        RequestConstant.TRUE.equals(SystemProperties.get("persist.sys.mdmdebug", RequestConstant.FALSE));
    }

    public C0870c6(Context context) {
        this.f2324a = context;
        new Matrix();
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        this.f2325b = windowManager;
        this.f2326c = windowManager.getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        this.f2327d = displayMetrics;
        this.f2326c.getRealMetrics(displayMetrics);
        this.f2328e = (MdmManager) context.getSystemService("mdm_manager");
    }

    /* renamed from: a */
    public static void m1442a(String str) {
        if (RequestConstant.TRUE.equals(SystemProperties.get("persist.sys.mdmdebug", RequestConstant.FALSE))) {
            Log.d("MdmPolicyManager", "000000000000000: " + str);
        }
    }

    /* renamed from: A */
    public void m1443A() {
        m1442a("reboot");
        this.f2328e.reboot();
    }

    /* renamed from: B */
    public void m1444B() {
        m1442a("removeInstallPackageWhiteListAll ");
        this.f2324a.getContentResolver().delete(Provider.AppWhiteList.CONTENT_URI, null, null);
    }

    /* renamed from: C */
    public void m1445C() {
        m1442a("removeNetworkAccessAppWhitelistAll ");
        this.f2324a.getContentResolver().delete(Provider.NetWorkAccessAppWhiteList.CONTENT_URI, null, null);
        if (m1498w()) {
            this.f2328e.removeNetworkAccessAppWhitelistAll();
        }
    }

    /* renamed from: D */
    public void m1446D() {
        m1442a("removeNetworkAccessWhitelistAll");
        m1481g0();
        if (m1498w()) {
            this.f2328e.removeNetworkAccessWhitelistAll();
        }
    }

    /* renamed from: E */
    public void m1447E(boolean z) {
        m1442a("setBluetoothDataDisabled disabled=" + z);
        SystemProperties.set("persist.sys.bluetoothdisabled", z ? RequestConstant.TRUE : RequestConstant.FALSE);
    }

    /* renamed from: F */
    public void m1448F(boolean z) {
        m1442a("setBluetoothDisabled disabled=" + z);
        this.f2328e.setBluetoothDisabled(z);
    }

    /* renamed from: G */
    public void m1449G(boolean z) {
        m1442a("setCameraDisabled disabled=" + z);
        SystemProperties.set("persist.sys.cameraenabled", !z ? "1" : MessageService.MSG_DB_READY_REPORT);
    }

    /* renamed from: H */
    public void m1450H(boolean z) {
        m1442a("setDataConnectivityDisabled disabled=" + z);
        Intent intent = new Intent();
        intent.setAction("com.imt.mdm.setdataconnectivitydisabled");
        intent.putExtra("disabled", z);
        this.f2324a.sendBroadcast(intent);
    }

    /* renamed from: I */
    public void m1451I(int i, int i2, int i3) {
        m1442a("setDate year=" + i + " month=" + i2 + " day=" + i3);
        this.f2328e.setDate(i, i2, i3);
    }

    /* renamed from: J */
    public void m1452J(String str) {
        m1442a("setDisableApplication packageName=" + str);
        m1497v(str);
        this.f2328e.setDisableApplication(str);
    }

    /* renamed from: K */
    public void m1453K(String str) {
        m1442a("setEnableApplication packageName=" + str);
        this.f2328e.setEnableApplication(str);
    }

    /* renamed from: L */
    public void m1454L(boolean z) {
        m1442a("setFileShareDisabled disabled=" + z);
        SystemProperties.set("persist.sys.sharedisabled", z ? RequestConstant.TRUE : RequestConstant.FALSE);
    }

    /* renamed from: M */
    public void m1455M(boolean z) {
        m1442a("setFirewallEnabled enabled=" + z);
        this.f2328e.setFirewallEnabled(z);
    }

    /* renamed from: N */
    public void m1456N(int i) {
        m1442a("setFirewallWorkType type=" + i);
        SystemProperties.set("persist.sys.urlfiltertype", String.valueOf(i));
    }

    /* renamed from: O */
    public void m1457O(boolean z) {
        m1442a("setGPSDisabled disabled=" + z);
        SystemProperties.set("persist.sys.gpsdisabled", z ? RequestConstant.TRUE : RequestConstant.FALSE);
        this.f2324a.sendBroadcast(C0948f6.m1768m("com.imt.mdm.setgpsdisabled"));
    }

    /* renamed from: P */
    public void m1458P(boolean z) {
        m1442a("setMicphoneDisabled disabled=" + z);
        SystemProperties.set("persist.sys.micdisabled", z ? RequestConstant.TRUE : RequestConstant.FALSE);
    }

    /* renamed from: Q */
    public void m1459Q(boolean z) {
        m1442a("setMmsReceiveDisabled disabled=" + z);
        SystemProperties.set("persist.sys.mmsreceivedisabled", z ? RequestConstant.TRUE : RequestConstant.FALSE);
    }

    /* renamed from: R */
    public void m1460R(boolean z) {
        m1442a("setMmsSendDisabled disabled=" + z);
        SystemProperties.set("persist.sys.mmssenddisabled", z ? RequestConstant.TRUE : RequestConstant.FALSE);
    }

    /* renamed from: S */
    public void m1461S(boolean z) {
        m1442a("setNavigationBarhide hide=" + z);
        SystemProperties.set("persist.sys.navbarhide", z ? RequestConstant.TRUE : RequestConstant.FALSE);
        Intent intent = new Intent();
        intent.setAction("com.imt.setnavigationbarhide");
        intent.putExtra("hide", z);
        this.f2324a.sendBroadcast(intent);
    }

    /* renamed from: T */
    public void m1462T(boolean z) {
        m1442a("setScreenCaptureDisabled disabled=" + z);
        SystemProperties.set("persist.sys.screenshothide", z ? RequestConstant.TRUE : RequestConstant.FALSE);
        if (z) {
            this.f2324a.sendBroadcast(C0948f6.m1768m("com.imt.mdm.setscreencapturedisabled"));
        }
    }

    /* renamed from: U */
    public void m1463U(long j) throws NumberFormatException {
        m1442a("setSysTime millis=" + j);
        String[] strArrSplit = new SimpleDateFormat("yyyy,MM,dd,HH,mm,ss").format(new Date(j)).split(",");
        int i = Integer.parseInt(strArrSplit[0]);
        int i2 = Integer.parseInt(strArrSplit[1]);
        int i3 = Integer.parseInt(strArrSplit[2]);
        int i4 = Integer.parseInt(strArrSplit[3]);
        int i5 = Integer.parseInt(strArrSplit[4]);
        int i6 = Integer.parseInt(strArrSplit[5]);
        m1451I(i, i2, i3);
        m1465W(i4, i5, i6);
    }

    /* renamed from: V */
    public void m1464V(boolean z) {
        m1442a("setTfDisabled disabled=" + z);
        SystemProperties.set("persist.sys.tfdisabled", z ? RequestConstant.TRUE : RequestConstant.FALSE);
        SystemProperties.set("sys.sddisabledpress", RequestConstant.TRUE);
        Intent intent = new Intent();
        intent.setAction("com.imt.mdm.setexternalstoragedisabled");
        intent.putExtra("disabled", z);
        intent.putExtra("tf", true);
        intent.putExtra("otg", false);
        this.f2324a.sendBroadcast(intent);
    }

    /* renamed from: W */
    public void m1465W(int i, int i2, int i3) {
        m1442a("setTime hourOfDay=" + i + " minute=" + i2 + " second=" + i3);
        this.f2328e.setTime(i, i2, i3);
    }

    /* renamed from: X */
    public void m1466X(boolean z) {
        m1442a("setUSBDataDisabled disabled=" + z);
        SystemProperties.set("persist.sys.usbchargeonly", z ? RequestConstant.TRUE : RequestConstant.FALSE);
        Intent intent = new Intent();
        intent.setAction("com.imt.mdm.setusbdatadisabled");
        intent.putExtra("disabled", z);
        this.f2324a.sendBroadcast(intent);
    }

    /* renamed from: Y */
    public void m1467Y(boolean z) {
        m1442a("setUSBOtgDisabled disabled=" + z);
        SystemProperties.set("persist.sys.otgdisabled", z ? RequestConstant.TRUE : RequestConstant.FALSE);
        SystemProperties.set("sys.sddisabledpress", RequestConstant.TRUE);
        Intent intent = new Intent();
        intent.setAction("com.imt.mdm.setexternalstoragedisabled");
        intent.putExtra("disabled", z);
        intent.putExtra("tf", false);
        intent.putExtra("otg", true);
        this.f2324a.sendBroadcast(intent);
    }

    /* renamed from: Z */
    public void m1468Z(boolean z) {
        m1442a("setVoiceIncomingDisabled disabled=" + z);
        SystemProperties.set("persist.sys.incomingdisabled", z ? RequestConstant.TRUE : RequestConstant.FALSE);
    }

    /* renamed from: a0 */
    public void m1469a0(boolean z) {
        m1442a("setVoiceOutgoingDisabled disabled=" + z);
        SystemProperties.set("persist.sys.outgoingdisabled", z ? RequestConstant.TRUE : RequestConstant.FALSE);
    }

    /* renamed from: b */
    public void m1470b(String str) {
        m1442a("addInstallPackageWhiteList packageName=" + str);
        this.f2328e.addInstallPackageWhiteList(str);
    }

    /* renamed from: b0 */
    public void m1471b0(boolean z) {
        m1442a("setWifiAdvancedOptionsDisabled disabled=" + z);
        SystemProperties.set("persist.sys.wifiadvancehide", z ? RequestConstant.TRUE : RequestConstant.FALSE);
    }

    /* renamed from: c */
    public void m1472c(String str) {
        m1442a("addNetworkAccessAppWhitelist packageName=" + str);
        this.f2328e.netWorkAccessAppWhiteListWrite(str);
        if (m1498w() || SystemProperties.getBoolean("persist.sys.hangzhi", false)) {
            this.f2328e.addNetworkAccessAppWhitelist(str);
        }
    }

    /* renamed from: c0 */
    public void m1473c0() {
        m1442a("shutDown");
        this.f2328e.shutDown();
    }

    /* renamed from: d */
    public void m1474d(String str) {
        m1442a("addNetworkAccessWhitelistRule rule=" + str);
        this.f2328e.urlWhiteListWrite(str, MessageService.MSG_DB_NOTIFY_CLICK);
        if (m1498w() && m1499x() == 1) {
            this.f2328e.addNetworkAccessWhitelistRule(str);
        }
    }

    /* renamed from: d0 */
    public void m1475d0() {
        m1442a("stopMdmPolicyManager");
        SystemProperties.set("persist.sys.startmdm", RequestConstant.FALSE);
    }

    /* renamed from: e */
    public void m1476e(boolean z) {
        m1442a("allowFactoryReset allow=" + z);
        SystemProperties.set("persist.sys.privacyhide", !z ? RequestConstant.TRUE : RequestConstant.FALSE);
    }

    /* renamed from: e0 */
    public void m1477e0(boolean z) {
        m1442a("turnOnMobiledata on=" + z);
        Intent intent = new Intent();
        intent.setAction("com.imt.mdm.turnonmobiledata");
        intent.putExtra("on", z);
        this.f2324a.sendBroadcast(intent);
    }

    /* renamed from: f */
    public void m1478f(boolean z) {
        m1442a("allowOTAUpgrade allow=" + z);
        SystemProperties.set("persist.sys.otadisabled", !z ? RequestConstant.TRUE : RequestConstant.FALSE);
    }

    /* renamed from: f0 */
    public void m1479f0(String str) {
        m1442a("uninstallApplication packagename=" + str);
        Intent intent = new Intent();
        intent.setAction("com.imt.uninstallApplication");
        intent.putExtra("packagename", str);
        intent.putExtra("keepdata", false);
        intent.setPackage("com.android.packageinstaller");
        this.f2324a.sendBroadcast(intent);
    }

    /* renamed from: g */
    public void m1480g() {
        m1442a("appBackgroundProtectionWhiteListDeleteAll");
        this.f2324a.getContentResolver().delete(Provider.BackgroundProtectionList.CONTENT_URI, null, null);
        SystemProperties.set("sys.imtprotectapp", MessageService.MSG_DB_READY_REPORT);
        SystemProperties.set("sys.imtprotectapp1", MessageService.MSG_DB_READY_REPORT);
        SystemProperties.set("sys.imtprotectapp2", MessageService.MSG_DB_READY_REPORT);
    }

    /* renamed from: g0 */
    public final void m1481g0() {
        m1442a("urlWhiteListDeleteAll");
        this.f2324a.getContentResolver().delete(Provider.UrlWhitelist.CONTENT_URI, null, null);
    }

    /* renamed from: h */
    public Set<String> m1482h() {
        m1442a("appBackgroundProtectionWhiteListRead");
        HashSet hashSet = new HashSet();
        Cursor cursorQuery = this.f2324a.getContentResolver().query(Provider.BackgroundProtectionList.CONTENT_URI, new String[]{"packagename"}, null, null, "_id ASC");
        while (cursorQuery != null && cursorQuery.moveToNext()) {
            hashSet.add(cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("packagename")));
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        return hashSet;
    }

    /* renamed from: h0 */
    public final Set<String> m1483h0() {
        m1442a("urlWhiteListRead");
        HashSet hashSet = new HashSet();
        Cursor cursorQuery = this.f2324a.getContentResolver().query(Provider.UrlWhitelist.CONTENT_URI, new String[]{"urllink"}, null, null, "_id ASC");
        while (cursorQuery != null && cursorQuery.moveToNext()) {
            hashSet.add(cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("urllink")));
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        return hashSet;
    }

    /* renamed from: i */
    public void m1484i(String str) {
        m1442a("appBackgroundProtectionWhiteListWrite packageName=" + str);
        this.f2328e.appBackgroundProtectionWhiteListWrite(str);
    }

    /* renamed from: j */
    public void m1485j() {
        m1442a("appNoUnInstallListDeleteAll ");
        this.f2324a.getContentResolver().delete(Provider.AppNoUnInstallList.CONTENT_URI, null, null);
    }

    /* renamed from: k */
    public Set<String> m1486k() {
        m1442a("appNoUnInstallListRead");
        HashSet hashSet = new HashSet();
        Cursor cursorQuery = this.f2324a.getContentResolver().query(Provider.AppNoUnInstallList.CONTENT_URI, new String[]{"packagename"}, null, null, "_id ASC");
        while (cursorQuery != null && cursorQuery.moveToNext()) {
            hashSet.add(cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("packagename")));
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        return hashSet;
    }

    /* renamed from: l */
    public void m1487l(String str) {
        m1442a("appNoUnInstallListWrite packageName=" + str);
        this.f2328e.appNoUnInstallListWrite(str);
    }

    /* renamed from: m */
    public Set<String> m1488m() {
        m1442a("appWhiteListRead");
        HashSet hashSet = new HashSet();
        Cursor cursorQuery = this.f2324a.getContentResolver().query(Provider.AppWhiteList.CONTENT_URI, new String[]{"packagename"}, null, null, "_id ASC");
        while (cursorQuery != null && cursorQuery.moveToNext()) {
            hashSet.add(cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("packagename")));
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        return hashSet;
    }

    /* renamed from: n */
    public void m1489n(int i) {
        m1442a("captureBackKey isStart=" + i);
        SystemProperties.set("persist.sys.backkeydisabled", i == 0 ? RequestConstant.TRUE : RequestConstant.FALSE);
    }

    /* renamed from: o */
    public void m1490o(int i) {
        m1442a("captureHomeKey isStart=" + i);
        SystemProperties.set("persist.sys.homekeydisabled", i == 0 ? RequestConstant.TRUE : RequestConstant.FALSE);
    }

    /* renamed from: p */
    public void m1491p(int i) {
        m1442a("capturePowerKeyLongPress isStart=" + i);
        SystemProperties.set("persist.sys.shutdowndisabled", i == 0 ? RequestConstant.TRUE : RequestConstant.FALSE);
    }

    /* renamed from: q */
    public void m1492q(int i) {
        m1442a("capturePowerKeyShortPress isStart=" + i);
        SystemProperties.set("persist.sys.powerkeyspdisabled", i == 0 ? RequestConstant.TRUE : RequestConstant.FALSE);
    }

    /* renamed from: r */
    public void m1493r(int i) {
        m1442a("captureRecentKey isStart=" + i);
        SystemProperties.set("persist.sys.recentkeydisabled", i == 0 ? RequestConstant.TRUE : RequestConstant.FALSE);
    }

    /* renamed from: s */
    public void m1494s(int i) {
        m1442a("captureVolumeDownKey isStart=" + i);
        SystemProperties.set("persist.sys.volumedowndisabled", i == 0 ? RequestConstant.TRUE : RequestConstant.FALSE);
    }

    /* renamed from: t */
    public void m1495t(int i) {
        m1442a("captureVolumeUpKey isStart=" + i);
        SystemProperties.set("persist.sys.volumeupdisabled", i == 0 ? RequestConstant.TRUE : RequestConstant.FALSE);
    }

    /* renamed from: u */
    public void m1496u(String str) {
        m1442a("clearPackageCache packageName=" + str);
        Intent intent = new Intent();
        intent.setAction("com.imt.mdm.clearpackagecache");
        intent.putExtra("packagename", str);
        this.f2324a.sendBroadcast(intent);
    }

    /* renamed from: v */
    public void m1497v(String str) {
        m1442a("forceStopPackage packageName=" + str);
        this.f2328e.forceStopPackage(str);
    }

    /* renamed from: w */
    public boolean m1498w() {
        m1442a("getFirewallEnabledStatus");
        return RequestConstant.TRUE.equals(SystemProperties.get("persist.sys.urlfilter", RequestConstant.FALSE));
    }

    /* renamed from: x */
    public int m1499x() {
        m1442a("getFirewallWorkType");
        return SystemProperties.getInt("persist.sys.urlfiltertype", 0);
    }

    /* renamed from: y */
    public Set<String> m1500y() {
        m1442a("getNetworkAccessAppWhitelist");
        HashSet hashSet = new HashSet();
        Cursor cursorQuery = this.f2324a.getContentResolver().query(Provider.NetWorkAccessAppWhiteList.CONTENT_URI, new String[]{"packagename"}, null, null, "_id ASC");
        while (cursorQuery != null && cursorQuery.moveToNext()) {
            hashSet.add(cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("packagename")));
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        return hashSet;
    }

    /* renamed from: z */
    public void m1501z(String str, boolean z) {
        m1442a("installApplication filePath=" + str + " open=" + z);
        SystemProperties.set("sys.handinstalldisabled", RequestConstant.FALSE);
        Intent intent = new Intent();
        intent.setAction("com.imt.installApplication");
        intent.putExtra("filepath", str);
        intent.putExtra("openapk", z);
        intent.setPackage("com.android.packageinstaller");
        this.f2324a.sendBroadcast(intent);
    }
}
