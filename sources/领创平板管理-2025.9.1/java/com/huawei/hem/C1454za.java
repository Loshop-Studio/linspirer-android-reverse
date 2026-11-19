package com.huawei.hem;

import android.content.Context;
import android.text.TextUtils;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import java.util.HashMap;
import java.util.Map;

/* compiled from: HiAnalyticsBase.java */
/* renamed from: com.huawei.hem.za */
/* loaded from: classes.dex */
public class C1454za {
    public static Map<String, String> getMapForBi(Context context, String str) {
        HashMap map = new HashMap();
        if (context != null && !TextUtils.isEmpty(str)) {
            String[] strArrSplit = str.split("\\.");
            if (strArrSplit.length >= 2) {
                String str2 = strArrSplit[0];
                String str3 = strArrSplit[1];
                map.put("service", str2);
                map.put(HiAnalyticsConstant.HaKey.BI_KEY_APINAME, str3);
                map.put("package", context.getPackageName());
                map.put(HiAnalyticsConstant.HaKey.BI_KEY_BASE_VERSION, "5.2.0.300");
                map.put(HiAnalyticsConstant.HaKey.BI_KEY_CALLTMEI, String.valueOf(System.currentTimeMillis()));
            }
        }
        return map;
    }
}
