package com.huawei.hem;

import android.content.Context;
import android.content.Intent;
import android.os.Build;

/* compiled from: AppUpdateCheckHelper.java */
/* renamed from: com.huawei.hem.o5 */
/* loaded from: classes.dex */
public class C1174o5 {

    /* renamed from: a */
    public static long f3373a;

    /* renamed from: a */
    public static void m2428a(Context context) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j = jCurrentTimeMillis - f3373a;
        if (j > 60000) {
            f3373a = jCurrentTimeMillis;
        }
        if (j <= 60000) {
            return;
        }
        C0850bc.m1403m("EduAppStoreHelper,handle check app store from isv");
        if (Build.VERSION.SDK_INT >= 26) {
            C0850bc.m1403m("send broadcast to check appstore update apps");
            C1423y4.m2971R(context, "com.linspirer.appstore.action.ACTION_SILENT_INSTALL_OR_UPDATE");
        } else {
            Intent intent = new Intent("com.linspirer.appstore.action.AUTO_UPDATE");
            intent.setPackage("com.ndwill.swd.appstore");
            context.startService(intent);
        }
    }
}
