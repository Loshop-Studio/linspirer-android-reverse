package com.taobao.accs.internal;

import android.content.Context;
import com.taobao.accs.ConnectionListener;
import com.taobao.accs.net.AccsConnectionBase;

/* compiled from: Taobao */
/* renamed from: com.taobao.accs.internal.b */
/* loaded from: classes.dex */
public class AccsClientConnectionListener implements ConnectionListener {

    /* renamed from: a */
    public final /* synthetic */ RegisterAccsConnectionListenerTask f6180a;

    public AccsClientConnectionListener(RegisterAccsConnectionListenerTask runnableC1928a) {
        this.f6180a = runnableC1928a;
    }

    @Override // com.taobao.accs.ConnectionListener
    public void onConnect() {
        if (this.f6180a.f6179c.f6168a.m5647j().m5482e(this.f6180a.f6178b.getPackageName()) && this.f6180a.f6179c.f6170c) {
            RegisterAccsConnectionListenerTask runnableC1928a = this.f6180a;
            ACCSManagerImpl aCCSManagerImpl = runnableC1928a.f6179c;
            Context context = runnableC1928a.f6178b;
            AccsConnectionBase abstractC1940b = aCCSManagerImpl.f6168a;
            aCCSManagerImpl.m5589a(context, abstractC1940b.f6210b, abstractC1940b.f6209a);
        }
    }

    @Override // com.taobao.accs.ConnectionListener
    public void onDisconnect(int i, String str) {
    }
}
