package anetwork.channel.unified;

import anet.channel.thread.ThreadPoolExecutorFactory;

/* compiled from: Taobao */
/* renamed from: anetwork.channel.unified.f */
/* loaded from: classes.dex */
public class RunnableC0465f implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C0464e f776a;

    public RunnableC0465f(C0464e c0464e) {
        this.f776a = c0464e;
    }

    @Override // java.lang.Runnable
    public void run() {
        ThreadPoolExecutorFactory.submitPriorityTask(this.f776a, ThreadPoolExecutorFactory.Priority.HIGH);
    }
}
