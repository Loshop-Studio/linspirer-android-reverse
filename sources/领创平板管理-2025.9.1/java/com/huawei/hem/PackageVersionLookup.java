package com.huawei.hem;

import android.content.Context;
import android.content.pm.PackageManager;
import com.loc.AMapLog;

/* renamed from: com.huawei.hem.ob */
/* loaded from: classes.dex */
public class PackageVersionLookup {
    /* renamed from: a */
    public static String m2431a(String str) {
        Context context = MobileSdkPlatformUtilities.f3159b;
        if (context == null) {
            return "";
        }
        try {
            return context.getPackageManager().getPackageInfo(str, 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("getVersion NameNotFoundException : ");
            sbM1765j.append(e.getMessage());
            MobileSdkPlatformUtilities.m2264E(AMapLog.f5947g, sbM1765j.toString());
            return "";
        } catch (Exception e2) {
            StringBuilder sbM1765j2 = CompilerOutline.m1765j("getVersion: ");
            sbM1765j2.append(e2.getMessage());
            MobileSdkPlatformUtilities.m2264E(AMapLog.f5947g, sbM1765j2.toString());
            return "";
        } catch (Throwable unused) {
            MobileSdkPlatformUtilities.m2264E(AMapLog.f5947g, "throwable");
            return "";
        }
    }
}
