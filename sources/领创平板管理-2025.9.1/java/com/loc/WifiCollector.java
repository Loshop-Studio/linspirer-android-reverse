package com.loc;

import android.support.v4.print.PrintHelper;
import android.support.v7.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* compiled from: WifiCollector.java */
/* renamed from: com.loc.bz */
/* loaded from: classes.dex */
public final class WifiCollector {

    /* renamed from: b */
    public AmapLocationGnss f5188b;

    /* renamed from: a */
    public List<AmapWifi> f5187a = new ArrayList();

    /* renamed from: c */
    public ArrayList<AmapWifi> f5189c = new ArrayList<>();

    /* renamed from: a */
    public static List<AmapWifi> m4264a(List<AmapWifi> list) {
        ArrayList arrayList = new ArrayList();
        HashMap map = new HashMap();
        for (int i = 0; i < list.size(); i++) {
            AmapWifi c1796de = list.get(i);
            map.put(Integer.valueOf(c1796de.f5297c), c1796de);
        }
        arrayList.addAll(map.values());
        return arrayList;
    }

    /* renamed from: a */
    private boolean m4265a(AmapLocationGnss c1795dd) {
        float f = c1795dd.f5289g;
        float f2 = 10.0f;
        if (f > 10.0f) {
            f2 = 200.0f;
        } else if (f > 2.0f) {
            f2 = 50.0f;
        }
        return c1795dd.m4514a(this.f5188b) > ((double) f2);
    }

    /* renamed from: a */
    public static boolean m4266a(AmapLocationGnss c1795dd, long j, long j2) {
        return j > 0 && j2 - j < ((long) ((c1795dd.f5289g > 10.0f ? 1 : (c1795dd.f5289g == 10.0f ? 0 : -1)) >= 0 ? RecyclerView.MAX_SCROLL_DURATION : PrintHelper.MAX_PRINT_SIZE));
    }

    /* renamed from: a */
    public static boolean m4267a(List<AmapWifi> list, List<AmapWifi> list2) {
        if (list != null && list2 != null) {
            int size = list.size();
            int size2 = list2.size();
            int i = size + size2;
            if (size <= size2) {
                list2 = list;
                list = list2;
            }
            HashMap map = new HashMap(list.size());
            Iterator<AmapWifi> it = list.iterator();
            while (it.hasNext()) {
                map.put(Long.valueOf(it.next().f5295a), 1);
            }
            Iterator<AmapWifi> it2 = list2.iterator();
            int i2 = 0;
            while (it2.hasNext()) {
                if (((Integer) map.get(Long.valueOf(it2.next().f5295a))) != null) {
                    i2++;
                }
            }
            if (i2 * 2.0d >= i * 0.5d) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    private List<AmapWifi> m4268b(List<AmapWifi> list) {
        Collections.sort(list, new Comparator<AmapWifi>() { // from class: com.loc.bz.1
            /* renamed from: a */
            public static int m4272a(AmapWifi c1796de, AmapWifi c1796de2) {
                return c1796de2.f5297c - c1796de.f5297c;
            }

            @Override // java.util.Comparator
            public final /* synthetic */ int compare(AmapWifi c1796de, AmapWifi c1796de2) {
                return m4272a(c1796de, c1796de2);
            }
        });
        return list;
    }

    /* renamed from: b */
    private void m4269b(List<AmapWifi> list, List<AmapWifi> list2) {
        list.clear();
        if (list2 != null) {
            List<AmapWifi> listM4268b = m4268b(m4264a(list2));
            int size = listM4268b.size();
            if (size > 40) {
                size = 40;
            }
            for (int i = 0; i < size; i++) {
                list.add(listM4268b.get(i));
            }
        }
    }

    /* renamed from: b */
    private boolean m4270b(AmapLocationGnss c1795dd, List<AmapWifi> list, boolean z, long j, long j2) {
        if (!z || !m4266a(c1795dd, j, j2) || list == null || list.size() <= 0) {
            return false;
        }
        if (this.f5188b == null) {
            return true;
        }
        boolean zM4265a = m4265a(c1795dd);
        return !zM4265a ? !m4267a(list, this.f5187a) : zM4265a;
    }

    /* renamed from: a */
    public final List<AmapWifi> m4271a(AmapLocationGnss c1795dd, List<AmapWifi> list, boolean z, long j, long j2) {
        if (!m4270b(c1795dd, list, z, j, j2)) {
            return null;
        }
        m4269b(this.f5189c, list);
        this.f5187a.clear();
        this.f5187a.addAll(list);
        this.f5188b = c1795dd;
        return this.f5189c;
    }
}
