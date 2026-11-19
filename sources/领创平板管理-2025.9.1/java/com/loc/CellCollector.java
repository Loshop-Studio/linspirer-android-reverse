package com.loc;

import android.os.SystemClock;
import android.support.v7.widget.RecyclerView;
import com.huawei.hem.CompilerOutline;
import java.util.ArrayList;
import java.util.List;

/* compiled from: CellCollector.java */
/* renamed from: com.loc.bx */
/* loaded from: classes.dex */
public final class CellCollector {

    /* renamed from: a */
    public AmapCell f5157a;

    /* renamed from: b */
    public AmapCell f5158b;

    /* renamed from: c */
    public AmapLocationGnss f5159c;

    /* renamed from: d */
    public a f5160d = new a();

    /* renamed from: e */
    public final List<AmapCell> f5161e = new ArrayList(3);

    /* compiled from: CellCollector.java */
    /* renamed from: com.loc.bx$a */
    public static class a {

        /* renamed from: a */
        public byte f5162a;

        /* renamed from: b */
        public String f5163b;

        /* renamed from: c */
        public AmapCell f5164c;

        /* renamed from: d */
        public AmapCell f5165d;

        /* renamed from: e */
        public AmapCell f5166e;

        /* renamed from: f */
        public List<AmapCell> f5167f = new ArrayList();

        /* renamed from: g */
        public List<AmapCell> f5168g = new ArrayList();

        /* renamed from: a */
        public static boolean m4259a(AmapCell abstractC1788cx, AmapCell abstractC1788cx2) {
            if (abstractC1788cx == null || abstractC1788cx2 == null) {
                return (abstractC1788cx == null) == (abstractC1788cx2 == null);
            }
            if ((abstractC1788cx instanceof AmapCellGsm) && (abstractC1788cx2 instanceof AmapCellGsm)) {
                AmapCellGsm c1790cz = (AmapCellGsm) abstractC1788cx;
                AmapCellGsm c1790cz2 = (AmapCellGsm) abstractC1788cx2;
                return c1790cz.f5226j == c1790cz2.f5226j && c1790cz.f5227k == c1790cz2.f5227k;
            }
            if ((abstractC1788cx instanceof AmapCellCdma) && (abstractC1788cx2 instanceof AmapCellCdma)) {
                AmapCellCdma c1789cy = (AmapCellCdma) abstractC1788cx;
                AmapCellCdma c1789cy2 = (AmapCellCdma) abstractC1788cx2;
                return c1789cy.f5223l == c1789cy2.f5223l && c1789cy.f5222k == c1789cy2.f5222k && c1789cy.f5221j == c1789cy2.f5221j;
            }
            if ((abstractC1788cx instanceof AmapCellLte) && (abstractC1788cx2 instanceof AmapCellLte)) {
                AmapCellLte c1792da = (AmapCellLte) abstractC1788cx;
                AmapCellLte c1792da2 = (AmapCellLte) abstractC1788cx2;
                return c1792da.f5274j == c1792da2.f5274j && c1792da.f5275k == c1792da2.f5275k;
            }
            if ((abstractC1788cx instanceof AmapCellWcdma) && (abstractC1788cx2 instanceof AmapCellWcdma)) {
                AmapCellWcdma c1793db = (AmapCellWcdma) abstractC1788cx;
                AmapCellWcdma c1793db2 = (AmapCellWcdma) abstractC1788cx2;
                if (c1793db.f5279j == c1793db2.f5279j && c1793db.f5280k == c1793db2.f5280k) {
                    return true;
                }
            }
            return false;
        }

        /* renamed from: a */
        public final void m4260a() {
            this.f5162a = (byte) 0;
            this.f5163b = "";
            this.f5164c = null;
            this.f5165d = null;
            this.f5166e = null;
            this.f5167f.clear();
            this.f5168g.clear();
        }

        /* renamed from: a */
        public final void m4261a(byte b, String str, List<AmapCell> list) {
            m4260a();
            this.f5162a = b;
            this.f5163b = str;
            if (list != null) {
                this.f5167f.addAll(list);
                for (AmapCell abstractC1788cx : this.f5167f) {
                    if (!abstractC1788cx.f5220i && abstractC1788cx.f5219h) {
                        this.f5165d = abstractC1788cx;
                    } else if (abstractC1788cx.f5220i && abstractC1788cx.f5219h) {
                        this.f5166e = abstractC1788cx;
                    }
                }
            }
            AmapCell abstractC1788cx2 = this.f5165d;
            if (abstractC1788cx2 == null) {
                abstractC1788cx2 = this.f5166e;
            }
            this.f5164c = abstractC1788cx2;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("CellInfo{radio=");
            sb.append((int) this.f5162a);
            sb.append(", operator='");
            CompilerOutline.m1781z(sb, this.f5163b, '\'', ", mainCell=");
            sb.append(this.f5164c);
            sb.append(", mainOldInterCell=");
            sb.append(this.f5165d);
            sb.append(", mainNewInterCell=");
            sb.append(this.f5166e);
            sb.append(", cells=");
            sb.append(this.f5167f);
            sb.append(", historyMainCellList=");
            sb.append(this.f5168g);
            sb.append('}');
            return sb.toString();
        }
    }

    /* renamed from: a */
    private void m4255a(a aVar) {
        synchronized (this.f5161e) {
            for (AmapCell abstractC1788cx : aVar.f5167f) {
                if (abstractC1788cx != null && abstractC1788cx.f5219h) {
                    AmapCell abstractC1788cxClone = abstractC1788cx.clone();
                    abstractC1788cxClone.f5216e = SystemClock.elapsedRealtime();
                    m4256a(abstractC1788cxClone);
                }
            }
            this.f5160d.f5168g.clear();
            this.f5160d.f5168g.addAll(this.f5161e);
        }
    }

    /* renamed from: a */
    private void m4256a(AmapCell abstractC1788cx) {
        if (abstractC1788cx == null) {
            return;
        }
        int size = this.f5161e.size();
        if (size != 0) {
            long jMin = RecyclerView.FOREVER_NS;
            int i = 0;
            int i2 = -1;
            int i3 = -1;
            while (true) {
                if (i >= size) {
                    i2 = i3;
                    break;
                }
                AmapCell abstractC1788cx2 = this.f5161e.get(i);
                if (abstractC1788cx.equals(abstractC1788cx2)) {
                    int i4 = abstractC1788cx.f5214c;
                    if (i4 != abstractC1788cx2.f5214c) {
                        abstractC1788cx2.f5216e = i4;
                        abstractC1788cx2.f5214c = i4;
                    }
                } else {
                    jMin = Math.min(jMin, abstractC1788cx2.f5216e);
                    if (jMin == abstractC1788cx2.f5216e) {
                        i3 = i;
                    }
                    i++;
                }
            }
            if (i2 < 0) {
                return;
            }
            if (size >= 3) {
                if (abstractC1788cx.f5216e <= jMin || i2 >= size) {
                    return;
                }
                this.f5161e.remove(i2);
                this.f5161e.add(abstractC1788cx);
                return;
            }
        }
        this.f5161e.add(abstractC1788cx);
    }

    /* renamed from: a */
    private boolean m4257a(AmapLocationGnss c1795dd) {
        float f = c1795dd.f5289g;
        return c1795dd.m4514a(this.f5159c) > ((double) ((f > 10.0f ? 1 : (f == 10.0f ? 0 : -1)) > 0 ? 2000.0f : (f > 2.0f ? 1 : (f == 2.0f ? 0 : -1)) > 0 ? 500.0f : 100.0f));
    }

    /* renamed from: a */
    public final a m4258a(AmapLocationGnss c1795dd, boolean z, byte b, String str, List<AmapCell> list) {
        if (z) {
            this.f5160d.m4260a();
            return null;
        }
        this.f5160d.m4261a(b, str, list);
        if (this.f5160d.f5164c == null) {
            return null;
        }
        if (!(this.f5159c == null || m4257a(c1795dd) || !a.m4259a(this.f5160d.f5165d, this.f5157a) || !a.m4259a(this.f5160d.f5166e, this.f5158b))) {
            return null;
        }
        a aVar = this.f5160d;
        this.f5157a = aVar.f5165d;
        this.f5158b = aVar.f5166e;
        this.f5159c = c1795dd;
        RssiManager.m4409a(aVar.f5167f);
        m4255a(this.f5160d);
        return this.f5160d;
    }
}
