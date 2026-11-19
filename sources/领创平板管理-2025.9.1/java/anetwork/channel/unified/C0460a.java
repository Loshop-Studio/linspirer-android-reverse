package anetwork.channel.unified;

import android.support.v4.app.Person;
import anet.channel.bytes.ByteArray;
import anet.channel.request.Request;
import anet.channel.statist.RequestStatistic;
import anet.channel.util.ALog;
import anet.channel.util.HttpConstant;
import anetwork.channel.aidl.DefaultFinishEvent;
import anetwork.channel.cache.Cache;
import anetwork.channel.entity.C0458g;
import anetwork.channel.interceptor.Callback;

/* compiled from: Taobao */
/* renamed from: anetwork.channel.unified.a */
/* loaded from: classes.dex */
public class C0460a implements IUnifiedTask {

    /* renamed from: a */
    public C0469j f748a;

    /* renamed from: b */
    public Cache f749b;

    /* renamed from: c */
    public volatile boolean f750c = false;

    public C0460a(C0469j c0469j, Cache cache) {
        this.f748a = null;
        this.f749b = null;
        this.f748a = c0469j;
        this.f749b = cache;
    }

    @Override // anet.channel.request.Cancelable
    public void cancel() {
        this.f750c = true;
        this.f748a.f793a.f737b.ret = 2;
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean zEquals;
        Cache.Entry entry;
        if (this.f750c) {
            return;
        }
        C0458g c0458g = this.f748a.f793a;
        RequestStatistic requestStatistic = c0458g.f737b;
        if (this.f749b != null) {
            String strM434g = c0458g.m434g();
            Request requestM425a = this.f748a.f793a.m425a();
            String str = requestM425a.getHeaders().get(HttpConstant.CACHE_CONTROL);
            boolean zEquals2 = "no-store".equals(str);
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (zEquals2) {
                this.f749b.remove(strM434g);
                zEquals = false;
                entry = null;
            } else {
                zEquals = "no-cache".equals(str);
                entry = this.f749b.get(strM434g);
                if (ALog.isPrintLog(2)) {
                    String str2 = this.f748a.f795c;
                    Object[] objArr = new Object[8];
                    objArr[0] = "hit";
                    objArr[1] = Boolean.valueOf(entry != null);
                    objArr[2] = "cost";
                    objArr[3] = Long.valueOf(requestStatistic.cacheTime);
                    objArr[4] = "length";
                    objArr[5] = Integer.valueOf(entry != null ? entry.data.length : 0);
                    objArr[6] = Person.KEY_KEY;
                    objArr[7] = strM434g;
                    ALog.m340i("anet.CacheTask", "read cache", str2, objArr);
                }
            }
            long jCurrentTimeMillis2 = System.currentTimeMillis();
            requestStatistic.cacheTime = jCurrentTimeMillis2 - jCurrentTimeMillis;
            if (entry == null || zEquals || !entry.isFresh()) {
                if (this.f750c) {
                    return;
                }
                C0464e c0464e = new C0464e(this.f748a, zEquals2 ? null : this.f749b, entry);
                this.f748a.f797e = c0464e;
                c0464e.run();
                return;
            }
            if (this.f748a.f796d.compareAndSet(false, true)) {
                this.f748a.m458a();
                requestStatistic.ret = 1;
                requestStatistic.statusCode = 200;
                requestStatistic.msg = HttpConstant.SUCCESS;
                requestStatistic.protocolType = "cache";
                requestStatistic.rspEnd = jCurrentTimeMillis2;
                requestStatistic.processTime = jCurrentTimeMillis2 - requestStatistic.start;
                if (ALog.isPrintLog(2)) {
                    C0469j c0469j = this.f748a;
                    ALog.m340i("anet.CacheTask", "hit fresh cache", c0469j.f795c, "URL", c0469j.f793a.m433f().urlString());
                }
                this.f748a.f794b.onResponseCode(200, entry.responseHeaders);
                Callback callback = this.f748a.f794b;
                byte[] bArr = entry.data;
                callback.onDataReceiveSize(1, bArr.length, ByteArray.wrap(bArr));
                this.f748a.f794b.onFinish(new DefaultFinishEvent(200, HttpConstant.SUCCESS, requestM425a));
            }
        }
    }
}
