package com.huawei.hem;

import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import android.text.TextUtils;
import anet.channel.strategy.dispatch.DispatchConstants;

/* compiled from: DeviceTypeUtil.java */
/* renamed from: com.huawei.hem.ce */
/* loaded from: classes.dex */
public class C0878ce {
    /* renamed from: a */
    public static int m1508a() {
        String[] strArrM2276Q = AbstractC1102l9.m2276Q(C0904de.m1587d(), "\\.");
        if (AbstractC1102l9.m2274O(strArrM2276Q) || strArrM2276Q.length < 1) {
            return -1;
        }
        return Integer.valueOf(strArrM2276Q[0]).intValue();
    }

    /* renamed from: b */
    public static int m1509b() {
        String strM1595l = C0904de.m1595l("ro.build.version.magic");
        if (!TextUtils.isEmpty(strM1595l) && strM1595l.startsWith("Magic")) {
            String[] strArrSplit = strM1595l.split("_");
            if (AbstractC1102l9.m2274O(strArrSplit) || strArrSplit.length != 2) {
                return -1;
            }
            strM1595l = strArrSplit[1];
        }
        String[] strArrM2276Q = AbstractC1102l9.m2276Q(strM1595l, "\\.");
        if (AbstractC1102l9.m2274O(strArrM2276Q) || strArrM2276Q.length < 1) {
            return -1;
        }
        return Integer.valueOf(strArrM2276Q[0]).intValue();
    }

    /* renamed from: c */
    public static boolean m1510c() {
        return m1511d(C0904de.m1589f());
    }

    /* renamed from: d */
    public static boolean m1511d(String str) {
        if (!TextUtils.isEmpty(str) && (str.contains("Lenovo") || str.contains("TB"))) {
            return true;
        }
        String str2 = Build.BRAND;
        return !TextUtils.isEmpty(str2) && "Lenovo".equals(str2);
    }

    /* renamed from: e */
    public static boolean m1512e(String str) {
        return str.equals("x970_t10_fhd") || str.equals("X20");
    }

    /* renamed from: f */
    public static boolean m1513f(String str) {
        return str.equals("PAD-M7") || str.equals("PAD-M7L");
    }

    /* renamed from: g */
    public static boolean m1514g(String str) {
        String strM1595l = C0904de.m1595l("ro.product.control");
        boolean z = !TextUtils.isEmpty(strM1595l) && "hczn_mdm".equals(strM1595l);
        if (z || !"S11".equals(str)) {
            return z;
        }
        return true;
    }

    /* renamed from: h */
    public static boolean m1515h(Context context) {
        try {
            return context.getString(Resources.getSystem().getIdentifier("config_os_brand", "string", DispatchConstants.ANDROID)).equals("harmony");
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("get harmony tag error:"));
            return false;
        }
    }

    /* renamed from: i */
    public static boolean m1516i(String str) {
        return str.equals("Hisense E81") || str.equals("Hisense A2") || str.equals("Hisense E9") || str.equals("HITV300C") || str.equals("HITV301C") || str.equals("Hisense F20T");
    }

    /* renamed from: j */
    public static boolean m1517j(String str) {
        return str.equals("HITV512C") || str.equals("HITV101C") || str.equals("HITV102C");
    }

    /* renamed from: k */
    public static boolean m1518k(String str) {
        return str.equals("TP-M15") || str.equals("T1001");
    }

    /* renamed from: l */
    public static boolean m1519l() {
        return m1509b() >= 4;
    }

    /* renamed from: m */
    public static boolean m1520m(String str) {
        return str.equals("D13B") || str.equals("D13") || str.equals("seewo pad") || str.equals("SN23") || str.equals("D7") || str.equals("SN23B") || str.equals("SN22B") || str.equals("SN22") || str.equals("D15B") || str.equals("G20") || str.equals("JZ02") || str.equals("D15A") || str.equals("seewo XP11A") || str.equals("XP11") || str.equals("XP11A") || str.equals("X10") || str.equals("G6") || str.equals("XP11D") || str.equals("SN23A") || str.equals("XP11G") || str.equals("XP11-E") || str.equals("XP11A-E") || str.equals("XP11D-E") || str.equals("XP11G-E") || str.equals("XP11J-E") || str.equals("SN22D") || str.equals("SN22C") || str.equals("SN23H") || str.equals("XP11H") || str.equals("D18") || str.equals("BE-T10AC") || str.equals("H11") || str.equals("H12") || str.equals("SN24A") || str.equals("D7H") || str.equals("G6E") || str.equals("Leadpie P5");
    }

    /* renamed from: n */
    public static boolean m1521n() {
        return !TextUtils.isEmpty(C0904de.m1587d());
    }

    /* renamed from: o */
    public static boolean m1522o() {
        return m1523p(C0904de.m1589f());
    }

    /* renamed from: p */
    public static boolean m1523p(String str) {
        boolean z;
        String strM1595l = C0904de.m1595l("ro.product.control");
        if (TextUtils.isEmpty(strM1595l) || !strM1595l.contains("jcsx")) {
            z = false;
        } else {
            C0948f6.m1779x("isJCSXModel:", strM1595l);
            z = true;
        }
        if (z) {
            return true;
        }
        return str.equals("rk3368-P9") || str.equals("tb8768p1_64_bsp") || str.equals("rk3368");
    }

    /* renamed from: q */
    public static boolean m1524q() {
        return m1511d(C0904de.m1589f()) && Build.VERSION.SDK_INT < 29;
    }

    /* renamed from: r */
    public static boolean m1525r() {
        String strM1589f = C0904de.m1589f();
        return strM1589f.equals("Lenovo TB-X605F") || strM1589f.equals("Lenovo TB-X605M");
    }

    /* renamed from: s */
    public static boolean m1526s() {
        String strM1606w = C0904de.m1606w();
        return !TextUtils.isEmpty(strM1606w) && "3.0.0".compareTo(strM1606w) <= 0;
    }

    /* renamed from: t */
    public static boolean m1527t() {
        return m1508a() >= 10;
    }

    /* renamed from: u */
    public static boolean m1528u(String str) {
        return str.equals("SM-P583") || str.equals("SM-P200") || str.equals("SM-P610");
    }

    /* renamed from: v */
    public static boolean m1529v() {
        String strM1595l = C0904de.m1595l("ro.product.control");
        return !TextUtils.isEmpty(strM1595l) && "seewo_elink".equals(strM1595l);
    }

    /* renamed from: w */
    public static boolean m1530w() {
        String strM1595l = C0904de.m1595l("ro.product.control");
        return !TextUtils.isEmpty(strM1595l) && ("tcl".equals(strM1595l) || "seewo_tcl".equals(strM1595l));
    }

    /* renamed from: x */
    public static boolean m1531x() {
        return m1509b() >= 5;
    }
}
