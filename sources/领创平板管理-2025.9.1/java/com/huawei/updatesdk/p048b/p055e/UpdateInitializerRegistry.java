package com.huawei.updatesdk.p048b.p055e;

import android.text.TextUtils;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* renamed from: com.huawei.updatesdk.b.e.e */
/* loaded from: classes.dex */
public class UpdateInitializerRegistry {

    /* renamed from: a */
    public static final Map<String, UpdateRegionTaskInitializer> f4705a = new ConcurrentHashMap();

    /* renamed from: a */
    public static UpdateRegionTaskInitializer m3738a(String str) {
        Map<String, UpdateRegionTaskInitializer> map;
        UpdateRegionTaskInitializer c1630c;
        if (TextUtils.isEmpty(str)) {
            return new DefaultMarketTaskInitializer();
        }
        if (f4705a.containsKey(str)) {
            return f4705a.get(str);
        }
        if ("apptouch".equals(str)) {
            map = f4705a;
            c1630c = new AppTouchTaskInitializer();
        } else {
            map = f4705a;
            c1630c = new DefaultMarketTaskInitializer();
        }
        map.put(str, c1630c);
        return f4705a.get(str);
    }
}
