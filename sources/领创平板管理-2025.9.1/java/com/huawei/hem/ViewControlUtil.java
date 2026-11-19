package com.huawei.hem;

import android.view.View;

/* compiled from: ViewControlUtil.java */
/* renamed from: com.huawei.hem.dc */
/* loaded from: classes.dex */
public class ViewControlUtil {

    /* renamed from: a */
    public static long f2400a;

    /* renamed from: b */
    public static View f2401b;

    /* renamed from: a */
    public static boolean m1583a(View view) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        View view2 = f2401b;
        if (view2 != null && !view2.equals(view)) {
            f2401b = view;
            f2400a = jCurrentTimeMillis;
            return false;
        }
        boolean z = jCurrentTimeMillis - f2400a <= 800;
        f2401b = view;
        f2400a = jCurrentTimeMillis;
        return z;
    }
}
