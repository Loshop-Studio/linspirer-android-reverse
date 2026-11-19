package com.huawei.hem;

import android.content.Context;

/* renamed from: com.huawei.hem.t9 */
/* loaded from: classes.dex */
public final class C1303t9 {

    /* renamed from: b */
    public static C1303t9 f3774b;

    /* renamed from: c */
    public static final Object f3775c = new Object();

    /* renamed from: a */
    public Context f3776a;

    /* renamed from: a */
    public static C1303t9 m2724a() {
        if (f3774b == null) {
            synchronized (C1303t9.class) {
                if (f3774b == null) {
                    f3774b = new C1303t9();
                }
            }
        }
        return f3774b;
    }
}
