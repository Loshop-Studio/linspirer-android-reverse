package com.huawei.hem;

import android.content.Context;
import com.android.launcher3.GuardSecureApplication;
import com.huawei.hem.C1424y5;

/* compiled from: BaseRequestHelper.java */
/* renamed from: com.huawei.hem.r4 */
/* loaded from: classes.dex */
public class C1248r4 {
    public static long lastTime;
    public C1424y5 userInfoUtil = C1424y5.b.f4202a;
    public C1255rb mHttpCore = new C1255rb();
    public Context mContext = GuardSecureApplication.f1640b;

    public boolean isDoubleClickOrTooFast() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j = jCurrentTimeMillis - lastTime;
        lastTime = jCurrentTimeMillis;
        return j <= 1000;
    }
}
