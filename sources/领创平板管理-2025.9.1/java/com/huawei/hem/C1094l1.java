package com.huawei.hem;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import android.support.v4.app.Person;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import anet.channel.entity.ConnType;
import com.alibaba.sdk.android.tbrest.utils.Base64;
import com.huawei.hem.SDKInfo;
import com.huawei.hms.framework.common.ContainerUtils;
import com.loc.BasicLogHandler;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.security.KeyFactory;
import java.security.PublicKey;
import java.security.cert.Certificate;
import java.security.cert.CertificateFactory;
import java.security.spec.X509EncodedKeySpec;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.Map;
import java.util.zip.GZIPOutputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;
import org.android.agoo.message.MessageService;
import org.android.spdy.SoInstallMgrSdk;
import org.json.JSONObject;

/* compiled from: Utils.java */
/* renamed from: com.huawei.hem.l1 */
/* loaded from: classes.dex */
public final class C1094l1 {

    /* renamed from: a */
    public static final String[] f3146a = {"arm64-v8a", "x86_64"};

    /* renamed from: b */
    public static final String[] f3147b = {"arm", SoInstallMgrSdk.X86};

    /* renamed from: c */
    public static String f3148c;

    static {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < 80; i++) {
            sb.append(ContainerUtils.KEY_VALUE_DELIMITER);
        }
        f3148c = sb.toString();
    }

    /* renamed from: A */
    public static String m2228A(byte[] bArr) {
        try {
            return m2230C(bArr);
        } catch (Throwable th) {
            BasicLogHandler.m5312a(th, "ut", "csb2h");
            return null;
        }
    }

    /* renamed from: B */
    public static void m2229B(String str) {
        int i;
        while (true) {
            if (str.length() < 78) {
                break;
            }
            Log.i("authErrLog", "|" + str.substring(0, 78) + "|");
            str = str.substring(78);
        }
        StringBuilder sbM1767l = CompilerOutline.m1767l("|", str);
        for (i = 0; i < 78 - str.length(); i++) {
            sbM1767l.append(" ");
        }
        sbM1767l.append("|");
        Log.i("authErrLog", sbM1767l.toString());
    }

    /* renamed from: C */
    public static String m2230C(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        if (bArr == null) {
            return null;
        }
        for (byte b : bArr) {
            String hexString = Integer.toHexString(b & Base64.EQUALS_SIGN_ENC);
            if (hexString.length() == 1) {
                hexString = MessageService.MSG_DB_READY_REPORT.concat(hexString);
            }
            sb.append(hexString);
        }
        return sb.toString();
    }

    /* renamed from: D */
    public static byte[] m2231D(byte[] bArr) {
        ByteArrayOutputStream byteArrayOutputStream;
        GZIPOutputStream gZIPOutputStream = null;
        if (bArr == null) {
            return null;
        }
        try {
            byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                GZIPOutputStream gZIPOutputStream2 = new GZIPOutputStream(byteArrayOutputStream);
                try {
                    gZIPOutputStream2.write(bArr);
                    gZIPOutputStream2.finish();
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    gZIPOutputStream2.close();
                    byteArrayOutputStream.close();
                    return byteArray;
                } catch (Throwable th) {
                    th = th;
                    gZIPOutputStream = gZIPOutputStream2;
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        if (gZIPOutputStream != null) {
                            gZIPOutputStream.close();
                        }
                        if (byteArrayOutputStream != null) {
                            byteArrayOutputStream.close();
                        }
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Throwable th4) {
            th = th4;
            byteArrayOutputStream = null;
        }
    }

    /* renamed from: a */
    public static SDKInfo m2232a() {
        SDKInfo.a aVar = new SDKInfo.a("collection", "1.0", "AMap_collection_1.0");
        aVar.m2160a(new String[]{"com.amap.api.collection"});
        return aVar.m2161b();
    }

    /* renamed from: b */
    public static String m2233b(long j, String str) {
        try {
            return new SimpleDateFormat(str, Locale.CHINA).format(new Date(j));
        } catch (Throwable th) {
            BasicLogHandler.m5312a(th, "ut", "ctt");
            return null;
        }
    }

    /* renamed from: c */
    public static String m2234c(Context context) {
        String str;
        String[] strArr;
        if (Build.VERSION.SDK_INT < 28) {
            try {
                ApplicationInfo applicationInfo = context.getApplicationInfo();
                Field declaredField = Class.forName(ApplicationInfo.class.getName()).getDeclaredField("primaryCpuAbi");
                declaredField.setAccessible(true);
                str = (String) declaredField.get(applicationInfo);
            } catch (Throwable th) {
                BasicLogHandler.m5312a(th, "ut", "gct");
            }
        } else {
            str = "";
        }
        if (Build.VERSION.SDK_INT >= 28) {
            try {
                String[] strArr2 = (String[]) Build.class.getDeclaredField("SUPPORTED_ABIS").get(null);
                if (strArr2 != null && strArr2.length > 0) {
                    str = strArr2[0];
                }
                if (!TextUtils.isEmpty(str) && Arrays.asList(f3146a).contains(str)) {
                    String str2 = context.getApplicationInfo().nativeLibraryDir;
                    if (!TextUtils.isEmpty(str2)) {
                        if (Arrays.asList(f3147b).contains(str2.substring(str2.lastIndexOf(File.separator) + 1)) && (strArr = (String[]) Build.class.getDeclaredField("SUPPORTED_32_BIT_ABIS").get(null)) != null && strArr.length > 0) {
                            str = strArr[0];
                        }
                    }
                }
            } catch (Throwable th2) {
                BasicLogHandler.m5312a(th2, "ut", "gct_p");
            }
        }
        return TextUtils.isEmpty(str) ? Build.CPU_ABI : str;
    }

    /* renamed from: d */
    public static String m2235d(Throwable th) {
        StringWriter stringWriter;
        PrintWriter printWriter;
        try {
            stringWriter = new StringWriter();
            try {
                printWriter = new PrintWriter(stringWriter);
                try {
                    th.printStackTrace(printWriter);
                    while (true) {
                        th = th.getCause();
                        if (th == null) {
                            break;
                        }
                        th.printStackTrace(printWriter);
                    }
                    String string = stringWriter.toString();
                    try {
                        stringWriter.close();
                    } catch (Throwable th2) {
                        th2.printStackTrace();
                    }
                    try {
                        printWriter.close();
                    } catch (Throwable th3) {
                        th3.printStackTrace();
                    }
                    return string;
                } catch (Throwable th4) {
                    th = th4;
                    try {
                        th.printStackTrace();
                        if (stringWriter != null) {
                            try {
                                stringWriter.close();
                            } catch (Throwable th5) {
                                th5.printStackTrace();
                            }
                        }
                        if (printWriter != null) {
                            try {
                                printWriter.close();
                            } catch (Throwable th6) {
                                th6.printStackTrace();
                            }
                        }
                        return null;
                    } finally {
                    }
                }
            } catch (Throwable th7) {
                th = th7;
                printWriter = null;
            }
        } catch (Throwable th8) {
            th = th8;
            stringWriter = null;
            printWriter = null;
        }
    }

    /* renamed from: e */
    public static String m2236e(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return "";
        }
        try {
            return new String(bArr, "UTF-8");
        } catch (UnsupportedEncodingException unused) {
            return new String(bArr);
        }
    }

    /* renamed from: f */
    public static Method m2237f(Class cls, String str, Class<?>... clsArr) {
        try {
            return cls.getDeclaredMethod(m2251t(str), clsArr);
        } catch (Throwable unused) {
            return null;
        }
    }

    /* renamed from: g */
    public static Calendar m2238g(String str, String str2) {
        try {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str2, Locale.CHINA);
            Calendar calendar = Calendar.getInstance();
            Calendar calendar2 = Calendar.getInstance();
            calendar2.setTime(simpleDateFormat.parse(str));
            calendar.set(calendar.get(1), calendar.get(2), calendar.get(5), calendar2.get(11), calendar2.get(12), calendar2.get(13));
            return calendar;
        } catch (ParseException e) {
            BasicLogHandler.m5312a(e, "ut", "ctt");
            return null;
        }
    }

    /* renamed from: h */
    public static void m2239h(Context context, String str, String str2, JSONObject jSONObject) {
        String string;
        String strM1642h;
        String str3;
        String string2;
        String strM2251t;
        string = "";
        String strM1640f = AppInfo.m1640f(context);
        String strM2507c = C1219q0.m2507c(strM1640f);
        try {
            strM1642h = AppInfo.m1642h(context);
        } catch (Throwable th) {
            th.printStackTrace();
            strM1642h = AppInfo.f2505d;
        }
        try {
            if (jSONObject.has("info")) {
                string2 = jSONObject.getString("info");
                strM2251t = "请在高德开放平台官网中搜索\"" + string2 + "\"相关内容进行解决";
            } else {
                string2 = "";
                strM2251t = string2;
            }
            try {
            } catch (Throwable unused) {
                string = strM2251t;
                str3 = string;
                Log.i("authErrLog", f3148c);
                Log.i("authErrLog", "                                   鉴权错误信息                                  ");
                Log.i("authErrLog", f3148c);
                m2229B("SHA1Package:".concat(String.valueOf(strM1640f)));
                m2229B("key:".concat(String.valueOf(strM1642h)));
                m2229B("csid:".concat(String.valueOf(str)));
                m2229B("gsid:".concat(String.valueOf(str2)));
                m2229B("json:" + jSONObject.toString());
                Log.i("authErrLog", "                                                                               ");
                Log.i("authErrLog", str3);
                Log.i("authErrLog", f3148c);
            }
        } catch (Throwable unused2) {
        }
        if ("INVALID_USER_SCODE".equals(string2)) {
            String string3 = jSONObject.has("sec_code") ? jSONObject.getString("sec_code") : "";
            string = jSONObject.has("sec_code_debug") ? jSONObject.getString("sec_code_debug") : "";
            if (strM2507c.equals(string3) || strM2507c.equals(string)) {
                str3 = m2251t("C6K+35Zyo6auY5b635byA5pS+5bmz5Y+w5a6Y572R5Lit5pCc57Si") + "\"请求内容过长导致业务调用失败\"相关内容进行解决";
            }
            Log.i("authErrLog", f3148c);
            Log.i("authErrLog", "                                   鉴权错误信息                                  ");
            Log.i("authErrLog", f3148c);
            m2229B("SHA1Package:".concat(String.valueOf(strM1640f)));
            m2229B("key:".concat(String.valueOf(strM1642h)));
            m2229B("csid:".concat(String.valueOf(str)));
            m2229B("gsid:".concat(String.valueOf(str2)));
            m2229B("json:" + jSONObject.toString());
            Log.i("authErrLog", "                                                                               ");
            Log.i("authErrLog", str3);
            Log.i("authErrLog", f3148c);
        }
        if ("INVALID_USER_KEY".equals(string2)) {
            string = jSONObject.has(Person.KEY_KEY) ? jSONObject.getString(Person.KEY_KEY) : "";
            if (string.length() > 0 && !strM1642h.equals(string)) {
                strM2251t = m2251t("C6K+35Zyo6auY5b635byA5pS+5bmz5Y+w5a6Y572R5LiK5Y+R6LW35oqA5pyv5ZKo6K+i5bel5Y2V4oCUPui0puWPt+S4jktleemXrumimO+8jOWSqOivoklOVkFMSURfVVNFUl9LRVnlpoLkvZXop6PlhrM=");
            }
        }
        str3 = strM2251t;
        Log.i("authErrLog", f3148c);
        Log.i("authErrLog", "                                   鉴权错误信息                                  ");
        Log.i("authErrLog", f3148c);
        m2229B("SHA1Package:".concat(String.valueOf(strM1640f)));
        m2229B("key:".concat(String.valueOf(strM1642h)));
        m2229B("csid:".concat(String.valueOf(str)));
        m2229B("gsid:".concat(String.valueOf(str2)));
        m2229B("json:" + jSONObject.toString());
        Log.i("authErrLog", "                                                                               ");
        Log.i("authErrLog", str3);
        Log.i("authErrLog", f3148c);
    }

    /* renamed from: i */
    public static void m2240i(ByteArrayOutputStream byteArrayOutputStream, byte b, byte[] bArr) {
        try {
            byteArrayOutputStream.write(new byte[]{b});
            int i = b & Base64.EQUALS_SIGN_ENC;
            if (i < 255 && i > 0) {
                byteArrayOutputStream.write(bArr);
            } else if (i == 255) {
                byteArrayOutputStream.write(bArr, 0, 255);
            }
        } catch (IOException e) {
            BasicLogHandler.m5312a(e, "ut", "wFie");
        }
    }

    /* renamed from: j */
    public static void m2241j(ByteArrayOutputStream byteArrayOutputStream, String str) {
        if (TextUtils.isEmpty(str)) {
            try {
                byteArrayOutputStream.write(new byte[]{0});
                return;
            } catch (IOException e) {
                BasicLogHandler.m5312a(e, "ut", "wsf");
                return;
            }
        }
        int length = str.length();
        if (length > 255) {
            length = 255;
        }
        m2240i(byteArrayOutputStream, (byte) length, m2245n(str));
    }

    /* renamed from: k */
    public static boolean m2242k(Context context, String str) {
        if (context == null || context.checkCallingOrSelfPermission(str) != 0) {
            return false;
        }
        if (context.getApplicationInfo().targetSdkVersion >= 23) {
            try {
                if (((Integer) context.getClass().getMethod("checkSelfPermission", String.class).invoke(context, str)).intValue() != 0) {
                    return false;
                }
            } catch (Throwable th) {
                BasicLogHandler.m5312a(th, "ut", "cpm");
            }
        }
        return true;
    }

    /* renamed from: l */
    public static boolean m2243l(JSONObject jSONObject, String str) {
        return jSONObject != null && jSONObject.has(str);
    }

    /* renamed from: m */
    public static byte[] m2244m(int i) {
        return new byte[]{(byte) (i / 256), (byte) (i % 256)};
    }

    /* renamed from: n */
    public static byte[] m2245n(String str) {
        if (TextUtils.isEmpty(str)) {
            return new byte[0];
        }
        try {
            return str.getBytes("UTF-8");
        } catch (UnsupportedEncodingException unused) {
            return str.getBytes();
        }
    }

    /* renamed from: o */
    public static SDKInfo m2246o() {
        SDKInfo.a aVar = new SDKInfo.a("co", "1.0.0", "AMap_co_1.0.0");
        aVar.m2160a(new String[]{"com.amap.co", "com.amap.opensdk.co", "com.amap.location"});
        return aVar.m2161b();
    }

    /* renamed from: p */
    public static String m2247p(String str) {
        if (str == null) {
            return null;
        }
        String strM1935f = C0994h1.m1935f(m2245n(str));
        try {
            return ((char) ((strM1935f.length() % 26) + 65)) + strM1935f;
        } catch (Throwable th) {
            BasicLogHandler.m5312a(th, "ut", "tsfb64");
            return "";
        }
    }

    /* renamed from: q */
    public static String m2248q(Map<String, String> map) {
        String string;
        if (map != null) {
            StringBuilder sb = new StringBuilder();
            for (Map.Entry<String, String> entry : map.entrySet()) {
                if (sb.length() > 0) {
                    sb.append("&");
                }
                sb.append(entry.getKey());
                sb.append(ContainerUtils.KEY_VALUE_DELIMITER);
                sb.append(entry.getValue());
            }
            string = sb.toString();
        } else {
            string = null;
        }
        try {
            if (TextUtils.isEmpty(string)) {
                return "";
            }
            String[] strArrSplit = string.split("&");
            Arrays.sort(strArrSplit);
            StringBuffer stringBuffer = new StringBuffer();
            for (String str : strArrSplit) {
                stringBuffer.append(str);
                stringBuffer.append("&");
            }
            String string2 = stringBuffer.toString();
            return string2.length() > 1 ? (String) string2.subSequence(0, string2.length() - 1) : string;
        } catch (Throwable th) {
            BasicLogHandler.m5312a(th, "ut", "sPa");
            return string;
        }
    }

    /* renamed from: r */
    public static boolean m2249r(Context context) {
        String strSubstring;
        TelephonyManager telephonyManager;
        if (context == null) {
            return false;
        }
        if (TextUtils.isEmpty(MccUtil.f3284a)) {
            try {
                telephonyManager = (TelephonyManager) context.getSystemService("phone");
            } catch (Throwable unused) {
            }
            if (telephonyManager != null) {
                String networkOperator = telephonyManager.getNetworkOperator();
                if (!TextUtils.isEmpty(networkOperator) && networkOperator.length() >= 3) {
                    strSubstring = networkOperator.substring(0, 3);
                }
                MccUtil.f3284a = strSubstring;
            }
            strSubstring = "";
            MccUtil.f3284a = strSubstring;
        }
        if (TextUtils.isEmpty(MccUtil.f3284a) || !TextUtils.isDigitsOnly(MccUtil.f3284a)) {
            return false;
        }
        return ",202,204,206,208,212,213,214,216,218,219,220,222,225,226,228,230,231,232,234,235,238,240,242,244,246,247,248,250,255,257,259,260,262,266,268,270,272,274,276,278,280,282,283,284,286,288,289,290,292,293,294,295,297,302,308,310,311,312,313,314,315,316,310,330,332,334,338,340,342,344,346,348,350,352,354,356,358,360,362,363,364,365,366,368,370,372,374,376,400,401,402,404,405,406,410,412,413,414,415,416,417,418,419,420,421,422,424,425,426,427,428,429,430,431,432,434,436,437,438,440,441,450,452,454,455,456,457,466,467,470,472,502,505,510,514,515,520,525,528,530,534,535,536,537,539,540,541,542,543,544,545,546,547,548,549,550,551,552,553,555,602,603,604,605,606,607,608,609,610,611,612,613,614,615,616,617,618,619,620,621,622,623,624,625,626,627,628,629,630,631,632,633,634,635,636,637,638,639,640,641,642,643,645,646,647,648,649,650,651,652,653,654,655,657,659,702,704,706,708,710,712,714,716,722,724,730,732,734,736,738,740,742,744,746,748,750,901,".contains("," + MccUtil.f3284a + ",");
    }

    /* renamed from: s */
    public static byte[] m2250s(byte[] bArr) {
        try {
            return m2231D(bArr);
        } catch (Throwable th) {
            BasicLogHandler.m5312a(th, "ut", "gZp");
            return new byte[0];
        }
    }

    /* renamed from: t */
    public static String m2251t(String str) {
        return str.length() < 2 ? "" : m2236e(C0994h1.m1934e(str.substring(1)));
    }

    /* renamed from: u */
    public static byte[] m2252u() {
        try {
            String[] strArrSplit = new StringBuffer("16,16,18,77,15,911,121,77,121,911,38,77,911,99,86,67,611,96,48,77,84,911,38,67,021,301,86,67,611,98,48,77,511,77,48,97,511,58,48,97,511,84,501,87,511,96,48,77,221,911,38,77,121,37,86,67,25,301,86,67,021,96,86,67,021,701,86,67,35,56,86,67,611,37,221,87").reverse().toString().split(",");
            byte[] bArr = new byte[strArrSplit.length];
            for (int i = 0; i < strArrSplit.length; i++) {
                bArr[i] = Byte.parseByte(strArrSplit[i]);
            }
            String[] strArrSplit2 = new StringBuffer(new String(C0994h1.m1934e(new String(bArr)))).reverse().toString().split(",");
            byte[] bArr2 = new byte[strArrSplit2.length];
            for (int i2 = 0; i2 < strArrSplit2.length; i2++) {
                bArr2[i2] = Byte.parseByte(strArrSplit2[i2]);
            }
            return bArr2;
        } catch (Throwable th) {
            BasicLogHandler.m5312a(th, "ut", "gIV");
            return new byte[16];
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x003c -> B:58:0x005c). Please report as a decompilation issue!!! */
    /* renamed from: v */
    public static byte[] m2253v(byte[] bArr) {
        ByteArrayOutputStream byteArrayOutputStream;
        ZipOutputStream zipOutputStream;
        byte[] byteArray = null;
        if (bArr != null) {
            try {
            } catch (Throwable th) {
                BasicLogHandler.m5312a(th, "ut", "zp2");
            }
            if (bArr.length != 0) {
                try {
                    byteArrayOutputStream = new ByteArrayOutputStream();
                    try {
                        zipOutputStream = new ZipOutputStream(byteArrayOutputStream);
                        try {
                            zipOutputStream.putNextEntry(new ZipEntry("log"));
                            zipOutputStream.write(bArr);
                            zipOutputStream.closeEntry();
                            zipOutputStream.finish();
                            byteArray = byteArrayOutputStream.toByteArray();
                            try {
                                zipOutputStream.close();
                            } catch (Throwable th2) {
                                BasicLogHandler.m5312a(th2, "ut", "zp1");
                            }
                            byteArrayOutputStream.close();
                        } catch (Throwable th3) {
                            th = th3;
                            try {
                                BasicLogHandler.m5312a(th, "ut", "zp");
                                if (zipOutputStream != null) {
                                    try {
                                        zipOutputStream.close();
                                    } catch (Throwable th4) {
                                        BasicLogHandler.m5312a(th4, "ut", "zp1");
                                    }
                                }
                                if (byteArrayOutputStream != null) {
                                    byteArrayOutputStream.close();
                                }
                                return byteArray;
                            } finally {
                            }
                        }
                    } catch (Throwable th5) {
                        th = th5;
                        zipOutputStream = null;
                    }
                } catch (Throwable th6) {
                    th = th6;
                    byteArrayOutputStream = null;
                    zipOutputStream = null;
                }
                return byteArray;
            }
        }
        return null;
    }

    /* renamed from: w */
    public static PublicKey m2254w() {
        ByteArrayInputStream byteArrayInputStream;
        try {
            byteArrayInputStream = new ByteArrayInputStream(C0994h1.m1934e("MIICnjCCAgegAwIBAgIJAJ0Pdzos7ZfYMA0GCSqGSIb3DQEBBQUAMGgxCzAJBgNVBAYTAkNOMRMwEQYDVQQIDApTb21lLVN0YXRlMRAwDgYDVQQHDAdCZWlqaW5nMREwDwYDVQQKDAhBdXRvbmF2aTEfMB0GA1UEAwwWY29tLmF1dG9uYXZpLmFwaXNlcnZlcjAeFw0xMzA4MTUwNzU2NTVaFw0yMzA4MTMwNzU2NTVaMGgxCzAJBgNVBAYTAkNOMRMwEQYDVQQIDApTb21lLVN0YXRlMRAwDgYDVQQHDAdCZWlqaW5nMREwDwYDVQQKDAhBdXRvbmF2aTEfMB0GA1UEAwwWY29tLmF1dG9uYXZpLmFwaXNlcnZlcjCBnzANBgkqhkiG9w0BAQEFAAOBjQAwgYkCgYEA8eWAyHbFPoFPfdx5AD+D4nYFq4dbJ1p7SIKt19Oz1oivF/6H43v5Fo7s50pD1UF8+Qu4JoUQxlAgOt8OCyQ8DYdkaeB74XKb1wxkIYg/foUwN1CMHPZ9O9ehgna6K4EJXZxR7Y7XVZnbjHZIVn3VpPU/Rdr2v37LjTw+qrABJxMCAwEAAaNQME4wHQYDVR0OBBYEFOM/MLGP8xpVFuVd+3qZkw7uBvOTMB8GA1UdIwQYMBaAFOM/MLGP8xpVFuVd+3qZkw7uBvOTMAwGA1UdEwQFMAMBAf8wDQYJKoZIhvcNAQEFBQADgYEA4LY3g8aAD8JkxAOqUXDDyLuCCGOc2pTIhn0TwMNaVdH4hZlpTeC/wuRD5LJ0z3j+IQ0vLvuQA5uDjVyEOlBrvVIGwSem/1XGUo13DfzgAJ5k1161S5l+sFUo5TxpHOXr8Z5nqJMjieXmhnE/I99GFyHpQmw4cC6rhYUhdhtg+Zk="));
        } catch (Throwable unused) {
            byteArrayInputStream = null;
        }
        try {
            CertificateFactory certificateFactory = CertificateFactory.getInstance(m2251t("IWC41MDk"));
            KeyFactory keyFactory = KeyFactory.getInstance(m2251t("EUlNB"));
            Certificate certificateGenerateCertificate = certificateFactory.generateCertificate(byteArrayInputStream);
            if (certificateGenerateCertificate != null && keyFactory != null) {
                PublicKey publicKeyGeneratePublic = keyFactory.generatePublic(new X509EncodedKeySpec(certificateGenerateCertificate.getPublicKey().getEncoded()));
                try {
                    byteArrayInputStream.close();
                } catch (Throwable th) {
                    th.printStackTrace();
                }
                return publicKeyGeneratePublic;
            }
            try {
                byteArrayInputStream.close();
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
            return null;
        } catch (Throwable unused2) {
            if (byteArrayInputStream != null) {
                try {
                    byteArrayInputStream.close();
                } catch (Throwable th3) {
                    th3.printStackTrace();
                }
            }
            return null;
        }
    }

    /* renamed from: x */
    public static byte[] m2255x(String str) {
        if (str.length() % 2 != 0) {
            str = MessageService.MSG_DB_READY_REPORT.concat(str);
        }
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            int i2 = i * 2;
            bArr[i] = (byte) Integer.parseInt(str.substring(i2, i2 + 2), 16);
        }
        return bArr;
    }

    /* renamed from: y */
    public static byte[] m2256y(byte[] bArr) {
        try {
            return m2231D(bArr);
        } catch (Throwable th) {
            th.printStackTrace();
            return new byte[0];
        }
    }

    /* renamed from: z */
    public static String m2257z(byte[] bArr) {
        try {
            return m2230C(bArr);
        } catch (Throwable th) {
            BasicLogHandler.m5312a(th, "ut", ConnType.H2S);
            return null;
        }
    }
}
