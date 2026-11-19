package com.loc;

import android.os.SystemClock;
import com.loc.C1761bx;
import java.util.List;

/* compiled from: FpsCollector.java */
/* renamed from: com.loc.by */
/* loaded from: classes.dex */
public final class C1762by {

    /* renamed from: g */
    public static volatile C1762by f5169g;

    /* renamed from: h */
    public static Object f5170h = new Object();

    /* renamed from: c */
    public long f5173c;

    /* renamed from: d */
    public C1795dd f5174d;

    /* renamed from: f */
    public C1795dd f5176f = new C1795dd();

    /* renamed from: a */
    public C1761bx f5171a = new C1761bx();

    /* renamed from: b */
    public C1763bz f5172b = new C1763bz();

    /* renamed from: e */
    public C1758bu f5175e = new C1758bu();

    /* compiled from: FpsCollector.java */
    /* renamed from: com.loc.by$a */
    public static class a {

        /* renamed from: a */
        public C1795dd f5177a;

        /* renamed from: b */
        public List<C1796de> f5178b;

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
        public List<AbstractC1788cx> f5185i;

        /* renamed from: j */
        public boolean f5186j;
    }

    /* renamed from: a */
    public static C1762by m4262a() {
        if (f5169g == null) {
            synchronized (f5170h) {
                if (f5169g == null) {
                    f5169g = new C1762by();
                }
            }
        }
        return f5169g;
    }

    /* renamed from: a */
    public final C1765ca m4263a(a aVar) {
        C1765ca c1765ca = null;
        if (aVar == null) {
            return null;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        C1795dd c1795dd = this.f5174d;
        if (c1795dd == null || aVar.f5177a.m4514a(c1795dd) >= 10.0d) {
            C1761bx.a aVarM4258a = this.f5171a.m4258a(aVar.f5177a, aVar.f5186j, aVar.f5183g, aVar.f5184h, aVar.f5185i);
            List<C1796de> listM4271a = this.f5172b.m4271a(aVar.f5177a, aVar.f5178b, aVar.f5181e, aVar.f5180d, jCurrentTimeMillis);
            if (aVarM4258a != null || listM4271a != null) {
                C1786cv.m4432a(this.f5176f, aVar.f5177a, aVar.f5182f, jCurrentTimeMillis);
                c1765ca = new C1765ca(0, this.f5175e.m4249a(this.f5176f, aVarM4258a, aVar.f5179c, listM4271a));
            }
            this.f5174d = aVar.f5177a;
            this.f5173c = jElapsedRealtime;
        }
        return c1765ca;
    }
}
