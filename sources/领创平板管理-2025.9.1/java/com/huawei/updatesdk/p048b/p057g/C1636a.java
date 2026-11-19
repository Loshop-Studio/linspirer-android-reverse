package com.huawei.updatesdk.p048b.p057g;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.text.TextUtils;
import anet.channel.strategy.dispatch.DispatchConstants;
import com.huawei.hem.C0948f6;
import com.huawei.updatesdk.p034a.p035a.p037c.p038a.p039a.C1584a;
import com.huawei.updatesdk.p034a.p043b.p044a.C1598a;

/* renamed from: com.huawei.updatesdk.b.g.a */
/* loaded from: classes.dex */
public final class C1636a {

    /* renamed from: a */
    public static String f4709a;

    /* renamed from: a */
    public static String m3748a() throws PackageManager.NameNotFoundException {
        String str = f4709a;
        if (str != null) {
            return str;
        }
        Context contextM3592a = C1598a.m3591c().m3592a();
        try {
            String packageName = contextM3592a.getPackageName();
            PackageInfo packageInfo = contextM3592a.getPackageManager().getPackageInfo(contextM3592a.getPackageName(), 0);
            if (packageInfo != null) {
                packageName = packageName + packageInfo.versionName;
            }
            String str2 = packageName + "_" + (TextUtils.isEmpty(Build.BRAND) ? DispatchConstants.OTHER : Build.BRAND);
            f4709a = str2;
            return str2;
        } catch (Exception e) {
            StringBuilder sbM1765j = C0948f6.m1765j("getUserAgent() ");
            sbM1765j.append(e.toString());
            C1584a.m3516b("ApplicationSession", sbM1765j.toString());
            return null;
        }
    }
}
