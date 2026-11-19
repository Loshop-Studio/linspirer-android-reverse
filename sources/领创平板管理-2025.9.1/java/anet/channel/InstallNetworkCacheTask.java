package anet.channel;

import anet.channel.p003b.AvfsNetworkCache;
import anetwork.channel.cache.CacheManager;

/* compiled from: Taobao */
/* renamed from: anet.channel.j */
/* loaded from: classes.dex */
public final class InstallNetworkCacheTask implements Runnable {
    @Override // java.lang.Runnable
    public void run() {
        try {
            AvfsNetworkCache c0313a = new AvfsNetworkCache();
            c0313a.m69a();
            CacheManager.addCache(c0313a, new AwcnCachePrediction(this), 1);
        } catch (Exception unused) {
        }
    }
}
