package com.huawei.hem;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.text.format.Formatter;
import com.gyf.immersionbar.OSUtils;
import com.huawei.hms.framework.network.grs.GrsBaseInfo;

/* compiled from: DeviceUtils.java */
/* renamed from: com.huawei.hem.de */
/* loaded from: classes.dex */
public class C0904de {

    /* renamed from: a */
    public static String f2404a;

    /* renamed from: b */
    public static String f2405b;

    /* renamed from: a */
    public static int m1584a(Context context) throws NumberFormatException {
        long j = Long.parseLong(m1590g(context));
        long j2 = Long.parseLong(m1591h(context));
        long j3 = j2 - j;
        int iRound = (int) Math.round(((j3 * 1.0d) / j2) * 100.0d);
        C0850bc.m1403m("romUsedPercent:" + iRound + "--usedString:" + Formatter.formatFileSize(context, j3) + "--totalString:" + Formatter.formatFileSize(context, j2));
        return iRound;
    }

    /* renamed from: b */
    public static String m1585b(String str) {
        char[] charArray = str.replace("\\x", "").toCharArray();
        int length = charArray.length;
        if ((length & 1) != 0) {
            throw new RuntimeException("字符个数应该为偶数");
        }
        byte[] bArr = new byte[length >> 1];
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int iM1607x = m1607x(charArray[i], i) << 4;
            int i3 = i + 1;
            int iM1607x2 = iM1607x | m1607x(charArray[i3], i3);
            i = i3 + 1;
            bArr[i2] = (byte) (iM1607x2 & 255);
            i2++;
        }
        return new String(bArr);
    }

    @SuppressLint({"HardwareIds"})
    /* renamed from: c */
    public static String m1586c(Context context) {
        String string = Settings.Secure.getString(context.getContentResolver(), "android_id");
        return string == null ? "unknown" : string.toLowerCase();
    }

    /* renamed from: d */
    public static String m1587d() {
        String[] strArrSplit;
        String strM1595l = m1595l(OSUtils.KEY_EMUI_VERSION_NAME);
        if (TextUtils.isEmpty(strM1595l) || (strArrSplit = strM1595l.split("_")) == null || strArrSplit.length <= 1) {
            return null;
        }
        return strArrSplit[1];
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x00a3, code lost:
    
        r0 = r7.trim();
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x015c, code lost:
    
        r11 = r0.getHardwareAddress();
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0160, code lost:
    
        if (r11 != null) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0163, code lost:
    
        r0 = new java.lang.StringBuilder();
        r6 = r11.length;
        r7 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x016a, code lost:
    
        if (r7 >= r6) goto L102;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x016c, code lost:
    
        r0.append(java.lang.String.format("%02X:", java.lang.Byte.valueOf(r11[r7])));
        r7 = r7 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0186, code lost:
    
        if (r0.length() <= 0) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0188, code lost:
    
        r0.deleteCharAt(r0.length() - 1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0190, code lost:
    
        r0 = r0.toString();
     */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x01a0  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0137 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m1588e(android.content.Context r11) throws java.io.IOException, java.lang.ClassNotFoundException {
        /*
            Method dump skipped, instructions count: 446
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.C0904de.m1588e(android.content.Context):java.lang.String");
    }

    /* renamed from: f */
    public static String m1589f() {
        String str = Build.MODEL;
        return (TextUtils.isEmpty(str) || !str.contains("XP12")) ? str : m1595l("persist.sys.seewo_model");
    }

    /* renamed from: g */
    public static String m1590g(Context context) {
        try {
            StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
            return String.valueOf(statFs.getBlockSizeLong() * statFs.getAvailableBlocksLong());
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    /* renamed from: h */
    public static String m1591h(Context context) {
        try {
            StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
            return String.valueOf(statFs.getBlockSizeLong() * statFs.getBlockCountLong());
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    /* renamed from: i */
    public static String m1592i() {
        String strMo1337G;
        if (!m1604u(f2405b)) {
            String strM1589f = m1589f();
            if (C0878ce.m1528u(strM1589f)) {
                strMo1337G = m1595l("ril.serialnumber");
            } else if (C0878ce.m1511d(strM1589f)) {
                strMo1337G = "Lenovo YT-X705F".equals(strM1589f) || "Lenovo YT-X705M".equals(strM1589f) ? m1595l("persist.sys.sn.number") : m1595l("ro.lenovosn2");
            } else {
                InterfaceC1030ic interfaceC1030ic = C0850bc.f2294f;
                strMo1337G = interfaceC1030ic != null ? interfaceC1030ic.mo1337G() : m1595l("ro.serialno");
            }
            if (!m1604u(strMo1337G)) {
                strMo1337G = m1595l("ro.boot.sncode");
            }
            if (!m1604u(strMo1337G)) {
                try {
                    strMo1337G = Build.SERIAL;
                } catch (Throwable th) {
                    th.printStackTrace();
                    strMo1337G = "unknown";
                }
            }
            if (!m1604u(strMo1337G)) {
                try {
                    if (Build.VERSION.SDK_INT >= 26) {
                        strMo1337G = Build.getSerial();
                    }
                } catch (Throwable th2) {
                    th2.printStackTrace();
                    strMo1337G = "unknown";
                }
            }
            f2405b = (TextUtils.isEmpty(strMo1337G) ? "unknown" : strMo1337G).toUpperCase();
        }
        return f2405b;
    }

    /* renamed from: j */
    public static String m1593j(Context context) {
        if (!C0878ce.m1527t() && !C0878ce.m1519l() && !C0878ce.m1515h(context)) {
            return m1588e(context);
        }
        String strM1592i = m1592i();
        f2404a = strM1592i;
        return strM1592i.toLowerCase();
    }

    @SuppressLint({"MissingPermission"})
    /* renamed from: k */
    public static String m1594k(Context context) {
        String simSerialNumber;
        try {
            simSerialNumber = ((TelephonyManager) context.getSystemService("phone")).getSimSerialNumber();
        } catch (Throwable th) {
            C0948f6.m1745C(th, C0948f6.m1765j("getSimSerialNumber:"));
            simSerialNumber = null;
        }
        return simSerialNumber == null ? "unknown" : simSerialNumber;
    }

    /* renamed from: l */
    public static String m1595l(String str) {
        try {
            String str2 = (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class).invoke(null, str);
            return str2 != null ? str2 : "";
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: m */
    public static long m1596m() {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        return statFs.getBlockCount() * statFs.getBlockSize();
    }

    /* renamed from: n */
    public static boolean m1597n(String str) {
        return str.matches("^([a-zA-Z0-9]([a-zA-Z0-9\\-]{0,61}[a-zA-Z0-9])?\\.)+[a-zA-Z]{2,6}$");
    }

    /* renamed from: o */
    public static boolean m1598o() {
        String strM1595l = m1595l("ro.product.control");
        return !TextUtils.isEmpty(strM1595l) && "seewo_hra".equals(strM1595l);
    }

    /* renamed from: p */
    public static boolean m1599p(String str) {
        boolean zMatches = str.matches("^(((1\\d{1,2}|2[0-4]\\d|25[0-5]|\\d{1,2}).){1,3}(1\\d{1,2}|2[0-4]\\d|25[0-5]|\\d{1,2}))(/([1-9]{1}|1[0-9]|2[0-9]|3[0-1])){0,1}$");
        if (zMatches) {
            C0850bc.m1392b("====>ip:" + str + ", isIP");
        }
        return zMatches;
    }

    /* renamed from: q */
    public static boolean m1600q(String str) {
        boolean zMatches = str.matches("^(1\\d{2}|2[0-4]\\d|25[0-5]|[1-9]\\d|[1-9])\\.(1\\d{2}|2[0-4]\\d|25[0-5]|[1-9]\\d|\\d)\\.(1\\d{2}|2[0-4]\\d|25[0-5]|[1-9]\\d|\\d)$");
        if (zMatches) {
            C0850bc.m1392b("====>ip:" + str + ", isIPThree");
        }
        return zMatches;
    }

    /* renamed from: r */
    public static boolean m1601r(String str) {
        boolean zMatches = str.matches("^(1\\d{2}|2[0-4]\\d|25[0-5]|[1-9]\\d|[1-9])\\.(1\\d{2}|2[0-4]\\d|25[0-5]|[1-9]\\d|\\d)$");
        if (zMatches) {
            C0850bc.m1392b("====>ip:" + str + ", isIPTwo");
        } else {
            C0850bc.m1392b(str + " is not ip");
        }
        return zMatches;
    }

    /* renamed from: s */
    public static boolean m1602s(String str) {
        return (str == null || str.equals("null") || str.equals("") || str.equals("02:00:00:00:00:00") || str.equalsIgnoreCase(GrsBaseInfo.CountryCodeSource.UNKNOWN) || !str.contains(":") || str.equalsIgnoreCase("unavailable")) ? false : true;
    }

    /* renamed from: t */
    public static boolean m1603t(String str) {
        boolean zMatches = str.matches("^(((1\\d{1,2}|2[0-4]\\d|25[0-5]|\\d{1,2}).){1,3}(1\\d{1,2}|2[0-4]\\d|25[0-5]|\\d{1,2}))$");
        if (zMatches) {
            C0850bc.m1392b("====>ip:" + str + ", isIP");
        }
        return zMatches;
    }

    /* renamed from: u */
    public static boolean m1604u(String str) {
        return (TextUtils.isEmpty(str) || "unknown".equalsIgnoreCase(str)) ? false : true;
    }

    /* renamed from: v */
    public static boolean m1605v(String str) {
        return TextUtils.isEmpty(str) || str.equals("null") || str.equals("02:00:00:00:00:00") || str.equalsIgnoreCase(GrsBaseInfo.CountryCodeSource.UNKNOWN) || str.equalsIgnoreCase("unavailable");
    }

    /* renamed from: w */
    public static String m1606w() {
        return m1595l("hw_sc.build.platform.version");
    }

    /* renamed from: x */
    public static int m1607x(char c, int i) {
        int iDigit = Character.digit(c, 16);
        if (iDigit != -1) {
            return iDigit;
        }
        throw new RuntimeException("Illegal hexadecimal character " + c + " at index " + i);
    }

    /* renamed from: y */
    public static String m1608y(String str) {
        String strM1760e = "";
        for (int i = 0; i < str.length(); i++) {
            strM1760e = C0948f6.m1760e(strM1760e, Integer.toHexString(str.charAt(i)));
        }
        return strM1760e;
    }
}
