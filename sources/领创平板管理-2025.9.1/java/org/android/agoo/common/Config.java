package org.android.agoo.common;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.taobao.accs.ACCSManager;
import com.taobao.accs.common.Constants;
import com.taobao.accs.utl.ALog;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public class Config {
    public static final String AGOO_CLEAR_TIME = "agoo_clear_time";
    public static final String AGOO_ENABLE_DAEMONSERVER = "agoo_enable_daemonserver";
    public static final String AGOO_UNREPORT_TIMES = "agoo_UnReport_times";
    public static final String KEY_DEVICE_TOKEN = "deviceId";
    public static final String PREFERENCES = "EMAS_Agoo_AppStore";
    public static final String PROPERTY_AGOO_SERVICE_MODE = "agoo_service_mode";
    public static final String PROPERTY_APP_KEY = "agoo_app_key";
    public static final String PROPERTY_APP_VERSION = "app_version";
    public static final String PROPERTY_DEVICE_TOKEN = "app_device_token";
    public static final String PROPERTY_PUSH_USER_TOKEN = "app_push_user_token";
    public static final String PROPERTY_TT_ID = "app_tt_id";
    public static final String TAG = "Config";

    /* renamed from: a */
    public static String f6457a;

    /* renamed from: b */
    public static String f6458b;

    /* renamed from: c */
    public static String f6459c;

    /* renamed from: a */
    public static void m5829a(Context context, String str) {
        ALog.m5729i(TAG, "setDeviceToken", "token", str);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        f6459c = str;
        try {
            SharedPreferences.Editor editorEdit = context.getSharedPreferences(PREFERENCES, 4).edit();
            editorEdit.putString("deviceId", str);
            editorEdit.apply();
        } catch (Throwable th) {
            ALog.m5727e(TAG, "setDeviceToken", th, new Object[0]);
        }
    }

    /* renamed from: b */
    public static String m5830b(Context context) {
        String string = f6458b;
        if (!TextUtils.isEmpty(string)) {
            return string;
        }
        try {
            string = context.getSharedPreferences(PREFERENCES, 4).getString(PROPERTY_APP_KEY, f6458b);
        } catch (Throwable th) {
            ALog.m5727e(TAG, "getAgooAppKey", th, new Object[0]);
        }
        if (TextUtils.isEmpty(string)) {
            ALog.m5728e(TAG, "getAgooAppKey null!!", new Object[0]);
        }
        ALog.m5726d(TAG, "getAgooAppKey", "appkey", string);
        return string;
    }

    /* renamed from: c */
    public static String m5832c(Context context) {
        return TextUtils.isEmpty(f6457a) ? ACCSManager.getDefaultConfig(context) : f6457a;
    }

    /* renamed from: d */
    public static boolean m5833d(Context context) {
        try {
            return context.getSharedPreferences(PREFERENCES, 4).getInt(AGOO_UNREPORT_TIMES, 0) > 0;
        } catch (Throwable unused) {
            return false;
        }
    }

    /* renamed from: e */
    public static void m5834e(Context context) {
        try {
            SharedPreferences.Editor editorEdit = context.getSharedPreferences(PREFERENCES, 4).edit();
            editorEdit.putInt(AGOO_UNREPORT_TIMES, 0);
            editorEdit.apply();
        } catch (Throwable unused) {
        }
    }

    /* renamed from: f */
    public static int m5835f(Context context) {
        try {
            return context.getSharedPreferences(PREFERENCES, 4).getInt(AGOO_UNREPORT_TIMES, 0);
        } catch (Throwable unused) {
            return 0;
        }
    }

    public static String getDeviceToken(Context context) {
        String string = f6459c;
        try {
            string = context.getSharedPreferences(PREFERENCES, 4).getString("deviceId", f6459c);
        } catch (Throwable th) {
            ALog.m5727e(TAG, "getDeviceToken", th, new Object[0]);
        }
        ALog.m5729i(TAG, "getDeviceToken", "token", string);
        return string;
    }

    public static void setAgooAppKey(Context context, String str) {
        try {
        } catch (Throwable th) {
            ALog.m5727e(TAG, "setAgooAppKey", th, new Object[0]);
        }
        if (TextUtils.isEmpty(str)) {
            ALog.m5728e(TAG, "setAgooAppKey appkey null", new Object[0]);
            return;
        }
        f6458b = str;
        SharedPreferences.Editor editorEdit = context.getSharedPreferences(PREFERENCES, 4).edit();
        editorEdit.putString(PROPERTY_APP_KEY, str);
        editorEdit.apply();
        ALog.m5726d(TAG, "setAgooAppKey", "appkey", str);
    }

    /* renamed from: a */
    public static void m5826a(Context context) {
        try {
            SharedPreferences.Editor editorEdit = context.getSharedPreferences(PREFERENCES, 4).edit();
            editorEdit.putInt("app_version", Integer.MIN_VALUE);
            editorEdit.remove(PROPERTY_DEVICE_TOKEN);
            editorEdit.remove(PROPERTY_APP_KEY);
            editorEdit.remove(PROPERTY_TT_ID);
            editorEdit.apply();
        } catch (Throwable unused) {
        }
    }

    /* renamed from: b */
    public static boolean m5831b(Context context, long j) {
        try {
            long j2 = context.getSharedPreferences(PREFERENCES, 4).getLong(AGOO_CLEAR_TIME, 0L);
            StringBuilder sb = new StringBuilder();
            sb.append("now=");
            sb.append(j);
            sb.append(",now - lastTime=");
            long j3 = j - j2;
            sb.append(j3);
            sb.append(",istrue=");
            sb.append(j3 > Constants.CLIENT_FLUSH_INTERVAL);
            ALog.m5726d("isClearTime", sb.toString(), new Object[0]);
            return j != 0 && j3 > Constants.CLIENT_FLUSH_INTERVAL;
        } catch (Throwable unused) {
            return false;
        }
    }

    /* renamed from: a */
    public static void m5827a(Context context, int i) {
        try {
            SharedPreferences sharedPreferences = context.getSharedPreferences(PREFERENCES, 4);
            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            editorEdit.putInt(AGOO_UNREPORT_TIMES, sharedPreferences.getInt(AGOO_UNREPORT_TIMES, 0) + i);
            editorEdit.apply();
        } catch (Throwable unused) {
        }
    }

    /* renamed from: a */
    public static void m5828a(Context context, long j) {
        try {
            SharedPreferences.Editor editorEdit = context.getSharedPreferences(PREFERENCES, 4).edit();
            editorEdit.putLong(AGOO_CLEAR_TIME, j);
            editorEdit.apply();
        } catch (Throwable unused) {
        }
    }
}
