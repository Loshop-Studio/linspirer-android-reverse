package com.huawei.hem;

import android.content.Context;
import android.content.Intent;
import android.os.Build;

/* compiled from: AppUpdateCheckHelper.java */
/* renamed from: com.huawei.hem.o5 */
/* loaded from: classes.dex */
public class AppUpdateCheckHelper {

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
        LTKDateUtil.m1403m("EduAppStoreHelper,handle check app store from isv");
        if (Build.VERSION.SDK_INT >= 26) {
            LTKDateUtil.m1403m("send broadcast to check appstore update apps");
            LauncherMenuHelper.m2971R(context, "com.linspirer.appstore.action.ACTION_SILENT_INSTALL_OR_UPDATE");
        } else {
            Intent intent = new Intent("com.linspirer.appstore.action.AUTO_UPDATE");
            intent.setPackage("com.ndwill.swd.appstore");
            context.startService(intent);
        }
    }
}
