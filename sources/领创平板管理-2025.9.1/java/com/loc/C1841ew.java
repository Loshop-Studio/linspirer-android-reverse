package com.loc;

import android.annotation.SuppressLint;
import android.app.Application;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.ServiceInfo;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.location.Location;
import android.net.NetworkInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import anetwork.channel.util.RequestConstant;
import com.alibaba.sdk.android.tbrest.utils.Base64;
import com.alibaba.sdk.android.tbrest.utils.DeviceUtils;
import com.amap.api.location.AMapLocation;
import com.amap.api.location.DPoint;
import com.amap.apis.utils.core.DeviceInfo;
import com.huawei.hem.AppInfo;
import com.huawei.hem.C0994h1;
import com.huawei.hem.C1094l1;
import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import com.taobao.accs.utl.UtilityImpl;
import com.taobao.accs.utl.Utils;
import com.taobao.agoo.p074a.p075a.AbstractC2002b;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import org.android.agoo.message.MessageService;
import org.json.JSONObject;

/* compiled from: Utils.java */
/* renamed from: com.loc.ew */
/* loaded from: classes.dex */
public final class C1841ew {

    /* renamed from: a */
    public static WifiManager f5795a = null;

    /* renamed from: b */
    public static int f5796b = 0;

    /* renamed from: c */
    public static String[] f5797c = null;

    /* renamed from: d */
    public static boolean f5798d = false;

    /* renamed from: e */
    public static String f5799e;

    /* renamed from: a */
    public static double m5101a(double d) {
        return m5125b(d);
    }

    /* renamed from: a */
    public static float m5102a(float f) {
        return (float) (((long) (f * 100.0d)) / 100.0d);
    }

    /* renamed from: a */
    public static float m5103a(AMapLocation aMapLocation, AMapLocation aMapLocation2) {
        return m5105a(new double[]{aMapLocation.getLatitude(), aMapLocation.getLongitude(), aMapLocation2.getLatitude(), aMapLocation2.getLongitude()});
    }

    /* renamed from: a */
    public static float m5104a(DPoint dPoint, DPoint dPoint2) {
        return m5105a(new double[]{dPoint.getLatitude(), dPoint.getLongitude(), dPoint2.getLatitude(), dPoint2.getLongitude()});
    }

    /* renamed from: a */
    public static float m5105a(double[] dArr) {
        float[] fArr = new float[1];
        Location.distanceBetween(dArr[0], dArr[1], dArr[2], dArr[3], fArr);
        return fArr[0];
    }

    /* renamed from: a */
    public static int m5106a(NetworkInfo networkInfo) {
        if (networkInfo != null && networkInfo.isAvailable() && networkInfo.isConnected()) {
            return networkInfo.getType();
        }
        return -1;
    }

    /* renamed from: a */
    public static long m5107a() {
        return System.currentTimeMillis();
    }

    /* renamed from: a */
    public static Object m5108a(Context context, String str) {
        if (context == null) {
            return null;
        }
        try {
            return context.getApplicationContext().getSystemService(str);
        } catch (Throwable th) {
            CoreUtil.m5014a(th, Utils.TAG, "getServ");
            return null;
        }
    }

    /* renamed from: a */
    public static String m5109a(int i) {
        if (i == 18) {
            return "定位失败，飞行模式下关闭了WIFI开关，请关闭飞行模式或者打开WIFI开关";
        }
        if (i == 19) {
            return "定位失败，没有检查到SIM卡，并且关闭了WIFI开关，请打开WIFI开关或者插入SIM卡";
        }
        if (i == 33) {
            return "补偿定位失败，未命中缓存";
        }
        switch (i) {
            case 0:
                return AbstractC2002b.JSON_SUCCESS;
            case 1:
                return "重要参数为空";
            case 2:
                return "WIFI信息不足";
            case 3:
                return "请求参数获取出现异常";
            case 4:
                return "网络连接异常";
            case 5:
                return "解析数据异常";
            case 6:
                return "定位结果错误";
            case 7:
                return "KEY错误";
            case 8:
            default:
                return "其他错误";
            case 9:
                return "初始化异常";
            case 10:
                return "定位服务启动失败";
            case 11:
                return "错误的基站信息，请检查是否插入SIM卡";
            case 12:
                return "缺少定位权限";
            case 13:
                return "网络定位失败，请检查设备是否插入sim卡，是否开启移动网络或开启了wifi模块";
            case 14:
                return "GPS 定位失败，由于设备当前 GPS 状态差,建议持设备到相对开阔的露天场所再次尝试";
            case 15:
                return "当前返回位置为模拟软件返回，请关闭模拟软件，或者在option中设置允许模拟";
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x002c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x002f  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m5110a(long r4, java.lang.String r6) {
        /*
            boolean r0 = android.text.TextUtils.isEmpty(r6)
            if (r0 == 0) goto L8
            java.lang.String r6 = "yyyy-MM-dd HH:mm:ss"
        L8:
            r0 = 0
            java.text.SimpleDateFormat r1 = new java.text.SimpleDateFormat     // Catch: java.lang.Throwable -> L17
            java.util.Locale r2 = java.util.Locale.CHINA     // Catch: java.lang.Throwable -> L17
            r1.<init>(r6, r2)     // Catch: java.lang.Throwable -> L17
            r1.applyPattern(r6)     // Catch: java.lang.Throwable -> L14
            goto L20
        L14:
            r6 = move-exception
            r0 = r1
            goto L18
        L17:
            r6 = move-exception
        L18:
            java.lang.String r1 = "Utils"
            java.lang.String r2 = "formatUTC"
            com.loc.C1834ep.m5014a(r6, r1, r2)
            r1 = r0
        L20:
            r2 = 0
            int r6 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r6 > 0) goto L2a
            long r4 = m5107a()
        L2a:
            if (r1 != 0) goto L2f
            java.lang.String r4 = "NULL"
            return r4
        L2f:
            java.lang.Long r4 = java.lang.Long.valueOf(r4)
            java.lang.String r4 = r1.format(r4)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.loc.C1841ew.m5110a(long, java.lang.String):java.lang.String");
    }

    /* renamed from: a */
    public static List<String> m5111a(File file) throws IOException {
        FileInputStream fileInputStreamM5128b;
        InputStreamReader inputStreamReader;
        ArrayList arrayList = new ArrayList();
        BufferedReader bufferedReader = null;
        try {
            try {
                fileInputStreamM5128b = m5128b(file);
                try {
                    inputStreamReader = new InputStreamReader(fileInputStreamM5128b, Charset.defaultCharset());
                    try {
                        BufferedReader bufferedReader2 = new BufferedReader(inputStreamReader);
                        while (true) {
                            try {
                                String line = bufferedReader2.readLine();
                                if (line == null) {
                                    break;
                                }
                                arrayList.add(line);
                            } catch (Throwable unused) {
                                bufferedReader = bufferedReader2;
                                if (bufferedReader != null) {
                                    bufferedReader.close();
                                }
                                if (inputStreamReader != null) {
                                    inputStreamReader.close();
                                }
                                if (fileInputStreamM5128b != null) {
                                    fileInputStreamM5128b.close();
                                }
                                return arrayList;
                            }
                        }
                        bufferedReader2.close();
                        inputStreamReader.close();
                        fileInputStreamM5128b.close();
                    } catch (Throwable unused2) {
                    }
                } catch (Throwable unused3) {
                    inputStreamReader = null;
                }
            } catch (Throwable unused4) {
                fileInputStreamM5128b = null;
                inputStreamReader = null;
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return arrayList;
    }

    /* renamed from: a */
    public static void m5112a(File file, String str) throws IOException {
        FileOutputStream fileOutputStreamM5139c = null;
        try {
            try {
                fileOutputStreamM5139c = m5139c(file);
                if (str != null) {
                    fileOutputStreamM5139c.write(str.getBytes());
                }
                try {
                    fileOutputStreamM5139c.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            } catch (IOException e2) {
                e2.printStackTrace();
                if (fileOutputStreamM5139c != null) {
                    try {
                        fileOutputStreamM5139c.close();
                    } catch (IOException e3) {
                        e3.printStackTrace();
                    }
                }
            }
        } catch (Throwable th) {
            if (fileOutputStreamM5139c != null) {
                try {
                    fileOutputStreamM5139c.close();
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
            }
            throw th;
        }
    }

    /* renamed from: a */
    public static boolean m5113a(Context context) {
        if (context == null) {
            return false;
        }
        try {
            return m5137c() < 17 ? m5140c(context, "android.provider.Settings$System") : m5140c(context, "android.provider.Settings$Global");
        } catch (Throwable unused) {
            return false;
        }
    }

    /* renamed from: a */
    public static boolean m5114a(SQLiteDatabase sQLiteDatabase, String str) {
        boolean z = false;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String strReplace = "2.0.201501131131".replace(".", "");
        Cursor cursorQuery = null;
        if (sQLiteDatabase != null) {
            try {
                if (sQLiteDatabase.isOpen()) {
                    cursorQuery = sQLiteDatabase.query("sqlite_master", new String[]{"count(*) as c"}, "type = 'table' AND name = '" + str.trim() + strReplace + "'", null, null, null, null);
                    if (cursorQuery != null && cursorQuery.moveToFirst()) {
                        if (cursorQuery.getInt(0) > 0) {
                            z = true;
                        }
                    }
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return z;
                }
            } catch (Throwable unused) {
                if (cursorQuery == null) {
                    return true;
                }
                cursorQuery.close();
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    public static boolean m5115a(Location location, int i) {
        Boolean bool = Boolean.FALSE;
        try {
            bool = (Boolean) Reflect.m5052a(location, "isFromMockProvider", new Object[0]);
        } catch (Throwable unused) {
        }
        if (bool.booleanValue()) {
            return true;
        }
        Bundle extras = location.getExtras();
        if ((extras != null ? extras.getInt("satellites") : 0) <= 0) {
            return true;
        }
        return i == 0 && location.getAltitude() == 0.0d && location.getBearing() == 0.0f && location.getSpeed() == 0.0f;
    }

    /* renamed from: a */
    public static boolean m5116a(AMapLocation aMapLocation) {
        if (aMapLocation != null && aMapLocation.getErrorCode() == 0) {
            return m5133b(aMapLocation);
        }
        return false;
    }

    /* renamed from: a */
    public static boolean m5117a(AMapLocationServer c1812du) {
        if (c1812du == null || MessageService.MSG_ACCS_NOTIFY_CLICK.equals(c1812du.m4688d()) || "5".equals(c1812du.m4688d()) || "6".equals(c1812du.m4688d())) {
            return false;
        }
        return m5133b(c1812du);
    }

    /* renamed from: a */
    public static boolean m5118a(String str) {
        return (TextUtils.isEmpty(str) || "00:00:00:00:00:00".equals(str) || str.contains(" :")) ? false : true;
    }

    /* renamed from: a */
    public static boolean m5119a(String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            ArrayList<String> arrayListM5131b = m5131b(str);
            String[] strArrSplit = str2.toString().split("#");
            int i = 0;
            int i2 = 0;
            for (int i3 = 0; i3 < strArrSplit.length; i3++) {
                if (strArrSplit[i3].contains(",nb") || strArrSplit[i3].contains(",access")) {
                    i++;
                    if (arrayListM5131b.contains(strArrSplit[i3])) {
                        i2++;
                    }
                }
            }
            if (i2 * 2 >= (arrayListM5131b.size() + i) * 0.618d) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    public static boolean m5120a(JSONObject jSONObject, String str) {
        return C1094l1.m2243l(jSONObject, str);
    }

    /* renamed from: a */
    public static byte[] m5121a(int i, byte[] bArr) {
        if (bArr == null || bArr.length < 2) {
            bArr = new byte[2];
        }
        bArr[0] = (byte) (i & 255);
        bArr[1] = (byte) ((i & 65280) >> 8);
        return bArr;
    }

    /* renamed from: a */
    public static byte[] m5122a(long j) {
        byte[] bArr = new byte[8];
        for (int i = 0; i < 8; i++) {
            bArr[i] = (byte) ((j >> (i * 8)) & 255);
        }
        return bArr;
    }

    /* renamed from: a */
    public static byte[] m5123a(byte[] bArr) {
        return C1094l1.m2250s(bArr);
    }

    /* renamed from: a */
    public static String[] m5124a(TelephonyManager telephonyManager) {
        int i;
        String[] strArr;
        String networkOperator = telephonyManager != null ? telephonyManager.getNetworkOperator() : null;
        String[] strArr2 = {MessageService.MSG_DB_READY_REPORT, MessageService.MSG_DB_READY_REPORT};
        if (!TextUtils.isEmpty(networkOperator) && TextUtils.isDigitsOnly(networkOperator) && networkOperator.length() > 4) {
            strArr2[0] = networkOperator.substring(0, 3);
            char[] charArray = networkOperator.substring(3).toCharArray();
            int i2 = 0;
            while (i2 < charArray.length && Character.isDigit(charArray[i2])) {
                i2++;
            }
            strArr2[1] = networkOperator.substring(3, i2 + 3);
        }
        try {
            i = Integer.parseInt(strArr2[0]);
        } catch (Throwable th) {
            CoreUtil.m5014a(th, Utils.TAG, "getMccMnc");
            i = 0;
        }
        if (i == 0) {
            strArr2[0] = MessageService.MSG_DB_READY_REPORT;
        }
        if (MessageService.MSG_DB_READY_REPORT.equals(strArr2[0]) || MessageService.MSG_DB_READY_REPORT.equals(strArr2[1])) {
            return (MessageService.MSG_DB_READY_REPORT.equals(strArr2[0]) && MessageService.MSG_DB_READY_REPORT.equals(strArr2[1]) && (strArr = f5797c) != null) ? strArr : strArr2;
        }
        f5797c = strArr2;
        return strArr2;
    }

    /* renamed from: b */
    public static double m5125b(double d) {
        return ((long) (d * 1000000.0d)) / 1000000.0d;
    }

    /* renamed from: b */
    public static int m5126b(byte[] bArr) {
        int i = 0;
        for (int i2 = 0; i2 < 2; i2++) {
            i |= (bArr[i2] & Base64.EQUALS_SIGN_ENC) << ((1 - i2) * 8);
        }
        return i;
    }

    /* renamed from: b */
    public static long m5127b() {
        return SystemClock.elapsedRealtime();
    }

    /* renamed from: b */
    public static FileInputStream m5128b(File file) throws IOException {
        if (!file.exists()) {
            throw new FileNotFoundException("File '" + file + "' does not exist");
        }
        if (file.isDirectory()) {
            throw new IOException("File '" + file + "' exists but is a directory");
        }
        if (file.canRead()) {
            return new FileInputStream(file);
        }
        throw new IOException("File '" + file + "' cannot be read");
    }

    /* renamed from: b */
    public static String m5129b(Context context) {
        PackageInfo packageInfo;
        if (!TextUtils.isEmpty(CoreUtil.f5763j)) {
            return CoreUtil.f5763j;
        }
        if (context == null) {
            return null;
        }
        try {
            packageInfo = context.getPackageManager().getPackageInfo(AppInfo.m1638d(context), 64);
        } catch (Throwable th) {
            CoreUtil.m5014a(th, Utils.TAG, "getAppName part");
            packageInfo = null;
        }
        try {
            if (TextUtils.isEmpty(CoreUtil.f5764k)) {
                CoreUtil.f5764k = null;
            }
        } catch (Throwable th2) {
            CoreUtil.m5014a(th2, Utils.TAG, "getAppName");
        }
        StringBuilder sb = new StringBuilder();
        if (packageInfo != null) {
            ApplicationInfo applicationInfo = packageInfo.applicationInfo;
            CharSequence charSequenceLoadLabel = applicationInfo != null ? applicationInfo.loadLabel(context.getPackageManager()) : null;
            if (charSequenceLoadLabel != null) {
                sb.append(charSequenceLoadLabel.toString());
            }
            if (!TextUtils.isEmpty(packageInfo.versionName)) {
                sb.append(packageInfo.versionName);
            }
        }
        String strM1638d = AppInfo.m1638d(context);
        if (!TextUtils.isEmpty(strM1638d)) {
            sb.append(",");
            sb.append(strM1638d);
        }
        if (!TextUtils.isEmpty(CoreUtil.f5764k)) {
            sb.append(",");
            sb.append(CoreUtil.f5764k);
        }
        String string = sb.toString();
        CoreUtil.f5763j = string;
        return string;
    }

    /* renamed from: b */
    public static String m5130b(TelephonyManager telephonyManager) {
        int networkType = 0;
        if (telephonyManager != null) {
            try {
                networkType = telephonyManager.getNetworkType();
            } catch (Throwable unused) {
            }
        }
        switch (networkType) {
            case 1:
                return "GPRS";
            case 2:
                return "EDGE";
            case 3:
                return "UMTS";
            case 4:
                return "CDMA";
            case 5:
                return "EVDO_0";
            case 6:
                return "EVDO_A";
            case 7:
                return "1xRTT";
            case 8:
                return "HSDPA";
            case 9:
                return "HSUPA";
            case 10:
                return "HSPA";
            case 11:
                return "IDEN";
            case 12:
                return "EVDO_B";
            case 13:
                return "LTE";
            case 14:
                return "EHRPD";
            case 15:
                return "HSPAP";
            default:
                return "UNKWN";
        }
    }

    /* renamed from: b */
    public static ArrayList<String> m5131b(String str) {
        ArrayList<String> arrayList = new ArrayList<>();
        if (!TextUtils.isEmpty(str)) {
            String[] strArrSplit = str.split("#");
            for (int i = 0; i < strArrSplit.length; i++) {
                if (strArrSplit[i].contains(",nb") || strArrSplit[i].contains(",access")) {
                    arrayList.add(strArrSplit[i]);
                }
            }
        }
        return arrayList;
    }

    /* renamed from: b */
    public static boolean m5132b(Context context, String str) {
        PackageInfo packageInfo;
        try {
            packageInfo = context.getApplicationContext().getPackageManager().getPackageInfo(str, 256);
        } catch (Throwable unused) {
            packageInfo = null;
        }
        return packageInfo != null;
    }

    /* renamed from: b */
    public static boolean m5133b(AMapLocation aMapLocation) {
        double longitude = aMapLocation.getLongitude();
        double latitude = aMapLocation.getLatitude();
        return !(longitude == 0.0d && latitude == 0.0d) && longitude <= 180.0d && latitude <= 90.0d && longitude >= -180.0d && latitude >= -90.0d;
    }

    /* renamed from: b */
    public static byte[] m5134b(int i, byte[] bArr) {
        if (bArr == null || bArr.length < 4) {
            bArr = new byte[4];
        }
        for (int i2 = 0; i2 < bArr.length; i2++) {
            bArr[i2] = (byte) ((i >> (i2 * 8)) & 255);
        }
        return bArr;
    }

    /* renamed from: c */
    public static double m5135c(double d) {
        return ((long) (d * 100.0d)) / 100.0d;
    }

    /* renamed from: c */
    public static double m5136c(String str) {
        return Double.parseDouble(str);
    }

    /* renamed from: c */
    public static int m5137c() {
        int i = f5796b;
        if (i > 0) {
            return i;
        }
        try {
            try {
                return Reflect.m5056b("android.os.Build$VERSION", "SDK_INT");
            } catch (Throwable unused) {
                return 0;
            }
        } catch (Throwable unused2) {
            return Integer.parseInt(Reflect.m5053a("android.os.Build$VERSION", "SDK").toString());
        }
    }

    /* renamed from: c */
    public static NetworkInfo m5138c(Context context) {
        try {
            return DeviceInfo.m1088v(context);
        } catch (Throwable th) {
            CoreUtil.m5014a(th, Utils.TAG, "getNetWorkInfo");
            return null;
        }
    }

    /* renamed from: c */
    public static FileOutputStream m5139c(File file) throws IOException {
        if (!file.exists()) {
            File parentFile = file.getParentFile();
            if (parentFile != null) {
                if (!parentFile.mkdirs() && !parentFile.isDirectory()) {
                    throw new IOException("Directory '" + parentFile + "' could not be created");
                }
                file.createNewFile();
            }
        } else {
            if (file.isDirectory()) {
                throw new IOException("File '" + file + "' exists but is a directory");
            }
            if (!file.canWrite()) {
                throw new IOException("File '" + file + "' cannot be written to");
            }
        }
        return new FileOutputStream(file, false);
    }

    /* renamed from: c */
    public static boolean m5140c(Context context, String str) {
        return ((Integer) Reflect.m5054a(str, "getInt", new Object[]{context.getContentResolver(), ((String) Reflect.m5053a(str, "AIRPLANE_MODE_ON")).toString()}, (Class<?>[]) new Class[]{ContentResolver.class, String.class})).intValue() == 1;
    }

    /* renamed from: d */
    public static float m5141d(String str) {
        return Float.parseFloat(str);
    }

    /* renamed from: d */
    public static int m5142d() {
        return new Random().nextInt(65536) - 32768;
    }

    /* renamed from: d */
    public static boolean m5143d(Context context) {
        try {
            NetworkInfo networkInfoM5138c = m5138c(context);
            if (networkInfoM5138c != null) {
                if (networkInfoM5138c.isConnectedOrConnecting()) {
                    return true;
                }
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    /* renamed from: e */
    public static int m5144e(String str) {
        return Integer.parseInt(str);
    }

    /* renamed from: e */
    public static String m5145e() {
        try {
            return C0994h1.m1933d("S128DF1572465B890OE3F7A13167KLEI".getBytes("UTF-8")).substring(20);
        } catch (Throwable unused) {
            return "";
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x002e, code lost:
    
        if (r2.importance == 100) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0030, code lost:
    
        return true;
     */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m5146e(android.content.Context r6) {
        /*
            r0 = 1
            java.lang.String r1 = "activity"
            java.lang.Object r1 = r6.getSystemService(r1)     // Catch: java.lang.Throwable -> L32
            android.app.ActivityManager r1 = (android.app.ActivityManager) r1     // Catch: java.lang.Throwable -> L32
            java.util.List r1 = r1.getRunningAppProcesses()     // Catch: java.lang.Throwable -> L32
            java.util.Iterator r1 = r1.iterator()     // Catch: java.lang.Throwable -> L32
        L11:
            boolean r2 = r1.hasNext()     // Catch: java.lang.Throwable -> L32
            r3 = 0
            if (r2 == 0) goto L31
            java.lang.Object r2 = r1.next()     // Catch: java.lang.Throwable -> L32
            android.app.ActivityManager$RunningAppProcessInfo r2 = (android.app.ActivityManager.RunningAppProcessInfo) r2     // Catch: java.lang.Throwable -> L32
            java.lang.String r4 = r2.processName     // Catch: java.lang.Throwable -> L32
            java.lang.String r5 = com.huawei.hem.C0917e1.m1638d(r6)     // Catch: java.lang.Throwable -> L32
            boolean r4 = r4.equals(r5)     // Catch: java.lang.Throwable -> L32
            if (r4 == 0) goto L11
            int r6 = r2.importance     // Catch: java.lang.Throwable -> L32
            r1 = 100
            if (r6 == r1) goto L31
            return r0
        L31:
            return r3
        L32:
            r6 = move-exception
            java.lang.String r1 = "Utils"
            java.lang.String r2 = "isApplicationBroughtToBackground"
            com.loc.C1834ep.m5014a(r6, r1, r2)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.loc.C1841ew.m5146e(android.content.Context):boolean");
    }

    /* renamed from: f */
    public static int m5147f(String str) {
        return Integer.parseInt(str, 16);
    }

    /* renamed from: f */
    public static boolean m5148f(Context context) {
        int iM5055b;
        if (context.getApplicationInfo().targetSdkVersion < 23) {
            for (String str : Aps.f5353F) {
                if (context.checkCallingOrSelfPermission(str) == 0) {
                }
            }
            return true;
        }
        Application application = (Application) context;
        for (String str2 : Aps.f5353F) {
            try {
                iM5055b = Reflect.m5055b(application.getBaseContext(), "checkSelfPermission", str2);
            } catch (Throwable unused) {
                iM5055b = 0;
            }
            if (iM5055b == 0) {
            }
        }
        return true;
        return false;
    }

    /* renamed from: g */
    public static byte m5149g(String str) {
        return Byte.parseByte(str);
    }

    /* renamed from: g */
    public static boolean m5150g(Context context) {
        int iM5055b;
        if (context.getApplicationInfo().targetSdkVersion < 29 || Build.VERSION.SDK_INT < 29) {
            return true;
        }
        try {
            iM5055b = Reflect.m5055b(((Application) context).getBaseContext(), "checkSelfPermission", Aps.f5354G);
        } catch (Throwable unused) {
            iM5055b = 0;
        }
        return iM5055b == 0;
    }

    @SuppressLint({"NewApi"})
    /* renamed from: h */
    public static boolean m5151h(Context context) {
        boolean zIsWifiEnabled;
        if (context == null) {
            return true;
        }
        if (f5795a == null) {
            f5795a = (WifiManager) m5108a(context, UtilityImpl.NET_TYPE_WIFI);
        }
        try {
            zIsWifiEnabled = f5795a.isWifiEnabled();
        } catch (Throwable unused) {
            zIsWifiEnabled = false;
        }
        if (zIsWifiEnabled || m5137c() <= 17) {
            return zIsWifiEnabled;
        }
        try {
            return RequestConstant.TRUE.equals(String.valueOf(Reflect.m5052a(f5795a, "isScanAlwaysAvailable", new Object[0])));
        } catch (Throwable unused2) {
            return zIsWifiEnabled;
        }
    }

    /* renamed from: i */
    public static String m5152i(Context context) {
        NetworkInfo networkInfoM5138c = m5138c(context);
        if (networkInfoM5138c == null || !networkInfoM5138c.isConnectedOrConnecting()) {
            return "DISCONNECTED";
        }
        int type = networkInfoM5138c.getType();
        if (type == 1) {
            return "WIFI";
        }
        if (type != 0) {
            return GrsBaseInfo.CountryCodeSource.UNKNOWN;
        }
        String subtypeName = networkInfoM5138c.getSubtypeName();
        switch (networkInfoM5138c.getSubtype()) {
            case 1:
            case 2:
            case 4:
            case 7:
            case 11:
            case 16:
                break;
            case 3:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 12:
            case 14:
            case 15:
            case 17:
                return DeviceUtils.NETWORK_CLASS_3_G;
            case 13:
                return DeviceUtils.NETWORK_CLASS_4_G;
            default:
                if (!"GSM".equalsIgnoreCase(subtypeName)) {
                    return ("TD-SCDMA".equalsIgnoreCase(subtypeName) || "WCDMA".equalsIgnoreCase(subtypeName) || "CDMA2000".equalsIgnoreCase(subtypeName)) ? DeviceUtils.NETWORK_CLASS_3_G : subtypeName;
                }
                break;
        }
        return DeviceUtils.NETWORK_CLASS_2_G;
    }

    /* renamed from: j */
    public static String m5153j(Context context) {
        String strM1086t = DeviceInfo.m1086t(context);
        if (TextUtils.isEmpty(strM1086t) || strM1086t.equals("00:00:00:00:00:00")) {
            strM1086t = C1840ev.m5091a(context);
        }
        String str = TextUtils.isEmpty(strM1086t) ? "00:00:00:00:00:00" : strM1086t;
        if (!f5798d) {
            C1840ev.m5100b(context, str);
            f5798d = true;
        }
        return str;
    }

    /* renamed from: k */
    public static boolean m5154k(Context context) {
        return Build.VERSION.SDK_INT >= 28 && context.getApplicationInfo().targetSdkVersion >= 28;
    }

    /* renamed from: l */
    public static boolean m5155l(Context context) {
        ServiceInfo serviceInfo;
        try {
            serviceInfo = context.getPackageManager().getServiceInfo(new ComponentName(context, "com.amap.api.location.APSService"), 128);
        } catch (Throwable unused) {
            serviceInfo = null;
        }
        return serviceInfo != null;
    }

    /* renamed from: m */
    public static String m5156m(Context context) {
        if (f5799e == null) {
            f5799e = C1823ee.m4871a("MD5", AppInfo.m1638d(context));
        }
        return f5799e;
    }
}
