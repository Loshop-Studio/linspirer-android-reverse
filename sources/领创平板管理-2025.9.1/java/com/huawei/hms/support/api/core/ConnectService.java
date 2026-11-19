package com.huawei.hms.support.api.core;

import android.text.TextUtils;
import com.huawei.hem.C0948f6;
import com.huawei.hms.core.aidl.IMessageEntity;
import com.huawei.hms.support.api.PendingResultImpl;
import com.huawei.hms.support.api.ResolvePendingResult;
import com.huawei.hms.support.api.ResolveResult;
import com.huawei.hms.support.api.client.ApiClient;
import com.huawei.hms.support.api.client.InnerPendingResult;
import com.huawei.hms.support.api.client.PendingResult;
import com.huawei.hms.support.api.client.Result;
import com.huawei.hms.support.api.client.Status;
import com.huawei.hms.support.api.entity.core.CheckConnectInfo;
import com.huawei.hms.support.api.entity.core.CheckConnectResp;
import com.huawei.hms.support.api.entity.core.ConnectInfo;
import com.huawei.hms.support.api.entity.core.ConnectResp;
import com.huawei.hms.support.api.entity.core.CoreNaming;
import com.huawei.hms.support.api.entity.core.DisconnectInfo;
import com.huawei.hms.support.api.entity.core.DisconnectResp;
import com.huawei.hms.support.api.entity.core.JosGetNoticeReq;
import com.huawei.hms.support.api.entity.core.JosGetNoticeResp;
import com.huawei.hms.support.log.HMSLog;

/* loaded from: classes.dex */
public final class ConnectService {

    /* renamed from: com.huawei.hms.support.api.core.ConnectService$a */
    public static class C1566a extends PendingResultImpl<ResolveResult<ConnectResp>, ConnectResp> {
        public C1566a(ApiClient apiClient, String str, IMessageEntity iMessageEntity) {
            super(apiClient, str, iMessageEntity);
        }

        @Override // com.huawei.hms.support.api.PendingResultImpl
        public boolean checkApiClient(ApiClient apiClient) {
            return apiClient != null;
        }

        @Override // com.huawei.hms.support.api.PendingResultImpl
        public Result onComplete(IMessageEntity iMessageEntity) {
            ResolveResult resolveResult = new ResolveResult((ConnectResp) iMessageEntity);
            resolveResult.setStatus(Status.SUCCESS);
            HMSLog.m3458d("connectservice", "connect - onComplete: success");
            return resolveResult;
        }
    }

    /* renamed from: com.huawei.hms.support.api.core.ConnectService$b */
    public static class C1567b extends PendingResultImpl<ResolveResult<ConnectResp>, ConnectResp> {
        public C1567b(ApiClient apiClient, String str, IMessageEntity iMessageEntity) {
            super(apiClient, str, iMessageEntity);
        }

        @Override // com.huawei.hms.support.api.PendingResultImpl
        public boolean checkApiClient(ApiClient apiClient) {
            return apiClient != null;
        }

        @Override // com.huawei.hms.support.api.PendingResultImpl
        public Result onComplete(IMessageEntity iMessageEntity) {
            ResolveResult resolveResult = new ResolveResult((ConnectResp) iMessageEntity);
            resolveResult.setStatus(Status.SUCCESS);
            HMSLog.m3458d("connectservice", "forceConnect - onComplete: success");
            return resolveResult;
        }
    }

    /* renamed from: com.huawei.hms.support.api.core.ConnectService$c */
    public static class C1568c extends PendingResultImpl<ResolveResult<JosGetNoticeResp>, JosGetNoticeResp> {
        public C1568c(ApiClient apiClient, String str, IMessageEntity iMessageEntity) {
            super(apiClient, str, iMessageEntity);
        }

        @Override // com.huawei.hms.support.api.PendingResultImpl
        public Result onComplete(IMessageEntity iMessageEntity) {
            JosGetNoticeResp josGetNoticeResp = (JosGetNoticeResp) iMessageEntity;
            if (josGetNoticeResp == null) {
                HMSLog.m3461e("connectservice", "JosNoticeResp is null");
                return null;
            }
            StringBuilder sbM1765j = C0948f6.m1765j("josNoticeResp status code :");
            sbM1765j.append(josGetNoticeResp.getStatusCode());
            HMSLog.m3463i("connectservice", sbM1765j.toString());
            ResolveResult resolveResult = new ResolveResult(josGetNoticeResp);
            resolveResult.setStatus(Status.SUCCESS);
            return resolveResult;
        }
    }

    public static InnerPendingResult<ResolveResult<CheckConnectResp>> checkconnect(ApiClient apiClient, CheckConnectInfo checkConnectInfo) {
        return ResolvePendingResult.build(apiClient, CoreNaming.CHECKCONNECT, checkConnectInfo, CheckConnectResp.class);
    }

    public static PendingResult<ResolveResult<ConnectResp>> connect(ApiClient apiClient, ConnectInfo connectInfo) {
        return new C1566a(apiClient, CoreNaming.CONNECT, connectInfo);
    }

    public static ResolvePendingResult<DisconnectResp> disconnect(ApiClient apiClient, DisconnectInfo disconnectInfo) {
        return ResolvePendingResult.build(apiClient, CoreNaming.DISCONNECT, disconnectInfo, DisconnectResp.class);
    }

    public static PendingResult<ResolveResult<ConnectResp>> forceConnect(ApiClient apiClient, ConnectInfo connectInfo) {
        return new C1567b(apiClient, CoreNaming.FORECONNECT, connectInfo);
    }

    public static PendingResult<ResolveResult<JosGetNoticeResp>> getNotice(ApiClient apiClient, int i, String str) {
        JosGetNoticeReq josGetNoticeReq = new JosGetNoticeReq();
        josGetNoticeReq.setNoticeType(i);
        josGetNoticeReq.setHmsSdkVersionName(str);
        if (!TextUtils.isEmpty(apiClient.getCpID())) {
            josGetNoticeReq.setCpID(apiClient.getCpID());
        }
        return new C1568c(apiClient, CoreNaming.GETNOTICE, josGetNoticeReq);
    }
}
