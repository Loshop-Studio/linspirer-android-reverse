package com.huawei.hem;

import android.content.Context;

/* renamed from: com.huawei.hem.u9 */
/* loaded from: classes.dex */
public final class AnalyticsReportingContext {

    /* renamed from: c */
    public static AnalyticsReportingContext f3850c;

    /* renamed from: a */
    public Context f3851a;

    /* renamed from: b */
    public final Object f3852b = new Object();

    /* renamed from: a */
    public static AnalyticsReportingContext m2787a() {
        if (f3850c == null) {
            synchronized (AnalyticsReportingContext.class) {
                if (f3850c == null) {
                    f3850c = new AnalyticsReportingContext();
                }
            }
        }
        return f3850c;
    }
}
