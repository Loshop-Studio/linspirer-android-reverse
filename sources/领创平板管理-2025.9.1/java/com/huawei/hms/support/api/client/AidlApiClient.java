package com.huawei.hms.support.api.client;

import com.huawei.hms.core.aidl.InterfaceC1543d;
import java.util.List;

/* loaded from: classes.dex */
public interface AidlApiClient extends ApiClient {
    List<String> getApiNameList();

    InterfaceC1543d getService();
}
