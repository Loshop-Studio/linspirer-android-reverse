package com.alibaba.sdk.android.ams.common.p007a;

import android.app.Application;
import android.content.Context;

/* renamed from: com.alibaba.sdk.android.ams.common.a.b */
/* loaded from: classes.dex */
public class PushSdkInitializer {
    /* renamed from: a */
    public static void m476a(Application application) {
        if (application == null) {
            return;
        }
        PushManifestMetadata.f841b = application;
    }

    /* renamed from: a */
    public static void m477a(Context context) {
        if (context == null) {
            throw new IllegalArgumentException("null applicationContext!");
        }
        PushManifestMetadata.f840a = context;
    }

    /* renamed from: a */
    public static void m478a(boolean z) {
        PushManifestMetadata.f842c = z;
    }
}
