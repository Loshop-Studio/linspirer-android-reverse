package com.alibaba.sdk.android.push.p025g;

import java.util.concurrent.ConcurrentHashMap;

/* renamed from: com.alibaba.sdk.android.push.g.f */
/* loaded from: classes.dex */
public class VipRequestHistory {

    /* renamed from: a */
    public ConcurrentHashMap<Integer, a> f1243a = new ConcurrentHashMap<>();

    /* renamed from: com.alibaba.sdk.android.push.g.f$a */
    public class a {

        /* renamed from: b */
        public String f1245b;

        /* renamed from: c */
        public String f1246c;

        /* renamed from: d */
        public long f1247d;

        public a(String str, String str2, long j) {
            this.f1245b = str;
            this.f1246c = str2;
            this.f1247d = j;
        }

        /* renamed from: a */
        public String m829a() {
            return this.f1246c;
        }

        /* renamed from: b */
        public long m830b() {
            return this.f1247d;
        }
    }

    /* renamed from: a */
    private boolean m826a(long j, long j2) {
        return j2 - j >= 5000;
    }

    /* renamed from: a */
    public a m827a(int i) {
        a aVar;
        ConcurrentHashMap<Integer, a> concurrentHashMap = this.f1243a;
        if (concurrentHashMap == null || (aVar = concurrentHashMap.get(Integer.valueOf(i))) == null || m826a(aVar.m830b(), System.currentTimeMillis())) {
            return null;
        }
        return aVar;
    }

    /* renamed from: a */
    public void m828a(int i, String str) {
        a aVar;
        if (this.f1243a == null) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        int i2 = 1;
        if (i != 1) {
            i2 = 2;
            if (i != 2) {
                i2 = 3;
                if (i != 3) {
                    i2 = 4;
                    if (i != 4) {
                        return;
                    } else {
                        aVar = new a(String.valueOf(4), str, jCurrentTimeMillis);
                    }
                } else {
                    aVar = new a(String.valueOf(3), str, jCurrentTimeMillis);
                }
            } else {
                aVar = new a(String.valueOf(2), str, jCurrentTimeMillis);
            }
        } else {
            aVar = new a(String.valueOf(1), str, jCurrentTimeMillis);
        }
        this.f1243a.put(Integer.valueOf(i2), aVar);
    }
}
