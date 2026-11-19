package com.loc;

import java.util.ArrayList;
import java.util.List;

/* compiled from: RssiManager.java */
/* renamed from: com.loc.ct */
/* loaded from: classes.dex */
public final class C1784ct {

    /* compiled from: RssiManager.java */
    /* renamed from: com.loc.ct$a */
    public static class a implements InterfaceC1782cr {

        /* renamed from: a */
        public int f5205a;

        /* renamed from: b */
        public int f5206b;

        /* renamed from: c */
        public int f5207c;

        public a(int i, int i2, int i3) {
            this.f5205a = i;
            this.f5206b = i2;
            this.f5207c = i3;
        }

        @Override // com.loc.InterfaceC1782cr
        /* renamed from: a */
        public final long mo4397a() {
            return C1784ct.m4407a(this.f5205a, this.f5206b);
        }

        @Override // com.loc.InterfaceC1782cr
        /* renamed from: b */
        public final int mo4398b() {
            return this.f5207c;
        }
    }

    /* compiled from: RssiManager.java */
    /* renamed from: com.loc.ct$b */
    public static class b implements InterfaceC1782cr {

        /* renamed from: a */
        public long f5208a;

        /* renamed from: b */
        public int f5209b;

        public b(long j, int i) {
            this.f5208a = j;
            this.f5209b = i;
        }

        @Override // com.loc.InterfaceC1782cr
        /* renamed from: a */
        public final long mo4397a() {
            return this.f5208a;
        }

        @Override // com.loc.InterfaceC1782cr
        /* renamed from: b */
        public final int mo4398b() {
            return this.f5209b;
        }
    }

    /* renamed from: a */
    public static long m4407a(int i, int i2) {
        return (i2 & 4294967295L) | ((i & 4294967295L) << 32);
    }

    /* renamed from: a */
    public static synchronized short m4408a(long j) {
        return C1783cs.m4399a().m4403a(j);
    }

    /* renamed from: a */
    public static synchronized void m4409a(List<AbstractC1788cx> list) {
        a aVar;
        if (list != null) {
            if (!list.isEmpty()) {
                ArrayList arrayList = new ArrayList(list.size());
                for (AbstractC1788cx abstractC1788cx : list) {
                    if (abstractC1788cx instanceof C1790cz) {
                        C1790cz c1790cz = (C1790cz) abstractC1788cx;
                        aVar = new a(c1790cz.f5226j, c1790cz.f5227k, c1790cz.f5214c);
                    } else if (abstractC1788cx instanceof C1792da) {
                        C1792da c1792da = (C1792da) abstractC1788cx;
                        aVar = new a(c1792da.f5274j, c1792da.f5275k, c1792da.f5214c);
                    } else if (abstractC1788cx instanceof C1793db) {
                        C1793db c1793db = (C1793db) abstractC1788cx;
                        aVar = new a(c1793db.f5279j, c1793db.f5280k, c1793db.f5214c);
                    } else if (abstractC1788cx instanceof C1789cy) {
                        C1789cy c1789cy = (C1789cy) abstractC1788cx;
                        aVar = new a(c1789cy.f5222k, c1789cy.f5223l, c1789cy.f5214c);
                    }
                    arrayList.add(aVar);
                }
                C1783cs.m4399a().m4404a(arrayList);
            }
        }
    }

    /* renamed from: b */
    public static synchronized short m4410b(long j) {
        return C1783cs.m4399a().m4405b(j);
    }

    /* renamed from: b */
    public static synchronized void m4411b(List<C1796de> list) {
        if (list != null) {
            if (!list.isEmpty()) {
                ArrayList arrayList = new ArrayList(list.size());
                for (C1796de c1796de : list) {
                    arrayList.add(new b(c1796de.f5295a, c1796de.f5297c));
                }
                C1783cs.m4399a().m4406b(arrayList);
            }
        }
    }
}
