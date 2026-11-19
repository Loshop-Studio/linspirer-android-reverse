package anet.channel.strategy;

import java.util.Comparator;

/* compiled from: Taobao */
/* renamed from: anet.channel.strategy.o */
/* loaded from: classes.dex */
public final class C0410o implements Comparator<StrategyCollection> {
    @Override // java.util.Comparator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compare(StrategyCollection strategyCollection, StrategyCollection strategyCollection2) {
        return strategyCollection.f453b != strategyCollection2.f453b ? (int) (strategyCollection.f453b - strategyCollection2.f453b) : strategyCollection.f452a.compareTo(strategyCollection2.f452a);
    }
}
