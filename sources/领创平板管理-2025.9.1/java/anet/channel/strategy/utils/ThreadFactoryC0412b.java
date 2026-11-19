package anet.channel.strategy.utils;

import anet.channel.strategy.dispatch.C0395a;
import anet.channel.util.ALog;
import com.huawei.hem.CompilerOutline;
import java.util.concurrent.ThreadFactory;

/* compiled from: Taobao */
/* renamed from: anet.channel.strategy.utils.b */
/* loaded from: classes.dex */
public final class ThreadFactoryC0412b implements ThreadFactory {
    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        StringBuilder sbM1765j = CompilerOutline.m1765j("AMDC");
        sbM1765j.append(C0411a.f558a.incrementAndGet());
        Thread thread = new Thread(runnable, sbM1765j.toString());
        ALog.m340i(C0395a.TAG, "thread created!", null, "name", thread.getName());
        thread.setPriority(5);
        return thread;
    }
}
