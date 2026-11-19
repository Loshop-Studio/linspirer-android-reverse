package com.huawei.hem;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;

/* renamed from: com.huawei.hem.pb */
/* loaded from: classes.dex */
public class DeviceProtectedPreferences {

    /* renamed from: a */
    public static SharedPreferences f3449a;

    /* renamed from: a */
    public static synchronized SharedPreferences m2462a(Context context) {
        if (f3449a == null) {
            if (Build.VERSION.SDK_INT >= 24) {
                f3449a = context.createDeviceProtectedStorageContext().getSharedPreferences("aegis", 0);
            } else {
                f3449a = context.getApplicationContext().getSharedPreferences("aegis", 0);
            }
        }
        return f3449a;
    }
}
