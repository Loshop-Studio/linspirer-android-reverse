package com.huawei.hem;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.loc.BasicLogHandler;
import com.loc.SDKLogHandler;
import java.util.Arrays;

/* compiled from: SPUtil.java */
/* renamed from: com.huawei.hem.o1 */
/* loaded from: classes.dex */
public final class C1170o1 {

    /* renamed from: a */
    public static byte[] f3366a;

    /* renamed from: b */
    public static byte[] f3367b;

    /* renamed from: a */
    public static int m2419a(Context context, String str, String str2, int i) {
        try {
            return context.getSharedPreferences(str, 0).getInt(str2, i);
        } catch (Throwable th) {
            SDKLogHandler.m5333b(th, "csp", "giv");
            return i;
        }
    }

    /* renamed from: b */
    public static SharedPreferences.Editor m2420b(Context context, String str) {
        if (context != null) {
            try {
                if (!TextUtils.isEmpty(str)) {
                    return context.getSharedPreferences(str, 0).edit();
                }
            } catch (Throwable th) {
                BasicLogHandler.m5312a(th, "sp", "ge");
            }
        }
        return null;
    }

    /* renamed from: c */
    public static void m2421c(SharedPreferences.Editor editor) {
        if (editor == null) {
            return;
        }
        try {
            editor.apply();
        } catch (Throwable th) {
            BasicLogHandler.m5312a(th, "sp", "cm");
        }
    }

    /* renamed from: d */
    public static void m2422d(SharedPreferences.Editor editor, String str, int i) {
        try {
            editor.putInt(str, i);
        } catch (Throwable th) {
            SDKLogHandler.m5333b(th, "csp", "putPrefsInt");
        }
    }

    /* renamed from: e */
    public static void m2423e(SharedPreferences.Editor editor, String str, boolean z) {
        try {
            editor.putBoolean(str, z);
        } catch (Throwable th) {
            SDKLogHandler.m5333b(th, "csp", "setPrefsStr");
        }
    }

    /* renamed from: f */
    public static boolean m2424f(Context context, String str, String str2, boolean z) {
        try {
            return context.getSharedPreferences(str, 0).getBoolean(str2, z);
        } catch (Throwable th) {
            SDKLogHandler.m5333b(th, "csp", "gbv");
            return z;
        }
    }

    /* renamed from: g */
    public static byte[] m2425g(Context context) {
        if (context == null) {
            return new byte[0];
        }
        byte[] bArr = f3366a;
        if (bArr != null && bArr.length > 0) {
            return bArr;
        }
        byte[] bytes = AppInfo.m1641g(context).getBytes();
        f3366a = bytes;
        return bytes;
    }

    /* renamed from: h */
    public static String m2426h(Context context, String str, String str2, String str3) {
        if (context == null) {
            return null;
        }
        try {
            return context.getSharedPreferences(str, 0).getString(str2, str3);
        } catch (Throwable th) {
            SDKLogHandler.m5333b(th, "csp", "gsv");
            return str3;
        }
    }

    /* renamed from: i */
    public static byte[] m2427i(Context context) {
        byte[] bArr = f3367b;
        if (bArr != null && bArr.length > 0) {
            return bArr;
        }
        byte[] bArrCopyOfRange = Arrays.copyOfRange(m2425g(context), 0, m2425g(context).length / 2);
        f3367b = bArrCopyOfRange;
        return bArrCopyOfRange;
    }
}
