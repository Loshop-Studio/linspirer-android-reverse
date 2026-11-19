package com.huawei.hms.api;

import android.os.Bundle;
import com.huawei.hms.core.aidl.CodecLookup;
import com.huawei.hms.core.aidl.HmsAidlDataBuffer;
import com.huawei.hms.core.aidl.MessageCodec;
import com.huawei.hms.core.aidl.IMessageEntity;
import com.huawei.hms.core.aidl.IAIDLCallback;
import com.huawei.hms.core.aidl.RequestHeader;
import com.huawei.hms.support.api.client.AidlApiClient;
import com.huawei.hms.support.api.client.ApiClient;
import com.huawei.hms.support.api.entity.core.CommonCode;
import com.huawei.hms.support.api.transport.DatagramTransport;
import com.huawei.hms.support.log.HMSLog;

/* loaded from: classes.dex */
public class IPCTransport implements DatagramTransport {

    /* renamed from: a */
    public final String f4422a;

    /* renamed from: b */
    public final IMessageEntity f4423b;

    /* renamed from: c */
    public final Class<? extends IMessageEntity> f4424c;

    /* renamed from: d */
    public int f4425d;

    public IPCTransport(String str, IMessageEntity iMessageEntity, Class<? extends IMessageEntity> cls) {
        this.f4422a = str;
        this.f4423b = iMessageEntity;
        this.f4424c = cls;
    }

    /* renamed from: a */
    private int m3246a(ApiClient apiClient, IAIDLCallback interfaceC1542c) {
        if (!(apiClient instanceof HuaweiApiClientImpl)) {
            if (apiClient instanceof AidlApiClient) {
                AidlApiClient aidlApiClient = (AidlApiClient) apiClient;
                HmsAidlDataBuffer c1541b = new HmsAidlDataBuffer(this.f4422a, ProtocolNegotiate.getInstance().getVersion());
                c1541b.m3390a(CodecLookup.m3386a(c1541b.m3392c()).m3401a(this.f4423b, new Bundle()));
                try {
                    aidlApiClient.getService().mo3393a(c1541b, interfaceC1542c);
                    return 0;
                } catch (Exception e) {
                    HMSLog.m3461e("IPCTransport", "sync call ex:" + e);
                }
            }
            return CommonCode.ErrorCode.INTERNAL_ERROR;
        }
        HmsAidlDataBuffer c1541b2 = new HmsAidlDataBuffer(this.f4422a, ProtocolNegotiate.getInstance().getVersion());
        MessageCodec c1544eM3386a = CodecLookup.m3386a(c1541b2.m3392c());
        c1541b2.m3390a(c1544eM3386a.m3401a(this.f4423b, new Bundle()));
        RequestHeader requestHeader = new RequestHeader();
        requestHeader.setAppID(apiClient.getAppID());
        requestHeader.setPackageName(apiClient.getPackageName());
        requestHeader.setSdkVersion(50200300);
        requestHeader.setApiNameList(((HuaweiApiClientImpl) apiClient).getApiNameList());
        requestHeader.setSessionId(apiClient.getSessionId());
        requestHeader.setApiLevel(this.f4425d);
        c1541b2.f4527b = c1544eM3386a.m3401a(requestHeader, new Bundle());
        try {
            HuaweiApiClientImpl huaweiApiClientImpl = (HuaweiApiClientImpl) apiClient;
            if (huaweiApiClientImpl.getService() == null) {
                HMSLog.m3461e("IPCTransport", "HuaweiApiClient is not binded to service yet.");
                return CommonCode.ErrorCode.INTERNAL_ERROR;
            }
            huaweiApiClientImpl.getService().mo3393a(c1541b2, interfaceC1542c);
            return 0;
        } catch (Exception e2) {
            HMSLog.m3461e("IPCTransport", "sync call ex:" + e2);
            return CommonCode.ErrorCode.INTERNAL_ERROR;
        }
    }

    @Override // com.huawei.hms.support.api.transport.DatagramTransport
    public final void post(ApiClient apiClient, DatagramTransport.DatagramResultCallback interfaceC1571a) {
        send(apiClient, interfaceC1571a);
    }

    @Override // com.huawei.hms.support.api.transport.DatagramTransport
    public final void send(ApiClient apiClient, DatagramTransport.DatagramResultCallback interfaceC1571a) {
        int iM3246a = m3246a(apiClient, new IPCCallback(this.f4424c, interfaceC1571a));
        if (iM3246a != 0) {
            interfaceC1571a.mo3452a(iM3246a, null);
        }
    }

    public IPCTransport(String str, IMessageEntity iMessageEntity, Class<? extends IMessageEntity> cls, int i) {
        this.f4422a = str;
        this.f4423b = iMessageEntity;
        this.f4424c = cls;
        this.f4425d = i;
    }
}
