package anet.channel;

import anet.channel.p003b.C0313a;
import anetwork.channel.cache.CacheManager;

/* compiled from: Taobao */
/* renamed from: anet.channel.j */
/* loaded from: classes.dex */
public final class RunnableC0358j implements Runnable {
    @Override // java.lang.Runnable
    public void run() {
        try {
            C0313a c0313a = new C0313a();
            c0313a.m69a();
            CacheManager.addCache(c0313a, new C0359k(this), 1);
        } catch (Exception unused) {
        }
    }
}
