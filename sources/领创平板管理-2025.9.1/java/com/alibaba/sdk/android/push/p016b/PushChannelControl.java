package com.alibaba.sdk.android.push.p016b;

import com.alibaba.sdk.android.push.PushControlService;
import com.alibaba.sdk.android.push.p025g.AliyunPushRegistration;

/* renamed from: com.alibaba.sdk.android.push.b.e */
/* loaded from: classes.dex */
public class PushChannelControl implements PushControlService {

    /* renamed from: com.alibaba.sdk.android.push.b.e$a */
    public static class a {

        /* renamed from: a */
        public static final PushChannelControl f1097a = new PushChannelControl();
    }

    public PushChannelControl() {
    }

    /* renamed from: a */
    public static PushChannelControl m743a() {
        return a.f1097a;
    }

    @Override // com.alibaba.sdk.android.push.PushControlService
    public void disconnect() {
        AliyunPushRegistration.m797a().m812f();
    }

    @Override // com.alibaba.sdk.android.push.PushControlService
    public boolean isConnected() {
        return AliyunPushRegistration.m797a().m809c();
    }

    @Override // com.alibaba.sdk.android.push.PushControlService
    public void reconnect() {
        AliyunPushRegistration.m797a().m810d();
    }

    @Override // com.alibaba.sdk.android.push.PushControlService
    public void reset() {
        AliyunPushRegistration.m797a().m811e();
    }

    @Override // com.alibaba.sdk.android.push.PushControlService
    public void setConnectionChangeListener(PushControlService.ConnectionChangeListener connectionChangeListener) {
        AliyunPushRegistration.m797a().m806a(connectionChangeListener);
    }
}
