package com.huawei.hem;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;

/* renamed from: com.huawei.hem.fa */
/* loaded from: classes.dex */
public class C0952fa implements InterfaceRunnableC1003ha {

    /* renamed from: a */
    public String f2639a;

    /* renamed from: b */
    public String f2640b;

    /* renamed from: c */
    public String f2641c;

    /* renamed from: d */
    public List<C1103la> f2642d;

    public C0952fa(List<C1103la> list, String str, String str2, String str3) {
        this.f2639a = str;
        this.f2640b = str2;
        this.f2641c = str3;
        this.f2642d = list;
    }

    @Override // java.lang.Runnable
    public void run() {
        List<C1103la> list = this.f2642d;
        if (list == null || list.size() == 0) {
            C1404xa.m2938e("hmsSdk", "failed events is empty");
            return;
        }
        if (AbstractC1102l9.m2297t(LauncherMenuHelper.m2998s(), "cached_v2_1", C1453z9.m3144b().f4293a.f2753g * 2 * 1048576)) {
            StringBuilder sbM1765j = CompilerOutline.m1765j("The cacheFile is full,Can not writing data! reqID:");
            sbM1765j.append(this.f2640b);
            C1404xa.m2939f("hmsSdk", sbM1765j.toString());
            return;
        }
        String strM2260A = AbstractC1102l9.m2260A(this.f2639a, this.f2641c);
        List list2 = (List) ((HashMap) C1304ta.m2728d(LauncherMenuHelper.m2998s(), "cached_v2_1", strM2260A)).get(strM2260A);
        if (list2 != null && list2.size() != 0) {
            this.f2642d.addAll(list2);
        }
        JSONArray jSONArray = new JSONArray();
        Iterator<C1103la> it = this.f2642d.iterator();
        while (it.hasNext()) {
            try {
                jSONArray.put(it.next().m2305c());
            } catch (JSONException unused) {
                C1404xa.m2939f("hmsSdk", "event to json error");
            }
        }
        String string = jSONArray.toString();
        if (string.length() > C1453z9.m3144b().f4293a.f2753g * 1048576) {
            C1404xa.m2939f("hmsSdk", "this failed data is too long,can not writing it");
            this.f2642d = null;
            return;
        }
        StringBuilder sbM1765j2 = CompilerOutline.m1765j("data send failed, write to cache file...reqID:");
        sbM1765j2.append(this.f2640b);
        C1404xa.m2938e("hmsSdk", sbM1765j2.toString());
        AbstractC1102l9.m2263D(LauncherMenuHelper.m2998s(), "cached_v2_1", strM2260A, string);
        AbstractC1102l9.m2291n(LauncherMenuHelper.m2998s(), "backup_event", AbstractC1102l9.m2302y(this.f2639a, this.f2641c, this.f2640b));
    }
}
