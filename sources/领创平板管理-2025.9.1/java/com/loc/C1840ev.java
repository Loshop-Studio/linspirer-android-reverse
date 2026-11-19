package com.loc;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;

/* compiled from: SPUtil.java */
/* renamed from: com.loc.ev */
/* loaded from: classes.dex */
public final class C1840ev {
    /* renamed from: a */
    public static int m5088a(Context context, String str, String str2, int i) {
        try {
            return context.getSharedPreferences(str, 0).getInt(str2, i);
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "SpUtil", "getPrefsInt");
            return i;
        }
    }

    /* renamed from: a */
    public static long m5089a(Context context, String str, String str2, long j) {
        try {
            return context.getSharedPreferences(str, 0).getLong(str2, j);
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "SpUtil", "getPrefsLong");
            return j;
        }
    }

    /* renamed from: a */
    public static SharedPreferences.Editor m5090a(Context context, String str) {
        return context.getSharedPreferences(str, 0).edit();
    }

    /* renamed from: a */
    public static String m5091a(Context context) {
        return context == null ? "00:00:00:00:00:00" : m5092a(context, "pref", "smac", "00:00:00:00:00:00");
    }

    /* renamed from: a */
    public static String m5092a(Context context, String str, String str2, String str3) {
        try {
            return context.getSharedPreferences(str, 0).getString(str2, str3);
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "SpUtil", "getPrefsInt");
            return str3;
        }
    }

    /* renamed from: a */
    public static void m5093a(SharedPreferences.Editor editor) {
        if (editor == null) {
            return;
        }
        editor.apply();
    }

    /* renamed from: a */
    public static void m5094a(SharedPreferences.Editor editor, String str) {
        try {
            editor.remove(str);
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "SpUtil", "setPrefsLong");
        }
    }

    /* renamed from: a */
    public static void m5095a(SharedPreferences.Editor editor, String str, int i) {
        try {
            editor.putInt(str, i);
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "SpUtil", "setPrefsInt");
        }
    }

    /* renamed from: a */
    public static void m5096a(SharedPreferences.Editor editor, String str, long j) {
        try {
            editor.putLong(str, j);
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "SpUtil", "setPrefsLong");
        }
    }

    /* renamed from: a */
    public static void m5097a(SharedPreferences.Editor editor, String str, String str2) {
        try {
            editor.putString(str, str2);
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "SpUtil", "setPrefsStr");
        }
    }

    /* renamed from: a */
    public static void m5098a(SharedPreferences.Editor editor, String str, boolean z) {
        try {
            editor.putBoolean(str, z);
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "SpUtil", "updatePrefsBoolean");
        }
    }

    /* renamed from: a */
    public static boolean m5099a(Context context, String str, String str2, boolean z) {
        try {
            return context.getSharedPreferences(str, 0).getBoolean(str2, z);
        } catch (Throwable th) {
            CoreUtil.m5014a(th, "SpUtil", "getPrefsBoolean");
            return z;
        }
    }

    /* renamed from: b */
    public static void m5100b(Context context, String str) {
        if (context == null || TextUtils.isEmpty(str)) {
            return;
        }
        SharedPreferences.Editor editorM5090a = m5090a(context, "pref");
        m5097a(editorM5090a, "smac", str);
        m5093a(editorM5090a);
    }
}
