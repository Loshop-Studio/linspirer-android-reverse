package com.alibaba.sdk.android.push.common.p018a;

import android.graphics.Bitmap;

/* renamed from: com.alibaba.sdk.android.push.common.a.c */
/* loaded from: classes.dex */
public class PushNotificationPreferences {
    /* renamed from: a */
    public static synchronized void m757a(int i) {
        PushNotificationDefaults.f1120e = i;
    }

    /* renamed from: a */
    public static synchronized void m758a(Bitmap bitmap) {
        PushNotificationDefaults.f1117b = bitmap;
    }

    /* renamed from: a */
    public static synchronized void m759a(String str) {
        if (str != null) {
            if (str.length() > 0) {
                PushNotificationDefaults.f1116a = str;
            }
        }
    }

    /* renamed from: a */
    public static synchronized void m760a(boolean z) {
        PushNotificationDefaults.f1123h = z;
    }
}
