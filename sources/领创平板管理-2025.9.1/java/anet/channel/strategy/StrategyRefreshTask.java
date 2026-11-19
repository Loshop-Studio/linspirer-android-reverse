package anet.channel.strategy;

/* compiled from: Taobao */
/* renamed from: anet.channel.strategy.i */
/* loaded from: classes.dex */
public class StrategyRefreshTask implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ NetworkStrategyCenter f515a;

    public StrategyRefreshTask(NetworkStrategyCenter c0402g) {
        this.f515a = c0402g;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f515a.m310a()) {
            return;
        }
        this.f515a.f510b.m271c();
    }
}
