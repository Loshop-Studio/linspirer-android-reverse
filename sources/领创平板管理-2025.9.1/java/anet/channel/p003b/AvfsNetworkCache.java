package anet.channel.p003b;

import anet.channel.util.ALog;
import anet.channel.util.StringUtils;
import anetwork.channel.cache.Cache;
import com.taobao.alivfssdk.cache.AVFSCache;
import com.taobao.alivfssdk.cache.AVFSCacheConfig;
import com.taobao.alivfssdk.cache.AVFSCacheManager;
import com.taobao.alivfssdk.cache.IAVFSCache;

/* compiled from: Taobao */
/* renamed from: anet.channel.b.a */
/* loaded from: classes.dex */
public class AvfsNetworkCache implements Cache {

    /* renamed from: a */
    public static boolean f169a = true;

    /* renamed from: b */
    public static Object f170b;

    /* renamed from: c */
    public static Object f171c;

    /* renamed from: d */
    public static Object f172d;

    static {
        try {
            Class.forName("com.taobao.alivfssdk.cache.AVFSCacheManager");
            f170b = new AvfsObjectSetCallback();
            f171c = new AvfsObjectRemoveCallback();
            f172d = new AvfsClearCallback();
        } catch (ClassNotFoundException unused) {
            f169a = false;
            ALog.m342w("anet.AVFSCacheImpl", "no alivfs sdk!", null, new Object[0]);
        }
    }

    /* renamed from: b */
    private IAVFSCache m68b() {
        AVFSCache aVFSCacheCacheForModule = AVFSCacheManager.getInstance().cacheForModule("networksdk.httpcache");
        if (aVFSCacheCacheForModule != null) {
            return aVFSCacheCacheForModule.getFileCache();
        }
        return null;
    }

    /* renamed from: a */
    public void m69a() {
        AVFSCache aVFSCacheCacheForModule;
        if (f169a && (aVFSCacheCacheForModule = AVFSCacheManager.getInstance().cacheForModule("networksdk.httpcache")) != null) {
            AVFSCacheConfig aVFSCacheConfig = new AVFSCacheConfig();
            aVFSCacheConfig.limitSize = 5242880L;
            aVFSCacheConfig.fileMemMaxSize = 1048576L;
            aVFSCacheCacheForModule.moduleConfig(aVFSCacheConfig);
        }
    }

    @Override // anetwork.channel.cache.Cache
    public void clear() {
        if (f169a) {
            try {
                IAVFSCache iAVFSCacheM68b = m68b();
                if (iAVFSCacheM68b != null) {
                    iAVFSCacheM68b.removeAllObject((IAVFSCache.OnAllObjectRemoveCallback) f172d);
                }
            } catch (Exception e) {
                ALog.m338e("anet.AVFSCacheImpl", "clear cache failed", null, e, new Object[0]);
            }
        }
    }

    @Override // anetwork.channel.cache.Cache
    public Cache.Entry get(String str) {
        if (!f169a) {
            return null;
        }
        try {
            IAVFSCache iAVFSCacheM68b = m68b();
            if (iAVFSCacheM68b != null) {
                return (Cache.Entry) iAVFSCacheM68b.objectForKey(StringUtils.md5ToHex(str));
            }
        } catch (Exception e) {
            ALog.m338e("anet.AVFSCacheImpl", "get cache failed", null, e, new Object[0]);
        }
        return null;
    }

    @Override // anetwork.channel.cache.Cache
    public void put(String str, Cache.Entry entry) {
        if (f169a) {
            try {
                IAVFSCache iAVFSCacheM68b = m68b();
                if (iAVFSCacheM68b != null) {
                    iAVFSCacheM68b.setObjectForKey(StringUtils.md5ToHex(str), entry, (IAVFSCache.OnObjectSetCallback) f170b);
                }
            } catch (Exception e) {
                ALog.m338e("anet.AVFSCacheImpl", "put cache failed", null, e, new Object[0]);
            }
        }
    }

    @Override // anetwork.channel.cache.Cache
    public void remove(String str) {
        if (f169a) {
            try {
                IAVFSCache iAVFSCacheM68b = m68b();
                if (iAVFSCacheM68b != null) {
                    iAVFSCacheM68b.removeObjectForKey(StringUtils.md5ToHex(str), (IAVFSCache.OnObjectRemoveCallback) f171c);
                }
            } catch (Exception e) {
                ALog.m338e("anet.AVFSCacheImpl", "remove cache failed", null, e, new Object[0]);
            }
        }
    }
}
