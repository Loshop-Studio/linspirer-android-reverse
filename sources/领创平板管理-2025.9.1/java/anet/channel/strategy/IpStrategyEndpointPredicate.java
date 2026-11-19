package anet.channel.strategy;

import anet.channel.strategy.AmdcStrategyResultParser;
import anet.channel.strategy.StrategyList;

/* compiled from: Taobao */
/* renamed from: anet.channel.strategy.j */
/* loaded from: classes.dex */
public class IpStrategyEndpointPredicate implements StrategyList.Predicate<IPConnStrategy> {

    /* renamed from: a */
    public final /* synthetic */ AmdcStrategyResultParser.a f516a;

    /* renamed from: b */
    public final /* synthetic */ String f517b;

    /* renamed from: c */
    public final /* synthetic */ ConnProtocol f518c;

    /* renamed from: d */
    public final /* synthetic */ StrategyList f519d;

    public IpStrategyEndpointPredicate(StrategyList strategyList, AmdcStrategyResultParser.a aVar, String str, ConnProtocol connProtocol) {
        this.f519d = strategyList;
        this.f516a = aVar;
        this.f517b = str;
        this.f518c = connProtocol;
    }

    @Override // anet.channel.strategy.StrategyList.Predicate
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public boolean apply(IPConnStrategy iPConnStrategy) {
        return iPConnStrategy.getPort() == this.f516a.f521a && iPConnStrategy.getIp().equals(this.f517b) && iPConnStrategy.protocol.equals(this.f518c);
    }
}
