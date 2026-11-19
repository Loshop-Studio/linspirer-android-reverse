package com.huawei.updatesdk.p048b.p055e;

import android.text.TextUtils;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* renamed from: com.huawei.updatesdk.b.e.e */
/* loaded from: classes.dex */
public class C1632e {

    /* renamed from: a */
    public static final Map<String, AbstractC1628a> f4705a = new ConcurrentHashMap();

    /* renamed from: a */
    public static AbstractC1628a m3738a(String str) {
        Map<String, AbstractC1628a> map;
        AbstractC1628a c1630c;
        if (TextUtils.isEmpty(str)) {
            return new C1630c();
        }
        if (f4705a.containsKey(str)) {
            return f4705a.get(str);
        }
        if ("apptouch".equals(str)) {
            map = f4705a;
            c1630c = new C1629b();
        } else {
            map = f4705a;
            c1630c = new C1630c();
        }
        map.put(str, c1630c);
        return f4705a.get(str);
    }
}
