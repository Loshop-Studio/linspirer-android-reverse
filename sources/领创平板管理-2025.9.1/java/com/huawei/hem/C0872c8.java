package com.huawei.hem;

import android.content.Context;
import android.content.pm.PackageManager;
import com.huawei.hms.framework.common.Logger;
import com.huawei.hms.framework.common.PLSharedPreferences;

/* renamed from: com.huawei.hem.c8 */
/* loaded from: classes.dex */
public class C0872c8 {

    /* renamed from: a */
    public PLSharedPreferences f2329a;

    public C0872c8(Context context, String str) {
        this.f2329a = null;
        String packageName = context.getPackageName();
        Logger.m3430d("c", "get pkgname from context is{%s}", packageName);
        this.f2329a = new PLSharedPreferences(context, C0948f6.m1760e(str, packageName));
        try {
            String string = Long.toString(context.getPackageManager().getPackageInfo(context.getPackageName(), 16384).versionCode);
            String string2 = this.f2329a.getString("version", "");
            if (string.equals(string2)) {
                return;
            }
            Logger.m3435i("c", "app version changed! old version{%s} and new version{%s}", string2, string);
            this.f2329a.clear();
            this.f2329a.putString("version", string);
        } catch (PackageManager.NameNotFoundException unused) {
            Logger.m3438w("c", "get app version failed and catch NameNotFoundException");
        }
    }

    /* renamed from: a */
    public String m1502a(String str, String str2) {
        return this.f2329a.getString(str, str2);
    }
}
