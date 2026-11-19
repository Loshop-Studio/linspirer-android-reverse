package com.alibaba.sdk.android.push.p025g;

import com.alibaba.sdk.android.ams.common.logger.AmsLogger;
import com.alibaba.sdk.android.ams.common.p008b.AmsCommonProviders;
import com.alibaba.sdk.android.ams.common.p008b.AmsClientIdentity;
import com.alibaba.sdk.android.error.ErrorCode;
import com.alibaba.sdk.android.push.CommonCallback;
import com.alibaba.sdk.android.push.common.p018a.PushErrorCatalog;
import com.alibaba.sdk.android.push.p021d.PushReportManager;

/* renamed from: com.alibaba.sdk.android.push.g.b */
/* loaded from: classes.dex */
public class PushRegistrationResultDispatcher {
    /* renamed from: a */
    public static void m823a(CommonCallback commonCallback, PushRegistrationResult c0580e) {
        ErrorCode errorCodeM825a = c0580e.m825a();
        AmsLogger.getImportantLogger().m504i("errorCode:" + errorCodeM825a);
        if (errorCodeM825a.getCode().contains(PushErrorCatalog.f1126a.getCode())) {
            if (commonCallback != null) {
                commonCallback.onSuccess(errorCodeM825a.getMsg());
            }
        } else {
            if (commonCallback != null) {
                commonCallback.onFailed(errorCodeM825a.getCode(), errorCodeM825a.getMsg());
            }
            m824a(errorCodeM825a.getCode(), errorCodeM825a.getMsg());
        }
    }

    /* renamed from: a */
    public static void m824a(String str, String str2) {
        AmsClientIdentity interfaceC0497bM492a = AmsCommonProviders.m492a();
        PushReportManager c0570aM778a = PushReportManager.m778a();
        if (c0570aM778a == null || interfaceC0497bM492a == null) {
            return;
        }
        c0570aM778a.m783a(str, str2, interfaceC0497bM492a.mo484b());
    }
}
