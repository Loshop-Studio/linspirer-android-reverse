package com.amap.apis.utils.core;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.NetworkRequest;
import android.net.Uri;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Environment;
import android.os.Looper;
import android.os.storage.StorageManager;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Xml;
import com.alibaba.sdk.android.tbrest.utils.Base64;
import com.huawei.hem.C0865c1;
import com.huawei.hem.CompilerOutline;
import com.huawei.hem.C0994h1;
import com.huawei.hem.C1094l1;
import com.huawei.hem.ConstConfig;
import com.huawei.hem.C1170o1;
import com.huawei.hem.C1219q0;
import com.loc.AMapNetworkRequest;
import com.loc.ThreadTask;
import com.loc.BaseNetManager;
import com.loc.ThreadPool;
import com.loc.BasicLogHandler;
import com.taobao.accs.utl.UtilityImpl;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.RandomAccessFile;
import java.lang.reflect.Array;
import java.lang.reflect.Method;
import java.net.NetworkInterface;
import java.security.MessageDigest;
import java.util.Collections;
import java.util.Map;
import java.util.UUID;
import org.android.agoo.common.AgooConstants;
import org.android.agoo.message.MessageService;
import org.xmlpull.v1.XmlPullParser;

/* loaded from: classes.dex */
public final class DeviceInfo {

    /* renamed from: A */
    public static boolean f1590A = false;

    /* renamed from: B */
    public static long f1591B = 0;

    /* renamed from: C */
    public static int f1592C = 0;

    /* renamed from: D */
    public static String f1593D = null;

    /* renamed from: E */
    public static String f1594E = "";

    /* renamed from: F */
    public static boolean f1595F = true;

    /* renamed from: G */
    public static boolean f1596G = false;

    /* renamed from: H */
    public static String f1597H = "";

    /* renamed from: I */
    public static boolean f1598I = false;

    /* renamed from: J */
    public static int f1599J = -1;

    /* renamed from: K */
    public static boolean f1600K = false;

    /* renamed from: L */
    public static int f1601L = -1;

    /* renamed from: M */
    public static boolean f1602M = false;

    /* renamed from: N */
    public static C0624d f1603N = null;

    /* renamed from: a */
    public static String f1604a = "";

    /* renamed from: b */
    public static String f1605b = "";

    /* renamed from: c */
    public static volatile boolean f1606c = true;

    /* renamed from: d */
    public static String f1607d = null;

    /* renamed from: e */
    public static InterfaceC0623c f1608e = null;

    /* renamed from: f */
    public static volatile boolean f1609f = false;

    /* renamed from: g */
    public static String f1610g = "";

    /* renamed from: h */
    public static boolean f1611h = false;

    /* renamed from: i */
    public static boolean f1612i = false;

    /* renamed from: j */
    public static boolean f1613j = false;

    /* renamed from: k */
    public static String f1614k = "";

    /* renamed from: l */
    public static String f1615l = "";

    /* renamed from: m */
    public static boolean f1616m = false;

    /* renamed from: n */
    public static boolean f1617n = false;

    /* renamed from: o */
    public static String f1618o = "";

    /* renamed from: p */
    public static boolean f1619p = false;

    /* renamed from: q */
    public static String f1620q = "";

    /* renamed from: r */
    public static boolean f1621r = false;

    /* renamed from: s */
    public static String f1622s = "";

    /* renamed from: t */
    public static String f1623t = "";

    /* renamed from: u */
    public static String f1624u = "";

    /* renamed from: v */
    public static int f1625v = -1;

    /* renamed from: w */
    public static String f1626w = "";

    /* renamed from: x */
    public static boolean f1627x = false;

    /* renamed from: y */
    public static String f1628y = "";

    /* renamed from: z */
    public static boolean f1629z = false;

    public static class NetworkChangeReceiver extends BroadcastReceiver {
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (C1094l1.m2251t("WYW5kcm9pZC5uZXQuY29ubi5DT05ORUNUSVZJVFlfQ0hBTkdF").equals(intent.getAction())) {
                DeviceInfo.m1082p();
            }
        }
    }

    /* renamed from: com.amap.apis.utils.core.DeviceInfo$a */
    public static class C0621a extends ThreadTask {

        /* renamed from: a */
        public final /* synthetic */ Context f1630a;

        public C0621a(Context context) {
            this.f1630a = context;
        }

        @Override // com.loc.AbstractRunnableC1754bq
        /* renamed from: a */
        public final void mo1093a() {
            try {
                Map<String, String> mapMo1098b = DeviceInfo.f1608e.mo1098b();
                String strMo1097a = DeviceInfo.f1608e.mo1097a(DeviceInfo.m1083q(this.f1630a), "", "", DeviceInfo.m1092z(this.f1630a));
                if (TextUtils.isEmpty(strMo1097a)) {
                    return;
                }
                BaseNetManager.m4058a();
                String strMo1096a = DeviceInfo.f1608e.mo1096a(this.f1630a, new String(BaseNetManager.m4059a(DeviceInfo.f1608e.mo1094a(strMo1097a.getBytes(), mapMo1098b)).f5048a));
                if (TextUtils.isEmpty(strMo1096a)) {
                    return;
                }
                DeviceInfo.f1605b = strMo1096a;
            } catch (Throwable unused) {
            }
        }
    }

    /* renamed from: com.amap.apis.utils.core.DeviceInfo$b */
    public static class C0622b extends ThreadTask {

        /* renamed from: a */
        public final /* synthetic */ Context f1631a;

        public C0622b(Context context) {
            this.f1631a = context;
        }

        @Override // com.loc.AbstractRunnableC1754bq
        /* renamed from: a */
        public final void mo1093a() {
            DeviceInfo.m1068b(this.f1631a);
            DeviceInfo.f1612i = true;
        }
    }

    /* renamed from: com.amap.apis.utils.core.DeviceInfo$c */
    public interface InterfaceC0623c {
        /* renamed from: a */
        AMapNetworkRequest mo1094a(byte[] bArr, Map<String, String> map);

        /* renamed from: a */
        String mo1095a();

        /* renamed from: a */
        String mo1096a(Context context, String str);

        /* renamed from: a */
        String mo1097a(String str, String str2, String str3, String str4);

        /* renamed from: b */
        Map<String, String> mo1098b();
    }

    /* renamed from: com.amap.apis.utils.core.DeviceInfo$d */
    public static class C0624d {

        /* renamed from: a */
        public static NetworkChangeReceiver f1632a;

        /* renamed from: b */
        public static ConnectivityManager f1633b;

        /* renamed from: c */
        public static NetworkRequest f1634c;

        /* renamed from: d */
        public static ConnectivityManager.NetworkCallback f1635d;
    }

    /* renamed from: com.amap.apis.utils.core.DeviceInfo$e */
    public static class ServiceConnectionC0625e implements ServiceConnection {

        /* renamed from: c */
        public static String f1636c;

        /* renamed from: a */
        public Context f1637a;

        /* renamed from: b */
        public int f1638b;

        public ServiceConnectionC0625e(Context context, int i) {
            this.f1637a = context;
            this.f1638b = i;
        }

        /* renamed from: a */
        public final String m1099a() {
            try {
                if (!TextUtils.isEmpty(f1636c)) {
                    return f1636c;
                }
                byte[] bArrDigest = MessageDigest.getInstance(C1094l1.m2251t("IU0hBMQ")).digest(this.f1637a.getPackageManager().getPackageInfo(this.f1637a.getPackageName(), 64).signatures[0].toByteArray());
                StringBuffer stringBuffer = new StringBuffer();
                for (byte b : bArrDigest) {
                    stringBuffer.append(Integer.toHexString((b & Base64.EQUALS_SIGN_ENC) | 256).substring(1, 3));
                }
                String string = stringBuffer.toString();
                if (!TextUtils.isEmpty(string)) {
                    f1636c = string;
                }
                return string;
            } catch (Throwable unused) {
                return "";
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x004e A[Catch: all -> 0x0061, TRY_LEAVE, TryCatch #0 {all -> 0x0061, blocks: (B:3:0x0008, B:16:0x004e, B:10:0x0017, B:11:0x003a, B:12:0x0040, B:13:0x0044), top: B:26:0x0008 }] */
        @Override // android.content.ServiceConnection
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void onServiceConnected(android.content.ComponentName r6, android.os.IBinder r7) {
            /*
                r5 = this;
                android.os.Parcel r6 = android.os.Parcel.obtain()
                android.os.Parcel r0 = android.os.Parcel.obtain()
                int r1 = r5.f1638b     // Catch: java.lang.Throwable -> L61
                r2 = 2
                r3 = 0
                r4 = 1
                if (r1 == r2) goto L44
                r2 = 4
                if (r1 == r2) goto L3a
                r2 = 5
                if (r1 == r2) goto L17
                r1 = r3
                goto L4c
            L17:
                java.lang.String r1 = "KY29tLmhleXRhcC5vcGVuaWQuSU9wZW5JRA"
                java.lang.String r1 = com.huawei.hem.C1094l1.m2251t(r1)     // Catch: java.lang.Throwable -> L61
                r6.writeInterfaceToken(r1)     // Catch: java.lang.Throwable -> L61
                android.content.Context r1 = r5.f1637a     // Catch: java.lang.Throwable -> L61
                java.lang.String r1 = r1.getPackageName()     // Catch: java.lang.Throwable -> L61
                r6.writeString(r1)     // Catch: java.lang.Throwable -> L61
                java.lang.String r1 = r5.m1099a()     // Catch: java.lang.Throwable -> L61
                r6.writeString(r1)     // Catch: java.lang.Throwable -> L61
                java.lang.String r1 = "IT1VJRA"
                java.lang.String r1 = com.huawei.hem.C1094l1.m2251t(r1)     // Catch: java.lang.Throwable -> L61
                r6.writeString(r1)     // Catch: java.lang.Throwable -> L61
                goto L4b
            L3a:
                java.lang.String r1 = "UY29tLnNhbXN1bmcuYW5kcm9pZC5kZXZpY2VpZHNlcnZpY2UuSURldmljZUlkU2VydmljZQ"
                java.lang.String r1 = com.huawei.hem.C1094l1.m2251t(r1)     // Catch: java.lang.Throwable -> L61
            L40:
                r6.writeInterfaceToken(r1)     // Catch: java.lang.Throwable -> L61
                goto L4b
            L44:
                java.lang.String r1 = "UY29tLnVvZGlzLm9wZW5kZXZpY2UuYWlkbC5PcGVuRGV2aWNlSWRlbnRpZmllclNlcnZpY2U"
                java.lang.String r1 = com.huawei.hem.C1094l1.m2251t(r1)     // Catch: java.lang.Throwable -> L61
                goto L40
            L4b:
                r1 = r4
            L4c:
                if (r1 == 0) goto L5a
                r7.transact(r4, r6, r0, r3)     // Catch: java.lang.Throwable -> L61
                r0.readException()     // Catch: java.lang.Throwable -> L61
                java.lang.String r7 = r0.readString()     // Catch: java.lang.Throwable -> L61
                com.amap.apis.utils.core.DeviceInfo.f1610g = r7     // Catch: java.lang.Throwable -> L61
            L5a:
                r0.recycle()
                r6.recycle()
                return
            L61:
                r7 = move-exception
                java.lang.String r1 = "oac"
                int r2 = r5.f1638b     // Catch: java.lang.Throwable -> L74
                java.lang.String r2 = java.lang.String.valueOf(r2)     // Catch: java.lang.Throwable -> L74
                com.loc.C1859t.m5312a(r7, r1, r2)     // Catch: java.lang.Throwable -> L74
                r0.recycle()
                r6.recycle()
                return
            L74:
                r7 = move-exception
                r0.recycle()
                r6.recycle()
                throw r7
            */
            throw new UnsupportedOperationException("Method not decompiled: com.amap.apis.utils.core.DeviceInfo.ServiceConnectionC0625e.onServiceConnected(android.content.ComponentName, android.os.IBinder):void");
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
        }
    }

    /* renamed from: a */
    public static String m1067a(Context context) {
        FileInputStream fileInputStream = null;
        try {
            if (C1094l1.m2242k(context, "android.permission.READ_EXTERNAL_STORAGE") && "mounted".equals(Environment.getExternalStorageState())) {
                File file = new File(Environment.getExternalStorageDirectory().getAbsolutePath() + "/.UTSystemConfig/Global/Alvin2.xml");
                XmlPullParser xmlPullParserNewPullParser = Xml.newPullParser();
                FileInputStream fileInputStream2 = new FileInputStream(file);
                try {
                    xmlPullParserNewPullParser.setInput(fileInputStream2, "utf-8");
                    boolean z = false;
                    for (int eventType = xmlPullParserNewPullParser.getEventType(); 1 != eventType; eventType = xmlPullParserNewPullParser.next()) {
                        if (eventType != 2) {
                            if (eventType == 3) {
                                z = false;
                            } else if (eventType == 4 && z) {
                                String text = xmlPullParserNewPullParser.getText();
                                try {
                                    fileInputStream2.close();
                                } catch (Throwable unused) {
                                }
                                return text;
                            }
                        } else if (xmlPullParserNewPullParser.getAttributeCount() > 0) {
                            int attributeCount = xmlPullParserNewPullParser.getAttributeCount();
                            for (int i = 0; i < attributeCount; i++) {
                                String attributeValue = xmlPullParserNewPullParser.getAttributeValue(i);
                                if ("UTDID2".equals(attributeValue) || "UTDID".equals(attributeValue)) {
                                    z = true;
                                }
                            }
                        }
                    }
                    fileInputStream = fileInputStream2;
                } catch (Throwable unused2) {
                    fileInputStream = fileInputStream2;
                    if (fileInputStream == null) {
                        return "";
                    }
                    fileInputStream.close();
                    return "";
                }
            }
            if (fileInputStream == null) {
                return "";
            }
        } catch (Throwable unused3) {
        }
        try {
            fileInputStream.close();
            return "";
        } catch (Throwable unused4) {
            return "";
        }
    }

    /* renamed from: b */
    public static String m1068b(Context context) {
        if (C1094l1.m2251t("IeGlhb21p").equalsIgnoreCase(Build.MANUFACTURER)) {
            try {
                Class<?> cls = Class.forName(C1094l1.m2251t("WY29tLmFuZHJvaWQuaWQuaW1wbC5JZFByb3ZpZGVySW1wbA"));
                Object objInvoke = cls.getMethod(C1094l1.m2251t("MZ2V0T0FJRA"), Context.class).invoke(cls.newInstance(), context);
                if (objInvoke != null) {
                    String str = (String) objInvoke;
                    f1610g = str;
                    return str;
                }
            } catch (Throwable th) {
                BasicLogHandler.m5312a(th, "oa", "xm");
                f1611h = true;
            }
            return f1610g;
        }
        if (!C1094l1.m2251t("Idml2bw").equalsIgnoreCase(Build.MANUFACTURER)) {
            if (C1094l1.m2251t("IaHVhd2Vp").equalsIgnoreCase(Build.MANUFACTURER)) {
                return m1079m(context, 2);
            }
            if (C1094l1.m2251t("Mc2Ftc3VuZw").equalsIgnoreCase(Build.MANUFACTURER)) {
                return m1079m(context, 4);
            }
            if (C1094l1.m2251t("IT1BQTw").equalsIgnoreCase(Build.MANUFACTURER) || C1094l1.m2251t("MT25lUGx1cw").equalsIgnoreCase(Build.MANUFACTURER)) {
                return m1079m(context, 5);
            }
            f1611h = true;
            return f1610g;
        }
        try {
            Cursor cursorQuery = context.getContentResolver().query(Uri.parse(C1094l1.m2251t("QY29udGVudDovL2NvbS52aXZvLnZtcy5JZFByb3ZpZGVyL0lkZW50aWZpZXJJZC9PQUlE")), null, null, null, null);
            if (cursorQuery != null) {
                while (cursorQuery.moveToNext()) {
                    int columnCount = cursorQuery.getColumnCount();
                    int i = 0;
                    while (true) {
                        if (i >= columnCount) {
                            break;
                        }
                        if (C1094l1.m2251t("IdmFsdWU").equals(cursorQuery.getColumnName(i))) {
                            f1610g = cursorQuery.getString(i);
                            break;
                        }
                        i++;
                    }
                }
                cursorQuery.close();
            }
        } catch (Throwable th2) {
            f1611h = true;
            BasicLogHandler.m5312a(th2, "oa", AgooConstants.MESSAGE_SYSTEM_SOURCE_VIVO);
        }
        return f1610g;
    }

    /* renamed from: c */
    public static String m1069c(Context context) {
        try {
            for (NetworkInterface networkInterface : Collections.list(NetworkInterface.getNetworkInterfaces())) {
                if (networkInterface.getName().equalsIgnoreCase("wlan0")) {
                    byte[] hardwareAddress = (Build.VERSION.SDK_INT < 30 || context.getApplicationInfo().targetSdkVersion < 30) ? networkInterface.getHardwareAddress() : null;
                    if (hardwareAddress == null) {
                        return "";
                    }
                    StringBuilder sb = new StringBuilder();
                    for (byte b : hardwareAddress) {
                        String upperCase = Integer.toHexString(b & Base64.EQUALS_SIGN_ENC).toUpperCase();
                        if (upperCase.length() == 1) {
                            sb.append(MessageService.MSG_DB_READY_REPORT);
                        }
                        sb.append(upperCase);
                        sb.append(":");
                    }
                    if (sb.length() > 0) {
                        sb.deleteCharAt(sb.length() - 1);
                    }
                    return sb.toString();
                }
            }
        } catch (Exception unused) {
        }
        return "";
    }

    /* renamed from: d */
    public static String m1070d(Context context) {
        if (!TextUtils.isEmpty(f1628y)) {
            return f1628y;
        }
        try {
            String strM2426h = C1170o1.m2426h(context, "open_common", "a1", "");
            if (TextUtils.isEmpty(strM2426h)) {
                f1628y = "amap" + UUID.randomUUID().toString().replace("_", "").toLowerCase();
                SharedPreferences.Editor editorM2420b = C1170o1.m2420b(context, "open_common");
                String strM2247p = C1094l1.m2247p(f1628y);
                if (editorM2420b != null) {
                    try {
                        if (!TextUtils.isEmpty("a1") && !TextUtils.isEmpty(strM2247p)) {
                            editorM2420b.putString("a1", strM2247p);
                        }
                    } catch (Throwable th) {
                        BasicLogHandler.m5312a(th, "sp", "ps");
                    }
                }
                C1170o1.m2421c(editorM2420b);
            } else {
                f1628y = C1094l1.m2251t(strM2426h);
            }
        } catch (Throwable unused) {
        }
        return f1628y;
    }

    /* renamed from: e */
    public static String m1071e(Context context) {
        int simState;
        if (Build.VERSION.SDK_INT >= 29) {
            return "";
        }
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        boolean z = (telephonyManager == null || (simState = telephonyManager.getSimState()) == 0 || simState == 1) ? false : true;
        if (f1595F != z) {
            if (z) {
                f1594E = "";
                f1596G = false;
            }
            f1595F = z;
        }
        String str = f1594E;
        if ((str == null || "".equals(str)) && !f1596G) {
            if (!f1595F) {
                return "";
            }
            if (!m1080n(context, C1094l1.m2251t("WYW5kcm9pZC5wZXJtaXNzaW9uLlJFQURfUEhPTkVfU1RBVEU="))) {
                return f1594E;
            }
            TelephonyManager telephonyManager2 = (TelephonyManager) context.getSystemService("phone");
            if (telephonyManager2 == null) {
                return "";
            }
            Method methodM2237f = C1094l1.m2237f(telephonyManager2.getClass(), "UZ2V0U3Vic2NyaWJlcklk", new Class[0]);
            if (methodM2237f != null) {
                f1594E = (String) methodM2237f.invoke(telephonyManager2, new Object[0]);
            }
            if (f1594E == null) {
                f1594E = "";
            }
            f1596G = true;
            return f1594E;
        }
        return f1594E;
    }

    /* renamed from: f */
    public static String m1072f(Context context) {
        if (f1598I) {
            return f1597H;
        }
        m1077k(context);
        if (!m1080n(context, C1094l1.m2251t("WYW5kcm9pZC5wZXJtaXNzaW9uLlJFQURfUEhPTkVfU1RBVEU="))) {
            return f1597H;
        }
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        if (telephonyManager == null) {
            return f1597H;
        }
        String simOperatorName = telephonyManager.getSimOperatorName();
        f1597H = simOperatorName;
        if (TextUtils.isEmpty(simOperatorName)) {
            f1597H = telephonyManager.getNetworkOperatorName();
        }
        f1598I = true;
        return f1597H;
    }

    /* renamed from: g */
    public static int m1073g(Context context) {
        if (f1600K) {
            return f1599J;
        }
        m1077k(context);
        if (context == null || !m1080n(context, C1094l1.m2251t("AYW5kcm9pZC5wZXJtaXNzaW9uLkFDQ0VTU19ORVRXT1JLX1NUQVRF"))) {
            return f1599J;
        }
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager == null) {
            return f1599J;
        }
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        if (activeNetworkInfo == null) {
            f1600K = true;
            return f1599J;
        }
        int type = activeNetworkInfo.getType();
        f1599J = type;
        f1600K = true;
        return type;
    }

    /* renamed from: h */
    public static int m1074h(Context context) {
        if (f1602M) {
            return f1601L;
        }
        m1077k(context);
        if (!m1080n(context, C1094l1.m2251t("WYW5kcm9pZC5wZXJtaXNzaW9uLlJFQURfUEhPTkVfU1RBVEU="))) {
            return f1601L;
        }
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        if (telephonyManager == null) {
            return f1601L;
        }
        int networkType = telephonyManager.getNetworkType();
        f1601L = networkType;
        f1602M = true;
        return networkType;
    }

    /* renamed from: i */
    public static String m1075i(Context context) {
        String strM1076j;
        if (!f1606c) {
            return "";
        }
        String string = null;
        try {
            strM1076j = m1076j(context);
        } catch (Throwable unused) {
            strM1076j = "";
        }
        try {
            string = !TextUtils.isEmpty(strM1076j) ? strM1076j : context.getSharedPreferences(C1094l1.m2251t("SU2hhcmVkUHJlZmVyZW5jZUFkaXU"), 0).getString(C1219q0.m2507c(C1094l1.m2251t("RYW1hcF9kZXZpY2VfYWRpdQ")), "");
        } catch (Throwable unused2) {
        }
        if (TextUtils.isEmpty(string)) {
            f1606c = false;
            return "";
        }
        try {
            return new String(C0994h1.m1932c(C1094l1.m2251t("HYW1hcGFkaXVhbWFwYWRpdWFtYXBhZGl1YW1hcGFkaXU").getBytes("UTF-8"), C0994h1.m1934e(string), C1094l1.m2251t("MAAAAAAAAAAAAAAAAAAAAAA").getBytes("UTF-8")), "UTF-8");
        } catch (Throwable unused3) {
            f1606c = false;
            return "";
        }
    }

    /* renamed from: j */
    public static String m1076j(Context context) {
        String str;
        RandomAccessFile randomAccessFile;
        ByteArrayOutputStream byteArrayOutputStream;
        String str2;
        String[] strArrSplit;
        String strM2507c = C1219q0.m2507c(C1094l1.m2251t("LYW1hcF9kZXZpY2VfYWRpdQ"));
        ByteArrayOutputStream byteArrayOutputStream2 = null;
        try {
            StorageManager storageManager = (StorageManager) context.getSystemService("storage");
            Class<?> cls = Class.forName(C1094l1.m2251t("SYW5kcm9pZC5vcy5zdG9yYWdlLlN0b3JhZ2VWb2x1bWU"));
            Method method = storageManager.getClass().getMethod(C1094l1.m2251t("MZ2V0Vm9sdW1lTGlzdA"), new Class[0]);
            Method method2 = cls.getMethod(C1094l1.m2251t("FZ2V0UGF0aA"), new Class[0]);
            Method method3 = cls.getMethod(C1094l1.m2251t("DaXNSZW1vdmFibGU"), new Class[0]);
            Object objInvoke = method.invoke(storageManager, new Object[0]);
            int length = Array.getLength(objInvoke);
            for (int i = 0; i < length; i++) {
                Object obj = Array.get(objInvoke, i);
                str = (String) method2.invoke(obj, new Object[0]);
                if (!((Boolean) method3.invoke(obj, new Object[0])).booleanValue()) {
                    break;
                }
            }
        } catch (Throwable unused) {
        }
        str = null;
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        StringBuilder sbM1765j = CompilerOutline.m1765j(str);
        sbM1765j.append(File.separator);
        sbM1765j.append(C1094l1.m2251t("KYmFja3Vwcw"));
        File file = new File(sbM1765j.toString(), C1094l1.m2251t("MLmFkaXU"));
        if (file.exists() && file.canRead()) {
            try {
                if (file.length() == 0) {
                    file.delete();
                    return "";
                }
                try {
                    randomAccessFile = new RandomAccessFile(file, "r");
                    try {
                        byte[] bArr = new byte[1024];
                        byteArrayOutputStream = new ByteArrayOutputStream();
                        while (true) {
                            try {
                                int i2 = randomAccessFile.read(bArr);
                                if (i2 == -1) {
                                    break;
                                }
                                byteArrayOutputStream.write(bArr, 0, i2);
                            } catch (Throwable unused2) {
                                byteArrayOutputStream2 = byteArrayOutputStream;
                                if (byteArrayOutputStream2 != null) {
                                    try {
                                        byteArrayOutputStream2.close();
                                    } catch (Throwable unused3) {
                                    }
                                }
                                if (randomAccessFile != null) {
                                    randomAccessFile.close();
                                }
                                return "";
                            }
                        }
                        str2 = new String(byteArrayOutputStream.toByteArray(), "UTF-8");
                    } catch (Throwable unused4) {
                    }
                } catch (Throwable unused5) {
                    randomAccessFile = null;
                }
                if (!TextUtils.isEmpty(str2) && str2.contains(C1094l1.m2251t("SIw")) && (strArrSplit = str2.split(C1094l1.m2251t("SIw"))) != null && strArrSplit.length == 2 && TextUtils.equals(strM2507c, strArrSplit[0])) {
                    String str3 = strArrSplit[1];
                    try {
                        byteArrayOutputStream.close();
                    } catch (Throwable unused6) {
                    }
                    try {
                        randomAccessFile.close();
                    } catch (Throwable unused7) {
                    }
                    return str3;
                }
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable unused8) {
                }
                randomAccessFile.close();
            } catch (Throwable unused9) {
            }
        }
        return "";
    }

    /* renamed from: k */
    public static C0624d m1077k(Context context) {
        if (f1603N == null) {
            if (context == null) {
                return null;
            }
            C0624d c0624d = new C0624d();
            f1603N = c0624d;
            if (Build.VERSION.SDK_INT < 24) {
                if (C0624d.f1632a == null) {
                    C0624d.f1632a = new NetworkChangeReceiver();
                    IntentFilter intentFilter = new IntentFilter();
                    intentFilter.addAction(C1094l1.m2251t("WYW5kcm9pZC5uZXQuY29ubi5DT05ORUNUSVZJVFlfQ0hBTkdF"));
                    context.registerReceiver(C0624d.f1632a, intentFilter);
                }
            } else if (m1080n(context, C1094l1.m2251t("AYW5kcm9pZC5wZXJtaXNzaW9uLkFDQ0VTU19ORVRXT1JLX1NUQVRF")) && C0624d.f1633b == null) {
                ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
                C0624d.f1633b = connectivityManager;
                if (connectivityManager != null) {
                    C0624d.f1634c = new NetworkRequest.Builder().addCapability(0).addCapability(1).build();
                    C0865c1 c0865c1 = new C0865c1(c0624d);
                    C0624d.f1635d = c0865c1;
                    C0624d.f1633b.registerNetworkCallback(C0624d.f1634c, c0865c1);
                }
            }
        }
        return f1603N;
    }

    /* renamed from: l */
    public static String m1078l(Context context) {
        if (!TextUtils.isEmpty(f1605b)) {
            return f1605b;
        }
        if (context == null) {
            return "";
        }
        String strM1075i = m1075i(context);
        f1605b = strM1075i;
        if (!TextUtils.isEmpty(strM1075i)) {
            return f1605b;
        }
        if (f1608e == null || f1609f) {
            return "";
        }
        f1609f = true;
        ThreadPool.m4236a().m4242b(new C0621a(context));
        return "";
    }

    /* renamed from: m */
    public static String m1079m(Context context, int i) {
        try {
            Intent intent = new Intent();
            if (i == 2) {
                intent.setAction(C1094l1.m2251t("WY29tLnVvZGlzLm9wZW5kZXZpY2UuT1BFTklEU19TRVJWSUNF"));
                intent.setPackage(C1094l1.m2251t("UY29tLmh1YXdlaS5od2lk"));
            } else if (i == 4) {
                intent.setClassName(C1094l1.m2251t("WY29tLnNhbXN1bmcuYW5kcm9pZC5kZXZpY2VpZHNlcnZpY2U"), C1094l1.m2251t("QY29tLnNhbXN1bmcuYW5kcm9pZC5kZXZpY2VpZHNlcnZpY2UuRGV2aWNlSWRTZXJ2aWNl"));
            } else {
                if (i != 5) {
                    f1611h = true;
                    return f1610g;
                }
                intent.setClassName(C1094l1.m2251t("YY29tLmhleXRhcC5vcGVuaWQ"), C1094l1.m2251t("SY29tLmhleXRhcC5vcGVuaWQuSWRlbnRpZnlTZXJ2aWNl"));
                intent.setAction(C1094l1.m2251t("EYWN0aW9uLmNvbS5oZXl0YXAub3BlbmlkLk9QRU5fSURfU0VSVklDRQ"));
            }
            ServiceConnectionC0625e serviceConnectionC0625e = new ServiceConnectionC0625e(context, i);
            if (context.bindService(intent, serviceConnectionC0625e, 1)) {
                int i2 = 0;
                while (i2 < 100 && TextUtils.isEmpty(f1610g)) {
                    i2++;
                    Thread.sleep(15L);
                }
                context.unbindService(serviceConnectionC0625e);
            }
            return f1610g;
        } catch (Throwable th) {
            BasicLogHandler.m5312a(th, "oa", String.valueOf(i));
            f1611h = true;
            return f1610g;
        }
    }

    /* renamed from: n */
    public static boolean m1080n(Context context, String str) {
        return context != null && context.checkCallingOrSelfPermission(str) == 0;
    }

    /* renamed from: o */
    public static String m1081o(Context context) {
        if (f1611h) {
            return "";
        }
        if (TextUtils.isEmpty(f1610g) && !f1612i) {
            if (Looper.getMainLooper() == Looper.myLooper()) {
                ThreadPool.m4236a().m4242b(new C0622b(context));
                return f1610g;
            }
            f1612i = true;
            return m1068b(context);
        }
        return f1610g;
    }

    /* renamed from: p */
    public static void m1082p() {
        f1599J = -1;
        f1600K = false;
        f1601L = -1;
        f1602M = false;
        f1597H = "";
        f1598I = false;
        f1620q = "";
        f1621r = false;
    }

    /* renamed from: q */
    public static String m1083q(Context context) {
        String strM2426h;
        if (f1613j) {
            String str = f1604a;
            return str == null ? "" : str;
        }
        if (f1604a != null && !"".equals(f1604a)) {
            return f1604a;
        }
        if (m1080n(context, C1094l1.m2251t("WYW5kcm9pZC5wZXJtaXNzaW9uLldSSVRFX1NFVFRJTkdT"))) {
            f1604a = Settings.System.getString(context.getContentResolver(), "mqBRboGZkQPcAkyk");
        }
        if (!TextUtils.isEmpty(f1604a)) {
            f1613j = true;
            return f1604a;
        }
        try {
            strM2426h = C1170o1.m2426h(context, "Alvin2", "UTDID2", "");
            if (TextUtils.isEmpty(strM2426h)) {
                strM2426h = C1170o1.m2426h(context, "Alvin2", "UTDID", "");
            }
        } catch (Throwable unused) {
            strM2426h = "";
        }
        try {
            f1604a = strM2426h;
            if (!TextUtils.isEmpty(strM2426h)) {
                f1613j = true;
                return f1604a;
            }
        } catch (Throwable unused2) {
        }
        try {
            f1604a = m1067a(context);
            f1613j = true;
        } catch (Throwable unused3) {
        }
        String str2 = f1604a;
        return str2 == null ? "" : str2;
    }

    /* renamed from: r */
    public static String m1084r(Context context) {
        if (Build.VERSION.SDK_INT >= 29) {
            return "";
        }
        if (TextUtils.isEmpty(f1615l) && !f1616m) {
            if (!m1080n(context, C1094l1.m2251t("WYW5kcm9pZC5wZXJtaXNzaW9uLlJFQURfUEhPTkVfU1RBVEU="))) {
                return "";
            }
            if (Build.VERSION.SDK_INT >= 26) {
                String str = (String) C1094l1.m2237f(Build.class, "MZ2V0U2VyaWFs", new Class[0]).invoke(Build.class, new Object[0]);
                f1616m = true;
                return str;
            }
            f1615l = Build.SERIAL;
            f1616m = true;
            String str2 = f1615l;
            return str2 == null ? "" : str2;
        }
        return f1615l;
    }

    /* renamed from: s */
    public static String m1085s(Context context) {
        if (TextUtils.isEmpty(f1614k) && !f1617n) {
            try {
                String string = Settings.Secure.getString(context.getContentResolver(), C1094l1.m2251t(new String(ConstConfig.m2346c(13))));
                f1614k = string;
                f1617n = true;
                return string == null ? "" : string;
            } catch (Throwable unused) {
                return f1614k;
            }
        }
        return f1614k;
    }

    /* renamed from: t */
    public static String m1086t(Context context) {
        if (Build.VERSION.SDK_INT < 30 || context.getApplicationInfo().targetSdkVersion < 30) {
            try {
                if ((f1618o == null || "".equals(f1618o)) && !f1619p && m1080n(context, C1094l1.m2251t("WYW5kcm9pZC5wZXJtaXNzaW9uLkFDQ0VTU19XSUZJX1NUQVRF"))) {
                    WifiManager wifiManager = (WifiManager) context.getSystemService(UtilityImpl.NET_TYPE_WIFI);
                    if (wifiManager == null) {
                        return "";
                    }
                    f1618o = wifiManager.getConnectionInfo().getMacAddress();
                    if (C1094l1.m2251t("YMDI6MDA6MDA6MDA6MDA6MDA").equals(f1618o) || C1094l1.m2251t("YMDA6MDA6MDA6MDA6MDA6MDA").equals(f1618o)) {
                        f1618o = m1069c(context);
                    }
                    f1619p = true;
                }
                return f1618o;
            } catch (Throwable unused) {
            }
        }
        return f1618o;
    }

    /* renamed from: u */
    public static int m1087u(Context context) {
        try {
            return m1073g(context);
        } catch (Throwable unused) {
            return -1;
        }
    }

    /* renamed from: v */
    public static NetworkInfo m1088v(Context context) {
        ConnectivityManager connectivityManager;
        if (m1080n(context, C1094l1.m2251t("AYW5kcm9pZC5wZXJtaXNzaW9uLkFDQ0VTU19ORVRXT1JLX1NUQVRF")) && (connectivityManager = (ConnectivityManager) context.getSystemService("connectivity")) != null) {
            return connectivityManager.getActiveNetworkInfo();
        }
        return null;
    }

    /* renamed from: w */
    public static String m1089w(Context context) {
        ConnectivityManager connectivityManager;
        NetworkInfo activeNetworkInfo;
        try {
            return (!m1080n(context, C1094l1.m2251t("AYW5kcm9pZC5wZXJtaXNzaW9uLkFDQ0VTU19ORVRXT1JLX1NUQVRF")) || (connectivityManager = (ConnectivityManager) context.getSystemService("connectivity")) == null || (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null) ? "" : activeNetworkInfo.getTypeName();
        } catch (Throwable unused) {
            return "";
        }
    }

    /* renamed from: x */
    public static String m1090x(Context context) {
        try {
            String strM1091y = m1091y(context);
            try {
                if (TextUtils.isEmpty(strM1091y)) {
                    strM1091y = m1078l(context);
                }
                if (TextUtils.isEmpty(strM1091y)) {
                    strM1091y = m1083q(context);
                }
                if (TextUtils.isEmpty(strM1091y)) {
                    strM1091y = m1081o(context);
                }
                if (TextUtils.isEmpty(strM1091y)) {
                    strM1091y = m1085s(context);
                }
                return TextUtils.isEmpty(strM1091y) ? m1070d(context) : strM1091y;
            } catch (Throwable unused) {
                return strM1091y;
            }
        } catch (Throwable unused2) {
            return "";
        }
    }

    /* renamed from: y */
    public static String m1091y(Context context) {
        if (Build.VERSION.SDK_INT >= 29) {
            return "";
        }
        if ((f1623t == null || "".equals(f1623t)) && !f1629z && m1080n(context, C1094l1.m2251t("WYW5kcm9pZC5wZXJtaXNzaW9uLlJFQURfUEhPTkVfU1RBVEU="))) {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (telephonyManager == null) {
                return "";
            }
            Method methodM2237f = C1094l1.m2237f(telephonyManager.getClass(), "QZ2V0RGV2aWNlSWQ", new Class[0]);
            if (Build.VERSION.SDK_INT >= 26) {
                methodM2237f = C1094l1.m2237f(telephonyManager.getClass(), "QZ2V0SW1laQ==", new Class[0]);
            }
            if (methodM2237f != null) {
                f1623t = (String) methodM2237f.invoke(telephonyManager, new Object[0]);
            }
            if (f1623t == null) {
                f1623t = "";
            }
            f1629z = true;
            return f1623t;
        }
        return f1623t;
    }

    /* renamed from: z */
    public static String m1092z(Context context) {
        try {
            return m1071e(context);
        } catch (Throwable unused) {
            return "";
        }
    }
}
