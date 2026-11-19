package anet.channel.strategy;

import anet.channel.statist.StrategyStatObject;
import anet.channel.strategy.StrategyInfoHolder;
import java.io.Serializable;
import java.util.Map;

/* compiled from: Taobao */
/* renamed from: anet.channel.strategy.f */
/* loaded from: classes.dex */
public class RunnableC0401f implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Map.Entry f507a;

    /* renamed from: b */
    public final /* synthetic */ StrategyInfoHolder.LruStrategyMap f508b;

    public RunnableC0401f(StrategyInfoHolder.LruStrategyMap lruStrategyMap, Map.Entry entry) {
        this.f508b = lruStrategyMap;
        this.f507a = entry;
    }

    @Override // java.lang.Runnable
    public void run() {
        StrategyTable strategyTable = (StrategyTable) this.f507a.getValue();
        if (strategyTable.f477d) {
            StrategyStatObject strategyStatObject = new StrategyStatObject(1);
            strategyStatObject.writeStrategyFileId = strategyTable.f474a;
            C0408m.m319a((Serializable) this.f507a.getValue(), strategyTable.f474a, strategyStatObject);
            strategyTable.f477d = false;
        }
    }
}
