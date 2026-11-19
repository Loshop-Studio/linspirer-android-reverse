package com.huawei.hem;

import android.content.Context;
import android.content.pm.PackageManager;
import com.loc.C1860u;

/* renamed from: com.huawei.hem.ob */
/* loaded from: classes.dex */
public class C1180ob {
    /* renamed from: a */
    public static String m2431a(String str) {
        Context context = AbstractC1102l9.f3159b;
        if (context == null) {
            return "";
        }
        try {
            return context.getPackageManager().getPackageInfo(str, 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            StringBuilder sbM1765j = C0948f6.m1765j("getVersion NameNotFoundException : ");
            sbM1765j.append(e.getMessage());
            AbstractC1102l9.m2264E(C1860u.f5947g, sbM1765j.toString());
            return "";
        } catch (Exception e2) {
            StringBuilder sbM1765j2 = C0948f6.m1765j("getVersion: ");
            sbM1765j2.append(e2.getMessage());
            AbstractC1102l9.m2264E(C1860u.f5947g, sbM1765j2.toString());
            return "";
        } catch (Throwable unused) {
            AbstractC1102l9.m2264E(C1860u.f5947g, "throwable");
            return "";
        }
    }
}
