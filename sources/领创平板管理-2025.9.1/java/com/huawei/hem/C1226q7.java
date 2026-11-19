package com.huawei.hem;

import com.huawei.hem.license.HemLicenseStatusListener;
import com.huawei.hms.common.internal.AnyClient;
import com.huawei.hms.common.internal.ResponseErrorCode;
import com.huawei.hms.common.internal.TaskApiCall;

/* renamed from: com.huawei.hem.q7 */
/* loaded from: classes.dex */
public final class C1226q7 extends TaskApiCall<C1151n7, Integer> {

    /* renamed from: a */
    public HemLicenseStatusListener f3492a;

    public C1226q7(String str, String str2) {
        super(str, str2);
        this.f3492a = null;
    }

    @Override // com.huawei.hms.common.internal.TaskApiCall
    public final /* synthetic */ void doExecute(AnyClient anyClient, ResponseErrorCode responseErrorCode, String str, C1401x7<Integer> c1401x7) throws NumberFormatException {
        if (responseErrorCode.getErrorCode() != 0) {
            this.f3492a.onStatus(1000, C1251r7.m2655a(1000));
        } else {
            int i = Integer.parseInt(str);
            this.f3492a.onStatus(i, C1251r7.m2655a(i));
        }
    }
}
