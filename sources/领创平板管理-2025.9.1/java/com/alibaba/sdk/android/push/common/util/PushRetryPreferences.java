package com.alibaba.sdk.android.push.common.util;

import android.content.Context;
import android.preference.PreferenceManager;

/* renamed from: com.alibaba.sdk.android.push.common.util.b */
/* loaded from: classes.dex */
public class PushRetryPreferences {
    /* renamed from: a */
    public static long m775a(Context context, String str) {
        return PreferenceManager.getDefaultSharedPreferences(context).getLong(str, 0L);
    }

    /* renamed from: a */
    public static void m776a(Context context, String str, long j) {
        PreferenceManager.getDefaultSharedPreferences(context).edit().putLong(str, j).commit();
    }
}
