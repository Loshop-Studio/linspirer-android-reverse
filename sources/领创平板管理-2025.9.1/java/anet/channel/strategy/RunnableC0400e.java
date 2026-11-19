package anet.channel.strategy;

/* compiled from: Taobao */
/* renamed from: anet.channel.strategy.e */
/* loaded from: classes.dex */
public class RunnableC0400e implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ String f505a;

    /* renamed from: b */
    public final /* synthetic */ StrategyInfoHolder f506b;

    public RunnableC0400e(StrategyInfoHolder strategyInfoHolder, String str) {
        this.f506b = strategyInfoHolder;
        this.f505a = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f506b.m269a(this.f505a, true);
    }
}
