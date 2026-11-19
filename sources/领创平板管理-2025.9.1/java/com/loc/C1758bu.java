package com.loc;

import android.os.SystemClock;
import com.loc.C1761bx;
import java.util.List;

/* compiled from: FpsBufferBuilder.java */
/* renamed from: com.loc.bu */
/* loaded from: classes.dex */
public final class C1758bu extends AbstractC1757bt {
    public C1758bu() {
        super(2048);
    }

    /* renamed from: a */
    private int m4244a(long j, List<C1796de> list) {
        m4248b(list);
        int size = list.size();
        if (size <= 0) {
            return -1;
        }
        int[] iArr = new int[size];
        for (int i = 0; i < size; i++) {
            C1796de c1796de = list.get(i);
            int iMo4250a = this.f5154a.mo4250a(c1796de.f5296b);
            long j2 = c1796de.f5295a;
            iArr[i] = C1781cq.m4390a(this.f5154a, j2 == j && j2 != -1, c1796de.f5295a, (short) c1796de.f5297c, iMo4250a, c1796de.f5301g, (short) c1796de.f5298d);
        }
        return C1780cp.m4386a(this.f5154a, C1780cp.m4387a(this.f5154a, iArr));
    }

    /* renamed from: a */
    private int m4245a(C1761bx.a aVar) {
        int iM4362a;
        int i;
        C1759bv c1759bv;
        int i2;
        int i3;
        int i4;
        byte b;
        int iM4341a;
        int iM4376a;
        m4247a(aVar.f5167f);
        int size = aVar.f5167f.size();
        int[] iArr = new int[size];
        int i5 = 0;
        while (true) {
            byte b2 = 2;
            if (i5 >= size) {
                int iMo4250a = this.f5154a.mo4250a(aVar.f5163b);
                int iM4307a = C1770cf.m4307a(this.f5154a, iArr);
                int size2 = aVar.f5168g.size();
                int[] iArr2 = new int[size2];
                for (int i6 = 0; i6 < size2; i6++) {
                    AbstractC1788cx abstractC1788cx = aVar.f5168g.get(i6);
                    long jElapsedRealtime = (SystemClock.elapsedRealtime() - abstractC1788cx.f5216e) / 1000;
                    if (jElapsedRealtime > 32767 || jElapsedRealtime < 0) {
                        jElapsedRealtime = 32767;
                    }
                    if (abstractC1788cx instanceof C1790cz) {
                        C1790cz c1790cz = (C1790cz) abstractC1788cx;
                        c1759bv = this.f5154a;
                        i2 = c1790cz.f5226j;
                        i3 = c1790cz.f5227k;
                    } else if (abstractC1788cx instanceof C1792da) {
                        C1792da c1792da = (C1792da) abstractC1788cx;
                        c1759bv = this.f5154a;
                        i2 = c1792da.f5274j;
                        i3 = c1792da.f5275k;
                    } else {
                        if (abstractC1788cx instanceof C1789cy) {
                            C1789cy c1789cy = (C1789cy) abstractC1788cx;
                            iM4362a = C1777cm.m4362a(this.f5154a, c1789cy.f5221j, c1789cy.f5222k, c1789cy.f5223l, (short) jElapsedRealtime);
                            i = 2;
                        } else if (abstractC1788cx instanceof C1793db) {
                            C1793db c1793db = (C1793db) abstractC1788cx;
                            c1759bv = this.f5154a;
                            i2 = c1793db.f5279j;
                            i3 = c1793db.f5280k;
                        } else {
                            iM4362a = 0;
                            i = 0;
                        }
                        iArr2[i6] = C1771cg.m4314a(this.f5154a, (byte) i, iM4362a);
                    }
                    iM4362a = C1778cn.m4369a(c1759bv, i2, i3, (short) jElapsedRealtime);
                    i = 1;
                    iArr2[i6] = C1771cg.m4314a(this.f5154a, (byte) i, iM4362a);
                }
                return C1770cf.m4306a(this.f5154a, iMo4250a, aVar.f5162a, iM4307a, C1770cf.m4310b(this.f5154a, iArr2));
            }
            AbstractC1788cx abstractC1788cx2 = aVar.f5167f.get(i5);
            if (abstractC1788cx2 instanceof C1790cz) {
                C1790cz c1790cz2 = (C1790cz) abstractC1788cx2;
                iM4341a = !c1790cz2.f5220i ? C1775ck.m4341a(this.f5154a, c1790cz2.f5226j, c1790cz2.f5227k, c1790cz2.f5214c, c1790cz2.f5228l) : C1775ck.m4342a(this.f5154a, c1790cz2.m4439b(), c1790cz2.m4440c(), c1790cz2.f5226j, c1790cz2.f5227k, c1790cz2.f5214c, c1790cz2.f5229m, c1790cz2.f5230n, c1790cz2.f5215d, c1790cz2.f5228l);
                i4 = -1;
                b = 1;
            } else {
                if (abstractC1788cx2 instanceof C1792da) {
                    b2 = 3;
                    C1792da c1792da2 = (C1792da) abstractC1788cx2;
                    iM4376a = C1776cl.m4353a(this.f5154a, c1792da2.m4439b(), c1792da2.m4440c(), c1792da2.f5274j, c1792da2.f5275k, c1792da2.f5276l, c1792da2.f5214c, c1792da2.f5277m, c1792da2.f5215d);
                } else if (abstractC1788cx2 instanceof C1789cy) {
                    C1789cy c1789cy2 = (C1789cy) abstractC1788cx2;
                    boolean z = c1789cy2.f5220i;
                    C1759bv c1759bv2 = this.f5154a;
                    int i7 = c1789cy2.f5221j;
                    int i8 = c1789cy2.f5222k;
                    int i9 = c1789cy2.f5223l;
                    int i10 = c1789cy2.f5224m;
                    int i11 = c1789cy2.f5225n;
                    int i12 = c1789cy2.f5214c;
                    iM4376a = !z ? C1769ce.m4296a(c1759bv2, i7, i8, i9, i10, i11, i12) : C1769ce.m4297a(c1759bv2, i7, i8, i9, i10, i11, i12, c1789cy2.f5215d);
                } else if (abstractC1788cx2 instanceof C1793db) {
                    b2 = 4;
                    C1793db c1793db2 = (C1793db) abstractC1788cx2;
                    iM4376a = C1779co.m4376a(this.f5154a, c1793db2.m4439b(), c1793db2.m4440c(), c1793db2.f5279j, c1793db2.f5280k, c1793db2.f5281l, c1793db2.f5214c, c1793db2.f5282m, c1793db2.f5215d);
                } else {
                    i4 = -1;
                    b = 0;
                    iM4341a = -1;
                }
                iM4341a = iM4376a;
                b = b2;
                i4 = -1;
            }
            if (iM4341a == i4) {
                return i4;
            }
            iArr[i5] = C1772ch.m4318a(this.f5154a, abstractC1788cx2.f5219h ? (byte) 1 : (byte) 0, abstractC1788cx2.f5220i ? (byte) 1 : (byte) 0, (short) abstractC1788cx2.f5218g, b, iM4341a);
            i5++;
        }
    }

    /* renamed from: a */
    private int m4246a(C1795dd c1795dd) {
        return C1774cj.m4330a(this.f5154a, c1795dd.f5285c, c1795dd.f5293k, (int) (c1795dd.f5287e * 1000000.0d), (int) (c1795dd.f5286d * 1000000.0d), (int) c1795dd.f5288f, (int) c1795dd.f5291i, (int) c1795dd.f5289g, (short) c1795dd.f5290h, c1795dd.f5294l);
    }

    /* renamed from: a */
    public static void m4247a(List<AbstractC1788cx> list) {
        int i;
        int i2;
        if (list == null || list.size() == 0) {
            return;
        }
        for (AbstractC1788cx abstractC1788cx : list) {
            if (abstractC1788cx instanceof C1790cz) {
                C1790cz c1790cz = (C1790cz) abstractC1788cx;
                i = c1790cz.f5226j;
                i2 = c1790cz.f5227k;
            } else if (abstractC1788cx instanceof C1792da) {
                C1792da c1792da = (C1792da) abstractC1788cx;
                i = c1792da.f5274j;
                i2 = c1792da.f5275k;
            } else if (abstractC1788cx instanceof C1793db) {
                C1793db c1793db = (C1793db) abstractC1788cx;
                i = c1793db.f5279j;
                i2 = c1793db.f5280k;
            } else if (abstractC1788cx instanceof C1789cy) {
                C1789cy c1789cy = (C1789cy) abstractC1788cx;
                i = c1789cy.f5222k;
                i2 = c1789cy.f5223l;
            }
            abstractC1788cx.f5218g = C1784ct.m4408a(C1784ct.m4407a(i, i2));
        }
    }

    /* renamed from: b */
    public static void m4248b(List<C1796de> list) {
        for (C1796de c1796de : list) {
            c1796de.f5301g = C1784ct.m4410b(c1796de.f5295a);
        }
    }

    /* renamed from: a */
    public final byte[] m4249a(C1795dd c1795dd, C1761bx.a aVar, long j, List<C1796de> list) {
        super.m4243a();
        try {
            int iM4246a = m4246a(c1795dd);
            int iM4244a = -1;
            int iM4245a = (aVar == null || aVar.f5167f == null || aVar.f5167f.size() <= 0) ? -1 : m4245a(aVar);
            if (list != null && list.size() > 0) {
                iM4244a = m4244a(j, list);
            }
            C1767cc.m4282a(this.f5154a);
            C1767cc.m4283a(this.f5154a, iM4246a);
            if (iM4245a > 0) {
                C1767cc.m4286c(this.f5154a, iM4245a);
            }
            if (iM4244a > 0) {
                C1767cc.m4285b(this.f5154a, iM4244a);
            }
            this.f5154a.m5191c(C1767cc.m4284b(this.f5154a));
            return this.f5154a.m5192c();
        } catch (Throwable th) {
            C1799dh.m4567a(th);
            return null;
        }
    }
}
