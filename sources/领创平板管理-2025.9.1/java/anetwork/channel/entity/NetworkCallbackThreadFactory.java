package anetwork.channel.entity;

import java.util.concurrent.ThreadFactory;

/* compiled from: Taobao */
/* renamed from: anetwork.channel.entity.b */
/* loaded from: classes.dex */
public final class NetworkCallbackThreadFactory implements ThreadFactory {
    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        return new Thread(runnable, String.format("RepeaterThread:%d", Integer.valueOf(NetworkCallbackExecutors.f718b.getAndIncrement())));
    }
}
