package com.huawei.updatesdk.p048b.p049a.p050a;

import android.content.pm.PackageInfo;
import android.text.TextUtils;
import com.huawei.hem.CompilerOutline;
import com.huawei.updatesdk.p034a.p035a.p040d.UpdateFileDigests;
import com.huawei.updatesdk.p048b.p052b.UpdateDeviceSession;
import java.util.HashMap;
import java.util.Map;

/* renamed from: com.huawei.updatesdk.b.a.a.b */
/* loaded from: classes.dex */
public class InstalledApkDigestCache {

    /* renamed from: b */
    public static InstalledApkDigestCache f4667b;

    /* renamed from: a */
    public final Map<String, ApkDigestCacheEntry> f4668a = new HashMap();

    /* renamed from: a */
    public static synchronized InstalledApkDigestCache m3648a() {
        if (f4667b == null) {
            f4667b = new InstalledApkDigestCache();
        }
        return f4667b;
    }

    /* renamed from: a */
    public String m3649a(PackageInfo packageInfo) throws Throwable {
        if (packageInfo == null || packageInfo.packageName == null || TextUtils.isEmpty(packageInfo.applicationInfo.sourceDir)) {
            return null;
        }
        ApkDigestCacheEntry c1607a = this.f4668a.get(packageInfo.packageName);
        if (c1607a != null && c1607a.m3646b() == packageInfo.lastUpdateTime && c1607a.m3647c() == packageInfo.versionCode) {
            return c1607a.m3642a();
        }
        StringBuilder sb = new StringBuilder();
        sb.append(packageInfo.lastUpdateTime);
        sb.append(packageInfo.versionCode);
        sb.append(packageInfo.packageName);
        String str = "packagekey" + packageInfo.packageName;
        StringBuilder sbM1765j = CompilerOutline.m1765j("fileshakey");
        sbM1765j.append(packageInfo.packageName);
        String string = sbM1765j.toString();
        boolean z = !TextUtils.equals(sb.toString(), UpdateDeviceSession.m3665d().m3674c(str));
        if (z) {
            UpdateDeviceSession.m3665d().m3670a(str, sb.toString());
        }
        String strM3674c = UpdateDeviceSession.m3665d().m3674c(string);
        if (TextUtils.isEmpty(strM3674c) || z) {
            strM3674c = UpdateFileDigests.m3525a(packageInfo.applicationInfo.sourceDir, "SHA-256");
            UpdateDeviceSession.m3665d().m3670a(string, strM3674c);
        }
        ApkDigestCacheEntry c1607a2 = new ApkDigestCacheEntry();
        c1607a2.m3645a(strM3674c);
        c1607a2.m3644a(packageInfo.lastUpdateTime);
        c1607a2.m3643a(packageInfo.versionCode);
        this.f4668a.put(packageInfo.packageName, c1607a2);
        return strM3674c;
    }
}
