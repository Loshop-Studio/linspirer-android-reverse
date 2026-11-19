package com.huawei.hms.support.api.transport;

import com.huawei.hms.core.aidl.IMessageEntity;
import com.huawei.hms.support.api.client.ApiClient;

/* loaded from: classes.dex */
public interface DatagramTransport {

    /* renamed from: com.huawei.hms.support.api.transport.DatagramTransport$a */
    public interface InterfaceC1571a {
        /* renamed from: a */
        void mo3452a(int i, IMessageEntity iMessageEntity);
    }

    void post(ApiClient apiClient, InterfaceC1571a interfaceC1571a);

    void send(ApiClient apiClient, InterfaceC1571a interfaceC1571a);
}
