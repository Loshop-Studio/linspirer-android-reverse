package com.huawei.hem;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build;
import android.os.UserManager;

/* renamed from: com.huawei.hem.qa */
/* loaded from: classes.dex */
public class C1229qa {

    /* renamed from: c */
    public static C1229qa f3513c = new C1229qa();

    /* renamed from: a */
    public boolean f3514a = false;

    /* renamed from: b */
    public Context f3515b = C1423y4.m2998s();

    @TargetApi(24)
    /* renamed from: a */
    public boolean m2584a() {
        boolean zIsUserUnlocked;
        if (!this.f3514a) {
            Context context = this.f3515b;
            if (context == null) {
                return false;
            }
            if (Build.VERSION.SDK_INT >= 24) {
                UserManager userManager = (UserManager) context.getSystemService("user");
                if (userManager != null) {
                    zIsUserUnlocked = userManager.isUserUnlocked();
                } else {
                    this.f3514a = false;
                }
            } else {
                zIsUserUnlocked = true;
            }
            this.f3514a = zIsUserUnlocked;
        }
        return this.f3514a;
    }
}
