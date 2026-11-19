package com.alibaba.sdk.android.push.common.util;

import android.content.Context;
import com.alibaba.sdk.android.ams.common.logger.AmsLogger;

/* renamed from: com.alibaba.sdk.android.push.common.util.c */
/* loaded from: classes.dex */
public class PushProcessCheck {

    /* renamed from: a */
    public static final String f1195a = "com.alibaba.sdk.android.push.common.util.c";

    /* renamed from: b */
    public static AmsLogger f1196b = AmsLogger.getLogger(PushProcessCheck.class.getName());

    /* renamed from: a */
    public static boolean m777a(Context context) {
        return AppInfoUtil.isMainProcess(context);
    }
}
