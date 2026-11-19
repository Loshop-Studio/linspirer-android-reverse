package anet.channel.strategy;

import java.util.Comparator;

/* compiled from: Taobao */
/* renamed from: anet.channel.strategy.k */
/* loaded from: classes.dex */
public class IpStrategyComparator implements Comparator<IPConnStrategy> {

    /* renamed from: a */
    public final /* synthetic */ StrategyList f520a;

    public IpStrategyComparator(StrategyList strategyList) {
        this.f520a = strategyList;
    }

    @Override // java.util.Comparator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compare(IPConnStrategy iPConnStrategy, IPConnStrategy iPConnStrategy2) {
        int i;
        int i2;
        ConnHistoryItem connHistoryItem = (ConnHistoryItem) this.f520a.f470b.get(Integer.valueOf(iPConnStrategy.getUniqueId()));
        ConnHistoryItem connHistoryItem2 = (ConnHistoryItem) this.f520a.f470b.get(Integer.valueOf(iPConnStrategy2.getUniqueId()));
        int iM250a = connHistoryItem.m250a();
        int iM250a2 = connHistoryItem2.m250a();
        if (iM250a != iM250a2) {
            return iM250a - iM250a2;
        }
        if (iPConnStrategy.f448a != iPConnStrategy2.f448a) {
            i = iPConnStrategy.f448a;
            i2 = iPConnStrategy2.f448a;
        } else {
            i = iPConnStrategy.protocol.isHttp;
            i2 = iPConnStrategy2.protocol.isHttp;
        }
        return i - i2;
    }
}
