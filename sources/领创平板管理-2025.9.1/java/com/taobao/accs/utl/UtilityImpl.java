package com.taobao.accs.utl;

import android.content.ComponentName;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Process;
import android.text.TextUtils;
import anet.channel.util.HMacUtil;
import com.gyf.immersionbar.OSUtils;
import com.huawei.hem.C0948f6;
import com.huawei.hms.framework.network.grs.GrsManager;
import com.taobao.accs.client.AdapterGlobalClientInfo;
import com.taobao.accs.client.GlobalClientInfo;
import com.taobao.accs.common.Constants;
import com.taobao.accs.utl.ALog;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONArray;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public class UtilityImpl {
    public static final String NET_TYPE_2G = "2g";
    public static final String NET_TYPE_3G = "3g";
    public static final String NET_TYPE_4G = "4g";
    public static final String NET_TYPE_UNKNOWN = "unknown";
    public static final String NET_TYPE_WIFI = "wifi";
    public static final int TNET_FILE_NUM = 5;
    public static final int TNET_FILE_SIZE = 5242880;

    /* renamed from: a */
    public static final byte[] f6385a = new byte[0];

    /* renamed from: a */
    public static String m5738a(Context context) {
        String string = context.getSharedPreferences(Constants.SP_FILE_NAME, 4).getString(Constants.KEY_PROXY_HOST, null);
        if (!TextUtils.isEmpty(string)) {
            return string;
        }
        String strM5757d = m5757d();
        if (TextUtils.isEmpty(strM5757d)) {
            return null;
        }
        return strM5757d;
    }

    /* renamed from: a */
    public static byte[] m5747a() {
        return null;
    }

    /* renamed from: b */
    public static int m5749b(Context context) {
        int i = context.getSharedPreferences(Constants.SP_FILE_NAME, 4).getInt(Constants.KEY_PROXY_PORT, -1);
        if (i > 0) {
            return i;
        }
        if (m5738a(context) == null) {
            return -1;
        }
        try {
            return m5760e();
        } catch (NumberFormatException unused) {
            return -1;
        }
    }

    /* renamed from: b */
    public static String m5750b() {
        return "null";
    }

    /* renamed from: c */
    public static boolean m5755c(Context context) {
        String str;
        int i;
        synchronized (f6385a) {
            PackageInfo packageInfo = GlobalClientInfo.getInstance(context).getPackageInfo();
            int i2 = context.getSharedPreferences(Constants.SP_FILE_NAME, 0).getInt(Constants.KEY_APP_VERSION_CODE, -1);
            String string = context.getSharedPreferences(Constants.SP_FILE_NAME, 0).getString(Constants.KEY_APP_VERSION_NAME, "");
            if (packageInfo != null) {
                i = packageInfo.versionCode;
                str = packageInfo.versionName;
            } else {
                str = null;
                i = 0;
            }
            if (i2 == i && string.equals(str)) {
                return false;
            }
            m5773n(context);
            ALog.m5729i("UtilityImpl", "appVersionChanged", "oldV", Integer.valueOf(i2), "nowV", Integer.valueOf(i), "oldN", string, "nowN", str);
            return true;
        }
    }

    public static void clearSharePreferences(Context context) {
        try {
            synchronized (f6385a) {
                SharedPreferences sharedPreferences = context.getSharedPreferences(Constants.SP_FILE_NAME, 0);
                String string = sharedPreferences.getString("appkey", null);
                String string2 = sharedPreferences.getString("app_sercet", null);
                String string3 = sharedPreferences.getString(Constants.KEY_PROXY_HOST, null);
                int i = sharedPreferences.getInt(Constants.KEY_PROXY_PORT, -1);
                int i2 = sharedPreferences.getInt("version", -1);
                SharedPreferences.Editor editorEdit = context.getSharedPreferences(Constants.SP_FILE_NAME, 0).edit();
                editorEdit.clear();
                if (!TextUtils.isEmpty(string)) {
                    editorEdit.putString("appkey", string);
                }
                if (!TextUtils.isEmpty(string2)) {
                    editorEdit.putString("app_sercet", string2);
                }
                if (!TextUtils.isEmpty(string3)) {
                    editorEdit.putString(Constants.KEY_PROXY_HOST, string3);
                }
                if (i > 0) {
                    editorEdit.putInt(Constants.KEY_PROXY_PORT, i);
                }
                if (i2 > 0) {
                    editorEdit.putInt("version", i2);
                }
                editorEdit.apply();
            }
        } catch (Throwable th) {
            ALog.m5727e("UtilityImpl", "clearSharePreferences", th, new Object[0]);
        }
    }

    /* renamed from: d */
    public static boolean m5759d(Context context) {
        String agooCustomServiceName = AdapterGlobalClientInfo.getAgooCustomServiceName(context);
        if (TextUtils.isEmpty(agooCustomServiceName)) {
            return false;
        }
        ComponentName componentName = new ComponentName(context, agooCustomServiceName);
        PackageManager packageManager = context.getPackageManager();
        if (!componentName.getPackageName().equals("!")) {
            return packageManager.getServiceInfo(componentName, 128).enabled;
        }
        ALog.m5728e("UtilityImpl", "getAgooServiceEnabled,exception,comptName.getPackageName()=" + componentName.getPackageName(), new Object[0]);
        return false;
    }

    public static void disableService(Context context) {
        try {
            m5752b(context, AdapterUtilityImpl.channelService);
        } catch (Throwable unused) {
        }
    }

    /* renamed from: e */
    public static String m5761e(Context context) {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo == null) {
                return "unknown";
            }
            if (activeNetworkInfo.getType() == 1) {
                return NET_TYPE_WIFI;
            }
            String subtypeName = activeNetworkInfo.getSubtypeName();
            return !TextUtils.isEmpty(subtypeName) ? subtypeName.replaceAll(" ", "") : "";
        } catch (Throwable th) {
            th.printStackTrace();
            return "unknown";
        }
    }

    public static void enableService(Context context) {
        m5743a(context, AdapterUtilityImpl.channelService);
    }

    /* renamed from: f */
    public static String m5764f(Context context) {
        NetworkInfo activeNetworkInfo;
        try {
            activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        } catch (Throwable th) {
            ALog.m5727e("UtilityImpl", "getNetworkTypeExt", th, new Object[0]);
            return null;
        }
        if (activeNetworkInfo == null) {
            return "unknown";
        }
        if (activeNetworkInfo.getType() == 1) {
            return NET_TYPE_WIFI;
        }
        switch (activeNetworkInfo.getSubtype()) {
            case 1:
            case 2:
            case 4:
            case 7:
            case 11:
                return NET_TYPE_2G;
            case 3:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 12:
            case 14:
            case 15:
                return NET_TYPE_3G;
            case 13:
                return NET_TYPE_4G;
            default:
                String subtypeName = activeNetworkInfo.getSubtypeName();
                if (TextUtils.isEmpty(subtypeName)) {
                    return "unknown";
                }
                if (!subtypeName.equalsIgnoreCase("td-scdma") && !subtypeName.equalsIgnoreCase("td_scdma")) {
                    if (!subtypeName.equalsIgnoreCase("tds_hsdpa")) {
                        return "unknown";
                    }
                }
                return NET_TYPE_3G;
        }
        ALog.m5727e("UtilityImpl", "getNetworkTypeExt", th, new Object[0]);
        return null;
    }

    /* renamed from: g */
    public static boolean m5766g(Context context) {
        if (context == null) {
            return false;
        }
        try {
            NetworkInfo activeNetworkInfo = GlobalClientInfo.getInstance(context).getConnectivityManager().getActiveNetworkInfo();
            if (activeNetworkInfo != null) {
                return activeNetworkInfo.isConnected();
            }
            return false;
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    public static String getDeviceId(Context context) {
        return AdapterUtilityImpl.getDeviceId(context);
    }

    public static String getUtdid(String str, Context context) {
        String string;
        try {
            synchronized (f6385a) {
                string = context.getSharedPreferences(str, 0).getString("utdid", getDeviceId(context));
            }
            return string;
        } catch (Throwable th) {
            ALog.m5727e("UtilityImpl", "getUtdid", th, new Object[0]);
            return "";
        }
    }

    public static List<String> getUtdids(String str, Context context) {
        ArrayList arrayList;
        try {
            synchronized (f6385a) {
                String string = context.getSharedPreferences(str, 0).getString(Constants.SP_KEY_UTDID_LIST, null);
                arrayList = new ArrayList();
                if (string != null) {
                    JSONArray jSONArray = new JSONArray(string);
                    for (int i = 0; i < jSONArray.length(); i++) {
                        arrayList.add(jSONArray.getString(i));
                    }
                }
                arrayList.add(getDeviceId(context));
            }
            return arrayList;
        } catch (Throwable th) {
            ALog.m5727e("UtilityImpl", "getUtdidList", th, new Object[0]);
            return null;
        }
    }

    /* renamed from: h */
    public static long m5767h(Context context) {
        long j = 0;
        try {
            SharedPreferences sharedPreferences = context.getSharedPreferences(Constants.SP_CHANNEL_FILE_NAME, 0);
            long j2 = sharedPreferences.getLong(Constants.SP_KEY_SERVICE_START, 0L);
            long j3 = j2 > 0 ? sharedPreferences.getLong(Constants.SP_KEY_SERVICE_END, 0L) - j2 : 0L;
            try {
                SharedPreferences.Editor editorEdit = sharedPreferences.edit();
                editorEdit.putLong(Constants.SP_KEY_SERVICE_START, 0L);
                editorEdit.putLong(Constants.SP_KEY_SERVICE_END, 0L);
                editorEdit.apply();
                return j3;
            } catch (Throwable th) {
                th = th;
                j = j3;
                ALog.m5727e("UtilityImpl", "getServiceAliveTime:", th, new Object[0]);
                return j;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static void hitUtdid(String str, Context context, String str2) {
        try {
            synchronized (f6385a) {
                SharedPreferences.Editor editorEdit = context.getSharedPreferences(str, 0).edit();
                JSONArray jSONArray = new JSONArray();
                jSONArray.put(str2);
                editorEdit.putString(Constants.SP_KEY_UTDID_LIST, jSONArray.toString());
                editorEdit.apply();
            }
        } catch (Throwable th) {
            ALog.m5727e("UtilityImpl", "hitUtdid", th, new Object[0]);
        }
    }

    /* renamed from: i */
    public static String m5768i(Context context) {
        try {
            return GlobalClientInfo.getInstance(context).getPackageInfo().versionName;
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public static boolean isMainProcess(Context context) {
        return AdapterUtilityImpl.isMainProcess(context);
    }

    /* renamed from: j */
    public static String m5769j(Context context) {
        try {
            return context.getSharedPreferences(Constants.SP_COOKIE_FILE_NAME, 4).getString(Constants.SP_KEY_COOKIE_SEC, null);
        } catch (Exception e) {
            ALog.m5727e("UtilityImpl", "reStoreCookie fail", e, new Object[0]);
            return null;
        }
    }

    /* renamed from: k */
    public static String m5770k(Context context) {
        return AdapterUtilityImpl.isNotificationEnabled(context);
    }

    /* renamed from: l */
    public static boolean m5771l(Context context) {
        try {
            return context.getSharedPreferences(Constants.SP_FILE_NAME, 0).getBoolean(Constants.SP_KEY_ENABLE_CHANNEL_PROCESS, true);
        } catch (Throwable unused) {
            return false;
        }
    }

    /* renamed from: m */
    public static List<String> m5772m(Context context) {
        try {
            String string = context.getSharedPreferences(Constants.SP_FILE_NAME, 0).getString(Constants.SP_KEY_CHANNEL_INIT, null);
            if (string != null) {
                JSONArray jSONArray = new JSONArray(string);
                ArrayList arrayList = new ArrayList();
                for (int i = 0; i < jSONArray.length(); i++) {
                    arrayList.add(jSONArray.getString(i));
                }
                return arrayList;
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    /* renamed from: n */
    public static void m5773n(Context context) {
        try {
            SharedPreferences.Editor editorEdit = context.getSharedPreferences(Constants.SP_FILE_NAME, 0).edit();
            editorEdit.putInt(Constants.KEY_APP_VERSION_CODE, GlobalClientInfo.getInstance(context).getPackageInfo().versionCode);
            editorEdit.putString(Constants.KEY_APP_VERSION_NAME, GlobalClientInfo.getInstance(context).getPackageInfo().versionName);
            editorEdit.apply();
        } catch (Throwable th) {
            ALog.m5727e("UtilityImpl", "saveAppVersion", th, new Object[0]);
        }
    }

    public static void saveChannelInitClass(Context context, String str) {
        try {
            SharedPreferences sharedPreferences = context.getSharedPreferences(Constants.SP_FILE_NAME, 0);
            String string = sharedPreferences.getString(Constants.SP_KEY_CHANNEL_INIT, null);
            ArrayList arrayList = new ArrayList();
            if (string != null) {
                JSONArray jSONArray = new JSONArray(string);
                for (int i = 0; i < jSONArray.length(); i++) {
                    arrayList.add(jSONArray.getString(i));
                }
            }
            if (arrayList.contains(str)) {
                return;
            }
            arrayList.add(str);
            JSONArray jSONArray2 = new JSONArray();
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                jSONArray2.put(arrayList.get(i2));
            }
            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            editorEdit.putString(Constants.SP_KEY_CHANNEL_INIT, jSONArray2.toString());
            editorEdit.commit();
        } catch (Throwable unused) {
        }
    }

    public static void saveUtdid(String str, Context context) {
        try {
            synchronized (f6385a) {
                String deviceId = getDeviceId(context);
                SharedPreferences sharedPreferences = context.getSharedPreferences(str, 0);
                SharedPreferences.Editor editorEdit = sharedPreferences.edit();
                String string = sharedPreferences.getString(Constants.SP_KEY_UTDID_LIST, null);
                if (string == null || !string.contains(deviceId)) {
                    JSONArray jSONArray = string == null ? new JSONArray() : new JSONArray(string);
                    jSONArray.put(deviceId);
                    editorEdit.putString(Constants.SP_KEY_UTDID_LIST, jSONArray.toString());
                }
                editorEdit.putString("utdid", deviceId);
                editorEdit.apply();
            }
        } catch (Throwable th) {
            ALog.m5727e("UtilityImpl", "saveUtdid", th, new Object[0]);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean utdidChanged(String str, Context context) {
        boolean z;
        try {
            try {
            } catch (Throwable th) {
                while (true) {
                    th = th;
                }
            }
        } catch (Throwable th2) {
            th = th2;
            str = null;
        }
        synchronized (f6385a) {
            try {
                String deviceId = getDeviceId(context);
                z = !context.getSharedPreferences(str, 0).getString("utdid", deviceId).equals(deviceId);
                return z;
            } catch (Throwable th3) {
                th = th3;
                str = null;
                try {
                    throw th;
                } catch (Throwable th4) {
                    th = th4;
                    ALog.m5727e("UtilityImpl", "saveUtdid", th, new Object[0]);
                    z = str;
                    return z;
                }
            }
        }
    }

    /* renamed from: b */
    public static boolean m5752b(Context context, String str) {
        ComponentName componentName = new ComponentName(context, str);
        PackageManager packageManager = context.getPackageManager();
        try {
            ALog.m5726d("UtilityImpl", "disableComponent,comptName=" + componentName.toString(), new Object[0]);
            if (packageManager.getComponentEnabledSetting(componentName) != 2) {
                packageManager.setComponentEnabledSetting(componentName, 2, 1);
                return true;
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    /* renamed from: g */
    public static String m5765g() throws ClassNotFoundException {
        Class<?>[] clsArr = {String.class};
        Object[] objArr = {OSUtils.KEY_EMUI_VERSION_NAME};
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            String str = (String) cls.getDeclaredMethod("get", clsArr).invoke(cls, objArr);
            ALog.m5726d("UtilityImpl", "getEmuiVersion", "result", str);
            return !TextUtils.isEmpty(str) ? str : "";
        } catch (Exception e) {
            ALog.m5727e("UtilityImpl", "getEmuiVersion", e, new Object[0]);
            return "";
        }
    }

    /* renamed from: a */
    public static void m5743a(Context context, String str) {
        ComponentName componentName = new ComponentName(context, str);
        ALog.m5726d("UtilityImpl", "enableComponent", "comptName", componentName);
        try {
            context.getPackageManager().setComponentEnabledSetting(componentName, 1, 1);
        } catch (Throwable th) {
            ALog.m5731w("UtilityImpl", "enableComponent", th, new Object[0]);
        }
    }

    /* renamed from: e */
    public static int m5760e() {
        try {
            return Integer.parseInt(System.getProperty("http.proxyPort"));
        } catch (NumberFormatException unused) {
            return -1;
        }
    }

    /* renamed from: d */
    public static String m5757d() {
        return System.getProperty("http.proxyHost");
    }

    /* renamed from: e */
    public static void m5762e(Context context, String str) {
        try {
            synchronized (f6385a) {
                SharedPreferences sharedPreferences = context.getSharedPreferences(Constants.SP_FILE_NAME, 0);
                String string = sharedPreferences.getString("appkey", "");
                if (!TextUtils.isEmpty(str) && !string.equals(str) && !string.contains(str)) {
                    if (!TextUtils.isEmpty(string)) {
                        str = string + "|" + str;
                    }
                    SharedPreferences.Editor editorEdit = sharedPreferences.edit();
                    editorEdit.putString("appkey", str);
                    editorEdit.apply();
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* renamed from: b */
    public static String m5751b(String str) {
        try {
            return URLEncoder.encode(str, "utf-8");
        } catch (UnsupportedEncodingException unused) {
            return str;
        }
    }

    /* renamed from: d */
    public static String m5758d(Context context, String str) {
        try {
            File externalFilesDir = context.getExternalFilesDir("emastnetlogs");
            if (externalFilesDir == null || !externalFilesDir.exists() || !externalFilesDir.canWrite()) {
                externalFilesDir = context.getDir("emaslogs", 0);
            }
            ALog.m5726d("UtilityImpl", "getTnetLogFilePath :" + externalFilesDir, new Object[0]);
            return externalFilesDir + GrsManager.SEPARATOR + str.toLowerCase();
        } catch (Throwable th) {
            ALog.m5727e("UtilityImpl", "getTnetLogFilePath", th, new Object[0]);
            return null;
        }
    }

    /* renamed from: a */
    public static String m5737a(long j) {
        try {
            return new SimpleDateFormat("yyyy-MM-dd", Locale.US).format(Long.valueOf(j));
        } catch (Throwable th) {
            ALog.m5727e("UtilityImpl", "formatDay", th, new Object[0]);
            return "";
        }
    }

    /* renamed from: b */
    public static boolean m5753b(Context context, boolean z) {
        if (m5771l(context)) {
            return false;
        }
        ALog.m5726d("UtilityImpl", "channel process is disabled, kill it", new Object[0]);
        if (!z) {
            return true;
        }
        Process.killProcess(Process.myPid());
        return true;
    }

    /* renamed from: f */
    public static String m5763f() {
        String str = m5757d() + ":" + m5760e();
        if (ALog.isPrintLog(ALog.Level.D)) {
            ALog.m5726d("UtilityImpl", C0948f6.m1760e("getProxy:", str), new Object[0]);
        }
        return str;
    }

    /* renamed from: c */
    public static boolean m5756c(Context context, String str) throws PackageManager.NameNotFoundException {
        try {
            context.getPackageManager().getPackageInfo(str, 0);
            return true;
        } catch (PackageManager.NameNotFoundException unused) {
            ALog.m5728e("UtilityImpl", "package not exist", "pkg", str);
            return false;
        }
    }

    /* renamed from: a */
    public static String m5739a(String str, String str2, String str3) {
        String strHmacSha1Hex = null;
        if (TextUtils.isEmpty(str)) {
            ALog.m5728e("UtilityImpl", "getAppsign appkey null", new Object[0]);
            return null;
        }
        try {
            if (!TextUtils.isEmpty(str2)) {
                strHmacSha1Hex = HMacUtil.hmacSha1Hex(str2.getBytes(), (str + str3).getBytes());
            } else {
                ALog.m5728e("UtilityImpl", "getAppsign secret null", new Object[0]);
            }
        } catch (Throwable th) {
            ALog.m5727e("UtilityImpl", "getAppsign", th, new Object[0]);
        }
        return strHmacSha1Hex;
    }

    /* renamed from: c */
    public static long m5754c() {
        return AdapterUtilityImpl.getUsableSpace();
    }

    /* renamed from: a */
    public static int m5734a(Context context, String str, String str2, byte[] bArr) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || context == null || bArr == null) {
        }
        return -1;
    }

    /* renamed from: a */
    public static byte[] m5748a(Context context, String str, String str2) {
        if (context != null && !TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str)) {
            return null;
        }
        ALog.m5729i("UtilityImpl", "get sslticket input null", new Object[0]);
        return null;
    }

    /* renamed from: a */
    public static void m5744a(Context context, String str, long j) {
        try {
            SharedPreferences.Editor editorEdit = context.getSharedPreferences(Constants.SP_CHANNEL_FILE_NAME, 0).edit();
            editorEdit.putLong(str, j);
            editorEdit.apply();
            ALog.m5726d("UtilityImpl", "setServiceTime:" + j, new Object[0]);
        } catch (Throwable th) {
            ALog.m5727e("UtilityImpl", "setServiceTime:", th, new Object[0]);
        }
    }

    /* renamed from: a */
    public static int m5735a(String str) {
        if (str == null) {
            return 0;
        }
        try {
            return str.getBytes("utf-8").length;
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return 0;
        }
    }

    /* renamed from: a */
    public static String m5740a(Throwable th) {
        return AdapterUtilityImpl.getStackMsg(th);
    }

    /* renamed from: a */
    public static String m5736a(int i) {
        try {
            return String.valueOf(i);
        } catch (Exception e) {
            ALog.m5727e("UtilityImpl", "int2String", e, new Object[0]);
            return null;
        }
    }

    /* renamed from: a */
    public static final Map<String, String> m5742a(Map<String, List<String>> map) {
        HashMap map2 = new HashMap();
        try {
            for (Map.Entry<String, List<String>> entry : map.entrySet()) {
                String key = entry.getKey();
                if (!TextUtils.isEmpty(key)) {
                    String strM5741a = m5741a(entry.getValue());
                    if (!TextUtils.isEmpty(strM5741a)) {
                        if (!key.startsWith(":")) {
                            key = key.toLowerCase(Locale.US);
                        }
                        map2.put(key, strM5741a);
                    }
                }
            }
        } catch (Throwable unused) {
        }
        return map2;
    }

    /* renamed from: a */
    public static final String m5741a(List<String> list) {
        StringBuffer stringBuffer = new StringBuffer();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            stringBuffer.append(list.get(i));
            if (i < size - 1) {
                stringBuffer.append(",");
            }
        }
        return stringBuffer.toString();
    }

    /* renamed from: a */
    public static void m5746a(Context context, boolean z) {
        try {
            SharedPreferences.Editor editorEdit = context.getSharedPreferences(Constants.SP_FILE_NAME, 0).edit();
            editorEdit.putBoolean(Constants.SP_KEY_ENABLE_CHANNEL_PROCESS, z);
            editorEdit.apply();
        } catch (Throwable unused) {
        }
    }

    /* renamed from: a */
    public static void m5745a(Context context, List<String> list) {
        try {
            SharedPreferences sharedPreferences = context.getSharedPreferences(Constants.SP_FILE_NAME, 0);
            String string = sharedPreferences.getString(Constants.SP_KEY_CHANNEL_INIT, null);
            ArrayList arrayList = new ArrayList();
            if (string != null) {
                JSONArray jSONArray = new JSONArray(string);
                for (int i = 0; i < jSONArray.length(); i++) {
                    arrayList.add(jSONArray.getString(i));
                }
            }
            if (arrayList.removeAll(list)) {
                JSONArray jSONArray2 = new JSONArray();
                for (int i2 = 0; i2 < arrayList.size(); i2++) {
                    jSONArray2.put(arrayList.get(i2));
                }
                SharedPreferences.Editor editorEdit = sharedPreferences.edit();
                editorEdit.putString(Constants.SP_KEY_CHANNEL_INIT, jSONArray2.toString());
                editorEdit.commit();
            }
        } catch (Throwable unused) {
        }
    }
}
