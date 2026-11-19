package com.loc;

import android.os.SystemClock;
import com.loc.CellCollector;
import java.util.List;

/* compiled from: FpsCollector.java */
/* renamed from: com.loc.by */
/* loaded from: classes.dex */
public final class FpsCollector {

    /* renamed from: g */
    public static volatile FpsCollector f5169g;

    /* renamed from: h */
    public static Object f5170h = new Object();

    /* renamed from: c */
    public long f5173c;

    /* renamed from: d */
    public AmapLocationGnss f5174d;

    /* renamed from: f */
    public AmapLocationGnss f5176f = new AmapLocationGnss();

    /* renamed from: a */
    public CellCollector f5171a = new CellCollector();

    /* renamed from: b */
    public WifiCollector f5172b = new WifiCollector();

    /* renamed from: e */
    public FpsBufferBuilder f5175e = new FpsBufferBuilder();

    /* compiled from: FpsCollector.java */
    /* renamed from: com.loc.by$a */
    public static class a {

        /* renamed from: a */
        public AmapLocationGnss f5177a;

        /* renamed from: b */
        public List<AmapWifi> f5178b;

        /* renamed from: c */
        public long f5179c;

        /* renamed from: d */
        public long f5180d;

        /* renamed from: e */
        public boolean f5181e;

        /* renamed from: f */
        public long f5182f;

        /* renamed from: g */
        public byte f5183g;

        /* renamed from: h */
        public String f5184h;

        /* renamed from: i */
        public List<AmapCell> f5185i;

        /* renamed from: j */
        public boolean f5186j;
    }

    /* renamed from: a */
    public static FpsCollector m4262a() {
        if (f5169g == null) {
            synchronized (f5170h) {
                if (f5169g == null) {
                    f5169g = new FpsCollector();
                }
            }
        }
        return f5169g;
    }

    /* renamed from: a */
    public final CollectionData m4263a(a aVar) {
        CollectionData c1765ca = null;
        if (aVar == null) {
            return null;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        AmapLocationGnss c1795dd = this.f5174d;
        if (c1795dd == null || aVar.f5177a.m4514a(c1795dd) >= 10.0d) {
            CellCollector.a aVarM4258a = this.f5171a.m4258a(aVar.f5177a, aVar.f5186j, aVar.f5183g, aVar.f5184h, aVar.f5185i);
            List<AmapWifi> listM4271a = this.f5172b.m4271a(aVar.f5177a, aVar.f5178b, aVar.f5181e, aVar.f5180d, jCurrentTimeMillis);
            if (aVarM4258a != null || listM4271a != null) {
                GpsUtil.m4432a(this.f5176f, aVar.f5177a, aVar.f5182f, jCurrentTimeMillis);
                c1765ca = new CollectionData(0, this.f5175e.m4249a(this.f5176f, aVarM4258a, aVar.f5179c, listM4271a));
            }
            this.f5174d = aVar.f5177a;
            this.f5173c = jElapsedRealtime;
        }
        return c1765ca;
    }
}
