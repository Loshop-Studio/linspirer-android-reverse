package com.huawei.hem;

import android.content.Context;

/* renamed from: com.huawei.hem.t9 */
/* loaded from: classes.dex */
public final class HmsAnalyticsInitContext {

    /* renamed from: b */
    public static HmsAnalyticsInitContext f3774b;

    /* renamed from: c */
    public static final Object f3775c = new Object();

    /* renamed from: a */
    public Context f3776a;

    /* renamed from: a */
    public static HmsAnalyticsInitContext m2724a() {
        if (f3774b == null) {
            synchronized (HmsAnalyticsInitContext.class) {
                if (f3774b == null) {
                    f3774b = new HmsAnalyticsInitContext();
                }
            }
        }
        return f3774b;
    }
}
