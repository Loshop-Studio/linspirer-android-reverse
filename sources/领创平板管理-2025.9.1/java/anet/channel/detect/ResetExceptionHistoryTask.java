package anet.channel.detect;

/* compiled from: Taobao */
/* renamed from: anet.channel.detect.b */
/* loaded from: classes.dex */
public class ResetExceptionHistoryTask implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ ExceptionDetectorNetworkListener f200a;

    public ResetExceptionHistoryTask(ExceptionDetectorNetworkListener c0324a) {
        this.f200a = c0324a;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f200a.f199a.f189e.clear();
        this.f200a.f199a.f185a = 0L;
    }
}
