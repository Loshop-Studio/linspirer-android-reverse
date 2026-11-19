package anetwork.channel.unified;

import anet.channel.thread.ThreadPoolExecutorFactory;

/* compiled from: Taobao */
/* renamed from: anetwork.channel.unified.f */
/* loaded from: classes.dex */
public class EnqueueSessionLookupTask implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ UnifiedNetworkTask f776a;

    public EnqueueSessionLookupTask(UnifiedNetworkTask c0464e) {
        this.f776a = c0464e;
    }

    @Override // java.lang.Runnable
    public void run() {
        ThreadPoolExecutorFactory.submitPriorityTask(this.f776a, ThreadPoolExecutorFactory.Priority.HIGH);
    }
}
