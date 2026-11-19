package com.huawei.hem;

import android.content.Context;

/* renamed from: com.huawei.hem.u9 */
/* loaded from: classes.dex */
public final class C1328u9 {

    /* renamed from: c */
    public static C1328u9 f3850c;

    /* renamed from: a */
    public Context f3851a;

    /* renamed from: b */
    public final Object f3852b = new Object();

    /* renamed from: a */
    public static C1328u9 m2787a() {
        if (f3850c == null) {
            synchronized (C1328u9.class) {
                if (f3850c == null) {
                    f3850c = new C1328u9();
                }
            }
        }
        return f3850c;
    }
}
