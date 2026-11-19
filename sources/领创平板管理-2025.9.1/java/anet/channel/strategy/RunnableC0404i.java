package anet.channel.strategy;

/* compiled from: Taobao */
/* renamed from: anet.channel.strategy.i */
/* loaded from: classes.dex */
public class RunnableC0404i implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C0402g f515a;

    public RunnableC0404i(C0402g c0402g) {
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
