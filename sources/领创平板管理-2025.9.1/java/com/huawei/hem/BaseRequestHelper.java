package com.huawei.hem;

import android.content.Context;
import com.android.launcher3.GuardSecureApplication;
import com.huawei.hem.UserInfoUtil;

/* compiled from: BaseRequestHelper.java */
/* renamed from: com.huawei.hem.r4 */
/* loaded from: classes.dex */
public class BaseRequestHelper {
    public static long lastTime;
    public UserInfoUtil userInfoUtil = UserInfoUtil.b.f4202a;
    public HttpCore mHttpCore = new HttpCore();
    public Context mContext = GuardSecureApplication.f1640b;

    public boolean isDoubleClickOrTooFast() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j = jCurrentTimeMillis - lastTime;
        lastTime = jCurrentTimeMillis;
        return j <= 1000;
    }
}
