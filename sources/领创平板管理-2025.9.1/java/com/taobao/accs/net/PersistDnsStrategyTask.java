package com.taobao.accs.net;

import anet.channel.strategy.StrategyCenter;

/* compiled from: Taobao */
/* renamed from: com.taobao.accs.net.i */
/* loaded from: classes.dex */
public class PersistDnsStrategyTask implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ AccsDispatchListener f6243a;

    public PersistDnsStrategyTask(AccsDispatchListener c1946h) {
        this.f6243a = c1946h;
    }

    @Override // java.lang.Runnable
    public void run() {
        StrategyCenter.getInstance().saveData();
    }
}
