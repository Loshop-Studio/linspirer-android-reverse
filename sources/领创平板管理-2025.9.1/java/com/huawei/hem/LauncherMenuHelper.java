package com.huawei.hem;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.mdmcom.ICtEmmManager;
import android.mdmcom.MdmComConst;
import android.net.Uri;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.ServiceManager;
import android.support.v4.content.FileProvider;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import anet.channel.strategy.dispatch.DispatchConstants;
import com.alibaba.fastjson.asm.Label;
import com.alibaba.sdk.android.tbrest.utils.Base64;
import com.android.launcher3.GuardSecureApplication;
import com.android.launcher3.R;
import com.android.launcher3.activity.LoginActivity;
import com.android.launcher3.p027db.model.GesturePassword;
import com.android.launcher3.p027db.model.GesturePasswordDao;
import com.android.launcher3.view.DialogUtil;
import com.bumptech.glide.load.model.LazyHeaders;
import com.huawei.hem.UserInfoUtil;
import com.huawei.hms.common.internal.TransactionIdCreater;
import com.huawei.hms.framework.common.ContainerUtils;
import com.huawei.hms.framework.common.ExceptionCode;
import com.huawei.hms.framework.common.IoUtils;
import com.huawei.hms.framework.common.Logger;
import com.huawei.hms.framework.common.StringUtils;
import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import com.huawei.hms.framework.common.hianalytics.LinkedHashMapPack;
import com.taobao.accs.utl.UtilityImpl;
import com.tdtech.devicemanager.EmmUtil;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.StringWriter;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.security.KeyManagementException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.cert.X509Certificate;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Timer;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.SecretKeySpec;
import javax.net.ssl.HttpsURLConnection;
import org.android.agoo.message.MessageService;
import org.greenrobot.greendao.query.WhereCondition;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: MenuHelper.java */
/* renamed from: com.huawei.hem.y4 */
/* loaded from: classes.dex */
public class LauncherMenuHelper {

    /* renamed from: a */
    public static Timer f4123a;

    /* renamed from: b */
    public static File f4124b;

    /* renamed from: c */
    public static ICtEmmManager f4125c;

    /* renamed from: d */
    public static GrsServerConfig f4126d;

    /* renamed from: A */
    public static boolean m2954A(Intent intent) {
        UserInfoUtil c1424y5 = UserInfoUtil.b.f4202a;
        DeviceManagementInterface interfaceC1030ic = LTKDateUtil.f2294f;
        return intent == null || intent.getAction() == null || c1424y5.m3023R() || (interfaceC1030ic != null ? interfaceC1030ic.mo2071p(true) : 0) == 2;
    }

    /* renamed from: B */
    public static void m2955B(Context context, boolean z) {
        LTKDateUtil.m1403m("send  logout user broadcast");
        Intent intent = new Intent();
        intent.putExtra("fromOwner", z);
        intent.setAction("com.linspirer.launcher3.user_logout");
        intent.setPackage("com.android.launcher3");
        context.sendBroadcast(intent);
    }

    /* renamed from: C */
    public static ICtEmmManager m2956C() {
        if (f4125c == null) {
            f4125c = ICtEmmManager.Stub.asInterface(ServiceManager.getService(MdmComConst.SERVICE_NAME));
            StringBuilder sbM1765j = CompilerOutline.m1765j("mICtEmmManager = ");
            sbM1765j.append(f4125c);
            Log.v(EmmUtil.TAG, sbM1765j.toString());
        }
        return f4125c;
    }

    /* renamed from: D */
    public static String m2957D() throws NoSuchAlgorithmException {
        String string;
        String strM1593j = LauncherDeviceUtils.m1593j(GuardSecureApplication.f1640b);
        if (!TextUtils.isEmpty(strM1593j) && !"unknown".equals(strM1593j)) {
            String strM1761f = CompilerOutline.m1761f(new SimpleDateFormat("yyyyMMdd").format(new Date()), strM1593j, "40E06F51-30D0-D6AD-7F7D-008AD0ADC570");
            UserInfoUtil c1424y5 = UserInfoUtil.b.f4202a;
            String str = "";
            if (TextUtils.isEmpty(c1424y5.f4129C)) {
                c1424y5.f4129C = c1424y5.f4130D.f2199a.getString("student_id", "");
            }
            String str2 = c1424y5.f4129C;
            if (!TextUtils.isEmpty(str2)) {
                strM1761f = CompilerOutline.m1760e(strM1761f, str2);
            }
            if (!TextUtils.isEmpty(strM1761f)) {
                LTKDateUtil.m1403m("AdminEnterUtil  -- exchangeToMd5 is start");
                try {
                    byte[] bytes = strM1761f.getBytes();
                    MessageDigest messageDigest = MessageDigest.getInstance("md5");
                    messageDigest.reset();
                    messageDigest.update(bytes);
                    byte[] bArrDigest = messageDigest.digest();
                    StringBuilder sb = new StringBuilder();
                    for (byte b : bArrDigest) {
                        String hexString = Integer.toHexString(b & Base64.EQUALS_SIGN_ENC);
                        if (hexString.length() == 1) {
                            hexString = MessageService.MSG_DB_READY_REPORT + hexString;
                        }
                        sb.append(hexString);
                    }
                    string = sb.toString();
                } catch (NoSuchAlgorithmException e) {
                    e.printStackTrace();
                    string = "";
                }
                if (string.length() > 8) {
                    String strSubstring = string.substring(string.length() - 8);
                    LTKDateUtil.m1403m("AdminEnterUtil  -- hexToLong is start ");
                    String strValueOf = String.valueOf(Long.parseLong(strSubstring, 16));
                    if (!TextUtils.isEmpty(strValueOf) && strValueOf.length() > 8) {
                        strValueOf = strValueOf.substring(strValueOf.length() - 8, strValueOf.length());
                    }
                    str = strValueOf;
                }
            }
            if (str.length() >= 6) {
                return str.substring(0, 6);
            }
        }
        return "unknown";
    }

    /* renamed from: E */
    public static void m2958E(Activity activity, String str, String str2, DownLoadBrowserListener interfaceC0971g3) {
        DialogUtil.showDialog(activity, activity.getString(R.string.text_downloading));
        m3001v(activity, true);
        File file = new File(CompilerOutline.m1763h(new StringBuilder(), LauncherConstants.f4038a, str, ".apk"));
        f4124b = file;
        if (file.exists()) {
            Log.i("DownLoadUtil", "dest.exists() install");
            LTKDateUtil.m1411u("DownLoadUtil", "dest.exists() install");
            m3002w(f4124b.getAbsolutePath(), activity, interfaceC0971g3);
            return;
        }
        Log.i("DownLoadUtil", "download");
        LTKDateUtil.m1411u("DownLoadUtil", "download");
        String absolutePath = f4124b.getAbsolutePath();
        File file2 = f4124b;
        LTKDateUtil.m1403m("DownLoadUtildownload app packageName:" + str);
        if (FileDownloader.m2788b() == null) {
            throw null;
        }
        DownloadTask c1007he = new DownloadTask(str2);
        c1007he.m1947z(absolutePath, false);
        c1007he.f2853h = new LauncherDownloadListener(activity, interfaceC0971g3, absolutePath, file2);
        c1007he.start();
    }

    /* renamed from: F */
    public static void m2959F(Context context) {
        LTKDateUtil.m1403m("send  refresh desktop broadcast");
        m2962I(context, "com.linspirer.launcher3.refresh_desktop");
    }

    /* renamed from: G */
    public static void m2960G(Context context, String str) {
        if (DeviceTypeUtil.m1519l() || DeviceTypeUtil.m1521n()) {
            LTKDateUtil.m1403m("huawei and honor no need handle wifi config");
        } else {
            if ("-1".equals(str)) {
                return;
            }
            m2961H(context, MobileSdkPlatformUtilities.m2277R(str, ","));
        }
    }

    /* renamed from: H */
    public static void m2961H(Context context, List<String> list) {
        if (MobileSdkPlatformUtilities.m2273N(list)) {
            list = new ArrayList<>();
        }
        StringBuilder sbM1765j = CompilerOutline.m1765j("read wifi ssid");
        sbM1765j.append(list.toString());
        LTKDateUtil.m1403m(sbM1765j.toString());
        WifiManager wifiManager = (WifiManager) context.getSystemService(UtilityImpl.NET_TYPE_WIFI);
        for (WifiConfiguration wifiConfiguration : wifiManager.getConfiguredNetworks()) {
            if (!list.contains(wifiConfiguration.SSID) && !list.contains(wifiConfiguration.SSID.replace("\"", ""))) {
                wifiManager.removeNetwork(wifiConfiguration.networkId);
                LTKDateUtil.m1403m(wifiConfiguration.SSID + "not in wifi white list ");
            }
        }
    }

    /* renamed from: I */
    public static void m2962I(Context context, String str) {
        Intent intent = new Intent();
        intent.setAction(str);
        intent.setPackage("com.android.launcher3");
        context.sendBroadcast(intent);
    }

    /* renamed from: J */
    public static void m2963J(Context context) {
        String deviceId;
        Intent intent = new Intent("com.android.laucher3.mdm.obtaindevicesn");
        intent.putExtra("device_sn", LauncherDeviceUtils.m1592i());
        intent.putExtra("device_mac", LauncherDeviceUtils.m1593j(context));
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        if (Build.VERSION.SDK_INT >= 26) {
            deviceId = telephonyManager.getImei(0);
        } else {
            deviceId = ((TelephonyManager) context.getSystemService("phone")).getDeviceId();
            if (deviceId == null) {
                deviceId = "unknown";
            }
        }
        intent.putExtra("device_imei", deviceId);
        intent.putExtra("mac", LauncherDeviceUtils.m1588e(context));
        LTKDateUtil.m1403m("return isv sn");
        context.sendBroadcast(intent);
    }

    /* renamed from: K */
    public static void m2964K(Context context) {
        Intent intent = new Intent("com.linspirer.edu.return_gesture_state");
        GesturePassword gesturePasswordUnique = DBController.m2715a().m2719e().queryBuilder().where(GesturePasswordDao.Properties.User_name.m5870eq(UserInfoUtil.b.f4202a.m3052k()), new WhereCondition[0]).unique();
        String gesture_password = gesturePasswordUnique == null ? "" : gesturePasswordUnique.getGesture_password();
        LTKDateUtil.m1392b("BroadcastSenderUtil  -- get gesture password : " + gesture_password);
        intent.putExtra("gesture_state", !TextUtils.isEmpty(gesture_password) ? 1 : 0);
        context.sendBroadcast(intent);
    }

    /* renamed from: L */
    public static void m2965L(Context context) {
        Intent intent = new Intent("com.linspirer.edu.returnlicensestatus");
        intent.putExtra("device_mac", LauncherDeviceUtils.m1593j(context));
        intent.putExtra("activate_status", !TextUtils.isEmpty(UserInfoUtil.b.f4202a.m3072u()) ? 1 : 0);
        intent.putExtra("isv_code", 100);
        context.sendBroadcast(intent);
    }

    /* renamed from: M */
    public static void m2966M(Context context) {
        Intent intent = new Intent("com.linspirer.edu.return.login.state");
        intent.putExtra("login_status", UserInfoUtil.b.f4202a.m3019N());
        context.sendBroadcast(intent);
    }

    /* renamed from: N */
    public static void m2967N(Context context, String str, int i) {
        Intent intent = new Intent("com.android.launcher3.mdm.logoutstatus");
        if (!TextUtils.isEmpty(str)) {
            intent.setPackage(str);
        }
        intent.putExtra("logoutstatus", i);
        context.sendBroadcast(intent);
    }

    /* renamed from: O */
    public static void m2968O(Context context) {
        Intent intent = new Intent("com.android.launcher3.mdm.phone.status");
        intent.putExtra("phone_status", LTKDateUtil.f2294f.mo2065j());
        context.sendBroadcast(intent);
    }

    /* renamed from: P */
    public static void m2969P(Context context) {
        Intent intent = new Intent("com.android.launcher3.mdm.sms.status");
        intent.putExtra("sms_status", LTKDateUtil.f2294f.mo2072p0());
        context.sendBroadcast(intent);
    }

    /* renamed from: Q */
    public static void m2970Q(Context context, String str) {
        Intent intent = new Intent("com.android.launcher3.mdm.SCREEN_SHOT_FINISH");
        intent.putExtra("path", str);
        context.sendBroadcast(intent);
    }

    /* renamed from: R */
    public static void m2971R(Context context, String str) {
        Intent intent = new Intent();
        intent.setAction(str);
        intent.setPackage("com.ndwill.swd.appstore");
        context.sendBroadcast(intent);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x022a  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x023e  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0249  */
    /* renamed from: S */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m2972S(boolean r56) {
        /*
            Method dump skipped, instructions count: 618
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.C1423y4.m2972S(boolean):void");
    }

    /* renamed from: T */
    public static void m2973T(Context context, ComponentName componentName) {
        try {
            Intent intent = new Intent();
            intent.setComponent(componentName);
            intent.setFlags(Label.FORWARD_REFERENCE_TYPE_SHORT);
            context.startActivity(intent);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1771p(th, "start activity exception:"));
        }
    }

    /* renamed from: U */
    public static void m2974U(Context context, Class cls) {
        try {
            context.startActivity(new Intent(context, (Class<?>) cls));
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1771p(th, "start activity exception:"));
        }
    }

    /* renamed from: V */
    public static void m2975V(Context context, Class cls, Bundle bundle) {
        try {
            Intent intent = new Intent(context, (Class<?>) cls);
            intent.putExtras(bundle);
            intent.setFlags(Label.FORWARD_REFERENCE_TYPE_SHORT);
            context.startActivity(intent);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1771p(th, "start activity exception:"));
        }
    }

    /* renamed from: W */
    public static void m2976W(Context context, Class cls) {
        try {
            Intent intent = new Intent(context, (Class<?>) cls);
            intent.setFlags(Label.FORWARD_REFERENCE_TYPE_SHORT);
            context.startActivity(intent);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1771p(th, "start activity exception:"));
        }
    }

    /* renamed from: X */
    public static void m2977X(Context context, Class cls, Bundle bundle) {
        try {
            Intent intent = new Intent(context, (Class<?>) cls);
            intent.putExtras(bundle);
            intent.setFlags(Label.FORWARD_REFERENCE_TYPE_SHORT);
            context.startActivity(intent);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1771p(th, "start activity exception:"));
        }
    }

    /* renamed from: Y */
    public static void m2978Y(Context context, Class cls) {
        try {
            Intent intent = new Intent(context, (Class<?>) cls);
            intent.setFlags(Label.FORWARD_REFERENCE_TYPE_SHORT);
            intent.setFlags(67108864);
            context.startActivity(intent);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1771p(th, "start activity exception:"));
        }
    }

    /* renamed from: Z */
    public static void m2979Z(Context context) {
        try {
            Intent intent = new Intent("android.settings.WIFI_SETTINGS");
            intent.setFlags(Label.FORWARD_REFERENCE_TYPE_SHORT);
            context.startActivity(intent);
        } catch (Throwable th) {
            CompilerOutline.m1745C(th, CompilerOutline.m1771p(th, "start activity exception:"));
        }
    }

    /* renamed from: a */
    public static String m2980a(InputStream inputStream, String str) throws IOException {
        StringWriter stringWriter = new StringWriter();
        InputStreamReader inputStreamReader = new InputStreamReader(inputStream, str);
        char[] cArr = new char[4096];
        while (true) {
            int i = inputStreamReader.read(cArr);
            if (-1 == i) {
                return stringWriter.toString();
            }
            stringWriter.write(cArr, 0, i);
        }
    }

    /* renamed from: b */
    public static String m2981b(String str, Context context) throws IOException {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        InputStream inputStreamOpen = null;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            inputStreamOpen = context.getAssets().open(str);
            byte[] bArr = new byte[8192];
            while (true) {
                int i = inputStreamOpen.read(bArr);
                if (i == -1) {
                    byteArrayOutputStream.flush();
                    return new String(byteArrayOutputStream.toByteArray(), "UTF-8");
                }
                byteArrayOutputStream.write(bArr, 0, i);
            }
        } catch (IOException unused) {
            Logger.m3440w("c", "local config file is not exist.filename is {%s}", str);
            return "";
        } finally {
            IoUtils.closeSecure((OutputStream) byteArrayOutputStream);
            IoUtils.closeSecure(inputStreamOpen);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0049  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.net.HttpURLConnection m2982c(java.lang.String r4, int r5, java.util.Map<java.lang.String, java.lang.String> r6, java.lang.String r7) throws java.net.ProtocolException, com.huawei.hem.LauncherHelperException {
        /*
            boolean r0 = android.text.TextUtils.isEmpty(r4)
            r1 = 0
            java.lang.String r2 = "hmsSdk"
            if (r0 == 0) goto Lf
            java.lang.String r4 = "CreateConnection: invalid urlPath."
            com.huawei.hem.C1404xa.m2936c(r2, r4)
            return r1
        Lf:
            java.net.URL r0 = new java.net.URL
            r0.<init>(r4)
            java.net.URLConnection r4 = r0.openConnection()
            java.net.HttpURLConnection r4 = (java.net.HttpURLConnection) r4
            boolean r0 = r4 instanceof javax.net.ssl.HttpsURLConnection
            if (r0 == 0) goto L51
            r0 = r4
            javax.net.ssl.HttpsURLConnection r0 = (javax.net.ssl.HttpsURLConnection) r0
            android.content.Context r3 = m2998s()     // Catch: java.lang.IllegalAccessException -> L2a java.io.IOException -> L2d java.security.GeneralSecurityException -> L30 java.security.KeyStoreException -> L33 java.security.NoSuchAlgorithmException -> L36
            com.huawei.hem.gb r1 = com.huawei.hem.C0979gb.m1856b(r3)     // Catch: java.lang.IllegalAccessException -> L2a java.io.IOException -> L2d java.security.GeneralSecurityException -> L30 java.security.KeyStoreException -> L33 java.security.NoSuchAlgorithmException -> L36
            goto L3b
        L2a:
            java.lang.String r3 = "getSocketFactory(): Illegal Access Exception "
            goto L38
        L2d:
            java.lang.String r3 = "getSocketFactory(): IO Exception!"
            goto L38
        L30:
            java.lang.String r3 = "getSocketFactory(): General Security Exception"
            goto L38
        L33:
            java.lang.String r3 = "getSocketFactory(): Key Store exception"
            goto L38
        L36:
            java.lang.String r3 = "getSocketFactory(): Algorithm Exception!"
        L38:
            com.huawei.hem.C1404xa.m2940g(r2, r3)
        L3b:
            if (r1 == 0) goto L49
            r0.setSSLSocketFactory(r1)
            com.huawei.hem.jb r1 = new com.huawei.hem.jb
            r1.<init>()
            r0.setHostnameVerifier(r1)
            goto L51
        L49:
            com.huawei.hem.g9 r4 = new com.huawei.hem.g9
            java.lang.String r5 = "No ssl socket factory set"
            r4.<init>(r5)
            throw r4
        L51:
            r4.setRequestMethod(r7)
            r7 = 15000(0x3a98, float:2.102E-41)
            r4.setConnectTimeout(r7)
            r4.setReadTimeout(r7)
            r7 = 1
            r4.setDoOutput(r7)
            java.lang.String r0 = "Content-Type"
            java.lang.String r1 = "application/json; charset=UTF-8"
            r4.setRequestProperty(r0, r1)
            java.lang.String r5 = java.lang.String.valueOf(r5)
            java.lang.String r0 = "Content-Length"
            r4.setRequestProperty(r0, r5)
            java.lang.String r5 = "Connection"
            java.lang.String r0 = "close"
            r4.setRequestProperty(r5, r0)
            if (r6 == 0) goto Lad
            int r5 = r6.size()
            if (r5 >= r7) goto L80
            goto Lad
        L80:
            java.util.Set r5 = r6.entrySet()
            java.util.Iterator r5 = r5.iterator()
        L88:
            boolean r6 = r5.hasNext()
            if (r6 == 0) goto Lad
            java.lang.Object r6 = r5.next()
            java.util.Map$Entry r6 = (java.util.Map.Entry) r6
            java.lang.Object r7 = r6.getKey()
            java.lang.String r7 = (java.lang.String) r7
            if (r7 == 0) goto L88
            boolean r0 = android.text.TextUtils.isEmpty(r7)
            if (r0 == 0) goto La3
            goto L88
        La3:
            java.lang.Object r6 = r6.getValue()
            java.lang.String r6 = (java.lang.String) r6
            r4.setRequestProperty(r7, r6)
            goto L88
        Lad:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hem.C1423y4.m2982c(java.lang.String, int, java.util.Map, java.lang.String):java.net.HttpURLConnection");
    }

    /* renamed from: d */
    public static LinkedHashMap m2983d(GrsHttpResponse c1252r8) {
        LinkedHashMapPack linkedHashMapPack = new LinkedHashMapPack();
        Exception exc = c1252r8.f3614l;
        if (exc != null) {
            linkedHashMapPack.put("error_code", ExceptionCode.getErrorCodeFromException(exc));
            linkedHashMapPack.put(CrashHianalyticsData.EXCEPTION_NAME, exc.getClass().getSimpleName());
            linkedHashMapPack.put("message", StringUtils.anonymizeMessage(exc.getMessage()));
        } else {
            linkedHashMapPack.put("error_code", c1252r8.f3605c);
            linkedHashMapPack.put(CrashHianalyticsData.EXCEPTION_NAME, c1252r8.f3611i);
        }
        try {
            linkedHashMapPack.put(DispatchConstants.DOMAIN, new URL(c1252r8.f3615m).getHost());
        } catch (MalformedURLException e) {
            Logger.m3439w("HaReportHelper", "report host MalformedURLException", e);
        }
        linkedHashMapPack.put("req_start_time", c1252r8.f3607e);
        linkedHashMapPack.put("req_end_time", c1252r8.f3608f);
        linkedHashMapPack.put("req_total_time", c1252r8.f3606d);
        return linkedHashMapPack.getAll();
    }

    /* renamed from: e */
    public static SecretKey m2984e(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) {
        if (bArr.length != 16 || bArr2.length != 16 || bArr3.length != 16) {
            throw new IllegalArgumentException("invalid data for generating the key.");
        }
        m2989j(bArr, -4);
        byte[] bArrM2990k = m2990k(bArr, bArr2);
        m2989j(bArrM2990k, 6);
        return new SecretKeySpec(SecretKeyFactory.getInstance("PBKDF2WithHmacSHA1").generateSecret(new PBEKeySpec(AgConnectHexCodec.m3080a(m2990k(bArrM2990k, bArr3)).toCharArray(), bArr4, 5000, 128)).getEncoded(), "AES");
    }

    /* renamed from: f */
    public static HttpsURLConnection m2985f(String str, Context context, String str2) throws IOException {
        String str3;
        String str4 = "";
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        URLConnection uRLConnectionOpenConnection = new URL(str).openConnection();
        if (!(uRLConnectionOpenConnection instanceof HttpsURLConnection)) {
            Logger.m3438w("URLConnectionHelper", "urlConnection is not an instance of HttpsURLConnection");
            return null;
        }
        HttpsURLConnection httpsURLConnection = (HttpsURLConnection) uRLConnectionOpenConnection;
        try {
            try {
                httpsURLConnection.setSSLSocketFactory(new SecureSocketFactoryAdapter(new SdkCertificateTrustManager(context.getAssets().open("grs_sp.bks"), "")));
                httpsURLConnection.setHostnameVerifier(new SdkHostnameVerifier());
            } catch (IllegalArgumentException unused) {
                Logger.m3438w("URLConnectionHelper", "init https ssl socket failed.");
            }
            httpsURLConnection.setConnectTimeout(10000);
            httpsURLConnection.setReadTimeout(10000);
            if (context == null) {
                str3 = String.format(Locale.ROOT, "NetworkKit-grs/%s", "4.0.20.301");
            } else {
                String packageName = context.getPackageName();
                try {
                    str4 = context.getPackageManager().getPackageInfo(context.getPackageName(), 16384).versionName;
                } catch (PackageManager.NameNotFoundException e) {
                    Logger.m3439w("AgentUtil", "", e);
                }
                String str5 = Build.VERSION.RELEASE;
                String str6 = Build.MODEL;
                Locale locale = Locale.ROOT;
                Object[] objArr = new Object[6];
                objArr[0] = packageName;
                objArr[1] = str4;
                objArr[2] = str5;
                objArr[3] = str6;
                objArr[4] = "4.0.20.301";
                if (TextUtils.isEmpty(str2)) {
                    str2 = "no_service_name";
                }
                objArr[5] = str2;
                str3 = String.format(locale, "%s/%s (Linux; Android %s; %s) NetworkKit-grs/%s %s", objArr);
            }
            Logger.m3429d("URLConnectionHelper", "request to grs server with a User-Agent header is:" + str3);
            httpsURLConnection.setRequestProperty(LazyHeaders.Builder.USER_AGENT_HEADER, str3);
            return httpsURLConnection;
        } catch (IOException e2) {
            e = e2;
            throw new AssertionError(e);
        } catch (KeyManagementException e3) {
            e = e3;
            throw new AssertionError(e);
        } catch (NoSuchAlgorithmException e4) {
            e = e4;
            throw new AssertionError(e);
        }
    }

    /* renamed from: g */
    public static boolean m2986g(Long l) {
        if (l == null) {
            Logger.m3436v("e", "Method isTimeExpire input param expireTime is null.");
            return true;
        }
        try {
        } catch (NumberFormatException unused) {
            Logger.m3436v("e", "isSpExpire spValue NumberFormatException.");
        }
        if (l.longValue() - System.currentTimeMillis() >= 0) {
            Logger.m3436v("e", "isSpExpire false.");
            return false;
        }
        Logger.m3436v("e", "isSpExpire true.");
        return true;
    }

    /* renamed from: h */
    public static boolean m2987h(Long l, long j) {
        if (l == null) {
            Logger.m3436v("e", "Method isTimeWillExpire input param expireTime is null.");
            return true;
        }
        try {
            if (l.longValue() - (System.currentTimeMillis() + j) >= 0) {
                Logger.m3436v("e", "isSpExpire false.");
                return false;
            }
        } catch (NumberFormatException unused) {
            Logger.m3436v("e", "isSpExpire spValue NumberFormatException.");
        }
        return true;
    }

    /* renamed from: i */
    public static boolean m2988i(X509Certificate x509Certificate, String str, String str2) {
        String strSubstring;
        if (x509Certificate == null || TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return false;
        }
        String name = x509Certificate.getSubjectDN().getName();
        int iIndexOf = name.toUpperCase(Locale.getDefault()).indexOf(str + ContainerUtils.KEY_VALUE_DELIMITER);
        if (iIndexOf == -1) {
            strSubstring = null;
        } else {
            int iIndexOf2 = name.indexOf(",", iIndexOf);
            int length = str.length() + iIndexOf + 1;
            strSubstring = iIndexOf2 != -1 ? name.substring(length, iIndexOf2) : name.substring(length);
        }
        return str2.equals(strSubstring);
    }

    /* renamed from: j */
    public static byte[] m2989j(byte[] bArr, int i) {
        if (bArr == null) {
            throw new NullPointerException("bytes must not be null.");
        }
        for (int i2 = 0; i2 < bArr.length; i2++) {
            if (i < 0) {
                bArr[i2] = (byte) (bArr[i2] << (-i));
            } else {
                bArr[i2] = (byte) (bArr[i2] >> i);
            }
        }
        return bArr;
    }

    /* renamed from: k */
    public static byte[] m2990k(byte[] bArr, byte[] bArr2) {
        if (bArr2 == null) {
            throw new NullPointerException("left or right must not be null.");
        }
        if (bArr.length != bArr2.length) {
            throw new IllegalArgumentException("left and right must be the same length.");
        }
        byte[] bArr3 = new byte[bArr.length];
        for (int i = 0; i < bArr.length; i++) {
            bArr3[i] = (byte) (bArr[i] ^ bArr2[i]);
        }
        return bArr3;
    }

    /* renamed from: l */
    public static String m2991l(String str, String str2) throws JSONException {
        if (str.equals(str2)) {
            return str;
        }
        HashSet hashSet = new HashSet();
        if (!TextUtils.isEmpty(str)) {
            JSONArray jSONArray = new JSONObject(str).getJSONArray("services");
            for (int i = 0; i < jSONArray.length(); i++) {
                hashSet.add(jSONArray.getString(i));
            }
        }
        if (!TextUtils.isEmpty(str2)) {
            JSONArray jSONArray2 = new JSONObject(str2).getJSONArray("services");
            for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                hashSet.add(jSONArray2.getString(i2));
            }
        }
        if (hashSet.isEmpty()) {
            return "";
        }
        JSONObject jSONObject = new JSONObject();
        JSONArray jSONArray3 = new JSONArray();
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            jSONArray3.put((String) it.next());
        }
        jSONObject.put("services", jSONArray3);
        return jSONObject.toString();
    }

    /* renamed from: m */
    public static String m2992m(HttpURLConnection httpURLConnection) throws IOException {
        InputStream inputStream = null;
        try {
            try {
                inputStream = httpURLConnection.getInputStream();
                return MobileSdkPlatformUtilities.m2284g(inputStream);
            } catch (IOException unused) {
                HiAnalyticsSdkState.m2940g("hmsSdk", "When Response Content From Connection inputStream operation exception! " + httpURLConnection.getResponseCode());
                MobileSdkPlatformUtilities.m2292o(inputStream);
                return "";
            }
        } finally {
            MobileSdkPlatformUtilities.m2292o(inputStream);
        }
    }

    /* renamed from: n */
    public static String m2993n(byte[] bArr) {
        if (bArr == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (byte b : bArr) {
            int i = b & Base64.EQUALS_SIGN_ENC;
            if (i < 16) {
                sb.append(TransactionIdCreater.FILL_BYTE);
            }
            sb.append(Integer.toHexString(i));
        }
        return sb.toString();
    }

    /* renamed from: o */
    public static AnalyticsIdentifierFlags m2994o(String str, String str2) {
        AnalyticsInstanceConfig c0926eaM2126a;
        HiAnalyticsTaggedInstanceData c1053jaM3145a = HmsAnalyticsConfiguration.m3144b().m3145a(str);
        if (c1053jaM3145a == null || (c0926eaM2126a = c1053jaM3145a.m2126a(str2)) == null) {
            return null;
        }
        return c0926eaM2126a.f2526g;
    }

    /* renamed from: p */
    public static String m2995p() {
        AnalyticsDeviceContext c0978ga = HmsAnalyticsConfiguration.m3144b().f4293a;
        return TextUtils.isEmpty(c0978ga.f2752f) ? c0978ga.f2751e : c0978ga.f2752f;
    }

    /* renamed from: q */
    public static void m2996q(Context context) {
        LTKDateUtil.m1403m("send  close lock activity broadcast");
        m2962I(context, "com.linspirer.close.violation");
    }

    /* renamed from: r */
    public static String m2997r() {
        return HmsAnalyticsConfiguration.m3144b().f4293a.f2754h;
    }

    /* renamed from: s */
    public static Context m2998s() {
        return HmsAnalyticsConfiguration.m3144b().f4293a.f2759m;
    }

    /* renamed from: t */
    public static byte[] m2999t(byte[] bArr) throws NoSuchAlgorithmException {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA");
            messageDigest.update(bArr);
            return messageDigest.digest();
        } catch (Exception e) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("ApkHashUtils generateSHA1 exception:");
            sbM1765j.append(e.getMessage());
            LTKDateUtil.m1403m(sbM1765j.toString());
            return null;
        }
    }

    /* renamed from: u */
    public static String m3000u(Context context, String str) {
        try {
            String strM2993n = m2993n(m2999t(context.getPackageManager().getPackageInfo(str, 64).signatures[0].toByteArray()));
            String str2 = "ApkHashUtils " + str + " getSingInfo hash ";
            Log.i(str2, strM2993n);
            LTKDateUtil.m1411u(str2, strM2993n);
            return strM2993n;
        } catch (PackageManager.NameNotFoundException e) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("ApkHashUtils  get app hash name not found exception:");
            sbM1765j.append(e.getMessage());
            LTKDateUtil.m1390A(sbM1765j.toString());
            return null;
        } catch (Exception e2) {
            StringBuilder sbM1765j2 = CompilerOutline.m1765j("ApkHashUtils  get app hash exception:");
            sbM1765j2.append(e2.getMessage());
            LTKDateUtil.m1390A(sbM1765j2.toString());
            return null;
        }
    }

    /* renamed from: v */
    public static void m3001v(Activity activity, boolean z) {
        CheckGrantedPermission c1045j2;
        boolean z2 = true;
        if (activity != null) {
            c1045j2 = new CheckGrantedPermission(activity, true);
            if (activity instanceof LoginActivity) {
                c1045j2.m2115a(activity);
            }
        } else {
            c1045j2 = new CheckGrantedPermission(GuardSecureApplication.f1640b);
        }
        if (!MobileSdkPlatformUtilities.m2273N(c1045j2.f2931b) && (c1045j2.f2931b.contains("android.permission.READ_EXTERNAL_STORAGE") || c1045j2.f2931b.contains("android.permission.WRITE_EXTERNAL_STORAGE"))) {
            LTKDateUtil.m1403m("check has no storage permission ");
            z2 = false;
        }
        if (!z2) {
            if (z) {
                LTKDateUtil.m1415y(GuardSecureApplication.f1640b, R.string.permission_not_granted);
                return;
            } else {
                LTKDateUtil.m1403m("has no permission granted");
                return;
            }
        }
        if (TextUtils.isEmpty(LauncherConstants.f4038a)) {
            if (Build.VERSION.SDK_INT >= 29 && (DeviceTypeUtil.m1521n() || DeviceTypeUtil.m1519l())) {
                LauncherConstants.f4038a = LauncherFileUtil.m1676a(GuardSecureApplication.f1640b.getFilesDir() + File.separator + "GuardSecure" + File.separator);
            } else if (Build.VERSION.SDK_INT >= 30) {
                StringBuilder sbM1765j = CompilerOutline.m1765j("/storage/emulated/0/Download");
                sbM1765j.append(File.separator);
                sbM1765j.append("GuardSecure");
                sbM1765j.append(File.separator);
                LauncherConstants.f4038a = LauncherFileUtil.m1676a(sbM1765j.toString());
            } else {
                StringBuilder sbM1765j2 = CompilerOutline.m1765j(Environment.getExternalStorageState().equals("mounted") ? Environment.getExternalStorageDirectory().getPath() : "/sdcard");
                sbM1765j2.append(File.separator);
                sbM1765j2.append("GuardSecure");
                sbM1765j2.append(File.separator);
                LauncherConstants.f4038a = LauncherFileUtil.m1676a(sbM1765j2.toString());
            }
            File file = new File(LauncherConstants.f4038a);
            if (file.exists()) {
                return;
            }
            file.mkdirs();
        }
    }

    /* renamed from: w */
    public static void m3002w(String str, Context context, DownLoadBrowserListener interfaceC0971g3) {
        Log.i("DownLoadUtil", "install");
        LTKDateUtil.m1411u("DownLoadUtil", "install");
        if (f4123a == null) {
            f4123a = new Timer();
        }
        Log.i("DownLoadUtil", " startTimer ");
        LTKDateUtil.m1411u("DownLoadUtil", " startTimer ");
        f4123a.schedule(new DownloadDialogTimeoutTask(interfaceC0971g3), 60000L);
        if (m3003x()) {
            Uri uriForFile = FileProvider.getUriForFile(context, "com.android.launcher3.myfileprovider", new File(str));
            context.grantUriPermission(DispatchConstants.ANDROID, uriForFile, 1);
            LTKDateUtil.f2294f.mo1306F(uriForFile.toString());
        } else {
            LTKDateUtil.f2294f.mo1306F(str);
        }
        DialogUtil.hideDialog();
        LTKDateUtil.m1403m("DownLoadUtil installing packageName: " + str);
    }

    /* renamed from: x */
    public static boolean m3003x() {
        return DeviceTypeUtil.m1519l() || DeviceTypeUtil.m1527t() || DeviceTypeUtil.m1515h(GuardSecureApplication.f1640b);
    }

    /* renamed from: y */
    public static boolean m3004y() {
        UserInfoUtil c1424y5 = UserInfoUtil.b.f4202a;
        DeviceManagementInterface interfaceC1030ic = LTKDateUtil.f2294f;
        return (c1424y5.m3023R() || c1424y5.m3020O() || c1424y5.m3019N() == 0 || (interfaceC1030ic != null ? interfaceC1030ic.mo2071p(true) : 0) == 2) ? false : true;
    }

    /* renamed from: z */
    public static boolean m3005z() {
        UserInfoUtil c1424y5 = UserInfoUtil.b.f4202a;
        DeviceManagementInterface interfaceC1030ic = LTKDateUtil.f2294f;
        return (c1424y5.m3023R() || c1424y5.m3020O() || TextUtils.isEmpty(c1424y5.m3052k()) || (interfaceC1030ic != null ? interfaceC1030ic.mo2071p(true) : 0) == 2) ? false : true;
    }
}
