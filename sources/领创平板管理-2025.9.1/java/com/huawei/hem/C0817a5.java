package com.huawei.hem;

import java.util.ArrayList;
import java.util.List;

/* compiled from: SupperAppHelper.java */
/* renamed from: com.huawei.hem.a5 */
/* loaded from: classes.dex */
public class C0817a5 {

    /* renamed from: a */
    public ArrayList<String> f2173a;

    /* compiled from: SupperAppHelper.java */
    /* renamed from: com.huawei.hem.a5$b */
    public static final class b {

        /* renamed from: a */
        public static final C0817a5 f2174a = new C0817a5(null);
    }

    public C0817a5(a aVar) {
        ArrayList<String> arrayList = new ArrayList<>();
        this.f2173a = arrayList;
        arrayList.add("com.android.launcher3");
        this.f2173a.add("com.ndwill.swd.appstore");
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add("com.zykj.manage");
        if (AbstractC1102l9.m2273N(arrayList2)) {
            return;
        }
        this.f2173a.addAll(arrayList2);
    }

    /* renamed from: a */
    public final void m1296a(ArrayList<String> arrayList) {
        StringBuilder sbM1765j = C0948f6.m1765j("SupperAppHelper total super:");
        sbM1765j.append(arrayList.toString());
        C0850bc.m1403m(sbM1765j.toString());
        if (C0878ce.m1514g(C0904de.m1589f()) || C0878ce.m1529v() || C0878ce.m1513f(C0904de.m1589f()) || C0878ce.m1530w()) {
            C0850bc.f2294f.mo1506d(arrayList);
            return;
        }
        List<String> listMo1507u = C0850bc.f2294f.mo1507u();
        StringBuilder sbM1765j2 = C0948f6.m1765j("SupperAppHelper read already set super:");
        sbM1765j2.append(AbstractC1102l9.m2273N(listMo1507u) ? null : listMo1507u.toString());
        C0850bc.m1403m(sbM1765j2.toString());
        ArrayList arrayList2 = new ArrayList();
        if (!AbstractC1102l9.m2273N(listMo1507u)) {
            ArrayList<String> arrayList3 = new ArrayList<>();
            for (String str : listMo1507u) {
                if (arrayList.contains(str)) {
                    arrayList2.add(str);
                } else {
                    arrayList3.add(str);
                }
            }
            C0850bc.f2294f.mo2055P0(arrayList3);
            C0850bc.m1403m("SupperAppHelper  removed apps :" + arrayList3.toString());
        }
        StringBuilder sbM1765j3 = C0948f6.m1765j("SupperAppHelper  exist apps :");
        sbM1765j3.append(arrayList2.toString());
        C0850bc.m1403m(sbM1765j3.toString());
        arrayList.removeAll(arrayList2);
        if (AbstractC1102l9.m2272M(arrayList)) {
            C0850bc.m1403m("SupperAppHelper  have same app data no need set");
            return;
        }
        C0850bc.f2294f.mo1506d(arrayList);
        C0850bc.m1403m("SupperAppHelper  set super apps: " + arrayList.toString());
    }
}
