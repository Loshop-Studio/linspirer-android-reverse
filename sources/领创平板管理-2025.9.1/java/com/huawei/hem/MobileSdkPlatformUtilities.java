package com.huawei.hem;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import android.support.v7.widget.ActivityChooserModel;
import android.text.TextUtils;
import android.util.Log;
import com.alibaba.sdk.android.tbrest.utils.Base64;
import com.gyf.immersionbar.OSUtils;
import com.huawei.hms.common.internal.ResponseHeader;
import com.huawei.hms.common.internal.TransactionIdCreater;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.huawei.hms.support.hianalytics.HiAnalyticsUtil;
import com.huawei.hms.utils.Util;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.net.HttpURLConnection;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.zip.Deflater;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;

/* renamed from: com.huawei.hem.l9 */
/* loaded from: classes.dex */
public abstract class MobileSdkPlatformUtilities {

    /* renamed from: a */
    public static HmsAnalyticsInstance f3158a;

    /* renamed from: b */
    public static Context f3159b;

    /* renamed from: A */
    public static String m2260A(String str, String str2) {
        return "_default_config_tag".equals(str) ? str : CompilerOutline.m1761f(str, "-", str2);
    }

    /* renamed from: B */
    public static SharedPreferences m2261B(Context context, String str) {
        return context.getSharedPreferences(m2266G(context, str), 0);
    }

    /* renamed from: C */
    public static void m2262C(Context context, String str, String str2, long j) {
        if (context == null || TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            HiAnalyticsSdkState.m2940g("hmsSdk", "context is null or spName empty or spkey is empty");
            return;
        }
        SharedPreferences sharedPreferencesM2261B = m2261B(context, str);
        if (sharedPreferencesM2261B != null) {
            SharedPreferences.Editor editorEdit = sharedPreferencesM2261B.edit();
            editorEdit.putLong(str2, j);
            editorEdit.commit();
        }
    }

    /* renamed from: D */
    public static void m2263D(Context context, String str, String str2, String str3) {
        if (context == null || TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            HiAnalyticsSdkState.m2939f("hmsSdk", "context is null or spName empty or spkey is empty");
            return;
        }
        SharedPreferences sharedPreferencesM2261B = m2261B(context, str);
        if (sharedPreferencesM2261B != null) {
            SharedPreferences.Editor editorEdit = sharedPreferencesM2261B.edit();
            editorEdit.putString(str2, str3);
            editorEdit.commit();
        }
    }

    /* renamed from: E */
    public static void m2264E(String str, String str2) {
        Log.e(m2285h(str), str2);
    }

    /* renamed from: F */
    public static String m2265F(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (byte b : bArr) {
            String hexString = Integer.toHexString(b & Base64.EQUALS_SIGN_ENC);
            if (hexString.length() == 1) {
                sb.append(TransactionIdCreater.FILL_BYTE);
            }
            sb.append(hexString);
        }
        return sb.toString();
    }

    /* renamed from: G */
    public static String m2266G(Context context, String str) {
        String packageName = context.getPackageName();
        AnalyticsInstanceConfig c0926eaM2270K = m2270K("_hms_config_tag", "oper");
        String str2 = c0926eaM2270K != null ? c0926eaM2270K.f2535p : "";
        if (!TextUtils.isEmpty(str2)) {
            StringBuilder sbM1770o = CompilerOutline.m1770o("hms_", str, "_", packageName, "_");
            sbM1770o.append(str2);
            return sbM1770o.toString();
        }
        return "hms_" + str + "_" + packageName;
    }

    /* renamed from: H */
    public static void m2267H(String str, String str2) {
        Log.i(m2285h(str), str2);
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0066  */
    /* renamed from: I */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m2268I(android.content.Context r3, java.lang.String r4, java.lang.String r5) throws android.content.pm.PackageManager.NameNotFoundException {
        /*
            com.huawei.hem.ea r0 = m2270K(r4, r5)
            java.lang.String r1 = ""
            if (r0 == 0) goto Lb
            java.lang.String r0 = r0.f2522c
            goto Lc
        Lb:
            r0 = r1
        Lc:
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L1b
            com.huawei.hem.ea r3 = m2270K(r4, r5)
            if (r3 == 0) goto L1a
            java.lang.String r1 = r3.f2522c
        L1a:
            return r1
        L1b:
            com.huawei.hem.z9 r4 = com.huawei.hem.C1453z9.m3144b()
            com.huawei.hem.ga r4 = r4.f4293a
            java.lang.String r5 = r4.f2758l
            boolean r5 = android.text.TextUtils.isEmpty(r5)
            if (r5 == 0) goto L69
            r5 = 256(0x100, float:3.59E-43)
            android.content.pm.PackageManager r0 = r3.getPackageManager()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L54
            java.lang.String r3 = r3.getPackageName()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L54
            r2 = 128(0x80, float:1.8E-43)
            android.content.pm.ApplicationInfo r3 = r0.getApplicationInfo(r3, r2)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L54
            if (r3 == 0) goto L5b
            android.os.Bundle r0 = r3.metaData     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L54
            if (r0 == 0) goto L5b
            android.os.Bundle r3 = r3.metaData     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L54
            java.lang.String r0 = "CHANNEL"
            java.lang.Object r3 = r3.get(r0)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L54
            if (r3 == 0) goto L5b
            java.lang.String r3 = r3.toString()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L54
            int r0 = r3.length()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L54
            if (r0 <= r5) goto L5d
            goto L5b
        L54:
            java.lang.String r3 = "hmsSdk"
            java.lang.String r0 = "getChannel(): The packageName is not correct!"
            com.huawei.hem.C1404xa.m2940g(r3, r0)
        L5b:
            java.lang.String r3 = "Unknown"
        L5d:
            java.lang.String r0 = "channel"
            boolean r5 = m2298u(r0, r3, r5)
            if (r5 != 0) goto L66
            goto L67
        L66:
            r1 = r3
        L67:
            r4.f2758l = r1
        L69:
            java.lang.String r3 = r4.f2758l
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.AbstractC1102l9.m2268I(android.content.Context, java.lang.String, java.lang.String):java.lang.String");
    }

    /* renamed from: J */
    public static void m2269J(String str, String str2) {
        Log.e("SecurityComp10105302: " + str, str2);
    }

    /* renamed from: K */
    public static AnalyticsInstanceConfig m2270K(String str, String str2) {
        HiAnalyticsTaggedInstanceData c1053jaM3145a = HmsAnalyticsConfiguration.m3144b().m3145a(str);
        if (c1053jaM3145a == null) {
            return null;
        }
        if (!"alltype".equals(str2)) {
            return c1053jaM3145a.m2126a(str2);
        }
        AnalyticsInstanceConfig c0926eaM2126a = c1053jaM3145a.m2126a("oper");
        return c0926eaM2126a == null ? c1053jaM3145a.m2126a("maint") : c0926eaM2126a;
    }

    /* renamed from: L */
    public static byte[] m2271L(String str) throws UnsupportedEncodingException {
        if (TextUtils.isEmpty(str)) {
            return new byte[0];
        }
        String upperCase = str.toUpperCase(Locale.ENGLISH);
        int length = upperCase.length() / 2;
        byte[] bArr = new byte[length];
        try {
            byte[] bytes = upperCase.getBytes("UTF-8");
            for (int i = 0; i < length; i++) {
                StringBuilder sb = new StringBuilder();
                sb.append("0x");
                int i2 = i * 2;
                sb.append(new String(new byte[]{bytes[i2]}, "UTF-8"));
                bArr[i] = (byte) (((byte) (Byte.decode(sb.toString()).byteValue() << 4)) ^ Byte.decode("0x" + new String(new byte[]{bytes[i2 + 1]}, "UTF-8")).byteValue());
            }
        } catch (UnsupportedEncodingException | NumberFormatException e) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("hex string 2 byte array exception : ");
            sbM1765j.append(e.getMessage());
            m2269J("HexUtil", sbM1765j.toString());
        }
        return bArr;
    }

    /* renamed from: M */
    public static boolean m2272M(ArrayList<?> arrayList) {
        return arrayList == null || arrayList.size() <= 0;
    }

    /* renamed from: N */
    public static boolean m2273N(List<?> list) {
        return list == null || list.size() <= 0;
    }

    /* renamed from: O */
    public static boolean m2274O(String[] strArr) {
        return strArr == null || strArr.length == 0;
    }

    /* renamed from: P */
    public static String[] m2275P(List<String> list) {
        if (m2273N(list)) {
            list = new ArrayList<>();
        }
        return (String[]) list.toArray(new String[list.size()]);
    }

    /* renamed from: Q */
    public static String[] m2276Q(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return str.split(str2);
    }

    /* renamed from: R */
    public static List<String> m2277R(String str, String str2) {
        return TextUtils.isEmpty(str) ? new ArrayList() : Arrays.asList(str.replace("[", "").replace("]", "").replace(", ", ",").split(str2));
    }

    /* renamed from: a */
    public static long m2278a(Context context, String str, String str2, long j) {
        if (context == null || TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            HiAnalyticsSdkState.m2940g("hmsSdk", "context is null or spName empty or spkey is empty");
            return j;
        }
        SharedPreferences sharedPreferencesM2261B = m2261B(context, str);
        return sharedPreferencesM2261B != null ? sharedPreferencesM2261B.getLong(str2, j) : j;
    }

    /* renamed from: b */
    public static synchronized HmsAnalyticsInstance m2279b() {
        if (f3158a == null) {
            f3158a = AnalyticsInstanceHolder.f2907b.f2908a;
        }
        return f3158a;
    }

    /* renamed from: c */
    public static Object m2280c(Class cls, String str, Class[] clsArr, Object[] objArr) throws AnalyticsDataException {
        String str2;
        if (clsArr == null) {
            if (objArr != null) {
                throw new AnalyticsDataException("paramsType is null, but params is not null");
            }
        } else {
            if (objArr == null) {
                throw new AnalyticsDataException("paramsType or params should be same");
            }
            if (clsArr.length != objArr.length) {
                StringBuilder sbM1765j = CompilerOutline.m1765j("paramsType len:");
                sbM1765j.append(clsArr.length);
                sbM1765j.append(" should equal params.len:");
                sbM1765j.append(objArr.length);
                throw new AnalyticsDataException(sbM1765j.toString());
            }
        }
        try {
        } catch (NoSuchMethodException unused) {
            HiAnalyticsSdkState.m2940g("hmsSdk", "invokeStaticFun(): cls.getMethod(),No Such Method !");
        }
        try {
            return cls.getMethod(str, clsArr).invoke(null, objArr);
        } catch (IllegalAccessException unused2) {
            str2 = "invokeStaticFun(): method invoke Exception!";
            HiAnalyticsSdkState.m2940g("hmsSdk", str2);
            return null;
        } catch (IllegalArgumentException unused3) {
            str2 = "invokeStaticFun(): Illegal Argument!";
            HiAnalyticsSdkState.m2940g("hmsSdk", str2);
            return null;
        } catch (InvocationTargetException unused4) {
            str2 = "invokeStaticFun(): Invocation Target Exception!";
            HiAnalyticsSdkState.m2940g("hmsSdk", str2);
            return null;
        }
    }

    /* renamed from: d */
    public static String m2281d() {
        if (TextUtils.isEmpty(OSUtils.KEY_EMUI_VERSION_NAME)) {
            return "";
        }
        String strM2287j = m2287j("android.os.SystemProperties", OSUtils.KEY_EMUI_VERSION_NAME, "");
        return TextUtils.isEmpty(strM2287j) ? m2287j("com.huawei.android.os.SystemPropertiesEx", OSUtils.KEY_EMUI_VERSION_NAME, "") : strM2287j;
    }

    /* renamed from: e */
    public static String m2282e(int i) {
        return i != 0 ? i != 1 ? i != 2 ? i != 3 ? "alltype" : "diffprivacy" : "preins" : "maint" : "oper";
    }

    /* renamed from: f */
    public static String m2283f(Context context, String str, String str2, String str3) {
        if (context == null || TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            HiAnalyticsSdkState.m2940g("hmsSdk", "context is null or spName empty or spkey is empty");
            return str3;
        }
        SharedPreferences sharedPreferencesM2261B = m2261B(context, str);
        return sharedPreferencesM2261B != null ? sharedPreferencesM2261B.getString(str2, str3) : str3;
    }

    /* renamed from: g */
    public static String m2284g(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            byte[] bArr = new byte[1024];
            while (true) {
                int i = inputStream.read(bArr);
                if (i == -1) {
                    return byteArrayOutputStream.toString("UTF-8");
                }
                byteArrayOutputStream.write(bArr, 0, i);
            }
        } finally {
            m2292o(byteArrayOutputStream);
        }
    }

    /* renamed from: h */
    public static String m2285h(String str) {
        return CompilerOutline.m1760e("SecurityComp10105306: ", str);
    }

    /* renamed from: i */
    public static String m2286i(String str, String str2) {
        try {
            return m2288k(str, str2.getBytes("UTF-8"));
        } catch (UnsupportedEncodingException unused) {
            HiAnalyticsSdkState.m2937d("hmsSdk", "Unsupported encoding exception,utf-8");
            return "";
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0029  */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m2287j(java.lang.String r5, java.lang.String r6, java.lang.String r7) {
        /*
            java.lang.Class<java.lang.String> r0 = java.lang.String.class
            r1 = 2
            java.lang.Class[] r2 = new java.lang.Class[r1]
            r3 = 0
            r2[r3] = r0
            r4 = 1
            r2[r4] = r0
            java.lang.Object[] r0 = new java.lang.Object[r1]
            r0[r3] = r6
            r0[r4] = r7
            java.lang.String r6 = "get"
            java.lang.Class r5 = java.lang.Class.forName(r5)     // Catch: com.huawei.hem.C1253r9 -> L1c java.lang.ClassNotFoundException -> L1f
            java.lang.Object r5 = m2280c(r5, r6, r2, r0)     // Catch: com.huawei.hem.C1253r9 -> L1c java.lang.ClassNotFoundException -> L1f
            goto L27
        L1c:
            java.lang.String r5 = "invokeStaticFun(): Static function call Exception "
            goto L21
        L1f:
            java.lang.String r5 = "invokeStaticFun() Not found class!"
        L21:
            java.lang.String r6 = "hmsSdk"
            com.huawei.hem.C1404xa.m2940g(r6, r5)
            r5 = 0
        L27:
            if (r5 == 0) goto L2c
            r7 = r5
            java.lang.String r7 = (java.lang.String) r7
        L2c:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.AbstractC1102l9.m2287j(java.lang.String, java.lang.String, java.lang.String):java.lang.String");
    }

    /* renamed from: k */
    public static String m2288k(String str, byte[] bArr) {
        String str2;
        if (bArr == null || bArr.length == 0) {
            HiAnalyticsSdkState.m2940g("hmsSdk", "encrypt: content is empty or null");
            return "";
        }
        try {
            return m2265F(m2301x(bArr, KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(m2271L(str)))));
        } catch (NoSuchAlgorithmException unused) {
            str2 = "encrypt(): getInstance - No such algorithm,transformation";
            HiAnalyticsSdkState.m2940g("hmsSdk", str2);
            return "";
        } catch (InvalidKeySpecException unused2) {
            str2 = "encrypt(): Invalid key specification";
            HiAnalyticsSdkState.m2940g("hmsSdk", str2);
            return "";
        }
    }

    /* renamed from: l */
    public static void m2289l(Context context) {
        if (context == null || f3159b != null) {
            return;
        }
        f3159b = context.getApplicationContext();
    }

    /* renamed from: m */
    public static void m2290m(Context context, ResponseHeader responseHeader, String str) {
        HiAnalyticsUtil.getInstance();
        Map<String, String> mapFromRequestHeader = HiAnalyticsUtil.getMapFromRequestHeader(responseHeader);
        mapFromRequestHeader.put(HiAnalyticsConstant.HaKey.BI_KEY_DIRECTION, HiAnalyticsConstant.Direction.RESPONSE);
        if (!TextUtils.isEmpty(str)) {
            mapFromRequestHeader.put("version", HiAnalyticsUtil.versionCodeToName(str));
        }
        mapFromRequestHeader.put(HiAnalyticsConstant.HaKey.BI_KEY_PHONETYPE, Util.getSystemProperties("ro.logsystem.usertype", ""));
        HiAnalyticsUtil.getInstance().onNewEvent(context, HiAnalyticsConstant.HMS_SDK_BASE_API_CALLED, mapFromRequestHeader);
    }

    /* renamed from: n */
    public static void m2291n(Context context, String str, String... strArr) {
        if (context == null || TextUtils.isEmpty(str)) {
            HiAnalyticsSdkState.m2940g("hmsSdk", "clearData(): parameter error.context,spname");
            return;
        }
        SharedPreferences sharedPreferencesM2261B = m2261B(context, str);
        if (sharedPreferencesM2261B != null) {
            SharedPreferences.Editor editorEdit = sharedPreferencesM2261B.edit();
            if (strArr.length == 0) {
                editorEdit.clear();
                editorEdit.commit();
                return;
            }
            for (String str2 : strArr) {
                if (sharedPreferencesM2261B.contains(str2)) {
                    editorEdit.remove(str2);
                    editorEdit.commit();
                }
            }
        }
    }

    /* renamed from: o */
    public static void m2292o(Closeable closeable) throws IOException {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
                HiAnalyticsSdkState.m2940g("hmsSdk", "closeQuietly(): Exception when closing the closeable!");
            }
        }
    }

    /* renamed from: p */
    public static void m2293p(File file, String str) throws Throwable {
        FileOutputStream fileOutputStream;
        String str2;
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                fileOutputStream = new FileOutputStream(file);
            } catch (Throwable th) {
                th = th;
                fileOutputStream = fileOutputStream2;
            }
        } catch (FileNotFoundException unused) {
        } catch (IOException unused2) {
        }
        try {
            fileOutputStream.write(str.getBytes("UTF-8"));
            fileOutputStream.flush();
        } catch (FileNotFoundException unused3) {
            fileOutputStream2 = fileOutputStream;
            str2 = "saveInfoToFile(): No files need to be read";
            HiAnalyticsSdkState.m2940g("hmsSdk", str2);
            fileOutputStream = fileOutputStream2;
            m2292o(fileOutputStream);
        } catch (IOException unused4) {
            fileOutputStream2 = fileOutputStream;
            str2 = "saveInfoToFile(): io exc from write info to file!";
            HiAnalyticsSdkState.m2940g("hmsSdk", str2);
            fileOutputStream = fileOutputStream2;
            m2292o(fileOutputStream);
        } catch (Throwable th2) {
            th = th2;
            m2292o(fileOutputStream);
            throw th;
        }
        m2292o(fileOutputStream);
    }

    /* renamed from: q */
    public static void m2294q(InputStream inputStream) throws IOException {
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
                m2264E("IOUtil", "closeSecure IOException");
            }
        }
    }

    /* renamed from: r */
    public static void m2295r(HttpURLConnection httpURLConnection) throws IOException {
        try {
            httpURLConnection.getInputStream().close();
        } catch (Exception unused) {
            HiAnalyticsSdkState.m2940g("hmsSdk", "closeQuietly(): Exception when connHttp.getInputStream()!,There may be no network, or no INTERNET permission");
        }
        httpURLConnection.disconnect();
        HiAnalyticsSdkState.m2934a("hmsSdk", " connHttp disconnect");
    }

    /* renamed from: s */
    public static boolean m2296s(Context context, String str) {
        if (context == null) {
            return true;
        }
        if (context.checkSelfPermission(str) == 0) {
            return false;
        }
        HiAnalyticsSdkState.m2940g("hmsSdk", "not have read phone permission!");
        return true;
    }

    @SuppressLint({"DefaultLocale"})
    /* renamed from: t */
    public static boolean m2297t(Context context, String str, int i) {
        long length = new File(context.getFilesDir(), CompilerOutline.m1760e("../shared_prefs/", m2266G(context, str) + ActivityChooserModel.HISTORY_FILE_EXTENSION)).length();
        if (length <= i) {
            return false;
        }
        HiAnalyticsSdkState.m2937d("hmsSdk", String.format("reach local file limited size - file len: %d limitedSize: %d", Long.valueOf(length), Integer.valueOf(i)));
        return true;
    }

    /* renamed from: u */
    public static boolean m2298u(String str, String str2, int i) {
        StringBuilder sb;
        String str3;
        if (TextUtils.isEmpty(str2)) {
            sb = new StringBuilder();
            str3 = "checkString() Parameter is empty : ";
        } else {
            if (str2.length() <= i) {
                return true;
            }
            sb = new StringBuilder();
            str3 = "checkString() Failure of parameter length check! Parameter:";
        }
        sb.append(str3);
        sb.append(str);
        HiAnalyticsSdkState.m2940g("hmsSdk", sb.toString());
        return false;
    }

    /* renamed from: v */
    public static boolean m2299v(String[] strArr) {
        return true;
    }

    /* renamed from: w */
    public static byte[] m2300w(byte[] bArr) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        Deflater deflater = new Deflater();
        deflater.setInput(bArr);
        deflater.finish();
        byte[] bArr2 = new byte[1024];
        while (!deflater.finished()) {
            byteArrayOutputStream.write(bArr2, 0, deflater.deflate(bArr2));
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        deflater.end();
        try {
            byteArrayOutputStream.close();
        } catch (IOException unused) {
            HiAnalyticsSdkState.m2940g("hmsSdk", "closeStream(): Exception: close OutputStream error!");
        }
        return byteArray;
    }

    /* renamed from: x */
    public static byte[] m2301x(byte[] bArr, PublicKey publicKey) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, UnsupportedEncodingException {
        String str;
        try {
            if (publicKey == null) {
                throw new UnsupportedEncodingException("The loaded public key is null");
            }
            Cipher cipher = Cipher.getInstance("RSA/ECB/OAEPWITHSHA-1ANDMGF1PADDING");
            cipher.init(1, publicKey);
            return cipher.doFinal(bArr);
        } catch (UnsupportedEncodingException unused) {
            str = "rsaEncrypt(): getBytes - Unsupported coding format!";
            HiAnalyticsSdkState.m2940g("hmsSdk", str);
            return new byte[0];
        } catch (InvalidKeyException unused2) {
            str = "rsaEncrypt(): init - Invalid key!";
            HiAnalyticsSdkState.m2940g("hmsSdk", str);
            return new byte[0];
        } catch (NoSuchAlgorithmException unused3) {
            str = "rsaEncrypt(): getInstance - No such algorithm,transformation";
            HiAnalyticsSdkState.m2940g("hmsSdk", str);
            return new byte[0];
        } catch (BadPaddingException unused4) {
            str = "rsaEncrypt():False filling parameters!";
            HiAnalyticsSdkState.m2940g("hmsSdk", str);
            return new byte[0];
        } catch (IllegalBlockSizeException unused5) {
            str = "rsaEncrypt(): doFinal - The provided block is not filled with";
            HiAnalyticsSdkState.m2940g("hmsSdk", str);
            return new byte[0];
        } catch (NoSuchPaddingException unused6) {
            str = "rsaEncrypt():  No such filling parameters ";
            HiAnalyticsSdkState.m2940g("hmsSdk", str);
            return new byte[0];
        }
    }

    /* renamed from: y */
    public static String m2302y(String str, String str2, String str3) {
        if ("_default_config_tag".equals(str)) {
            return CompilerOutline.m1760e("_default_config_tag#", str3);
        }
        return str + "-" + str2 + "#" + str3;
    }

    /* renamed from: z */
    public static void m2303z(OutputStream outputStream) throws IOException {
        if (outputStream != null) {
            try {
                outputStream.close();
            } catch (IOException unused) {
                m2264E("IOUtil", "closeSecure IOException");
            }
        }
    }
}
