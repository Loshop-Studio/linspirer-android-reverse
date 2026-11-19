package com.taobao.accs.net;

import com.taobao.accs.AccsErrorCode;
import com.taobao.accs.utl.ALog;

/* compiled from: Taobao */
/* renamed from: com.taobao.accs.net.d */
/* loaded from: classes.dex */
public class AccsPingTimeoutTask implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ AccsConnectionBase f6229a;

    public AccsPingTimeoutTask(AccsConnectionBase abstractC1940b) {
        this.f6229a = abstractC1940b;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f6229a.f6213e.m5563c()) {
            ALog.m5728e(this.f6229a.mo5641d(), "receive ping time out! ", new Object[0]);
            AccsHeartbeatManagerBase.m5654a(this.f6229a.f6212d).m5659c();
            this.f6229a.mo5630a("", false, "receive ping timeout");
            this.f6229a.f6213e.m5552a(AccsErrorCode.SPDY_PING_TIME_OUT.copy().detail(AccsErrorCode.getAllDetails(null)).build());
        }
    }
}
