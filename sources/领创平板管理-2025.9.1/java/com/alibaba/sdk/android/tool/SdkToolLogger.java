package com.alibaba.sdk.android.tool;

import android.util.Log;

/* renamed from: com.alibaba.sdk.android.tool.b */
/* loaded from: classes.dex */
public class SdkToolLogger {

    /* renamed from: a */
    public static boolean f1444a = false;

    /* renamed from: a */
    public static void m1021a(String str, String str2) {
        if (f1444a) {
            Log.d(str, str2);
        }
    }

    /* renamed from: b */
    public static void m1022b(String str, String str2) {
        if (f1444a) {
            Log.e(str, str2);
        }
    }
}
