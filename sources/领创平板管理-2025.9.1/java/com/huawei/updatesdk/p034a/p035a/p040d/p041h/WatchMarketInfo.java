package com.huawei.updatesdk.p034a.p035a.p040d.p041h;

import android.text.TextUtils;
import com.huawei.updatesdk.p034a.p035a.UpdateSdkLog;

/* renamed from: com.huawei.updatesdk.a.a.d.h.e */
/* loaded from: classes.dex */
public class WatchMarketInfo {

    /* renamed from: a */
    public static String f4641a = "";

    /* renamed from: a */
    public static boolean m3584a() {
        if ("KidWatch".equals(f4641a)) {
            return true;
        }
        String strM3561a = UpdateDeviceInfoUtil.m3561a("ro.vendor.market.type", "");
        f4641a = strM3561a;
        UpdateSdkLog.m3501b("WearDeviceUtil", "Children watch property value is " + strM3561a);
        if (TextUtils.isEmpty(strM3561a)) {
            return false;
        }
        return "KidWatch".equals(strM3561a);
    }
}
