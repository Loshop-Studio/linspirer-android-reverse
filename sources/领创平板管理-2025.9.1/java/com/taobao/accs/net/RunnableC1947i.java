package com.taobao.accs.net;

import anet.channel.strategy.StrategyCenter;

/* compiled from: Taobao */
/* renamed from: com.taobao.accs.net.i */
/* loaded from: classes.dex */
public class RunnableC1947i implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C1946h f6243a;

    public RunnableC1947i(C1946h c1946h) {
        this.f6243a = c1946h;
    }

    @Override // java.lang.Runnable
    public void run() {
        StrategyCenter.getInstance().saveData();
    }
}
