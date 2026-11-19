package com.taobao.accs.client;

import com.taobao.accs.utl.UtilityImpl;

/* compiled from: Taobao */
/* renamed from: com.taobao.accs.client.d */
/* loaded from: classes.dex */
public class RunnableC1913d implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ GlobalClientInfo f6074a;

    public RunnableC1913d(GlobalClientInfo globalClientInfo) {
        this.f6074a = globalClientInfo;
    }

    @Override // java.lang.Runnable
    public void run() {
        GlobalClientInfo.f6060b = UtilityImpl.m5769j(GlobalClientInfo.f6059a);
    }
}
