package com.huawei.hem;

import com.alibaba.sdk.android.tbrest.rest.RestUrlWrapper;
import com.huawei.hms.framework.common.hianalytics.HianalyticsBaseData;

/* renamed from: com.huawei.hem.l8 */
/* loaded from: classes.dex */
public class NetworkAnalyticsBaseData extends HianalyticsBaseData {
    public NetworkAnalyticsBaseData() {
        put(RestUrlWrapper.FIELD_SDK_VERSION, "4.0.20.301");
        put("if_name", "NetworkKit-grs");
    }
}
