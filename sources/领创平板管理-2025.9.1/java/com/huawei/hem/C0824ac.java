package com.huawei.hem;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;

/* compiled from: DeskSPF.java */
/* renamed from: com.huawei.hem.ac */
/* loaded from: classes.dex */
public class C0824ac {

    /* renamed from: a */
    public SharedPreferences f2199a;

    /* renamed from: b */
    public SharedPreferences.Editor f2200b;

    public C0824ac(Context context, String str) {
        if (Build.VERSION.SDK_INT >= 24) {
            Context contextCreateDeviceProtectedStorageContext = context.createDeviceProtectedStorageContext();
            if (Build.VERSION.SDK_INT >= 24) {
                SharedPreferences sharedPreferences = contextCreateDeviceProtectedStorageContext.getSharedPreferences("moved_flag", 0);
                if (sharedPreferences.getBoolean(str, false)) {
                    C0850bc.m1403m("SPFTool  sp had moved");
                } else if (contextCreateDeviceProtectedStorageContext.moveSharedPreferencesFrom(context, str)) {
                    sharedPreferences.edit().putBoolean(str, true).commit();
                    C0850bc.m1403m("SPFTool sp  has moved success " + str);
                } else {
                    C0948f6.m1779x("SPFTool sp  has moved failed ", str);
                }
            }
            this.f2199a = contextCreateDeviceProtectedStorageContext.getSharedPreferences(str, 0);
        } else {
            this.f2199a = context.getSharedPreferences(str, 0);
        }
        this.f2200b = this.f2199a.edit();
    }
}
