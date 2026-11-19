package com.huawei.hem;

import android.content.Context;
import java.util.HashMap;
import java.util.Map;

/* renamed from: com.huawei.hem.s6 */
/* loaded from: classes.dex */
public abstract class AbstractC1275s6 {

    /* renamed from: a */
    public static final Map<String, AbstractC1275s6> f3667a = new HashMap();

    /* renamed from: b */
    public static final Object f3668b = new Object();

    /* renamed from: a */
    public static AbstractC1275s6 m2679a(Context context) {
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            context = applicationContext;
        }
        return m2680b(context, context.getPackageName());
    }

    /* renamed from: b */
    public static AbstractC1275s6 m2680b(Context context, String str) {
        AbstractC1275s6 c1375w6;
        synchronized (f3668b) {
            c1375w6 = f3667a.get(str);
            if (c1375w6 == null) {
                c1375w6 = new C1375w6(context, str);
                f3667a.put(str, c1375w6);
            }
        }
        return c1375w6;
    }

    /* renamed from: c */
    public abstract String mo2681c(String str);
}
