package com.loc;

import android.os.SystemClock;
import android.util.LongSparseArray;
import java.util.Iterator;
import java.util.List;

/* compiled from: RssiInfoManager.java */
/* renamed from: com.loc.cs */
/* loaded from: classes.dex */
public final class C1783cs {

    /* renamed from: g */
    public static volatile C1783cs f5194g;

    /* renamed from: h */
    public static Object f5195h = new Object();

    /* renamed from: e */
    public Object f5200e = new Object();

    /* renamed from: f */
    public Object f5201f = new Object();

    /* renamed from: a */
    public LongSparseArray<a> f5196a = new LongSparseArray<>();

    /* renamed from: b */
    public LongSparseArray<a> f5197b = new LongSparseArray<>();

    /* renamed from: c */
    public LongSparseArray<a> f5198c = new LongSparseArray<>();

    /* renamed from: d */
    public LongSparseArray<a> f5199d = new LongSparseArray<>();

    /* compiled from: RssiInfoManager.java */
    /* renamed from: com.loc.cs$a */
    public static class a {

        /* renamed from: a */
        public int f5202a;

        /* renamed from: b */
        public long f5203b;

        /* renamed from: c */
        public boolean f5204c;

        public a() {
        }

        public /* synthetic */ a(byte b) {
            this();
        }
    }

    /* renamed from: a */
    public static C1783cs m4399a() {
        if (f5194g == null) {
            synchronized (f5195h) {
                if (f5194g == null) {
                    f5194g = new C1783cs();
                }
            }
        }
        return f5194g;
    }

    /* renamed from: a */
    public static short m4400a(LongSparseArray<a> longSparseArray, long j) {
        synchronized (longSparseArray) {
            a aVar = longSparseArray.get(j);
            if (aVar == null) {
                return (short) 0;
            }
            short sMax = (short) Math.max(1L, Math.min(32767L, (m4402b() - aVar.f5203b) / 1000));
            if (!aVar.f5204c) {
                sMax = (short) (-sMax);
            }
            return sMax;
        }
    }

    /* renamed from: a */
    public static void m4401a(List<InterfaceC1782cr> list, LongSparseArray<a> longSparseArray, LongSparseArray<a> longSparseArray2) {
        long jM4402b = m4402b();
        int size = longSparseArray.size();
        byte b = 0;
        Iterator<InterfaceC1782cr> it = list.iterator();
        if (size == 0) {
            while (it.hasNext()) {
                InterfaceC1782cr next = it.next();
                a aVar = new a(b);
                aVar.f5202a = next.mo4398b();
                aVar.f5203b = jM4402b;
                aVar.f5204c = false;
                longSparseArray2.put(next.mo4397a(), aVar);
            }
            return;
        }
        while (it.hasNext()) {
            InterfaceC1782cr next2 = it.next();
            long jMo4397a = next2.mo4397a();
            a aVar2 = longSparseArray.get(jMo4397a);
            if (aVar2 == null) {
                aVar2 = new a(b);
            } else {
                if (aVar2.f5202a != next2.mo4398b()) {
                }
                longSparseArray2.put(jMo4397a, aVar2);
            }
            aVar2.f5202a = next2.mo4398b();
            aVar2.f5203b = jM4402b;
            aVar2.f5204c = true;
            longSparseArray2.put(jMo4397a, aVar2);
        }
    }

    /* renamed from: b */
    public static long m4402b() {
        return SystemClock.elapsedRealtime();
    }

    /* renamed from: a */
    public final short m4403a(long j) {
        return m4400a(this.f5196a, j);
    }

    /* renamed from: a */
    public final void m4404a(List<InterfaceC1782cr> list) {
        if (list.isEmpty()) {
            return;
        }
        synchronized (this.f5200e) {
            m4401a(list, this.f5196a, this.f5197b);
            LongSparseArray<a> longSparseArray = this.f5196a;
            this.f5196a = this.f5197b;
            this.f5197b = longSparseArray;
            longSparseArray.clear();
        }
    }

    /* renamed from: b */
    public final short m4405b(long j) {
        return m4400a(this.f5198c, j);
    }

    /* renamed from: b */
    public final void m4406b(List<InterfaceC1782cr> list) {
        if (list.isEmpty()) {
            return;
        }
        synchronized (this.f5201f) {
            m4401a(list, this.f5198c, this.f5199d);
            LongSparseArray<a> longSparseArray = this.f5198c;
            this.f5198c = this.f5199d;
            this.f5199d = longSparseArray;
            longSparseArray.clear();
        }
    }
}
