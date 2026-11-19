package com.huawei.hem;

import android.content.Context;
import android.text.TextUtils;
import android.util.Pair;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* renamed from: com.huawei.hem.ca */
/* loaded from: classes.dex */
public class C0874ca implements InterfaceRunnableC1003ha {

    /* renamed from: a */
    public Context f2332a = LauncherMenuHelper.m2998s();

    /* renamed from: b */
    public String f2333b;

    /* renamed from: c */
    public String f2334c;

    /* renamed from: d */
    public String f2335d;

    public C0874ca(String str, String str2, String str3) {
        this.f2333b = str;
        this.f2334c = str2;
        this.f2335d = str3;
    }

    /* renamed from: a */
    public final void m1503a(String str, List<C1103la> list) {
        Pair pair;
        String strSubstring;
        String str2;
        if ("_default_config_tag".equals(str)) {
            pair = new Pair(str, "");
        } else {
            String[] strArrSplit = str.split("-");
            if (strArrSplit.length > 2) {
                str2 = strArrSplit[strArrSplit.length - 1];
                strSubstring = str.substring(0, (str.length() - str2.length()) - 1);
            } else {
                strSubstring = strArrSplit[0];
                str2 = strArrSplit[1];
            }
            pair = new Pair(strSubstring, str2);
        }
        C1204pa c1204pa = new C1204pa(list, (String) pair.first, (String) pair.second, this.f2335d);
        if (!"_default_config_tag".equals(c1204pa.f3447c)) {
            c1204pa.m2461a(c1204pa.f3445a, c1204pa.f3447c, c1204pa.f3446b);
            return;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        for (C1103la c1103la : c1204pa.f3445a) {
            String str3 = c1103la.f3160a;
            if (TextUtils.isEmpty(str3) || "oper".equals(str3)) {
                arrayList4.add(c1103la);
            } else if ("maint".equals(str3)) {
                arrayList.add(c1103la);
            } else if ("preins".equals(str3)) {
                arrayList2.add(c1103la);
            } else if ("diffprivacy".equals(str3)) {
                arrayList3.add(c1103la);
            }
        }
        c1204pa.m2461a(arrayList4, "oper", "_default_config_tag");
        c1204pa.m2461a(arrayList, "maint", "_default_config_tag");
        c1204pa.m2461a(arrayList2, "preins", "_default_config_tag");
        c1204pa.m2461a(arrayList3, "diffprivacy", "_default_config_tag");
    }

    @Override // java.lang.Runnable
    public void run() {
        Map<String, List<C1103la>> mapM2726b;
        C1404xa.m2937d("hmsSdk", "eventReportTask is running");
        boolean z = System.currentTimeMillis() - AbstractC1102l9.m2278a(this.f2332a, "Privacy_MY", "flashKeyTime", -1L) > 43200000;
        if (z) {
            C1404xa.m2937d("hmsSdk", "workKey is refresh,begin report all data");
            this.f2334c = "alltype";
        }
        try {
            try {
                try {
                    mapM2726b = C1304ta.m2726b(this.f2332a, this.f2333b, this.f2334c);
                } catch (IllegalArgumentException e) {
                    C1404xa.m2939f("hmsSdk", "readEventRecords handData IllegalArgumentException:" + e.getMessage());
                    if ("alltype".equals(this.f2334c)) {
                        AbstractC1102l9.m2291n(this.f2332a, "stat_v2_1", new String[0]);
                        AbstractC1102l9.m2291n(this.f2332a, "cached_v2_1", new String[0]);
                    } else {
                        String strM2260A = AbstractC1102l9.m2260A(this.f2333b, this.f2334c);
                        AbstractC1102l9.m2291n(this.f2332a, "stat_v2_1", strM2260A);
                        AbstractC1102l9.m2291n(this.f2332a, "cached_v2_1", strM2260A);
                    }
                }
            } catch (Exception e2) {
                C1404xa.m2939f("hmsSdk", "readEventRecords handData Exception:" + e2.getMessage());
                if ("alltype".equals(this.f2334c)) {
                    AbstractC1102l9.m2291n(this.f2332a, "stat_v2_1", new String[0]);
                    AbstractC1102l9.m2291n(this.f2332a, "cached_v2_1", new String[0]);
                } else {
                    String strM2260A2 = AbstractC1102l9.m2260A(this.f2333b, this.f2334c);
                    AbstractC1102l9.m2291n(this.f2332a, "stat_v2_1", strM2260A2);
                    AbstractC1102l9.m2291n(this.f2332a, "cached_v2_1", strM2260A2);
                }
            }
            if (mapM2726b.size() == 0) {
                C1404xa.m2938e("hmsSdk", String.format("no have events to report: tag:%s : type:%s", this.f2333b, this.f2334c));
                if ("alltype".equals(this.f2334c)) {
                    AbstractC1102l9.m2291n(this.f2332a, "stat_v2_1", new String[0]);
                    AbstractC1102l9.m2291n(this.f2332a, "cached_v2_1", new String[0]);
                    return;
                } else {
                    String strM2260A3 = AbstractC1102l9.m2260A(this.f2333b, this.f2334c);
                    AbstractC1102l9.m2291n(this.f2332a, "stat_v2_1", strM2260A3);
                    AbstractC1102l9.m2291n(this.f2332a, "cached_v2_1", strM2260A3);
                    return;
                }
            }
            for (Map.Entry<String, List<C1103la>> entry : mapM2726b.entrySet()) {
                m1503a(entry.getKey(), entry.getValue());
            }
            if ("alltype".equals(this.f2334c)) {
                AbstractC1102l9.m2291n(this.f2332a, "stat_v2_1", new String[0]);
                AbstractC1102l9.m2291n(this.f2332a, "cached_v2_1", new String[0]);
            } else {
                String strM2260A4 = AbstractC1102l9.m2260A(this.f2333b, this.f2334c);
                AbstractC1102l9.m2291n(this.f2332a, "stat_v2_1", strM2260A4);
                AbstractC1102l9.m2291n(this.f2332a, "cached_v2_1", strM2260A4);
            }
            if (z) {
                C1404xa.m2937d("hmsSdk", "refresh local key");
                C1128m9 c1128m9M2352e = C1128m9.m2352e();
                if (c1128m9M2352e == null) {
                    throw null;
                }
                String strM1674b = C0927eb.m1674b(16);
                if (c1128m9M2352e.m2355c(c1128m9M2352e.m2354b(strM1674b))) {
                    c1128m9M2352e.f3246a = strM1674b;
                }
            }
        } catch (Throwable th) {
            if ("alltype".equals(this.f2334c)) {
                AbstractC1102l9.m2291n(this.f2332a, "stat_v2_1", new String[0]);
                AbstractC1102l9.m2291n(this.f2332a, "cached_v2_1", new String[0]);
            } else {
                String strM2260A5 = AbstractC1102l9.m2260A(this.f2333b, this.f2334c);
                AbstractC1102l9.m2291n(this.f2332a, "stat_v2_1", strM2260A5);
                AbstractC1102l9.m2291n(this.f2332a, "cached_v2_1", strM2260A5);
            }
            throw th;
        }
    }
}
