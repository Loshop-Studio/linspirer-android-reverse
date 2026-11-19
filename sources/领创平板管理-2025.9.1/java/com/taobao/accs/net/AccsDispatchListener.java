package com.taobao.accs.net;

import anet.channel.strategy.dispatch.DispatchEvent;
import anet.channel.strategy.dispatch.HttpDispatcher;
import com.taobao.accs.common.ThreadPoolExecutorFactory;
import java.util.concurrent.TimeUnit;

/* compiled from: Taobao */
/* renamed from: com.taobao.accs.net.h */
/* loaded from: classes.dex */
public class AccsDispatchListener implements HttpDispatcher.IDispatchEventListener {

    /* renamed from: a */
    public final /* synthetic */ AccsHttpDnsProvider f6242a;

    public AccsDispatchListener(AccsHttpDnsProvider c1945g) {
        this.f6242a = c1945g;
    }

    @Override // anet.channel.strategy.dispatch.HttpDispatcher.IDispatchEventListener
    public void onEvent(DispatchEvent dispatchEvent) {
        ThreadPoolExecutorFactory.schedule(new PersistDnsStrategyTask(this), 2000L, TimeUnit.MILLISECONDS);
    }
}
