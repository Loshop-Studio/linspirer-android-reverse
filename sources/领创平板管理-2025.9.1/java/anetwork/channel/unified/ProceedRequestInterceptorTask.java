package anetwork.channel.unified;

import anetwork.channel.unified.UnifiedRequestCoordinator.a;

/* compiled from: Taobao */
/* renamed from: anetwork.channel.unified.m */
/* loaded from: classes.dex */
public class ProceedRequestInterceptorTask implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ UnifiedRequestCoordinator f805a;

    public ProceedRequestInterceptorTask(UnifiedRequestCoordinator c0470k) {
        this.f805a = c0470k;
    }

    @Override // java.lang.Runnable
    public void run() {
        UnifiedRequestCoordinator c0470k = this.f805a;
        c0470k.new a(0, c0470k.f799a.f793a.m425a(), this.f805a.f799a.f794b).proceed(this.f805a.f799a.f793a.m425a(), this.f805a.f799a.f794b);
    }
}
