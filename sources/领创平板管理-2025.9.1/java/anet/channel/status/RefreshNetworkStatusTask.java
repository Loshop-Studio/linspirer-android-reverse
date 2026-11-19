package anet.channel.status;

/* compiled from: Taobao */
/* renamed from: anet.channel.status.d */
/* loaded from: classes.dex */
public class RefreshNetworkStatusTask implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ NetworkStatusMonitor$2 f444a;

    public RefreshNetworkStatusTask(NetworkStatusMonitor$2 networkStatusMonitor$2) {
        this.f444a = networkStatusMonitor$2;
    }

    @Override // java.lang.Runnable
    public void run() {
        AwcnNetworkStatusMonitor.m243d();
    }
}
