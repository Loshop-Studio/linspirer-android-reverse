package com.taobao.accs.utl;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.app.Person;
import android.text.TextUtils;
import com.taobao.accs.common.Constants;
import com.taobao.accs.p071b.AccsClassLoaderProvider;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public class Utils {
    public static final String SP_AGOO_BIND_FILE_NAME = "EMAS_AGOO_BIND";
    public static final String TAG = "Utils";
    public static int debugMode = 0;
    public static final byte[] mLock = new byte[0];
    public static int targetSdkVersion = -1;

    public static void clearAgooBindCache(Context context) {
        try {
            SharedPreferences.Editor editorEdit = context.getSharedPreferences("EMAS_AGOO_BIND", 0).edit();
            editorEdit.clear();
            editorEdit.apply();
        } catch (Exception e) {
            ALog.m5727e(TAG, "clearAgooBindCache", e, new Object[0]);
        }
    }

    public static void clearAllSharePreferences(Context context) {
        try {
            synchronized (mLock) {
                SharedPreferences.Editor editorEdit = context.getSharedPreferences(Constants.SP_FILE_NAME, 0).edit();
                editorEdit.clear();
                editorEdit.apply();
            }
        } catch (Throwable th) {
            ALog.m5727e(TAG, "clearAllSharePreferences", th, new Object[0]);
        }
    }

    public static Bundle getMetaInfo(Context context) {
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            if (applicationInfo != null) {
                return applicationInfo.metaData;
            }
            return null;
        } catch (Throwable th) {
            ALog.m5727e(TAG, "getMetaInfo", th, new Object[0]);
            return null;
        }
    }

    public static int getMode(Context context) {
        return debugMode;
    }

    public static String getSpValue(Context context, String str, String str2) {
        String string = null;
        try {
            synchronized (mLock) {
                string = context.getSharedPreferences(Constants.SP_FILE_NAME, 0).getString(str, null);
            }
            ALog.m5729i(TAG, "getSpValue", "value", string);
            if (TextUtils.isEmpty(string)) {
                ALog.m5728e(TAG, "getSpValue use default!", new Object[0]);
                return str2;
            }
        } catch (Throwable th) {
            ALog.m5727e(TAG, "getSpValue fail", th, new Object[0]);
        }
        return string;
    }

    public static boolean isIPV6Address(String str) {
        int i;
        boolean z;
        int i2;
        int i3;
        boolean z2;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        char[] charArray = str.toCharArray();
        if (charArray.length < 2) {
            return false;
        }
        if (charArray[0] != ':') {
            i = 0;
            z = false;
            i2 = 0;
            i3 = 0;
            z2 = true;
        } else {
            if (charArray[1] != ':') {
                return false;
            }
            z = false;
            i3 = 0;
            i = 1;
            i2 = 1;
            z2 = true;
        }
        while (i < charArray.length) {
            char c = charArray[i];
            int iDigit = Character.digit(c, 16);
            if (iDigit != -1) {
                i3 = (i3 << 4) + iDigit;
                if (i3 > 65535) {
                    return false;
                }
                z2 = false;
            } else {
                if (c != ':' || (i2 = i2 + 1) > 7) {
                    return false;
                }
                if (!z2) {
                    i3 = 0;
                    z2 = true;
                } else {
                    if (z) {
                        return false;
                    }
                    z = true;
                }
            }
            i++;
        }
        return z || i2 >= 7;
    }

    public static boolean isMainProcess(Context context) {
        boolean zBooleanValue;
        try {
            Class<?> clsLoadClass = AccsClassLoaderProvider.m5469a().m5470b().loadClass("com.taobao.accs.utl.UtilityImpl");
            zBooleanValue = ((Boolean) clsLoadClass.getMethod("isMainProcess", Context.class).invoke(clsLoadClass, context)).booleanValue();
        } catch (Throwable th) {
            ALog.m5727e(TAG, "killservice", th, new Object[0]);
            th.printStackTrace();
            zBooleanValue = true;
        }
        ALog.m5729i(TAG, "isMainProcess", "result", Boolean.valueOf(zBooleanValue));
        return zBooleanValue;
    }

    public static boolean isTarget26(Context context) {
        if (context == null) {
            return false;
        }
        if (targetSdkVersion == -1) {
            targetSdkVersion = context.getApplicationInfo().targetSdkVersion;
        }
        return targetSdkVersion >= 26 && Build.VERSION.SDK_INT >= 26;
    }

    public static void killService(Context context) {
        try {
            Class<?> clsLoadClass = AccsClassLoaderProvider.m5469a().m5470b().loadClass("com.taobao.accs.utl.UtilityImpl");
            clsLoadClass.getMethod("killService", Context.class).invoke(clsLoadClass, context);
        } catch (Throwable th) {
            ALog.m5727e(TAG, "killService", th, new Object[0]);
        }
    }

    public static void setAgooAppkey(Context context, String str) {
        try {
            Class<?> clsLoadClass = AccsClassLoaderProvider.m5469a().m5470b().loadClass("org.android.agoo.common.Config");
            clsLoadClass.getMethod("setAgooAppKey", Context.class, String.class).invoke(clsLoadClass, context, str);
        } catch (Throwable th) {
            ALog.m5727e(TAG, "setAgooAppkey", th, new Object[0]);
            th.printStackTrace();
        }
    }

    public static void setMode(Context context, int i) {
        debugMode = i;
    }

    public static void setSpValue(Context context, String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            ALog.m5728e(TAG, "setSpValue null", new Object[0]);
            return;
        }
        try {
            synchronized (mLock) {
                SharedPreferences.Editor editorEdit = context.getSharedPreferences(Constants.SP_FILE_NAME, 0).edit();
                editorEdit.putString(str, str2);
                editorEdit.apply();
            }
            ALog.m5729i(TAG, "setSpValue", Person.KEY_KEY, str, "value", str2);
        } catch (Exception e) {
            ALog.m5727e(TAG, "setSpValue fail", e, new Object[0]);
        }
    }
}
