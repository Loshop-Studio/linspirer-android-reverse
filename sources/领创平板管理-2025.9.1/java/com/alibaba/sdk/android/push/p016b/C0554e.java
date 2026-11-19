package com.alibaba.sdk.android.push.p016b;

import com.alibaba.sdk.android.push.PushControlService;
import com.alibaba.sdk.android.push.p025g.C0576a;

/* renamed from: com.alibaba.sdk.android.push.b.e */
/* loaded from: classes.dex */
public class C0554e implements PushControlService {

    /* renamed from: com.alibaba.sdk.android.push.b.e$a */
    public static class a {

        /* renamed from: a */
        public static final C0554e f1097a = new C0554e();
    }

    public C0554e() {
    }

    /* renamed from: a */
    public static C0554e m743a() {
        return a.f1097a;
    }

    @Override // com.alibaba.sdk.android.push.PushControlService
    public void disconnect() {
        C0576a.m797a().m812f();
    }

    @Override // com.alibaba.sdk.android.push.PushControlService
    public boolean isConnected() {
        return C0576a.m797a().m809c();
    }

    @Override // com.alibaba.sdk.android.push.PushControlService
    public void reconnect() {
        C0576a.m797a().m810d();
    }

    @Override // com.alibaba.sdk.android.push.PushControlService
    public void reset() {
        C0576a.m797a().m811e();
    }

    @Override // com.alibaba.sdk.android.push.PushControlService
    public void setConnectionChangeListener(PushControlService.ConnectionChangeListener connectionChangeListener) {
        C0576a.m797a().m806a(connectionChangeListener);
    }
}
