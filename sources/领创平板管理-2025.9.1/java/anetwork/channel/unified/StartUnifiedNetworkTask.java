package anetwork.channel.unified;

/* compiled from: Taobao */
/* renamed from: anetwork.channel.unified.l */
/* loaded from: classes.dex */
public class StartUnifiedNetworkTask implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ UnifiedRequestCoordinator f804a;

    public StartUnifiedNetworkTask(UnifiedRequestCoordinator c0470k) {
        this.f804a = c0470k;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f804a.f799a.f797e.run();
    }
}
