package anet.channel.util;

import anet.channel.statist.NetTypeStat;
import anet.channel.thread.ThreadPoolExecutorFactory;

/* compiled from: Taobao */
/* renamed from: anet.channel.util.d */
/* loaded from: classes.dex */
public final class RunnableC0423d implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ String f590a;

    /* renamed from: b */
    public final /* synthetic */ NetTypeStat f591b;

    public RunnableC0423d(String str, NetTypeStat netTypeStat) {
        this.f590a = str;
        this.f591b = netTypeStat;
    }

    @Override // java.lang.Runnable
    public void run() {
        ThreadPoolExecutorFactory.submitPriorityTask(new RunnableC0424e(this), ThreadPoolExecutorFactory.Priority.LOW);
    }
}
