package anetwork.channel.cache;

import anet.channel.util.ALog;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* compiled from: Taobao */
/* loaded from: classes.dex */
public class CacheManager {

    /* renamed from: a */
    public static List<C0442a> f642a = new ArrayList();

    /* renamed from: b */
    public static final ReentrantReadWriteLock f643b;

    /* renamed from: c */
    public static final ReentrantReadWriteLock.ReadLock f644c;

    /* renamed from: d */
    public static final ReentrantReadWriteLock.WriteLock f645d;

    /* compiled from: Taobao */
    /* renamed from: anetwork.channel.cache.CacheManager$a */
    public static class C0442a implements Comparable<C0442a> {

        /* renamed from: a */
        public final Cache f646a;

        /* renamed from: b */
        public final CachePrediction f647b;

        /* renamed from: c */
        public final int f648c;

        public C0442a(Cache cache, CachePrediction cachePrediction, int i) {
            this.f646a = cache;
            this.f647b = cachePrediction;
            this.f648c = i;
        }

        @Override // java.lang.Comparable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(C0442a c0442a) {
            return this.f648c - c0442a.f648c;
        }
    }

    static {
        ReentrantReadWriteLock reentrantReadWriteLock = new ReentrantReadWriteLock();
        f643b = reentrantReadWriteLock;
        f644c = reentrantReadWriteLock.readLock();
        f645d = f643b.writeLock();
    }

    public static void addCache(Cache cache, CachePrediction cachePrediction, int i) {
        try {
            if (cache == null) {
                throw new IllegalArgumentException("cache is null");
            }
            if (cachePrediction == null) {
                throw new IllegalArgumentException("prediction is null");
            }
            f645d.lock();
            f642a.add(new C0442a(cache, cachePrediction, i));
            Collections.sort(f642a);
        } finally {
            f645d.unlock();
        }
    }

    public static void clearAllCache() {
        ALog.m342w("anet.CacheManager", "clearAllCache", null, new Object[0]);
        Iterator<C0442a> it = f642a.iterator();
        while (it.hasNext()) {
            try {
                it.next().f646a.clear();
            } catch (Exception unused) {
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x001f, code lost:
    
        r3 = r1.f646a;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static anetwork.channel.cache.Cache getCache(java.lang.String r3, java.util.Map<java.lang.String, java.lang.String> r4) {
        /*
            java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock r0 = anetwork.channel.cache.CacheManager.f644c     // Catch: java.lang.Throwable -> L29
            r0.lock()     // Catch: java.lang.Throwable -> L29
            java.util.List<anetwork.channel.cache.CacheManager$a> r0 = anetwork.channel.cache.CacheManager.f642a     // Catch: java.lang.Throwable -> L29
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Throwable -> L29
        Lb:
            boolean r1 = r0.hasNext()     // Catch: java.lang.Throwable -> L29
            if (r1 == 0) goto L27
            java.lang.Object r1 = r0.next()     // Catch: java.lang.Throwable -> L29
            anetwork.channel.cache.CacheManager$a r1 = (anetwork.channel.cache.CacheManager.C0442a) r1     // Catch: java.lang.Throwable -> L29
            anetwork.channel.cache.CachePrediction r2 = r1.f647b     // Catch: java.lang.Throwable -> L29
            boolean r2 = r2.handleCache(r3, r4)     // Catch: java.lang.Throwable -> L29
            if (r2 == 0) goto Lb
            anetwork.channel.cache.Cache r3 = r1.f646a     // Catch: java.lang.Throwable -> L29
        L21:
            java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock r4 = anetwork.channel.cache.CacheManager.f644c
            r4.unlock()
            return r3
        L27:
            r3 = 0
            goto L21
        L29:
            r3 = move-exception
            java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock r4 = anetwork.channel.cache.CacheManager.f644c
            r4.unlock()
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: anetwork.channel.cache.CacheManager.getCache(java.lang.String, java.util.Map):anetwork.channel.cache.Cache");
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x001b, code lost:
    
        r0.remove();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void removeCache(anetwork.channel.cache.Cache r2) {
        /*
            java.util.concurrent.locks.ReentrantReadWriteLock$WriteLock r0 = anetwork.channel.cache.CacheManager.f645d     // Catch: java.lang.Throwable -> L24
            r0.lock()     // Catch: java.lang.Throwable -> L24
            java.util.List<anetwork.channel.cache.CacheManager$a> r0 = anetwork.channel.cache.CacheManager.f642a     // Catch: java.lang.Throwable -> L24
            java.util.ListIterator r0 = r0.listIterator()     // Catch: java.lang.Throwable -> L24
        Lb:
            boolean r1 = r0.hasNext()     // Catch: java.lang.Throwable -> L24
            if (r1 == 0) goto L1e
            java.lang.Object r1 = r0.next()     // Catch: java.lang.Throwable -> L24
            anetwork.channel.cache.CacheManager$a r1 = (anetwork.channel.cache.CacheManager.C0442a) r1     // Catch: java.lang.Throwable -> L24
            anetwork.channel.cache.Cache r1 = r1.f646a     // Catch: java.lang.Throwable -> L24
            if (r1 != r2) goto Lb
            r0.remove()     // Catch: java.lang.Throwable -> L24
        L1e:
            java.util.concurrent.locks.ReentrantReadWriteLock$WriteLock r2 = anetwork.channel.cache.CacheManager.f645d
            r2.unlock()
            return
        L24:
            r2 = move-exception
            java.util.concurrent.locks.ReentrantReadWriteLock$WriteLock r0 = anetwork.channel.cache.CacheManager.f645d
            r0.unlock()
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: anetwork.channel.cache.CacheManager.removeCache(anetwork.channel.cache.Cache):void");
    }
}
