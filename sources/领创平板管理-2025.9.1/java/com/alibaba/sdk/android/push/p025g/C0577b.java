package com.alibaba.sdk.android.push.p025g;

import com.alibaba.sdk.android.ams.common.logger.AmsLogger;
import com.alibaba.sdk.android.ams.common.p008b.C0498c;
import com.alibaba.sdk.android.ams.common.p008b.InterfaceC0497b;
import com.alibaba.sdk.android.error.ErrorCode;
import com.alibaba.sdk.android.push.CommonCallback;
import com.alibaba.sdk.android.push.common.p018a.C0560d;
import com.alibaba.sdk.android.push.p021d.C0570a;

/* renamed from: com.alibaba.sdk.android.push.g.b */
/* loaded from: classes.dex */
public class C0577b {
    /* renamed from: a */
    public static void m823a(CommonCallback commonCallback, C0580e c0580e) {
        ErrorCode errorCodeM825a = c0580e.m825a();
        AmsLogger.getImportantLogger().m504i("errorCode:" + errorCodeM825a);
        if (errorCodeM825a.getCode().contains(C0560d.f1126a.getCode())) {
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
        InterfaceC0497b interfaceC0497bM492a = C0498c.m492a();
        C0570a c0570aM778a = C0570a.m778a();
        if (c0570aM778a == null || interfaceC0497bM492a == null) {
            return;
        }
        c0570aM778a.m783a(str, str2, interfaceC0497bM492a.mo484b());
    }
}
