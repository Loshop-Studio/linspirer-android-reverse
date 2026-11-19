package com.huawei.hem;

import java.util.HashMap;
import java.util.Map;

/* renamed from: com.huawei.hem.z9 */
/* loaded from: classes.dex */
public final class C1453z9 {

    /* renamed from: b */
    public static Map<String, C1053ja> f4291b = new HashMap();

    /* renamed from: c */
    public static C1453z9 f4292c;

    /* renamed from: a */
    public C0978ga f4293a = new C0978ga();

    /* renamed from: b */
    public static C1453z9 m3144b() {
        if (f4292c == null) {
            synchronized (C1453z9.class) {
                if (f4292c == null) {
                    f4292c = new C1453z9();
                }
            }
        }
        return f4292c;
    }

    /* renamed from: a */
    public C1053ja m3145a(String str) {
        return f4291b.get(str);
    }
}
